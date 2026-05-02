package com.nuyron.facultyevaluationsystem;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

/**
 * White-box unit tests for the validation logic extracted from
 * {@code AdminUsersController}, {@code AdminCoursesController},
 * {@code AdminFormsController}, and {@code StudentReviewController}.
 *
 * Because the validation helpers are private / package-private in the
 * controllers, the same pure-logic is re-tested through a local
 * faithful replica (same code, public visibility) so no JavaFX toolkit
 * needs to be initialised.
 *
 * Business rules exercised:
 *   BR-1  containsAlphanumeric — shared helper used across all controllers
 *   BR-2  Student ID regex  ^[a-zA-Z]\d{6}$
 *   BR-3  Teacher/HOD ID regex  ^[a-zA-Z]+\.[a-zA-Z]+$
 *   BR-4  validateUser (AdminUsers) — full gate logic
 *   BR-5  Course field validation (AdminCourses)
 *   BR-6  semesterYear parser (AdminForms)
 *   BR-7  Form schedule date-year constraint
 */
@DisplayName("Input Validation — white-box (controller logic)")
class InputValidationTest {

    static boolean containsAlphanumeric(String s) {
        if (s == null) return false;
        for (char c : s.toCharArray()) {
            if (Character.isLetterOrDigit(c)) return true;
        }
        return false;
    }

    static String validateUser(String accountName, String username,
                               String loginID, String role, String department) {
        if (accountName.isEmpty() || username.isEmpty() || loginID.isEmpty()
                || role == null || role.isEmpty()) {
            return "All fields must be filled.";
        }
        if (!containsAlphanumeric(accountName)) {
            return "Account name must contain at least one letter or digit.";
        }
        if (("HOD".equals(role) || "TEACHER".equals(role) || "STUDENT".equals(role))
                && (department == null || department.isBlank())) {
            return "Department is required for Student, HOD, and Teacher accounts.";
        }
        if (role.equalsIgnoreCase("Student")) {
            if (!username.matches("^[a-zA-Z]\\d{6}$")) {
                return "Student ID must start with the campus initials, followed by batch-no, and roll-no (i.e. 23I-0606)";
            }
        } else if (role.equalsIgnoreCase("Teacher") || role.equalsIgnoreCase("HOD")) {
            if (!username.matches("^[a-zA-Z]+\\.[a-zA-Z]+$")) {
                return "User ID must be in the format: [FirstName] . [LastName]";
            }
        }
        return null;
    }

    static int semesterYear(String semester) {
        if (semester == null) return -1;
        String[] parts = semester.split(" ", 2);
        if (parts.length < 2) return -1;
        try {
            return Integer.parseInt(parts[1].trim());
        } catch (NumberFormatException e) {
            return -1;
        }
    }

    @Nested
    @DisplayName("BR-1: containsAlphanumeric(String)")
    class ContainsAlphanumericTests {

        @Test
        @DisplayName("Null → false (null-guard branch)")
        void nullInput() {
            assertFalse(containsAlphanumeric(null));
        }

        @Test
        @DisplayName("Empty string → false")
        void emptyString() {
            assertFalse(containsAlphanumeric(""));
        }

        @Test
        @DisplayName("Symbols only → false")
        void symbolsOnly() {
            assertFalse(containsAlphanumeric("!@#$%^&*()"));
        }

        @Test
        @DisplayName("Whitespace only → false")
        void whitespaceOnly() {
            assertFalse(containsAlphanumeric("   \t\n"));
        }

        @Test
        @DisplayName("Single letter → true")
        void singleLetter() {
            assertTrue(containsAlphanumeric("a"));
        }

        @Test
        @DisplayName("Single digit → true")
        void singleDigit() {
            assertTrue(containsAlphanumeric("7"));
        }

        @Test
        @DisplayName("Mixed symbols and letter → true (first alphanumeric found)")
        void mixedWithLetter() {
            assertTrue(containsAlphanumeric("!!!a!!!"));
        }

        @Test
        @DisplayName("Full alphanumeric string → true")
        void alphanumericString() {
            assertTrue(containsAlphanumeric("Hello123"));
        }

        @Test
        @DisplayName("Unicode letter → true (Character.isLetterOrDigit covers Unicode)")
        void unicodeLetter() {
            assertTrue(containsAlphanumeric("é"));
        }
    }

    @Nested
    @DisplayName("BR-2: Student ID regex ^[a-zA-Z]\\d{6}$")
    class StudentIdRegexTests {

        private static final String STUDENT_REGEX = "^[a-zA-Z]\\d{6}$";

        @Test
        @DisplayName("Valid lower-case initial + 6 digits")
        void validLowercase() {
            assertTrue("s123456".matches(STUDENT_REGEX));
        }

        @Test
        @DisplayName("Valid upper-case initial + 6 digits")
        void validUppercase() {
            assertTrue("S123456".matches(STUDENT_REGEX));
        }

        @Test
        @DisplayName("Too few digits (5) → invalid")
        void tooFewDigits() {
            assertFalse("S12345".matches(STUDENT_REGEX));
        }

        @Test
        @DisplayName("Too many digits (7) → invalid")
        void tooManyDigits() {
            assertFalse("S1234567".matches(STUDENT_REGEX));
        }

        @Test
        @DisplayName("Starts with digit → invalid")
        void startsWithDigit() {
            assertFalse("1123456".matches(STUDENT_REGEX));
        }

        @Test
        @DisplayName("Contains letters in digit part → invalid")
        void lettersInDigitPart() {
            assertFalse("S12345A".matches(STUDENT_REGEX));
        }

        @Test
        @DisplayName("Empty string → invalid")
        void emptyString() {
            assertFalse("".matches(STUDENT_REGEX));
        }

        @Test
        @DisplayName("Hyphenated format (23I-0606) → invalid (regex requires no hyphen)")
        void hyphenatedFormat() {
            assertFalse("23I-0606".matches(STUDENT_REGEX));
        }
    }

    @Nested
    @DisplayName("BR-3: Teacher/HOD ID regex ^[a-zA-Z]+\\.[a-zA-Z]+$")
    class TeacherIdRegexTests {

        private static final String TEACHER_REGEX = "^[a-zA-Z]+\\.[a-zA-Z]+$";

        @Test
        @DisplayName("Valid format: firstname.lastname")
        void validFormat() {
            assertTrue("john.doe".matches(TEACHER_REGEX));
        }

        @Test
        @DisplayName("Upper-case parts → valid")
        void upperCase() {
            assertTrue("John.Doe".matches(TEACHER_REGEX));
        }

        @Test
        @DisplayName("Missing dot → invalid")
        void missingDot() {
            assertFalse("johndoe".matches(TEACHER_REGEX));
        }

        @Test
        @DisplayName("Trailing dot, no last name → invalid")
        void trailingDot() {
            assertFalse("john.".matches(TEACHER_REGEX));
        }

        @Test
        @DisplayName("Leading dot, no first name → invalid")
        void leadingDot() {
            assertFalse(".doe".matches(TEACHER_REGEX));
        }

        @Test
        @DisplayName("Digit in first name → invalid")
        void digitInFirstName() {
            assertFalse("j0hn.doe".matches(TEACHER_REGEX));
        }

        @Test
        @DisplayName("Multiple dots → invalid")
        void multipleDots() {
            assertFalse("a.b.c".matches(TEACHER_REGEX));
        }

        @Test
        @DisplayName("Empty string → invalid")
        void emptyString() {
            assertFalse("".matches(TEACHER_REGEX));
        }
    }

    @Nested
    @DisplayName("BR-4: AdminUsersController.validateUser")
    class ValidateUserTests {


        @Test
        @DisplayName("All fields empty → 'All fields must be filled.'")
        void allEmpty() {
            assertEquals("All fields must be filled.",
                    validateUser("", "", "", null, null));
        }

        @Test
        @DisplayName("Missing role → 'All fields must be filled.'")
        void missingRole() {
            assertEquals("All fields must be filled.",
                    validateUser("Alice", "S123456", "pass", null, "CS"));
        }


        @Test
        @DisplayName("Account name is purely symbolic → alphanumeric error")
        void symbolicAccountName() {
            assertEquals("Account name must contain at least one letter or digit.",
                    validateUser("!!!!", "admin.user", "pass", "ADMIN", null));
        }


        @Test
        @DisplayName("STUDENT without department → department required error")
        void studentNoDept() {
            assertEquals("Department is required for Student, HOD, and Teacher accounts.",
                    validateUser("Alice", "S123456", "pass", "STUDENT", null));
        }

        @Test
        @DisplayName("TEACHER without department → department required error")
        void teacherNoDept() {
            assertEquals("Department is required for Student, HOD, and Teacher accounts.",
                    validateUser("Bob", "bob.smith", "pass", "TEACHER", ""));
        }

        @Test
        @DisplayName("HOD without department → department required error")
        void hodNoDept() {
            assertEquals("Department is required for Student, HOD, and Teacher accounts.",
                    validateUser("Carol", "carol.jones", "pass", "HOD", " "));
        }

        @Test
        @DisplayName("ADMIN without department → no error (admin does not need dept)")
        void adminNoDept() {
            assertNull(validateUser("Admin", "admin", "pass", "ADMIN", null));
        }


        @Test
        @DisplayName("Valid student: S123456, dept=CS → no error")
        void validStudent() {
            assertNull(validateUser("Alice", "S123456", "pass", "STUDENT", "CS"));
        }

        @Test
        @DisplayName("Student ID with no leading letter → student regex error")
        void invalidStudentId() {
            String err = validateUser("Alice", "1234567", "pass", "STUDENT", "CS");
            assertNotNull(err);
            assertTrue(err.contains("Student ID"));
        }


        @Test
        @DisplayName("Valid teacher: john.doe, dept=CS → no error")
        void validTeacher() {
            assertNull(validateUser("John", "john.doe", "pass", "TEACHER", "CS"));
        }

        @Test
        @DisplayName("Teacher ID with digit → teacher regex error")
        void invalidTeacherId() {
            String err = validateUser("John", "john2.doe", "pass", "TEACHER", "CS");
            assertNotNull(err);
            assertTrue(err.contains("User ID must be in the format"));
        }

        @Test
        @DisplayName("Valid HOD: hod.head, dept=EE → no error")
        void validHod() {
            assertNull(validateUser("Head", "hod.head", "pass", "HOD", "EE"));
        }

        @Test
        @DisplayName("HOD ID without dot → HOD regex error")
        void invalidHodId() {
            String err = validateUser("Head", "hodhead", "pass", "HOD", "EE");
            assertNotNull(err);
            assertTrue(err.contains("User ID must be in the format"));
        }
    }

    @Nested
    @DisplayName("BR-5: AdminCoursesController — course field validation")
    class CourseFieldValidationTests {

        /**
         * Mirrors onAddCourseButtonClick validation gates (pure logic only).
         * Returns error string or null if valid.
         */
        static String validateCourseInput(String code, String name, String dept) {
            if (code == null || code.trim().isEmpty()
                    || name == null || name.trim().isEmpty()
                    || dept == null || dept.trim().isEmpty()) {
                return "Please fill in the required fields.";
            }
            if (!containsAlphanumeric(code)) return "Course code must contain at least one letter or digit.";
            if (!containsAlphanumeric(name)) return "Course name must contain at least one letter or digit.";
            if (!containsAlphanumeric(dept)) return "Department must contain at least one letter or digit.";
            return null;
        }

        @Test
        @DisplayName("All empty → required fields error")
        void allEmpty() {
            assertNotNull(validateCourseInput("", "", ""));
        }

        @Test
        @DisplayName("Null fields → required fields error")
        void nullFields() {
            assertNotNull(validateCourseInput(null, null, null));
        }

        @Test
        @DisplayName("Symbolic course code → alphanumeric error")
        void symbolicCode() {
            assertEquals("Course code must contain at least one letter or digit.",
                    validateCourseInput("---", "Algorithms", "CS"));
        }

        @Test
        @DisplayName("Symbolic course name → alphanumeric error")
        void symbolicName() {
            assertEquals("Course name must contain at least one letter or digit.",
                    validateCourseInput("CS101", "!!!", "CS"));
        }

        @Test
        @DisplayName("Symbolic department → alphanumeric error")
        void symbolicDept() {
            assertEquals("Department must contain at least one letter or digit.",
                    validateCourseInput("CS101", "Algorithms", "###"));
        }

        @Test
        @DisplayName("Valid inputs → no error")
        void validInputs() {
            assertNull(validateCourseInput("CS101", "Algorithms", "Computer Science"));
        }
    }

    @Nested
    @DisplayName("BR-6: AdminFormsController.semesterYear(String)")
    class SemesterYearTests {

        @Test
        @DisplayName("null → -1 (null guard)")
        void nullInput() {
            assertEquals(-1, semesterYear(null));
        }

        @Test
        @DisplayName("No space (single token) → -1")
        void noSpace() {
            assertEquals(-1, semesterYear("Spring"));
        }

        @Test
        @DisplayName("Normal 'Spring 2025' → 2025")
        void spring2025() {
            assertEquals(2025, semesterYear("Spring 2025"));
        }

        @Test
        @DisplayName("'Fall 2024' → 2024")
        void fall2024() {
            assertEquals(2024, semesterYear("Fall 2024"));
        }

        @Test
        @DisplayName("'Summer 2026' → 2026")
        void summer2026() {
            assertEquals(2026, semesterYear("Summer 2026"));
        }

        @Test
        @DisplayName("Non-numeric year part → -1 (NumberFormatException caught)")
        void nonNumericYear() {
            assertEquals(-1, semesterYear("Spring ABCD"));
        }

        @Test
        @DisplayName("Extra spaces in year part are trimmed → correct year")
        void spacesAroundYear() {
            assertEquals(2025, semesterYear("Spring  2025"));
        }
    }

    @Nested
    @DisplayName("BR-7: Form schedule date-year constraint")
    class FormScheduleDateConstraintTests {

        /**
         * Mirrors the date-year validation block inside AdminFormsController.pushForm().
         * Returns true if the dates are consistent with the semester year, false otherwise.
         */
        static boolean areDatesConsistentWithSemester(
                java.time.LocalDate startDate, java.time.LocalDate endDate, String semester) {
            int semYear = semesterYear(semester);
            if (semYear <= 0) return true; // no constraint if year can't be parsed
            return startDate.getYear() == semYear && endDate.getYear() == semYear;
        }

        @Test
        @DisplayName("Both dates in semester year → valid")
        void bothDatesInYear() {
            var start = java.time.LocalDate.of(2025, 1, 10);
            var end   = java.time.LocalDate.of(2025, 4, 30);
            assertTrue(areDatesConsistentWithSemester(start, end, "Spring 2025"));
        }

        @Test
        @DisplayName("Start date in wrong year → invalid")
        void startDateWrongYear() {
            var start = java.time.LocalDate.of(2024, 12, 31); // wrong year
            var end   = java.time.LocalDate.of(2025, 4, 30);
            assertFalse(areDatesConsistentWithSemester(start, end, "Spring 2025"));
        }

        @Test
        @DisplayName("End date in wrong year → invalid")
        void endDateWrongYear() {
            var start = java.time.LocalDate.of(2025, 1, 10);
            var end   = java.time.LocalDate.of(2026, 1, 5); // wrong year
            assertFalse(areDatesConsistentWithSemester(start, end, "Spring 2025"));
        }

        @Test
        @DisplayName("Both dates in wrong year → invalid")
        void bothDatesWrongYear() {
            var start = java.time.LocalDate.of(2024, 1, 10);
            var end   = java.time.LocalDate.of(2024, 4, 30);
            assertFalse(areDatesConsistentWithSemester(start, end, "Spring 2025"));
        }

        @Test
        @DisplayName("Unparseable semester string → no constraint (treated as valid)")
        void unparseableSemester() {
            var start = java.time.LocalDate.of(2020, 1, 1);
            var end   = java.time.LocalDate.of(2030, 12, 31);
            // semesterYear returns -1 → constraint skipped → true
            assertTrue(areDatesConsistentWithSemester(start, end, "Spring"));
        }

        @Test
        @DisplayName("Null semester string → no constraint applied")
        void nullSemester() {
            var start = java.time.LocalDate.of(2020, 1, 1);
            var end   = java.time.LocalDate.of(2030, 12, 31);
            assertTrue(areDatesConsistentWithSemester(start, end, null));
        }
    }
}

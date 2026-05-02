package com.nuyron.facultyevaluationsystem;

import com.nuyron.facultyevaluationsystem.models.FormSchedule;
import com.nuyron.facultyevaluationsystem.models.Session;
import com.nuyron.facultyevaluationsystem.models.User;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

/**
 * White-box unit tests for the {@link Session} and {@link FormSchedule} model classes.
 *
 * Session is a shared-state singleton; tests reset it after each run.
 * FormSchedule is an immutable value object; tests exercise its constructor
 * branches (null normalisation) and all getters.
 */

@DisplayName("Model white-box tests — Session & FormSchedule")
class ModelTest {

    @Nested
    @DisplayName("Session — static state management")
    class SessionTests {

        private User testUser;

        @BeforeEach
        void setUp() {
            testUser = new User(1, "Alice Admin", "alice", "secret", "ADMIN");
            Session.clear();
        }

        @AfterEach
        void tearDown() {
            Session.clear();
        }

        @Test
        @DisplayName("After clear() — all fields are null")
        void clearResetsAllFields() {
            Session.currentUser           = testUser;
            Session.selectedEnrollmentId  = 42;
            Session.selectedFeedbackId    = 7;
            Session.selectedFormSchedule  = null;
            Session.hodDepartment         = "CS";

            Session.clear();

            assertNull(Session.currentUser,          "currentUser should be null after clear()");
            assertNull(Session.selectedEnrollmentId, "selectedEnrollmentId should be null after clear()");
            assertNull(Session.selectedFeedbackId,   "selectedFeedbackId should be null after clear()");
            assertNull(Session.selectedFormSchedule, "selectedFormSchedule should be null after clear()");
            assertNull(Session.hodDepartment,        "hodDepartment should be null after clear()");
        }

        @Test
        @DisplayName("getLoggedInUser() returns currentUser (null when not set)")
        void getLoggedInUserWhenNull() {
            assertNull(Session.getLoggedInUser());
        }

        @Test
        @DisplayName("getLoggedInUser() returns the set user")
        void getLoggedInUserWhenSet() {
            Session.currentUser = testUser;
            assertSame(testUser, Session.getLoggedInUser());
        }

        @Test
        @DisplayName("Setting selectedEnrollmentId persists correctly")
        void enrollmentIdPersists() {
            Session.selectedEnrollmentId = 99;
            assertEquals(99, Session.selectedEnrollmentId);
        }

        @Test
        @DisplayName("Setting hodDepartment persists correctly")
        void hodDepartmentPersists() {
            Session.hodDepartment = "Electrical Engineering";
            assertEquals("Electrical Engineering", Session.hodDepartment);
        }

        @Test
        @DisplayName("Consecutive clear() calls are idempotent")
        void clearIsIdempotent() {
            Session.currentUser = testUser;
            Session.clear();
            Session.clear();
            assertNull(Session.currentUser);
        }

        @Test
        @DisplayName("sessionLogId and loginTimeMillis are independent of clear()")
        void sessionLogIdNotClearedByDefault() {
            Session.sessionLogId     = 123;
            Session.loginTimeMillis  = 1000L;
            Session.clear();
            assertEquals(123,   Session.sessionLogId);
            assertEquals(1000L, Session.loginTimeMillis);
        }
    }

    @Nested
    @DisplayName("FormSchedule — constructor & getters (white-box)")
    class FormScheduleTests {

        private FormSchedule scheduleAllValues;
        private FormSchedule scheduleNullOptionals;

        @BeforeEach
        void setUp() {
            scheduleAllValues = new FormSchedule(
                    10, 3, "Mid-Semester Form",
                    "Computer Science", "CS101",
                    "Spring 2025",
                    "2025-02-01", "2025-02-15",
                    "ACTIVE", "2025-01-20 10:00"
            );

            scheduleNullOptionals = new FormSchedule(
                    5, 1, "Final Form",
                    "Electrical Engineering", "EE201",
                    null,           // semester → ""
                    "2025-05-01", "2025-05-14",
                    "PENDING", null // createdAt → ""
            );
        }

        @Test
        @DisplayName("getScheduleId() returns constructed id")
        void scheduleIdGetter() {
            assertEquals(10, scheduleAllValues.getScheduleId());
        }

        @Test
        @DisplayName("getQuestionnaireId() returns constructed questionnaireId")
        void questionnaireIdGetter() {
            assertEquals(3, scheduleAllValues.getQuestionnaireId());
        }

        @Test
        @DisplayName("getQuestionnaireName() returns constructed name")
        void questionnaireNameGetter() {
            assertEquals("Mid-Semester Form", scheduleAllValues.getQuestionnaireName());
        }

        @Test
        @DisplayName("getDepartment() returns constructed department")
        void departmentGetter() {
            assertEquals("Computer Science", scheduleAllValues.getDepartment());
        }

        @Test
        @DisplayName("getCourseCode() returns constructed courseCode")
        void courseCodeGetter() {
            assertEquals("CS101", scheduleAllValues.getCourseCode());
        }

        @Test
        @DisplayName("getSemester() returns provided value when non-null")
        void semesterNonNull() {
            assertEquals("Spring 2025", scheduleAllValues.getSemester());
        }

        @Test
        @DisplayName("getSemester() returns empty string when null is passed (null-guard branch)")
        void semesterNullBecomesEmpty() {
            assertEquals("", scheduleNullOptionals.getSemester());
        }

        @Test
        @DisplayName("getStartDate() returns constructed startDate")
        void startDateGetter() {
            assertEquals("2025-02-01", scheduleAllValues.getStartDate());
        }

        @Test
        @DisplayName("getEndDate() returns constructed endDate")
        void endDateGetter() {
            assertEquals("2025-02-15", scheduleAllValues.getEndDate());
        }

        @Test
        @DisplayName("getStatus() returns constructed status")
        void statusGetter() {
            assertEquals("ACTIVE", scheduleAllValues.getStatus());
        }

        @Test
        @DisplayName("getCreatedAt() returns provided value when non-null")
        void createdAtNonNull() {
            assertEquals("2025-01-20 10:00", scheduleAllValues.getCreatedAt());
        }

        @Test
        @DisplayName("getCreatedAt() returns empty string when null is passed (null-guard branch)")
        void createdAtNullBecomesEmpty() {
            assertEquals("", scheduleNullOptionals.getCreatedAt());
        }

        @Test
        @DisplayName("Second FormSchedule has independent values (no aliasing)")
        void secondObjectIndependent() {
            assertEquals(5, scheduleNullOptionals.getScheduleId());
            assertEquals("PENDING", scheduleNullOptionals.getStatus());
            assertEquals("EE201", scheduleNullOptionals.getCourseCode());
        }
    }

    @Nested
    @DisplayName("User model — constructor & getters")
    class UserModelTests {

        private User user;

        @BeforeEach
        void setUp() {
            user = new User(42, "John Doe", "john.doe", "p@ssword", "TEACHER");
        }

        @Test
        @DisplayName("getUserid() returns the constructed id")
        void userIdGetter() {
            assertEquals(42, user.getUserid());
        }

        @Test
        @DisplayName("getName() returns the constructed name")
        void nameGetter() {
            assertEquals("John Doe", user.getName());
        }

        @Test
        @DisplayName("getUsername() returns the constructed username")
        void usernameGetter() {
            assertEquals("john.doe", user.getUsername());
        }

        @Test
        @DisplayName("getPassword() returns the constructed password")
        void passwordGetter() {
            assertEquals("p@ssword", user.getPassword());
        }

        @Test
        @DisplayName("getRole() returns the constructed role")
        void roleGetter() {
            assertEquals("TEACHER", user.getRole());
        }
    }
}

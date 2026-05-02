package com.nuyron.facultyevaluationsystem;

import com.nuyron.facultyevaluationsystem.DAO.QuestionDAO;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

/**
 * White-box unit tests for {@link QuestionDAO} static helper methods.
 *
 * Covers:
 *  - buildLikertMetadata(int, String)
 *  - buildSliderMetadata(String, int, int)
 *  - buildTextMetadata(String)
 *  - buildBinaryMetadata(String, String)
 *  - parseMetadata(String)
 *
 * No database connection is needed; all tested paths are pure logic.
 */

@DisplayName("QuestionDAO — metadata builder & parser (white-box)")
class QuestionDAOTest {

    @Nested
    @DisplayName("buildLikertMetadata(int maxScale, String options)")
    class BuildLikertMetadataTests {

        @Test
        @DisplayName("Normal: scale=5, three options → correct pipe-delimited string")
        void normalLikertMetadata() {
            String result = QuestionDAO.buildLikertMetadata(5, "Agree,Neutral,Disagree");
            assertEquals("maxScale=5|options=Agree,Neutral,Disagree", result);
        }

        @Test
        @DisplayName("Single option — still produces valid output")
        void singleOptionLikert() {
            String result = QuestionDAO.buildLikertMetadata(1, "Yes");
            assertEquals("maxScale=1|options=Yes", result);
        }

        @Test
        @DisplayName("Scale=0 — edge value is stored as-is (no validation in builder)")
        void zeroScale() {
            String result = QuestionDAO.buildLikertMetadata(0, "A,B");
            assertEquals("maxScale=0|options=A,B", result);
        }

        @Test
        @DisplayName("Empty options string — produces empty options segment")
        void emptyOptions() {
            String result = QuestionDAO.buildLikertMetadata(3, "");
            assertEquals("maxScale=3|options=", result);
        }

        @Test
        @DisplayName("Large scale value — stored verbatim")
        void largeScale() {
            String result = QuestionDAO.buildLikertMetadata(100, "opt1,opt2,opt3");
            assertTrue(result.startsWith("maxScale=100|"),
                    "Should start with 'maxScale=100|'");
        }
    }

    @Nested
    @DisplayName("buildSliderMetadata(String label, int min, int max)")
    class BuildSliderMetadataTests {

        @Test
        @DisplayName("Normal: label=performance, min=0, max=100")
        void normalSlider() {
            String result = QuestionDAO.buildSliderMetadata("performance", 0, 100);
            assertEquals("label=performance|min=0|max=100", result);
        }

        @Test
        @DisplayName("Negative min value — stored verbatim (builder is value-neutral)")
        void negativeMin() {
            String result = QuestionDAO.buildSliderMetadata("score", -10, 10);
            assertEquals("label=score|min=-10|max=10", result);
        }

        @Test
        @DisplayName("min equals max — stored verbatim (validation is caller's responsibility)")
        void minEqualsMax() {
            String result = QuestionDAO.buildSliderMetadata("rating", 5, 5);
            assertEquals("label=rating|min=5|max=5", result);
        }

        @Test
        @DisplayName("Label with spaces — preserved as-is")
        void labelWithSpaces() {
            String result = QuestionDAO.buildSliderMetadata("teaching quality", 1, 10);
            assertEquals("label=teaching quality|min=1|max=10", result);
        }

        @Test
        @DisplayName("Empty label — produces empty label segment")
        void emptyLabel() {
            String result = QuestionDAO.buildSliderMetadata("", 0, 50);
            assertEquals("label=|min=0|max=50", result);
        }
    }

    @Nested
    @DisplayName("buildTextMetadata(String message)")
    class BuildTextMetadataTests {

        @Test
        @DisplayName("Normal message — produces 'message=...' string")
        void normalMessage() {
            String result = QuestionDAO.buildTextMetadata("Please describe in detail");
            assertEquals("message=Please describe in detail", result);
        }

        @Test
        @DisplayName("Empty string — produces 'message='")
        void emptyMessage() {
            String result = QuestionDAO.buildTextMetadata("");
            assertEquals("message=", result);
        }

        @Test
        @DisplayName("Null message — treated as empty (null-safe path in builder)")
        void nullMessage() {
            // Internal: message == null → "" is used
            String result = QuestionDAO.buildTextMetadata(null);
            assertEquals("message=", result);
        }

        @Test
        @DisplayName("Message with pipe character — stored verbatim (pipe is delimiter in parse)")
        void messageWithPipe() {
            String result = QuestionDAO.buildTextMetadata("option1|option2");
            assertEquals("message=option1|option2", result);
        }
    }

    @Nested
    @DisplayName("buildBinaryMetadata(String option1, String option2)")
    class BuildBinaryMetadataTests {

        @Test
        @DisplayName("Normal Yes/No — correct format")
        void normalYesNo() {
            String result = QuestionDAO.buildBinaryMetadata("Yes", "No");
            assertEquals("option1=Yes|option2=No", result);
        }

        @Test
        @DisplayName("Custom options — stored verbatim")
        void customOptions() {
            String result = QuestionDAO.buildBinaryMetadata("Agree", "Disagree");
            assertEquals("option1=Agree|option2=Disagree", result);
        }

        @Test
        @DisplayName("Same text for both options — stored (no dedupe in builder)")
        void sameOptions() {
            String result = QuestionDAO.buildBinaryMetadata("True", "True");
            assertEquals("option1=True|option2=True", result);
        }

        @Test
        @DisplayName("Empty strings — produces empty segments")
        void emptyStrings() {
            String result = QuestionDAO.buildBinaryMetadata("", "");
            assertEquals("option1=|option2=", result);
        }
    }

    @Nested
    @DisplayName("parseMetadata(String metadata)")
    class ParseMetadataTests {

        @Test
        @DisplayName("Null input — returns empty list (null-safe branch)")
        void nullInput() {
            List<String[]> result = QuestionDAO.parseMetadata(null);
            assertNotNull(result);
            assertTrue(result.isEmpty(), "Expected empty list for null input");
        }

        @Test
        @DisplayName("Empty string input — returns empty list")
        void emptyInput() {
            List<String[]> result = QuestionDAO.parseMetadata("");
            assertNotNull(result);
            assertTrue(result.isEmpty(), "Expected empty list for empty string");
        }

        @Test
        @DisplayName("Single key=value pair — list has one entry with correct key & value")
        void singlePair() {
            List<String[]> result = QuestionDAO.parseMetadata("maxScale=5");
            assertEquals(1, result.size());
            assertEquals("maxScale", result.get(0)[0]);
            assertEquals("5", result.get(0)[1]);
        }

        @Test
        @DisplayName("LIKERT metadata round-trip — three key=value pairs parsed correctly")
        void likertRoundTrip() {
            String metadata = QuestionDAO.buildLikertMetadata(5, "Agree,Neutral,Disagree");
            List<String[]> pairs = QuestionDAO.parseMetadata(metadata);

            assertEquals(2, pairs.size());
            assertEquals("maxScale", pairs.get(0)[0]);
            assertEquals("5",        pairs.get(0)[1]);
            assertEquals("options",  pairs.get(1)[0]);
            assertEquals("Agree,Neutral,Disagree", pairs.get(1)[1]);
        }

        @Test
        @DisplayName("SLIDER metadata round-trip — three pairs parsed correctly")
        void sliderRoundTrip() {
            String metadata = QuestionDAO.buildSliderMetadata("performance", 0, 100);
            List<String[]> pairs = QuestionDAO.parseMetadata(metadata);

            assertEquals(3, pairs.size());
            assertEquals("label", pairs.get(0)[0]);
            assertEquals("performance", pairs.get(0)[1]);
            assertEquals("min", pairs.get(1)[0]);
            assertEquals("0",   pairs.get(1)[1]);
            assertEquals("max", pairs.get(2)[0]);
            assertEquals("100", pairs.get(2)[1]);
        }

        @Test
        @DisplayName("BINARY metadata round-trip — two pairs parsed correctly")
        void binaryRoundTrip() {
            String metadata = QuestionDAO.buildBinaryMetadata("Yes", "No");
            List<String[]> pairs = QuestionDAO.parseMetadata(metadata);

            assertEquals(2, pairs.size());
            assertEquals("option1", pairs.get(0)[0]);
            assertEquals("Yes",     pairs.get(0)[1]);
            assertEquals("option2", pairs.get(1)[0]);
            assertEquals("No",      pairs.get(1)[1]);
        }

        @Test
        @DisplayName("TEXT metadata round-trip — single pair parsed correctly")
        void textRoundTrip() {
            String metadata = QuestionDAO.buildTextMetadata("Please elaborate");
            List<String[]> pairs = QuestionDAO.parseMetadata(metadata);

            assertEquals(1, pairs.size());
            assertEquals("message",         pairs.get(0)[0]);
            assertEquals("Please elaborate", pairs.get(0)[1]);
        }

        @Test
        @DisplayName("Pair without '=' separator — skipped (eq <= 0 branch)")
        void pairWithoutEquals() {
            // "noEquals" has no '=' so it should be filtered out
            List<String[]> result = QuestionDAO.parseMetadata("noEquals|key=val");
            assertEquals(1, result.size(), "Only the valid pair should be returned");
            assertEquals("key", result.get(0)[0]);
            assertEquals("val", result.get(0)[1]);
        }

        @Test
        @DisplayName("Value contains '=' character — only first '=' is treated as delimiter")
        void valueContainsEquals() {
            // "key=a=b": indexOf('=') == 3 → key="key", value="a=b"
            List<String[]> result = QuestionDAO.parseMetadata("key=a=b");
            assertEquals(1, result.size());
            assertEquals("key", result.get(0)[0]);
            assertEquals("a=b", result.get(0)[1]);
        }
    }
}

package software.testing;

import io.cucumber.java.en.Then;
import org.openqa.selenium.By;

import static org.junit.jupiter.api.Assertions.assertTrue;


public class PasswordFieldStepDefs extends AbstractStepDefs {

    @Then("the {string} field is of type {string}")
    public void fieldIsOfType(String locator, String expectedType) {
        By fieldLocator = By.id("password");
        boolean isCorrectType = homePage.isFieldType(fieldLocator, expectedType);
        assertTrue(isCorrectType, "The field '" + locator + "' does not have the expected type: " + expectedType);
    }
}

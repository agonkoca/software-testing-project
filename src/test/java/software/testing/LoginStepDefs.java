package software.testing;

import io.cucumber.java.en.Then;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class LoginStepDefs extends AbstractStepDefs {
    @Then("the inventory page is opened")
    public void openInventoryPage() {
        homePage.openInventoryUrl();
    }

    @Then("the {string} error message is shown")
    public void theErrorMessageMessageIsShown(String errorMessage) {
        assertEquals(errorMessage, homePage.getErrorMessage());
    }
}


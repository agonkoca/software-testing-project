package software.testing;

import io.cucumber.java.en.When;

public class RestrictedAccessStepDefs extends AbstractStepDefs {

    @When("the user navigates directly to the inventory page without logging in")
    public void navigateToRestrictedUrl() {
        homePage.navigateToInventoryWithoutLogin();
    }
}

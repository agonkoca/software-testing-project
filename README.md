# Automated Software Testing Project

This project implements automated testing for a selected website using **Gherkin**, **Cucumber**, and **Selenium WebDriver**. The goal is to demonstrate the creation, execution, and management of test cases for end-to-end functionality.

## Features

- **Test Scenarios**: Gherkin feature files for behavior-driven testing.
- **Scenario Outlines**: Parameterized tests for dynamic inputs.
- **Web Automation**: Selenium WebDriver for browser interaction.

## Technology Stack
- **Java**
- **Gherkin**
- **Selenium WebDriver**
- **Cucumber**

## Project Structure

- `src/test/java`: Step definitions and test runners.
- `src/test/resources`: Gherkin feature files.
- `PageObjects`: Encapsulates web elements and actions.
- `TestReports`: Generated test execution reports.
- `drivers`: Chrome browser driver executables (ChromeDriver).

## Installation and Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/username/automated-testing.git
   cd automated-testing
   
2. Install dependencies using Maven or your preferred build tool:
   ```bash
   mvn install

3. Add the appropriate WebDriver for your browser to the AbstractStepDefs class.
4. Execute tests using the following command:
   ```bash
   mvn test
   
## Test Case Examples

### Feature: Login Testing
- **Scenario**: Valid user login.
- **Scenario Outline**: Multiple user login attempts with varying credentials.

### Feature: Navigation
- **Scenario**: Check navigation through primary menu options.



   

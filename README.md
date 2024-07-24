# api_testing_setup

This repository is designed to help beginners start learning about API testing using tools such as Robot Framework and Selenium. The setup is beginner-friendly and requires only basic IT knowledge. No prior experience in testing is necessary. The ultimate goal is for learners to create their own tests, becoming familiar with the tools and understanding API testing fundamentals.

## Environments
1. **Development environment**: This is provided by a development container (devcontainer) that includes all the necessary Robot Framework and Selenium packages required to execute the tests. This setup ensures a consistent and hassle-free learning experience.

2. **Target API**: The target for our testing exercises is the Google Books API, which allows us to send API requests and receive data about books. For examples and more information on how to use the Google Books API, please refer to the [official documentation](https://developers.google.com/books/docs/v1/getting_started).

## Prerequisites
Before you begin, ensure you have the following prerequisites installed and set up:

- Visual Studio Code (VSCode) 
- Devcontainer VSCode extension
- Docker and Docker Compose or Podman packages equivalent.

## Test Scenario
The repository includes test scenarios that demonstrate how to use both Robot Framework and Selenium for API testing. Each tool is used to perform the same test scenario. The script query the Google Books API with a given ISBN number and print the title of the book associated with that ISBN to the console.

## Instructions
Follow these steps to get started with the learning environment:

1. Clone this repository to your local machine.
2. Open VSCode and use the Command-Palette 'Ctrl+Shift+P' to select Reopen in Container.

## Executing Test Cases
- To execute the Robot Framework test case, run the following command in the VSCode terminal:
    ```bash
    robot --outputdir robot/logs robot/test_suite.robot
    ````
- To view the robot logs, navigate to the `api_testing_setup` folder in your file explorer and open the `log.html` file located in `api_testing_setup/robot/logs/`.
- To execute the Selenium test case, run the following command in the VSCode terminal:
    ```bash
    python selenium/sel_test.py
    ````
## Conclusion
This repository provides a hands-on approach to learning API testing with Robot Framework and Selenium. By following the instructions and exploring the test scenarios, learners will gain practical experience and a deeper understanding of API testing techniques.

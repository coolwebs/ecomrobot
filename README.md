# ecomrobot
Robot testing framework for ecommerce project work

## Setting up Robot Framework project
Recommend going to the Web Demo and downloading this package from GitHub to get started - https://github.com/robotframework/WebDemo or you can just dive in and start doing your own thing.

1. Set up the new Python project and create VENV `python3 -m venv env` following recommended best practice
2. Activate our virtual environment - source `env/bin/activate`. Can skip all this if using PyCharm.
3. Install the robot framework using the `pip package manager pip install robotframework`
4. Install the selenium library for robot framework `pip install robotframework-selenium2library`
5. If using PyCharm IDE, look for the intellibot plugin and install it so it can do syntax highlighting for .robot files. Can install using terminal also
6. Super TIP! When you start up and run the test server, you will need to open up a new terminal tab/window. By default, you will not have the venv activated. You need to repeat step 2 again.
7. To run tests in Google Chrome, go and get the Chrome driver from https://sites.google.com/a/chromium.org/chromedriver/downloads and place it in the path `/usr/local/bin/chromedriver`. Make sure that your Chrome version matches the chromedriver version for capability. You will get error messages that tell you about this. Also you may find that the file does not have permissions to run. Please view https://stackoverflow.com/questions/60362018/macos-catalinav-10-15-3-error-chromedriver-cannot-be-opened-because-the-de for solution
8. Safari works by default just as long as you "Allow remote automation" in developer tools
To run tests in Firefox, go and download the relevant gecko driver from https://github.com/mozilla/geckodriver/releases to your computer and then set a path to the exe file in the robot testing script. If you place it in `/usr/local/bin` I find that you not need to set the path - it is the default like the chromedriver.

## Install and setup Allure
Allure is a great 'plug and play' tool that will help you visualise your test results - beyond the default test reporting tool that Robot Framework provides

For Mac OSX, use the brew command brew install allure 
For Linux use:

`sudo apt-add-repository ppa:qameta/allure` \
`sudo apt-get update` \
`sudo apt-get install allure`

1. If you are using IDE to run tests locally it may ignore Allure configuration specified in build file (as IntelliJ IDEA does). In order to make it work consider using allure.properties file to configure Allure. Check out configuration section for more information.
2. Check that brew installed allure properly by using allure --version
3. Run allure serve /Results from the robot framework project dir. A report will be generated and likely have nothing in it. Not yet recognising the robot test results. Still a good thing.
4. Go and get the allure-robotframework listener and install it into the project using the Project interpreter in PyCharm or can use pip to install it pip install allure-robotframework
5. Now run the robot tests using the allure listener to be able to record all the results to default output director. I think there is option to change default dir but good enough to leave it where it is, I want to keep it separate from RF reports anyway. Run the command robot --listener allure_robotframework my_robot_file.robot
6. Now spin up the allure reporting tool instance by running allure serve output/allure/ from within the project dir (https://pypi.org/project/allure-robotframework/)

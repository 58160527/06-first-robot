*** Settings ***
Library     SeleniumLibrary
Suite teardown  Close All Browsers
*** Test Cases ***
Open Register Page Successful
    Open Browser    http://angsila.cs.buu.ac.th/~wittawas/601/887240/labs/testdemo/index.php    chrome


Register Page Check All Required Fields
    Open Browser    http://angsila.cs.buu.ac.th/~wittawas/601/887240/labs/testdemo/index.php/register    chrome
  Click Element 	id=btn_submit
  Wait Until Page Contains	 The Email field is required.
  Wait Until Page Contains	 The Password field is required.
  Wait Until Page Contains	 The Re-type Password field is required.
  Wait Until Page Contains	 The Name field is required.

    
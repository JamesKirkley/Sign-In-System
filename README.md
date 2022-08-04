# Sign-In-System

Purpose

The goal of the program is to register and login successfully to the application and to store user data. 
The data stored is the login information, full name, and occupation. Password reset and signing out are 
also included.



User Manual

The first thing a user will see is the login page, if you need a new account click the “Register” Button, If 
you have an account, enter your information and click “Login”.
Clicking “Register” will bring up a page where a user can enter their desired login information and their 
name and occupation. After this is done, click “Sign Up” and the user will be returned to the previous 
page and will be able to login with the information previously provided.
Clicking “Forgot Password?” will bring up another page where the user can reset their password as long 
as the email is registered.
After successfully creating an account and logging in, the user will be directed to a page with their 
entered information from registration where the “Logout” button is present if the user wishes to logout.



How the App Works

The app works off of firebase as its core. Firebase is a package dependency that also includes 
Firebasedatabase, which stores user data and FirebaseAuth which secures login information.
Combine is also used in conjunction with firebase to setup the logic for the registration service, login 
service and session management.
SwiftUI is used to build all the UI including login screen, registration, and password reset screens.
Error handling is also handled with the alert modifier. 
All files all labeled inside of the correct group names with all of them having separated into service, 
model, and view categories. This includes a folder named base with reusable components inside.



Video Link

Video of the app fulfilling all use cases.
https://youtu.be/ukPZdS76BOo





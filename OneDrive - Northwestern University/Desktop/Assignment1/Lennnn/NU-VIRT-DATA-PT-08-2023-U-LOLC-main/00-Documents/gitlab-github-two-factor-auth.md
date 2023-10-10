# Two Factor Authentication 

Recently (as in March 2023), github and gitlab have started requiring at least some of their members to use two factor authentication and by the end of 2023 nearly all members will be using this system.  This is a security measure that requires obtaining a pass code that expires very frequently from an app like Google Authenticator or via text message.  

Since we will be using Google tools in this class, using Google Authenticator might be a good choice but other options are available - Authy, Duo, Microsoft Authenticator, etc.  

The process for setup is fairly easy.  
1.  First install Google Authenticator ([Instructions](https://support.google.com/accounts/answer/1066447?hl=en))
1.  The apps main screen should probably be blank when you first install it but in the lower right corner will be a `+` which lets you add systems like GitLab and Github that use 2FA.
1.  Before we can add Github or GitLab, we must navigate to their settings area.  
    1.  Github:  First login to Github.  You may get a message about going to your email to get a passcode to continue.  Do this if requested.  Once logged in, go to the upper right corner of the website and select the space where a profile image would go.  The menu that appears will have a `Settings` option. Click this option and on the new page select from the left side menu the option for `Password and authentication`.  Click the button in the middle of the page that says `Enable two-factor authentication`. You will now see a QR code.  Open the Google Authenticator app on your phone and select the `+` symbol in the lower right corner.  One of the options is to `Scan a QR code`.  This is probably the easiest option.  Scan the QR Code and you will immediately have an entry added to the Google Authenticator main screen.  Type the provided code into the webpage.  On the ensuing page, download the recovery codes and store them in a safe place on your computer.   Afterwards, click that you have saved your code and that completes the process.
    1.  GitLab:  The process for GitLab is similar but I am not aware of a required time period for it to be enabled.  First login to GitLab (git.bootcampcontent.com).  In the upper right corner, click on the profile image location and select `Preferences` from the menu.   On the new page, select the right sidebar menu option of `Account`.  Select the button on the middle of the page that says `Manage two-factor authenication` or `Enable two-factor authentication`.  I believe you will see a new screen that will say `Set up new device` and once you click on this you will receive multiple options.  You can select an app or in my case it allows me to use a built-in biometric sensor on my computer.  My instructions are not as clear here because it has changed a couple times recently so the most update options you have can be found in the GitLab resource below.  
1.  You may be asked at times to enter the authentication codes from the app when logging into these services.  

Here are some resources:  
* [Github Docs about 2FA](https://docs.github.com/en/authentication/securing-your-account-with-two-factor-authentication-2fa)
* [GitLab Docs about 2FA](https://docs.gitlab.com/ee/user/profile/account/two_factor_authentication.html)  




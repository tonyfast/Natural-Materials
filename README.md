## Getting Started:
+ Start a New Project Folder
Create a new folder to host your Matin project at.  Make this folder your current working
directory in Matlab.

+ Access the setup code called GitHubSetUp.m

In the Matlab command line, type in the command 
`urlwrite('https://raw.github.com/tonyfast/matin/setup/GitHubSetUp.m','GitHubSetUp.m');`

This command will down a setup code from Tony Fast's GitHub page.  The command will
  + Fork the current working version of Matin
  + Initialize both the master and gh-pages branches of your new working directory
  + Connect Matin as a upstream branch that will be constantly be updated to improve you webpages.

+ Run GitHub setup
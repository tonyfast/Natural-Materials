## Getting Started:
1. Start a New Project Folder
Create a new folder to host your Matin project at.  Make this folder your current working
directory in Matlab.

2. Access the setup code called GitHubSetUp.m

In the Matlab command line, type in the command 
`urlwrite('https://raw.github.com/tonyfast/matin/setup/GitHubSetUp.m','GitHubSetUp.m');`

This command will down a setup code from [Tony Fast's GitHub](www.github.com/tonyfast).  The command will
  + Fork the current working version of Matin
  + Initialize both the master and gh-pages branches of your new working directory
  + Connect Matin as a upstream branch that will be constantly be updated to improve you webpages.

3. Setup a new GitHub repository

  1. Login to GitHub and visit https://github.com/new.
  2. Create you new repository.
  3. Once you have created your repository, copy the HTTP/SSH link into your clipboard for use in Matlab.  Or simply remember the name to your *.git repository

4. Run GitHub setup

Execute the commands 
``
reponame = 'https://github.com/youname/repo.git'; % is the link you copied in the previous step
issudo = true; % use this flag if you require sudo privileges 
issudo = false; % use this flag if you require don't require sudo privileges (Default)
GitHubSetUp( reponame, issudo );
``
This will perform each of the step in 2.

5. Run InitializeTemplate.m
InitializeTemplate will setup some gitignore features to provide a clean working space and add the appropriate paths to your Matlab directory.


## Your Matin Repository
Your Matin repository is designed for each user to easily share, discuss, and publish there research data rapidly.
* Matin does not store your data, Matin stores locations of your data.  There are loads of great tools for sharing your data.  Mashable recently published a article on [22 File-Sharing Tools for Easy Collaboration](http://mashable.com/2014/03/06/file-sharing-tools/?utm_cid=mash-com-li-main-link).  Here is a short list of options:
   1. NOT EMAIL
   2. Dropbox - dropbox.com
In collaborations for some government partners, Dropbox is a limitation due to internal regulations therefore it is nice to have a backup.   
   3. Google Drive - www.google.com/drive
   4. Flickr - www.flickr.com
Flickr gives you a 1TB of space for free.  Flickr has a seamless API that works in Matlab, C, Java, Python, HTTP.  It tracks conversation.  Groups and Collections are nice.  It tags data.  It is great for storing any image data.
* Visualizations are thumbnails or avatars of the original data.  Images are hosted elsewhere.  Some great visualization tools are
   1. Plot.ly - makes interactive embedded visualizations
   2. Flickr - DUH
   3. Bokeh - http://bokeh.pydata.org/
* Both data and metadata are preserved by a versioning system that constantly tracks the updates and changes your data, visualization, and digital data discussions.

### Two Branches
[Github](https://help.github.com/articles/branching-out#branches) describes branches nicely.

#### master branch
Your work will mostly live here.  The master branch is intended to behave as any other master branch.  The master branch on your local machine will contain a few api functions that shift files too and from your master branch.

#### gh-pages branch
Github is cool right?  If you make a branch called `gh-pages` then the files in that branch work as a web server.  Cool right?  Well even better they have this thing called [Jekyll](jekyllrb.com) that makes really nice static webpages from machine readable files.

### What Matin does
Matin operates off of the belief that structuring data needs to begin at the source.  Matin requires a certain data structures to use its utilities.  From there it becomes very easy to share local information to interactive public facing webpages.  Matin operates by shifting around important metadata from your `master` branch to your `gh-pages` branch.  You, The User, gets to choose what the world sees and what they don't.  Also, having all of this in a versioning system is a really great way to conduct research.

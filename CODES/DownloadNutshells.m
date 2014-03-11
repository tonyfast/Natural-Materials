function DownloadNutshells( location )

if nargin == 0
    location = './Natural-Material-Nutshells';
end

names = {'coconut','hazelnut','ivory','pecan','macadamia'};
    
ext = '.mat';

remote_location = 'http://mined.gatech.edu/images/assets/nutshell/';


if ~exist( location, 'dir')
    mkdir( location );
end
for ii = names
    disp( sprintf( 'Downloading a 3-D CT scan of a %s.', char(ii)));
    urlwrite( sprintf('%s%s%s', remote_location, char(ii), ext ), fullfile( location, horzcat( char(ii), ext)));
end
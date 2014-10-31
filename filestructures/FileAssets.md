# File assets #

## Locations: ##
- /assets & /resources & /res
- /content


## Definition ##
Almost every projects needs assets like jpge images, xml files and videos.
Put them in one of the aboved named locations.
If there is more than one file of any type, then create subfolders like
/assets/images/test.jpg, /assets/images/test2.jpg or /assets/xml/start.xml, /assets/xml/test.xml. 

There are subtile differences between the assets that belong in each of those named folders.

###Assets###
Assets are files that are needed on app start.
For example you have a settings.xml file that configures where the app should download files from. Then this file belongs into /assets because otherwise the app couldn't even start properly. /resources is the default folder on iOS to store the app icons and other files needed for the app to run. /res is the default folder on Android. That is why you can use that foldernames too.

###Content###
Content should contain everything that is not needed for the app to start.
This means those files could also be placed on a webserver and be downloaded by the app on start.

It proved beneficial to distinct between /assets and /content
because there are apps where at first the content is online and later on the client asks for a version that contains all content. Then you simply place it inside /content and release a new version. If you would place the files inside /assets you would mix them with the other files.


## Characteristics ##

- place all file assets like images, xml, ini, videos, pdf here
- no coding files allowed (there are still webprojects that place JavaScript files here. We need to improve on that in the future).
- decide on project start if you add those files to svn / git or not.
If not you must create another form of regular backup. It's also allowed to keep some assets in svn / git and other not (for example add everything except videos)


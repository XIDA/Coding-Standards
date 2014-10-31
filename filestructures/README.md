# Project file structures

XIDA projects follow a specific file and folder structure which proved beneficial in past projects.

There are defined folder names that should not contain anything else than the files described in the following documents. 
For example there are defined folders for image assets. Therefore you should not place any code files inside those folders.

File and folder names mentioned here are case sensitive. 

The basic concept follows a [MVC](http://de.wikipedia.org/wiki/Model_View_Controller) approach. 

This means the file structure is like this:

- /Controllers
- /Models
- /Views

The kind of files that belong into those folders varies from language to language.
While for an Objective-C project all files might be .h and .m, for a php project it can be better to have *Controllers* and *Models* of type .php while the *Views* are .tpl (Smarty Templates). The important thing is not to mix files, if you decide to use .tpl for the Views then don't later add .php files.


There are more folders needed besides those listed above.
Those will be explained in the following documents. 



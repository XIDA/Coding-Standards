# Components

## Location: ##
/components/{componentname}/

## Definition ##
Components can contain one or more classes.
The main reason to create a component is that it would be more difficult to integrate the classes with the rest of the app setup. For example if the app uses a MVC aproach but the behaviour of the component is totally different. Or if the component is based on a library and it would be a lot of work to convert the library to conform with the rest of the app.

## Characteristics ##


- not allowed to use any other classes of the project
- all the information the component needs must be send to it with the contructor / properties
- the communication with the app needs to be done via delegates
- can use classes from Libraries
- it must be possible to drag and drop components to other projects without any dependencies warnings (except the used Libraries)
- Startfile
	- name: {componentname}Main.{extension}
	- must describe the dependencies in the class comments





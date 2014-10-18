# Managers #

## Location: ##
/managers/{managername}.{extension}

## Definition ##
A manager should be used when you need access to functions or values from a lot of different classes. The manager gives you static access to the function / values you need from every class. A manager should have a single purpose. A FilesManager class can give you access to filepaths while a BluetoothManager can give you access to everything related to Bluetooth.

**Don't create general purpose Managers.**

## Characteristics ##

- all public manager functions must grant static access
- if the manager needs a setup function to work properly *setup()*

- a manager should have a specific purpose




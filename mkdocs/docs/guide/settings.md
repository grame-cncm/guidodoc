{!include.txt!}

# Guido Engine settings

The layout of a score is under control of a set of system parameters. Since version 1.7.7 of the Guido Engine, theses parameters can be specified at gmn level using special system [variables](../variables).  
**Note**: once a script includes system variables, it isn't any more under control of the global engine settings.

## Parameters names

The variables name below are reserved named. 

- SYSTEM_DISTANCE  
Control the distance between systems, distance is in internal units.  
Type : float  
Default value: 75

- SYSTEM_DISTRIBUTION  
Control the systems distribution.  
Type : integer  
Default value: 1  
Possible values are:  
~~~~~~
      1 auto distribution  
      2 always distribute  
      3 never distribute  
~~~~~~

- SYSTEM_DISTRIBUTION_LIMIT  
Maximum distance allowed between two systems, for automatic distribution mode.  
Distance is relative to the height of the inner page.  
Type : float  
Default value: 0.25 (that is: 1/4 of the page height)

- FORCE  
Force value of the Space-Force function.  
Typical values range from 400 to 1500.  
Type : float  
Default value: 750

- SPRING  
The spring parameter.  
Typical values range from 1 to 5.  
Type : float  
Default value: 1.1

- NEIGHBORHOOD_SPACING  
A boolean value to control the use of the Neighborhood Spacing algorithm.  
Type : boolean  
Default value: false

- OPTIMAL_PAGE_FILL  
A boolean value to control the use of the Optimal Page Fill algorithm.  
Type : boolean  
Default value: true

- RESIZE_PAGE_TO_MUSIC  
A boolean value to tell the engine to resize the page to the music content.  
Type : boolean  
Default value: true

- CHECK_LYRICS_COLLISIONS  
A boolean value intended to check and resolve lyrics collisions.  
Type : boolean  
Default value: false


## System variables types

A system variable expects a given type of value (indicated for each variable). These type are the following:

- integer: an integer value  
- float: a floating point value. Integers are converted to float.
- boolean: accepts integer values and the strings 'false' or 'true'

When a value doesn't match the expected type, the system variable is ignored.


## Warning

The following variables are unchecked, i.e. their values are passed to the system with a minimal control : the values are rejected when <= 0. However, using values outside their expected range may result in very strange layout and even in **system crash**.

- SYSTEM_DISTANCE  
- SYSTEM_DISTRIBUTION_LIMIT  
- FORCE  
- SPRING  





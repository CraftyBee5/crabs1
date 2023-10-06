# crabs1
#This is a games called crabs with multipe functions to create and move a captain and crab object
DESCRIPTIONS OF ALL FILES 
crabs calls all functions in file with size variables and plots using functions
DrawLine creates a connecting line from point one to point two given in parameters
DrawCapt gets the points from getCapt and plots them, then uses drawLine to connect them
getCapt reads values to all of the individual points on the captain
drawMap uses the Background png file to create the background image of the entire interface.
getTranslation moves the captain to a given point and is called in crabs
getRotation takes thetaCapt as an input and returns a matrix containing calues to be multiplied by the original matrix to rotate it
moveCapt takes all the values of the captain, as well as what command was given to it, then it makes each keyboard comman do a specific function in an if statement, where "w" moves each value forward at the rotated angle. 

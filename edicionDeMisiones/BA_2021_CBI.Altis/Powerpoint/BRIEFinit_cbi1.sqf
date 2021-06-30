//Based on Original Script by goldenfiver take on Bohemia Forum Corriged and edited by Cutkiller26 [SIRA]
//Source: http://forums.bistudio.com/showthread.php?171349-Scripting-a-Power-Point-presentation-need-help
_BRIEFinit = _this select 0;

//change "slideArray" with location and name of picture jpg or paa files. You can add how many picture.
slideArray = ["images\0.jpg","images\1_0.jpg","images\1_1.jpg","images\1_2.jpg","images\1_3.jpg","images\1_4.jpg","images\1_5.jpg","images\1_6.jpg","images\1_7.jpg","images\1_8.jpg","images\1_9.jpg","images\1_10.jpg","images\1_11.jpg","images\1_12.jpg","images\1_13.jpg","images\1_14.jpg","images\1_15.jpg","images\1_16.jpg","images\1_17.jpg","images\1_18.jpg","images\1_19.jpg","images\1_20.jpg","images\1_21.jpg","images\1_22.jpg"]; 
slideIndex = 0;
slides = count slideArray;

greenText = {"<t color='#00FF00'>" + _this + "</t>"};
redText = {"<t color='#FF0000'>" + _this + "</t>"};
orangeText = {"<t color='#FFA500'>" + _this + "</t>"};

player removeAction BRIEF1;
player removeAction BRIEF2;
player removeAction BRIEF3;

BRIEF1 = player addAction ["Next" call greenText, "Powerpoint\BRIEFnext1.sqf", [], 99, false, false, ""];  //should be first in action list
BRIEF2 = player addAction ["Previous" call orangeText, "Powerpoint\BRIEFprevious1.sqf", [], 98, false, false, ""];  //should be second in action list
BRIEF3 = player addAction ["Close Powerpoint" call redText, "Powerpoint\BRIEFend1.sqf", [], 97, false, false, ""];  //should be last in action list

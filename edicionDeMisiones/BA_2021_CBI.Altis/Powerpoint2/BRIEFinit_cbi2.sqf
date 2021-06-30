//Based on Original Script by goldenfiver take on Bohemia Forum Corriged and edited by Cutkiller26 [SIRA]
//Source: http://forums.bistudio.com/showthread.php?171349-Scripting-a-Power-Point-presentation-need-help
_BRIEFinit = _this select 0;

//change "slideArray" with location and name of picture jpg or paa files. You can add how many picture.
slideArray = ["images\0.jpg","images\2_0.jpg","images\2_1.jpg","images\2_2.jpg","images\2_3.jpg","images\2_4.jpg","images\2_5.jpg","images\2_6.jpg","images\2_7.jpg","images\2_8.jpg","images\2_9.jpg","images\2_10.jpg","images\2_11.jpg","images\2_12.jpg","images\2_13.jpg","images\2_14.jpg","images\2_15.jpg","images\2_16.jpg","images\2_17.jpg","images\2_18.jpg","images\2_19.jpg","images\2_20.jpg","images\2_21.jpg","images\2_22.jpg","images\2_23.jpg","images\2_24.jpg","images\2_25.jpg"]; 
slideIndex = 0;
slides = count slideArray;

greenText = {"<t color='#00FF00'>" + _this + "</t>"};
redText = {"<t color='#FF0000'>" + _this + "</t>"};
orangeText = {"<t color='#FFA500'>" + _this + "</t>"};

player removeAction BRIEF1;
player removeAction BRIEF2;
player removeAction BRIEF3;

BRIEF1 = player addAction ["Next" call greenText, "Powerpoint2\BRIEFnext2.sqf", [], 99, false, false, ""];  //should be first in action list
BRIEF2 = player addAction ["Previous" call orangeText, "Powerpoint2\BRIEFprevious2.sqf", [], 98, false, false, ""];  //should be second in action list
BRIEF3 = player addAction ["Close Powerpoint" call redText, "Powerpoint2\BRIEFend2.sqf", [], 97, false, false, ""];  //should be last in action list

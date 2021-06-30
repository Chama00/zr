//Based on Original Script by goldenfiver take on Bohemia Forum Corriged and edited by Cutkiller26 [SIRA]
//Source: http://forums.bistudio.com/showthread.php?171349-Scripting-a-Power-Point-presentation-need-help
_BRIEFinit = _this select 0;

//change "slideArray" with location and name of picture jpg or paa files. You can add how many picture.
slideArray = ["images\0.jpg","images\3_0.jpg","images\3_1.jpg","images\3_2.jpg","images\3_3.jpg","images\3_4.jpg","images\3_5.jpg","images\3_6.jpg","images\3_7.jpg","images\3_8.jpg","images\3_9.jpg","images\3_10.jpg","images\3_11.jpg","images\3_12.jpg","images\3_13.jpg","images\3_14.jpg","images\3_15.jpg","images\3_16.jpg","images\3_17.jpg","images\3_18.jpg","images\3_19.jpg","images\3_20.jpg","images\3_21.jpg","images\3_22.jpg","images\3_23.jpg","images\3_24.jpg","images\3_25.jpg","images\3_26.jpg","images\3_27.jpg","images\3_28.jpg","images\3_29.jpg","images\3_30.jpg"]; 
slideIndex = 0;
slides = count slideArray;

greenText = {"<t color='#00FF00'>" + _this + "</t>"};
redText = {"<t color='#FF0000'>" + _this + "</t>"};
orangeText = {"<t color='#FFA500'>" + _this + "</t>"};

player removeAction BRIEF1;
player removeAction BRIEF2;
player removeAction BRIEF3;

BRIEF1 = player addAction ["Next" call greenText, "Powerpoint3\BRIEFnext3.sqf", [], 99, false, false, ""];  //should be first in action list
BRIEF2 = player addAction ["Previous" call orangeText, "Powerpoint3\BRIEFprevious3.sqf", [], 98, false, false, ""];  //should be second in action list
BRIEF3 = player addAction ["Close Powerpoint" call redText, "Powerpoint3\BRIEFend3.sqf", [], 97, false, false, ""];  //should be last in action list

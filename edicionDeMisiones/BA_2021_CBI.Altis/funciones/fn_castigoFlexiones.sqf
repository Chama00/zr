params ["_aspirante"];

_aspirante playMove "AmovPercMstpSnonWnonDnon_exercisePushup";

waitUntil { (animationState _aspirante) != "amovpercmstpsnonwnondnon_exercisepushup" };
_aspirante playMove "";
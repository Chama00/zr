params ["_aspirante"];

_aspirante playMove "AmovPercMstpSnonWnonDnon_exercisekneeBendB";

waitUntil { (animationState _aspirante) != "amovpercmstpsnonwnondnon_exercisekneebendb"};
_aspirante playMove "AmovPercMstpSnonWnonDnon_exercisekneeBendA";

waitUntil { (animationState _aspirante) != "amovpercmstpsnonwnondnon_exercisekneebenda"};
_aspirante playMove "AmovPercMstpSnonWnonDnon_exercisekneeBendB";

waitUntil { (animationState _aspirante) != "amovpercmstpsnonwnondnon_exercisekneebendb"};
_aspirante playMove "";
///@desc Menu Start
var _random=irandom(3);
//Draw menu text
switch(_random){
case 0:
		Battle_SetDialog("* Froggit hops to and fro.");
		break;
case 1:
		Battle_SetDialog("* Froggit idly jumps about.");
		break;
case 2:
		Battle_SetDialog("* Froggit bounces about,&  wondering about the meaning of&  life.");
		break;
case 3:
		Battle_SetDialog("* Froggit's mind is all over the&  place.");
		break;
}

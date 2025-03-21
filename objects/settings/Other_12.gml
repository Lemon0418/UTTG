switch (_bordertype) {
	case 1: Border_SetSprite(spr_border_simple);
	break;
	case 2: Border_SetSprite(noone);
	break;
	case 3: Border_SetSprite(spr_border_intro);
	break;
	case 4: Border_SetSprite(spr_border_simple);
	break;
}

border._enable_fancy_border = _bordertype == 2;
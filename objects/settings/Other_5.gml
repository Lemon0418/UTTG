// save settings

global.enabled_dynamic_border = (_bordertype == 4);
global.border = _bordertype;

ini_open("settings.ini");

ini_write_real("BORDER", "EnableDynamic", global.enabled_dynamic_border);
ini_write_real("BORDER", "BorderType", global.border);

ini_close();
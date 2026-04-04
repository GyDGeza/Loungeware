///@desc Animate Popup

var _channel = animcurve_get_channel(zayzoon_mailit_acWindow, 0);
var _val = animcurve_channel_evaluate(_channel, curvePos);

image_xscale = _val;
image_yscale = _val;

curvePos += 0.1;
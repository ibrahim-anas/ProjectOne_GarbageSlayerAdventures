//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float transparancy;

void main()
{
	gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	// Setting a green, transparent filter
	gl_FragColor.r = 0.3;	
	gl_FragColor.g = 0.8;
	gl_FragColor.b = 0.3;
	gl_FragColor.a = transparancy;
}

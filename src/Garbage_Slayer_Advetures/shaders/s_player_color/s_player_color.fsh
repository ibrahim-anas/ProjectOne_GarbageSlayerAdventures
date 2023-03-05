//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{	
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	// Turning down blue and green values
	gl_FragColor.b = 0.4;
	gl_FragColor.g = 0.4;	
}

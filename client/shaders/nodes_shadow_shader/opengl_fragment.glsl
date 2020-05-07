uniform sampler2D baseTexture;

void main(void)
{
	vec2 uv = gl_TexCoord[0].st;
	if(texture(baseTexture, uv).a < 1.0){
		discard;
	}
	gl_FragColor = vec4(gl_FragDepth);
}

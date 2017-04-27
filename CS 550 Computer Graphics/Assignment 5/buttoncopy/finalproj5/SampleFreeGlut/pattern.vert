#version 330 compatibility

uniform float	uTime;		// "Time", from Animate( )
out vec2 vST;		// texture coords
out vec3 vColor;
uniform float uBoth;

uniform int uNo;
uniform int uVertex;	

const float PI = 	3.14159265;
const float AMP = 	0.2;		// amplitude
const float W = 	2.;		// frequency
float dist;
void
main( )
{ 

	vST = gl_MultiTexCoord0.st;
	vec4 ECposition = gl_ModelViewMatrix * gl_Vertex;
	vec3 vert = gl_Vertex.xyz;
	
	
	if (uVertex == 1){
	vert.x = vert.x*12*sin(2*3.142*uTime);
	vert.y = vert.y*12*cos(2*3.142*uTime);	
	vert.z = vert.z;//*12*cos(uTime);	
	
	}
	gl_Position = gl_ModelViewProjectionMatrix * vec4( vert, 1. );


	if (uBoth ==1)
	{
	
	uVertex == 1;
	}

	if (uNo==1)
	{
	uVertex==0;
	}

}
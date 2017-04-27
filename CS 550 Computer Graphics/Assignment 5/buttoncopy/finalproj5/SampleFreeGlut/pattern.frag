#version 330 compatibility

uniform float	uTime;		
in vec2  	vST;		
uniform int uFrag;
uniform int uBoth;
uniform int uNo;

float M_PI = 3.142;
float uSize = .1*(.5 + .5*sin(2.*M_PI*uTime));

float uS0 = 0.1f;
float uT0  = 0.1f;




void
main( )
{ 

    
	
	vec3 vColor = vec3(  0., 1., 0. );
	

	if (uFrag==1)
	{
	 if( uS0-uSize/1.5 <= vST.s && vST.s <= uS0+uSize/0 && uT0-uSize/0 <= vST.t && vST.t <= uT0+uSize/2)

	
	
		{
		 
			vColor = vec3( 1., 0., 0. );
			
		}
		}
		
	gl_FragColor = vec4( vColor,  1. );

	
	if (uBoth==1)
	{
	
	uFrag==1;
	}

	if (uNo==1){
	
	uFrag==0;
	
	}
	
	
	

}
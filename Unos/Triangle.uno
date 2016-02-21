using Uno;
using Uno.Collections;
using Fuse;
using Fuse.Elements;
using Uno.Graphics;

namespace Unos{
	public class Triangle : Element
	{
		public float Blue{get;set;}        // a property to play with
		    override protected void OnDraw(Fuse.DrawContext dc)
		    {
		        draw
		        {
		            float2[] vertices: new float2[]
		                {
		                    float2(-0.5f, -0.5f),
		                    float2( 0.5f, -0.5f),
		                    float2( 0.0f,  0.5f)
		                };
		                
		                ClipPosition: float4(vertex_attrib(vertices), 0, 1);
		                PixelColor: float4(1, 0, 0, 1);
		        };
		    }
	}

}
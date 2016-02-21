using Uno;
using Uno.Collections;
using Fuse;
using Fuse.Elements;
using Uno.Graphics;
using Uno.Geometry;

namespace Unos
{
	public class Quadrilatere : Element
	{
		public float Blue{get;set;}        // a property to play with
		    override protected void OnDraw(Fuse.DrawContext dc)
		    {
		        draw
		        {
		            float2[] Vertices: new []
		            {
		                float2(0, 0), float2(0, 1), float2(1, 1),
		                float2(0, 0), float2(1, 1), float2(1, 0)
		            };
		            float2 Coord: vertex_attrib(Vertices);
		            ClipPosition: Vector.Transform(float4(Coord*ActualSize,0,1), dc.GetLocalToClipTransform(this));
		            PixelColor: float4(Coord,Math.Clamp(Blue,0,1),1);
		        };
		    }
	}
}

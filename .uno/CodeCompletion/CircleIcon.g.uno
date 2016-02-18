public partial class CircleIcon: Fuse.Controls.Panel
{
    MyBaseApp_FuseControlsImage_FuseResourcesImageSource_Source_Property temp_Source_inst;
    static CircleIcon()
    {
    }
    public CircleIcon()
    {
        InitializeUX();
    }
    internal void InitializeUX()
    {
        var temp = new Fuse.Controls.Image();
        temp_Source_inst = new MyBaseApp_FuseControlsImage_FuseResourcesImageSource_Source_Property(temp);
        var temp1 = new Fuse.Resources.ResourceBinding<Fuse.Resources.ImageSource>(temp_Source_inst, "iconFile");
        var temp2 = new Fuse.Controls.Circle();
        var temp3 = new Fuse.Drawing.Stroke();
        var temp4 = new Fuse.Drawing.StaticSolidColor(float4(1f, 1f, 1f, 1f));
        this.Width = 80f;
        this.Height = 80f;
        temp.Width = 60f;
        temp.Height = 60f;
        temp.Behaviors.Add(temp1);
        temp2.Strokes.Add(temp3);
        temp3.Width = 3f;
        temp3.Brush = temp4;
        this.Children.Add(temp);
        this.Children.Add(temp2);
    }
}

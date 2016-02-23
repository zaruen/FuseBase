public partial class BigRotatingWheel: Fuse.Controls.Panel
{
    internal Fuse.Controls.Panel wheel;
    internal RotatingPage page1;
    internal Fuse.Controls.Text textp1;
    internal RotatingPage page2;
    internal Fuse.Controls.Text textp11;
    static BigRotatingWheel()
    {
    }
    public BigRotatingWheel()
    {
        InitializeUX();
    }
    internal void InitializeUX()
    {
        var temp = new Fuse.Controls.StackPanel();
        var temp1 = new Fuse.Controls.Panel();
        wheel = new Fuse.Controls.Panel();
        var temp2 = new Fuse.Controls.Circle();
        var temp3 = new Fuse.Drawing.SolidColor();
        var temp4 = new Fuse.Controls.Text();
        var temp5 = new Fuse.Controls.Panel();
        var temp6 = new Fuse.Controls.Circle();
        var temp7 = new Fuse.Drawing.SolidColor();
        var temp8 = new Fuse.Controls.Panel();
        var temp9 = new Fuse.Navigation.LinearNavigation();
        var temp10 = new Fuse.Navigation.SwipeNavigate();
        page1 = new RotatingPage();
        var temp11 = new Fuse.Controls.RegularPolygon();
        var temp12 = new Fuse.Rotation();
        textp1 = new Fuse.Controls.Text();
        var temp13 = new Fuse.Rotation();
        var temp14 = new Fuse.Drawing.StaticSolidColor(float4(0.4f, 0.8f, 1f, 1f));
        page2 = new RotatingPage();
        var temp15 = new Fuse.Controls.RegularPolygon();
        var temp16 = new Fuse.Rotation();
        textp11 = new Fuse.Controls.Text();
        var temp17 = new Fuse.Rotation();
        var temp18 = new Fuse.Drawing.StaticSolidColor(float4(0.4f, 0.8f, 1f, 1f));
        var temp19 = new Fuse.Drawing.StaticSolidColor(float4(0.8666667f, 0.8666667f, 0.8666667f, 1f));
        var temp20 = new Fuse.Navigation.WhileActive();
        var temp21 = new Fuse.Triggers.Actions.BringToFront();
        this.ClipToBounds = true;
        temp.Background = temp19;
        temp.Children.Add(temp1);
        temp1.Alignment = Fuse.Elements.Alignment.Bottom;
        temp1.Children.Add(wheel);
        temp1.Children.Add(temp5);
        temp1.Children.Add(temp8);
        wheel.Width = 500f;
        wheel.Height = 500f;
        wheel.Alignment = Fuse.Elements.Alignment.Top;
        Fuse.Elements.Element.OffsetProperty.Set(wheel, float2(0f, 23f), global::Fuse.Elements.SizeUnit.Percent);
        wheel.Name = "wheel";
        wheel.Children.Add(temp2);
        wheel.Children.Add(temp4);
        temp2.Layer = Fuse.Layer.Background;
        temp2.Fills.Add(temp3);
        temp3.Color = float4(0.9333333f, 0.5176471f, 0.5215687f, 1f);
        temp4.Value = "Page 1";
        temp4.Alignment = Fuse.Elements.Alignment.TopCenter;
        temp5.Width = 500f;
        temp5.Height = 500f;
        temp5.Alignment = Fuse.Elements.Alignment.Top;
        Fuse.Elements.Element.OffsetProperty.Set(temp5, float2(0f, 15f), global::Fuse.Elements.SizeUnit.Percent);
        temp5.Children.Add(temp6);
        temp6.Layer = Fuse.Layer.Background;
        temp6.Fills.Add(temp7);
        temp7.Color = float4(1f, 1f, 1f, 1f);
        temp8.Alignment = Fuse.Elements.Alignment.Center;
        temp8.Children.Add(page1);
        temp8.Children.Add(page2);
        temp8.Behaviors.Add(temp9);
        temp8.Behaviors.Add(temp10);
        temp9.Easing = Fuse.Animations.Easing.CircularOut;
        temp9.Duration = 0.4;
        temp10.SwipeDirection = Fuse.Navigation.SwipeDirection.Left;
        Fuse.Elements.Element.OffsetProperty.Set(page1, float2(0f, -15f), global::Fuse.Elements.SizeUnit.Percent);
        page1.Name = "page1";
        page1.Children.Add(temp11);
        temp11.Sides = 3;
        temp11.Width = 1000f;
        temp11.Height = 1000f;
        global::Fuse.Controls.DockPanel.SetDock(temp11, Fuse.Layouts.Dock.Top);
        temp11.Fill = temp14;
        temp11.Children.Add(textp1);
        temp11.Transforms.Add(temp12);
        temp12.Degrees = 180f;
        textp1.Value = "Page 1";
        textp1.Name = "textp1";
        global::Fuse.Controls.DockPanel.SetDock(textp1, Fuse.Layouts.Dock.Top);
        textp1.Transforms.Add(temp13);
        temp13.Degrees = 180f;
        Fuse.Elements.Element.OffsetProperty.Set(page2, float2(0f, -15f), global::Fuse.Elements.SizeUnit.Percent);
        page2.Name = "page2";
        page2.Children.Add(temp15);
        temp15.Sides = 3;
        temp15.Width = 1000f;
        temp15.Height = 1000f;
        global::Fuse.Controls.DockPanel.SetDock(temp15, Fuse.Layouts.Dock.Top);
        temp15.Fill = temp18;
        temp15.Children.Add(textp11);
        temp15.Transforms.Add(temp16);
        temp16.Degrees = 180f;
        textp11.Value = "Page 2";
        textp11.Name = "textp1";
        global::Fuse.Controls.DockPanel.SetDock(textp11, Fuse.Layouts.Dock.Top);
        textp11.Transforms.Add(temp17);
        temp17.Degrees = 180f;
        temp20.Actions.Add(temp21);
        temp21.Target = textp1;
        this.Children.Add(temp);
        this.Behaviors.Add(temp20);
    }
}

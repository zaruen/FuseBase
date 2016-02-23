public partial class BigRotatingWheel: Fuse.Controls.Panel
{
    MyBaseApp_FuseControlsTextControl_string_Value_Property temp_Value_inst;
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
        var temp = new Fuse.Controls.Text();
        temp_Value_inst = new MyBaseApp_FuseControlsTextControl_string_Value_Property(temp);
        var temp1 = new Fuse.Controls.StackPanel();
        var temp2 = new Fuse.Controls.Panel();
        wheel = new Fuse.Controls.Panel();
        var temp3 = new Fuse.Controls.Circle();
        var temp4 = new Fuse.Drawing.SolidColor();
        var temp5 = new Fuse.Reactive.DataBinding<string>(temp_Value_inst, "rotatingWheel.yo");
        var temp6 = new Fuse.Controls.Panel();
        var temp7 = new Fuse.Controls.Circle();
        var temp8 = new Fuse.Drawing.SolidColor();
        var temp9 = new Fuse.Controls.Panel();
        var temp10 = new Fuse.Navigation.LinearNavigation();
        var temp11 = new Fuse.Navigation.SwipeNavigate();
        page1 = new RotatingPage();
        var temp12 = new Fuse.Controls.RegularPolygon();
        var temp13 = new Fuse.Rotation();
        textp1 = new Fuse.Controls.Text();
        var temp14 = new Fuse.Rotation();
        var temp15 = new Fuse.Drawing.StaticSolidColor(float4(0.4f, 0.8f, 1f, 1f));
        page2 = new RotatingPage();
        var temp16 = new Fuse.Controls.RegularPolygon();
        var temp17 = new Fuse.Rotation();
        textp11 = new Fuse.Controls.Text();
        var temp18 = new Fuse.Rotation();
        var temp19 = new Fuse.Drawing.StaticSolidColor(float4(0.4f, 0.8f, 1f, 1f));
        var temp20 = new Fuse.Drawing.StaticSolidColor(float4(0.8666667f, 0.8666667f, 0.8666667f, 1f));
        var temp21 = new Fuse.Navigation.WhileActive();
        var temp22 = new Fuse.Triggers.Actions.BringToFront();
        this.ClipToBounds = true;
        temp1.Background = temp20;
        temp1.Children.Add(temp2);
        temp2.Alignment = Fuse.Elements.Alignment.Bottom;
        temp2.Children.Add(wheel);
        temp2.Children.Add(temp6);
        temp2.Children.Add(temp9);
        wheel.Width = 500f;
        wheel.Height = 500f;
        wheel.Alignment = Fuse.Elements.Alignment.Top;
        Fuse.Elements.Element.OffsetProperty.Set(wheel, float2(0f, 23f), global::Fuse.Elements.SizeUnit.Percent);
        wheel.Name = "wheel";
        wheel.Children.Add(temp3);
        wheel.Children.Add(temp);
        temp3.Layer = Fuse.Layer.Background;
        temp3.Fills.Add(temp4);
        temp4.Color = float4(0.9333333f, 0.5176471f, 0.5215687f, 1f);
        temp.Alignment = Fuse.Elements.Alignment.Center;
        temp.Opacity = 0f;
        temp.Behaviors.Add(temp5);
        temp6.Width = 500f;
        temp6.Height = 500f;
        temp6.Alignment = Fuse.Elements.Alignment.Top;
        Fuse.Elements.Element.OffsetProperty.Set(temp6, float2(0f, 15f), global::Fuse.Elements.SizeUnit.Percent);
        temp6.Children.Add(temp7);
        temp7.Layer = Fuse.Layer.Background;
        temp7.Fills.Add(temp8);
        temp8.Color = float4(1f, 1f, 1f, 1f);
        temp9.Alignment = Fuse.Elements.Alignment.Center;
        temp9.Children.Add(page1);
        temp9.Children.Add(page2);
        temp9.Behaviors.Add(temp10);
        temp9.Behaviors.Add(temp11);
        temp10.Easing = Fuse.Animations.Easing.CircularOut;
        temp10.Duration = 0.4;
        temp11.SwipeDirection = Fuse.Navigation.SwipeDirection.Left;
        Fuse.Elements.Element.OffsetProperty.Set(page1, float2(0f, -15f), global::Fuse.Elements.SizeUnit.Percent);
        page1.Name = "page1";
        page1.Children.Add(temp12);
        temp12.Sides = 3;
        temp12.Width = 1000f;
        temp12.Height = 1000f;
        global::Fuse.Controls.DockPanel.SetDock(temp12, Fuse.Layouts.Dock.Top);
        temp12.Fill = temp15;
        temp12.Children.Add(textp1);
        temp12.Transforms.Add(temp13);
        temp13.Degrees = 180f;
        textp1.Value = "Page 1";
        textp1.Name = "textp1";
        global::Fuse.Controls.DockPanel.SetDock(textp1, Fuse.Layouts.Dock.Top);
        textp1.Transforms.Add(temp14);
        temp14.Degrees = 180f;
        Fuse.Elements.Element.OffsetProperty.Set(page2, float2(0f, -15f), global::Fuse.Elements.SizeUnit.Percent);
        page2.Name = "page2";
        page2.Children.Add(temp16);
        temp16.Sides = 3;
        temp16.Width = 1000f;
        temp16.Height = 1000f;
        global::Fuse.Controls.DockPanel.SetDock(temp16, Fuse.Layouts.Dock.Top);
        temp16.Fill = temp19;
        temp16.Children.Add(textp11);
        temp16.Transforms.Add(temp17);
        temp17.Degrees = 180f;
        textp11.Value = "Page 2";
        textp11.Name = "textp1";
        global::Fuse.Controls.DockPanel.SetDock(textp11, Fuse.Layouts.Dock.Top);
        textp11.Transforms.Add(temp18);
        temp18.Degrees = 180f;
        temp21.Actions.Add(temp22);
        temp22.Target = textp1;
        this.Children.Add(temp1);
        this.Behaviors.Add(temp21);
    }
}

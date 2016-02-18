public partial class BasicAnimPage: Fuse.Controls.Panel
{
    public partial class Template: Uno.UX.Template<Fuse.Controls.Rectangle>
    {
        internal readonly BasicAnimPage __parent;
        public Template(BasicAnimPage parent)
        {
            __parent = parent;
        }
        static Template()
        {
        }
        protected override void OnApply(Fuse.Controls.Rectangle self)
        {
            var temp = new Fuse.Drawing.SolidColor();
            Fuse.Controls.Rectangle.CornerRadiusProperty.SetStyle(self, float4(10f, 10f, 10f, 10f));
            Fuse.Elements.Element.WidthProperty.SetStyle(self, 100f);
            Fuse.Elements.Element.HeightProperty.SetStyle(self, 100f);
            Fuse.Elements.Element.MarginProperty.SetStyle(self, float4(20f, 20f, 20f, 20f));
            temp.Color = float4(0.5882353f, 0.9843137f, 0.627451f, 1f);
            self.AddStyleFill(temp);
        }
    }
    MyBaseApp_FuseControlsRectangle_float4_CornerRadius_Property rect3_CornerRadius_inst;
    internal Fuse.Controls.StackPanel stack;
    internal Fuse.Controls.Rectangle rect1;
    internal Fuse.Controls.Rectangle rect2;
    internal Fuse.Controls.StackPanel stack1;
    internal Fuse.Controls.Rectangle rect3;
    internal Fuse.Controls.Rectangle rect4;
    static BasicAnimPage()
    {
    }
    public BasicAnimPage()
    {
        InitializeUX();
    }
    internal void InitializeUX()
    {
        rect3 = new Fuse.Controls.Rectangle();
        rect3_CornerRadius_inst = new MyBaseApp_FuseControlsRectangle_float4_CornerRadius_Property(rect3);
        var temp = new Fuse.Controls.StackPanel();
        var temp1 = new Fuse.Style();
        var temp2 = new Template(this) { Cascade = true, AffectSubtypes = true };
        stack = new Fuse.Controls.StackPanel();
        rect1 = new Fuse.Controls.Rectangle();
        var temp3 = new Fuse.Gestures.WhilePressed();
        var temp4 = new Fuse.Animations.Rotate();
        var temp5 = new Fuse.Animations.Rotate();
        rect2 = new Fuse.Controls.Rectangle();
        var temp6 = new Fuse.Gestures.WhilePressed();
        var temp7 = new Fuse.Animations.Rotate();
        var temp8 = new Fuse.Gestures.Tapped();
        var temp9 = new Fuse.Animations.Move();
        var temp10 = new Fuse.Animations.Scale();
        var temp11 = new Fuse.Drawing.StaticSolidColor(float4(0.9960784f, 0.7137255f, 0.7137255f, 1f));
        stack1 = new Fuse.Controls.StackPanel();
        var temp12 = new Fuse.Physics.Draggable();
        var temp13 = new Fuse.Physics.WhileDragging();
        var temp14 = new Fuse.Animations.Rotate();
        var temp15 = new Fuse.Animations.Change<float4>(rect3_CornerRadius_inst);
        var temp16 = new Fuse.Physics.PointAttractor();
        rect4 = new Fuse.Controls.Rectangle();
        var temp17 = new Fuse.Gestures.Tapped();
        var temp18 = new Fuse.Animations.Rotate();
        var temp19 = new Fuse.Drawing.StaticSolidColor(float4(0.9960784f, 0.9921569f, 0.7137255f, 1f));
        temp.Children.Add(stack);
        temp.Children.Add(stack1);
        temp.Styles.Add(temp1);
        temp1.Templates.Add(temp2);
        stack.Orientation = Fuse.Layouts.Orientation.Horizontal;
        stack.ContentAlignment = Fuse.Elements.Alignment.Center;
        stack.Name = "stack";
        global::Fuse.Controls.DockPanel.SetDock(stack, Fuse.Layouts.Dock.Top);
        stack.Background = temp11;
        stack.Children.Add(rect1);
        stack.Children.Add(rect2);
        rect1.Name = "rect1";
        rect1.Behaviors.Add(temp3);
        temp3.Animators.Add(temp4);
        temp3.Animators.Add(temp5);
        temp4.Degrees = 90f;
        temp4.Easing = Fuse.Animations.Easing.QuadraticOut;
        temp4.EasingBack = Fuse.Animations.Easing.QuadraticIn;
        temp4.Duration = 0.5;
        temp4.DelayBack = 0.5;
        temp4.Target = rect1;
        temp5.Degrees = 90f;
        temp5.Easing = Fuse.Animations.Easing.QuadraticOut;
        temp5.EasingBack = Fuse.Animations.Easing.QuadraticIn;
        temp5.Duration = 0.5;
        temp5.Delay = 0.5;
        temp5.Target = rect2;
        rect2.Name = "rect2";
        rect2.Behaviors.Add(temp6);
        rect2.Behaviors.Add(temp8);
        temp6.Animators.Add(temp7);
        temp7.Degrees = 90f;
        temp7.Easing = Fuse.Animations.Easing.QuadraticInOut;
        temp7.EasingBack = Fuse.Animations.Easing.CubicIn;
        temp7.Duration = 0.5;
        temp7.DelayBack = 0.5;
        temp7.Target = rect2;
        temp8.Animators.Add(temp9);
        temp8.Animators.Add(temp10);
        temp9.Y = 200f;
        temp9.Easing = Fuse.Animations.Easing.QuadraticInOut;
        temp9.EasingBack = Fuse.Animations.Easing.CubicIn;
        temp9.Duration = 0.5;
        temp9.DelayBack = 0.5;
        temp9.Target = rect2;
        temp10.Factor = 0.8f;
        temp10.Easing = Fuse.Animations.Easing.QuadraticInOut;
        temp10.EasingBack = Fuse.Animations.Easing.CubicIn;
        temp10.Duration = 0.5;
        temp10.DelayBack = 0.5;
        temp10.Target = rect2;
        stack1.Orientation = Fuse.Layouts.Orientation.Horizontal;
        stack1.ContentAlignment = Fuse.Elements.Alignment.Center;
        stack1.Name = "stack";
        global::Fuse.Controls.DockPanel.SetDock(stack1, Fuse.Layouts.Dock.Top);
        stack1.Background = temp19;
        stack1.Children.Add(rect3);
        stack1.Children.Add(rect4);
        stack1.Behaviors.Add(temp16);
        rect3.Name = "rect3";
        rect3.Behaviors.Add(temp12);
        rect3.Behaviors.Add(temp13);
        temp13.Animators.Add(temp14);
        temp13.Animators.Add(temp15);
        temp14.Degrees = 90f;
        temp14.Easing = Fuse.Animations.Easing.BounceOut;
        temp14.EasingBack = Fuse.Animations.Easing.BounceIn;
        temp14.Duration = 0.8;
        temp15.Value = float4(100f, 100f, 100f, 100f);
        temp15.Duration = 0.8;
        temp16.Offset = float3(-100f, 0f, 0f);
        temp16.Radius = 800f;
        temp16.Strength = 100f;
        rect4.Name = "rect4";
        rect4.Behaviors.Add(temp17);
        temp17.Animators.Add(temp18);
        temp18.DegreesY = 360f;
        temp18.Easing = Fuse.Animations.Easing.QuadraticOut;
        temp18.EasingBack = Fuse.Animations.Easing.QuadraticIn;
        temp18.Duration = 0.8;
        this.Children.Add(temp);
    }
}

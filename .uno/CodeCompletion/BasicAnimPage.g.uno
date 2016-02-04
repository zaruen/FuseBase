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
    internal Fuse.Controls.StackPanel stack;
    internal Fuse.Controls.Rectangle rect1;
    internal Fuse.Controls.Rectangle rect2;
    static BasicAnimPage()
    {
    }
    public BasicAnimPage()
    {
        InitializeUX();
    }
    internal void InitializeUX()
    {
        stack = new Fuse.Controls.StackPanel();
        var temp = new Fuse.Style();
        var temp1 = new Template(this) { Cascade = true, AffectSubtypes = true };
        rect1 = new Fuse.Controls.Rectangle();
        var temp2 = new Fuse.Gestures.WhilePressed();
        var temp3 = new Fuse.Animations.Rotate();
        var temp4 = new Fuse.Animations.Rotate();
        rect2 = new Fuse.Controls.Rectangle();
        stack.Orientation = Fuse.Layouts.Orientation.Horizontal;
        stack.ContentAlignment = Fuse.Elements.Alignment.Center;
        stack.Name = "stack";
        stack.Children.Add(rect1);
        stack.Children.Add(rect2);
        stack.Styles.Add(temp);
        temp.Templates.Add(temp1);
        rect1.Name = "rect1";
        rect1.Behaviors.Add(temp2);
        temp2.Animators.Add(temp3);
        temp2.Animators.Add(temp4);
        temp3.Degrees = 90f;
        temp3.Easing = Fuse.Animations.Easing.QuadraticOut;
        temp3.EasingBack = Fuse.Animations.Easing.QuadraticIn;
        temp3.Duration = 0.5;
        temp3.DelayBack = 0.5;
        temp3.Target = rect1;
        temp4.Degrees = 90f;
        temp4.Easing = Fuse.Animations.Easing.QuadraticOut;
        temp4.EasingBack = Fuse.Animations.Easing.QuadraticIn;
        temp4.Duration = 0.5;
        temp4.Delay = 0.5;
        temp4.Target = rect2;
        rect2.Name = "rect2";
        this.Children.Add(stack);
    }
}

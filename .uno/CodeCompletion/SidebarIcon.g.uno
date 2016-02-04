public partial class SidebarIcon: Fuse.Controls.Panel
{
    public partial class Template: Uno.UX.Template<Fuse.Controls.Image>
    {
        internal readonly SidebarIcon __parent;
        public Template(SidebarIcon parent)
        {
            __parent = parent;
        }
        static Template()
        {
        }
        protected override void OnApply(Fuse.Controls.Image self)
        {
            Fuse.Elements.Element.MaxWidthProperty.SetStyle(self, 48f);
            Fuse.Elements.Element.MaxHeightProperty.SetStyle(self, 48f);
        }
    }
    MyBaseApp_FuseElementsElement_float_Opacity_Property tapAnimationCircle_Opacity_inst;
    MyBaseApp_FuseControlsShape_float_Smoothness_Property tapAnimationCircle_Smoothness_inst;
    MyBaseApp_FuseDrawingStroke_float_Width_Property tapAnimationStroke_Width_inst;
    internal Fuse.Controls.Circle tapAnimationCircle;
    internal Fuse.Drawing.Stroke tapAnimationStroke;
    static SidebarIcon()
    {
    }
    public SidebarIcon()
    {
        InitializeUX();
    }
    internal void InitializeUX()
    {
        tapAnimationCircle = new Fuse.Controls.Circle();
        tapAnimationCircle_Opacity_inst = new MyBaseApp_FuseElementsElement_float_Opacity_Property(tapAnimationCircle);
        tapAnimationCircle_Smoothness_inst = new MyBaseApp_FuseControlsShape_float_Smoothness_Property(tapAnimationCircle);
        tapAnimationStroke = new Fuse.Drawing.Stroke();
        tapAnimationStroke_Width_inst = new MyBaseApp_FuseDrawingStroke_float_Width_Property(tapAnimationStroke);
        var temp = new Fuse.Controls.Circle();
        var temp1 = new Fuse.Drawing.Stroke();
        var temp2 = new Fuse.Drawing.SolidColor();
        var temp3 = new Fuse.Drawing.SolidColor();
        var temp4 = new Fuse.Style();
        var temp5 = new Template(this) { Cascade = true, AffectSubtypes = true };
        var temp6 = new Fuse.Gestures.Tapped();
        var temp7 = new Fuse.Animations.Scale();
        var temp8 = new Fuse.Animations.Change<float>(tapAnimationCircle_Opacity_inst);
        var temp9 = new Fuse.Animations.Change<float>(tapAnimationCircle_Smoothness_inst);
        var temp10 = new Fuse.Animations.Change<float>(tapAnimationStroke_Width_inst);
        this.Width = 50f;
        this.Height = 50f;
        temp.Layer = Fuse.Layer.Overlay;
        temp.Strokes.Add(temp1);
        temp1.Width = 5f;
        temp1.Brush = temp2;
        temp2.Color = float4(1f, 0.7333333f, 0.6941177f, 1f);
        tapAnimationCircle.Name = "tapAnimationCircle";
        tapAnimationCircle.Layer = Fuse.Layer.Overlay;
        tapAnimationCircle.Strokes.Add(tapAnimationStroke);
        tapAnimationStroke.Width = 3f;
        tapAnimationStroke.Brush = temp3;
        temp3.Color = float4(1f, 1f, 1f, 0.3333333f);
        temp4.Templates.Add(temp5);
        temp6.Animators.Add(temp7);
        temp6.Animators.Add(temp8);
        temp6.Animators.Add(temp9);
        temp6.Animators.Add(temp10);
        temp7.Factor = 5f;
        temp7.Easing = Fuse.Animations.Easing.QuarticOut;
        temp7.Duration = 0.5;
        temp7.DurationBack = 0;
        temp7.Target = tapAnimationCircle;
        temp8.Value = 0f;
        temp8.Easing = Fuse.Animations.Easing.QuarticOut;
        temp8.Duration = 0.5;
        temp8.DurationBack = 0;
        temp9.Value = 10f;
        temp9.Easing = Fuse.Animations.Easing.QuarticOut;
        temp9.Duration = 0.5;
        temp9.DurationBack = 0;
        temp10.Value = 0f;
        temp10.Easing = Fuse.Animations.Easing.ExponentialOut;
        temp10.Duration = 0.5;
        temp10.DurationBack = 0;
        this.Children.Add(temp);
        this.Children.Add(tapAnimationCircle);
        this.Behaviors.Add(temp6);
        this.Styles.Add(temp4);
    }
}

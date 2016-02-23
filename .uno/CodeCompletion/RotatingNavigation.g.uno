public partial class RotatingNavigation: Fuse.Controls.Panel
{
    public partial class Template: Uno.UX.Template<Fuse.Controls.Panel>
    {
        internal readonly RotatingNavigation __parent;
        public Template(RotatingNavigation parent)
        {
            __parent = parent;
        }
        static Template()
        {
        }
        protected override void OnApply(Fuse.Controls.Panel self)
        {
            var temp = new Fuse.Navigation.EnteringAnimation();
            var temp1 = new Fuse.Animations.Move();
            var temp2 = new Fuse.Navigation.ExitingAnimation();
            var temp3 = new Fuse.Animations.Move();
            var temp4 = new Fuse.Animations.Move();
            var temp5 = new Fuse.Animations.Move();
            var temp6 = new Fuse.Animations.Keyframe();
            var temp7 = new Fuse.Animations.Keyframe();
            var temp8 = new Fuse.Animations.Keyframe();
            var temp9 = new Fuse.Animations.Keyframe();
            var temp10 = new Fuse.Animations.Keyframe();
            var temp11 = new Fuse.Animations.Rotate();
            temp.Animators.Add(temp1);
            temp1.X = -1f;
            temp1.Duration = 0.2;
            temp1.RelativeTo = Fuse.TranslationModes.ParentSize;
            temp2.Animators.Add(temp3);
            temp2.Animators.Add(temp4);
            temp2.Animators.Add(temp5);
            temp2.Animators.Add(temp11);
            temp3.Y = -0.2f;
            temp3.Easing = Fuse.Animations.Easing.QuadraticOut;
            temp3.Duration = 1;
            temp3.RelativeTo = Fuse.TranslationModes.Size;
            temp4.X = 1f;
            temp4.Duration = 0.2;
            temp4.RelativeTo = Fuse.TranslationModes.ParentSize;
            temp5.KeyframeInterpolation = Fuse.Animations.KeyframeInterpolation.CatmullRom;
            temp5.RelativeTo = Fuse.TranslationModes.Size;
            temp5.Keyframes.Add(temp6);
            temp5.Keyframes.Add(temp7);
            temp5.Keyframes.Add(temp8);
            temp5.Keyframes.Add(temp9);
            temp5.Keyframes.Add(temp10);
            temp6.X = 0.15f;
            temp6.Time = 0.15;
            temp7.X = 0.2f;
            temp7.Time = 0.3;
            temp8.X = 0.25f;
            temp8.Time = 0.45;
            temp9.X = 0.2f;
            temp9.Time = 0.6;
            temp10.X = 0f;
            temp10.Time = 1;
            temp11.Degrees = 45f;
            temp11.Duration = 1;
            temp11.Target = __parent.rect1;
            self.AddStyleBehavior(temp);
            self.AddStyleBehavior(temp2);
        }
    }
    internal Fuse.Controls.Rectangle rect1;
    internal Unos.Quadrilatere exElement;
    static RotatingNavigation()
    {
    }
    public RotatingNavigation()
    {
        InitializeUX();
    }
    internal void InitializeUX()
    {
        var temp = new Fuse.Controls.Panel();
        var temp1 = new Fuse.Style();
        var temp2 = new Template(this) { Cascade = true, AffectSubtypes = true };
        var temp3 = new Fuse.Navigation.LinearNavigation();
        var temp4 = new Fuse.Navigation.SwipeNavigate();
        var temp5 = new Fuse.Controls.Panel();
        var temp6 = new Fuse.Controls.StackPanel();
        rect1 = new Fuse.Controls.Rectangle();
        var temp7 = new Fuse.Drawing.StaticSolidColor(float4(0.509804f, 0.9098039f, 0.9254902f, 1f));
        exElement = new Unos.Quadrilatere();
        var temp8 = new Fuse.Controls.Panel();
        var temp9 = new Fuse.Controls.Panel();
        this.ClipToBounds = true;
        temp.Margin = float4(50f, 50f, 50f, 50f);
        temp.Children.Add(temp5);
        temp.Children.Add(temp8);
        temp.Children.Add(temp9);
        temp.Behaviors.Add(temp3);
        temp.Behaviors.Add(temp4);
        temp.Styles.Add(temp1);
        temp1.Templates.Add(temp2);
        temp3.Easing = Fuse.Animations.Easing.CircularOut;
        temp4.SwipeDirection = Fuse.Navigation.SwipeDirection.Left;
        temp5.Width = 200f;
        temp5.Background = Fuse.Drawing.Brushes.Red;
        temp5.Children.Add(temp6);
        temp6.Children.Add(rect1);
        temp6.Children.Add(exElement);
        rect1.Width = 50f;
        rect1.Height = 50f;
        rect1.Alignment = Fuse.Elements.Alignment.Center;
        rect1.Name = "rect1";
        rect1.Fill = temp7;
        exElement.Width = 100f;
        exElement.Height = 100f;
        exElement.Margin = float4(10f, 10f, 10f, 10f);
        exElement.Name = "exElement";
        temp8.Width = 200f;
        temp8.Background = Fuse.Drawing.Brushes.Blue;
        temp9.Width = 200f;
        temp9.Background = Fuse.Drawing.Brushes.Green;
        this.Children.Add(temp);
    }
}

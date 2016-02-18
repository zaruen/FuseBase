public partial class ScrollingAnimationPage: Fuse.Controls.Panel
{
    public partial class Template: Uno.UX.Template<Fuse.Controls.Text>
    {
        internal readonly ScrollingAnimationPage __parent;
        public Template(ScrollingAnimationPage parent)
        {
            __parent = parent;
        }
        static Template()
        {
        }
        protected override void OnApply(Fuse.Controls.Text self)
        {
            Fuse.Controls.TextControl.TextAlignmentProperty.SetStyle(self, Fuse.Elements.TextAlignment.Center);
            Fuse.Controls.TextControl.TextColorProperty.SetStyle(self, float4(1f, 1f, 1f, 1f));
        }
    }
    public partial class Template1: Uno.UX.Template<Fuse.Controls.Text>
    {
        internal readonly ScrollingAnimationPage __parent;
        public Template1(ScrollingAnimationPage parent)
        {
            __parent = parent;
        }
        static Template1()
        {
        }
        protected override void OnApply(Fuse.Controls.Text self)
        {
            Fuse.Controls.TextControl.TextWrappingProperty.SetStyle(self, Fuse.Elements.TextWrapping.Wrap);
            Fuse.Controls.TextControl.TextColorProperty.SetStyle(self, float4(0.2078431f, 0.3333333f, 0.4f, 1f));
        }
    }
    MyBaseApp_FuseControlsMultiLayoutPanel_FuseElementsElement_LayoutElement_Property headerPanel_LayoutElement_inst;
    MyBaseApp_FuseElementsElement_float_Opacity_Property bottomText_Opacity_inst;
    internal Fuse.Controls.MultiLayoutPanel headerPanel;
    internal Fuse.Controls.Placeholder overBackgroundLayout;
    internal Fuse.Controls.Image facePicture;
    internal Fuse.Controls.StackPanel textPanel;
    internal Fuse.Controls.Text topText;
    internal Fuse.Controls.Text bottomText;
    internal Fuse.Controls.Panel backgroundPicture;
    internal Fuse.Controls.Placeholder underBackgroundLayout;
    static ScrollingAnimationPage()
    {
    }
    public ScrollingAnimationPage()
    {
        InitializeUX();
    }
    internal void InitializeUX()
    {
        headerPanel = new Fuse.Controls.MultiLayoutPanel();
        headerPanel_LayoutElement_inst = new MyBaseApp_FuseControlsMultiLayoutPanel_FuseElementsElement_LayoutElement_Property(headerPanel);
        headerPanel_LayoutElement_inst = new MyBaseApp_FuseControlsMultiLayoutPanel_FuseElementsElement_LayoutElement_Property(headerPanel);
        bottomText = new Fuse.Controls.Text();
        bottomText_Opacity_inst = new MyBaseApp_FuseElementsElement_float_Opacity_Property(bottomText);
        var temp = new Fuse.Controls.Panel();
        overBackgroundLayout = new Fuse.Controls.Placeholder();
        facePicture = new Fuse.Controls.Image();
        var temp1 = new Fuse.Gestures.Tapped();
        var temp2 = new Fuse.Animations.Rotate();
        textPanel = new Fuse.Controls.StackPanel();
        var temp3 = new Fuse.Style();
        var temp4 = new Template(this) { Cascade = true, AffectSubtypes = true };
        var temp5 = new Fuse.Controls.StatusBarBackground();
        topText = new Fuse.Controls.Text();
        backgroundPicture = new Fuse.Controls.Panel();
        var temp6 = new Fuse.Controls.Image();
        var temp7 = new Fuse.Drawing.StaticSolidColor(float4(0f, 0f, 0f, 1f));
        var temp8 = new Fuse.Drawing.StaticSolidColor(float4(0f, 0f, 0f, 1f));
        underBackgroundLayout = new Fuse.Controls.Placeholder();
        var temp9 = new Fuse.Controls.ScrollView();
        var temp10 = new Fuse.Triggers.ScrollingAnimation();
        var temp11 = new Fuse.Animations.Scale();
        var temp12 = new Fuse.Animations.Move();
        var temp13 = new Fuse.Triggers.ScrollingAnimation();
        var temp14 = new Fuse.Triggers.Actions.Set<Fuse.Elements.Element>(headerPanel_LayoutElement_inst);
        var temp15 = new Fuse.Triggers.ScrollingAnimation();
        var temp16 = new Fuse.Triggers.Actions.Set<Fuse.Elements.Element>(headerPanel_LayoutElement_inst);
        var temp17 = new Fuse.Triggers.ScrollingAnimation();
        var temp18 = new Fuse.Animations.Move();
        var temp19 = new Fuse.Triggers.ScrollingAnimation();
        var temp20 = new Fuse.Animations.Move();
        var temp21 = new Fuse.Animations.Move();
        var temp22 = new Fuse.Animations.Move();
        var temp23 = new Fuse.Animations.Change<float>(bottomText_Opacity_inst);
        var temp24 = new Fuse.Triggers.ScrollingAnimation();
        var temp25 = new Fuse.Animations.Scale();
        var temp26 = new Fuse.Animations.Move();
        var temp27 = new Fuse.Animations.Move();
        var temp28 = new Fuse.Controls.StackPanel();
        var temp29 = new Fuse.Style();
        var temp30 = new Template1(this) { Cascade = true, AffectSubtypes = true };
        var temp31 = new Fuse.Controls.Text();
        var temp32 = new Fuse.Controls.Rectangle();
        var temp33 = new Fuse.Drawing.StaticSolidColor(float4(0.8823529f, 0.8823529f, 0.8823529f, 1f));
        var temp34 = new Fuse.Controls.Text();
        var temp35 = new Fuse.Controls.Text();
        var temp36 = new Fuse.Controls.Text();
        temp.Children.Add(headerPanel);
        temp.Children.Add(temp9);
        headerPanel.HitTestMode = Fuse.Elements.HitTestMode.None;
        headerPanel.Height = 260f;
        headerPanel.Alignment = Fuse.Elements.Alignment.Top;
        headerPanel.Name = "headerPanel";
        headerPanel.Children.Add(overBackgroundLayout);
        headerPanel.Children.Add(textPanel);
        headerPanel.Children.Add(backgroundPicture);
        headerPanel.Children.Add(underBackgroundLayout);
        overBackgroundLayout.Name = "overBackgroundLayout";
        overBackgroundLayout.PlaceholderContent = facePicture;
        facePicture.Width = 150f;
        facePicture.Height = 150f;
        facePicture.Alignment = Fuse.Elements.Alignment.BottomCenter;
        facePicture.Offset = float2(0f, 75f);
        facePicture.Name = "facePicture";
        facePicture.File = new global::Uno.UX.BundleFileSource(import global::Uno.BundleFile("../../Assets/cassavatar.png"));
        facePicture.Behaviors.Add(temp1);
        temp1.Animators.Add(temp2);
        temp2.Degrees = 180f;
        temp2.Easing = Fuse.Animations.Easing.Linear;
        temp2.Duration = 1;
        temp2.Target = facePicture;
        textPanel.Alignment = Fuse.Elements.Alignment.Center;
        textPanel.Name = "textPanel";
        textPanel.Children.Add(temp5);
        textPanel.Children.Add(topText);
        textPanel.Children.Add(bottomText);
        textPanel.Styles.Add(temp3);
        temp3.Templates.Add(temp4);
        temp5.Margin = float4(0f, 0f, 0f, 15f);
        topText.Value = "Cassounette";
        topText.FontSize = 20f;
        topText.Margin = float4(5f, 5f, 5f, 5f);
        topText.Opacity = 1f;
        topText.Name = "topText";
        bottomText.Value = "Sex Director";
        bottomText.FontSize = 14f;
        bottomText.Name = "bottomText";
        backgroundPicture.Alignment = Fuse.Elements.Alignment.Top;
        Fuse.Elements.Element.AnchorProperty.Set(backgroundPicture, float2(50f, 0f), global::Fuse.Elements.SizeUnit.Percent);
        backgroundPicture.Name = "backgroundPicture";
        backgroundPicture.Background = temp8;
        backgroundPicture.TransformOrigin = Fuse.Elements.TransformOrigins.Anchor;
        backgroundPicture.Children.Add(temp6);
        temp6.StretchMode = Fuse.Elements.StretchMode.UniformToFill;
        temp6.File = new global::Uno.UX.BundleFileSource(import global::Uno.BundleFile("../../Assets/airplane-sunset-bw.jpg"));
        temp6.Background = temp7;
        underBackgroundLayout.Name = "underBackgroundLayout";
        underBackgroundLayout.Target = facePicture;
        temp9.Content = temp28;
        temp9.Behaviors.Add(temp10);
        temp9.Behaviors.Add(temp13);
        temp9.Behaviors.Add(temp15);
        temp9.Behaviors.Add(temp17);
        temp9.Behaviors.Add(temp19);
        temp9.Behaviors.Add(temp24);
        temp10.From = 0f;
        temp10.To = 150f;
        temp10.Animators.Add(temp11);
        temp10.Animators.Add(temp12);
        temp11.Factor = 0.6f;
        temp11.Easing = Fuse.Animations.Easing.QuadraticInOut;
        temp11.Target = facePicture;
        temp12.Y = -0.8f;
        temp12.Easing = Fuse.Animations.Easing.QuadraticIn;
        temp12.RelativeTo = Fuse.TranslationModes.Size;
        temp12.Target = facePicture;
        temp13.From = 125f;
        temp13.To = 0f;
        temp13.Actions.Add(temp14);
        temp14.Value = overBackgroundLayout;
        temp15.From = 125f;
        temp15.To = 170f;
        temp15.Actions.Add(temp16);
        temp16.Value = underBackgroundLayout;
        temp17.From = 150f;
        temp17.To = 1000f;
        temp17.Animators.Add(temp18);
        temp18.Y = -850f;
        temp18.Easing = Fuse.Animations.Easing.Linear;
        temp18.Target = facePicture;
        temp19.From = 0f;
        temp19.To = 260f;
        temp19.Animators.Add(temp20);
        temp19.Animators.Add(temp21);
        temp19.Animators.Add(temp22);
        temp19.Animators.Add(temp23);
        temp20.Y = -0.7f;
        temp20.Easing = Fuse.Animations.Easing.QuadraticOut;
        temp20.RelativeTo = Fuse.TranslationModes.Size;
        temp20.Target = backgroundPicture;
        temp21.Y = -0.35f;
        temp21.Easing = Fuse.Animations.Easing.QuadraticOut;
        temp21.RelativeTo = Fuse.TranslationModes.ParentSize;
        temp21.Target = textPanel;
        temp22.Y = -0.3f;
        temp22.Easing = Fuse.Animations.Easing.QuadraticOut;
        temp22.RelativeTo = Fuse.TranslationModes.ParentSize;
        temp22.Target = bottomText;
        temp23.Value = 0f;
        temp23.Easing = Fuse.Animations.Easing.QuadraticOut;
        temp24.From = 0f;
        temp24.To = -1000f;
        temp24.Animators.Add(temp25);
        temp24.Animators.Add(temp26);
        temp24.Animators.Add(temp27);
        temp25.Factor = 4f;
        temp25.Target = backgroundPicture;
        temp26.Y = 800f;
        temp26.Target = facePicture;
        temp27.Y = 800f;
        temp27.Target = textPanel;
        temp28.Padding = float4(0f, 370f, 0f, 0f);
        temp28.Children.Add(temp31);
        temp28.Children.Add(temp32);
        temp28.Children.Add(temp34);
        temp28.Children.Add(temp35);
        temp28.Children.Add(temp36);
        temp28.Styles.Add(temp29);
        temp29.Templates.Add(temp30);
        temp31.Value = "Digital strategist, Founder of Social Donut, future wife of Thomas Neuraz.";
        temp31.FontSize = 20f;
        temp31.TextAlignment = Fuse.Elements.TextAlignment.Center;
        temp31.Margin = float4(70f, 0f, 70f, 40f);
        temp32.Height = 2f;
        temp32.Margin = float4(50f, 0f, 50f, 0f);
        temp32.Fill = temp33;
        temp34.Value = "Moved to Palo Alto in 2014 to continue a career as a Creative Director with Fuse. Absolutely adore working with this team.";
        temp34.FontSize = 16f;
        temp34.Margin = float4(50f, 40f, 50f, 0f);
        temp35.Value = "Spends large amounts of the day working on solving UX issues and communicating solutions to the rest of the team. Passionate about pixels.";
        temp35.FontSize = 16f;
        temp35.Margin = float4(50f, 20f, 50f, 0f);
        temp36.Value = "When not busy with UX and design, Michael is a board game enthusiast who whas collected more than his fair share of classic and contemporary board games. His two daughters are not allowed anywhere near his vintage sets though.";
        temp36.FontSize = 16f;
        temp36.Margin = float4(50f, 20f, 50f, 50f);
        this.Children.Add(temp);
    }
}

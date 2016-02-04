public partial class RotatingMenu: Fuse.Controls.Panel
{
    public partial class Template: Uno.UX.Template<Fuse.Controls.StackPanel>
    {
        internal readonly RotatingMenu __parent;
        public Template(RotatingMenu parent)
        {
            __parent = parent;
        }
        static Template()
        {
        }
        protected override void OnApply(Fuse.Controls.StackPanel self)
        {
            Fuse.Elements.Element.MarginProperty.SetStyle(self, float4(30f, 30f, 30f, 30f));
        }
    }
    public partial class Template1: Uno.UX.Template<Fuse.Controls.Text>
    {
        internal readonly RotatingMenu __parent;
        public Template1(RotatingMenu parent)
        {
            __parent = parent;
        }
        static Template1()
        {
        }
        protected override void OnApply(Fuse.Controls.Text self)
        {
            Fuse.Controls.TextControl.FontSizeProperty.SetStyle(self, 14f);
            Fuse.Controls.TextControl.TextColorProperty.SetStyle(self, float4(1f, 1f, 1f, 0.6666667f));
            Fuse.Elements.Element.AlignmentProperty.SetStyle(self, Fuse.Elements.Alignment.HorizontalCenter);
            Fuse.Controls.TextControl.FontProperty.SetStyle(self, Fuse.BasicTheme.BasicStyle.RobotoBold);
        }
    }
    MyBaseApp_FuseTriggersWhileBool_bool_Value_Property showMenu_Value_inst;
    MyBaseApp_FuseiOSStatusBarConfig_bool_IsVisible_Property statusBarConfig_IsVisible_inst;
    internal Fuse.iOS.StatusBarConfig statusBarConfig;
    internal Fuse.Controls.Panel menuButton;
    internal Fuse.Controls.Panel content;
    internal Fuse.Controls.StackPanel sidebar;
    internal Fuse.Controls.StackPanel profileButton;
    internal Fuse.Controls.StackPanel stickersButton;
    internal Fuse.Controls.StackPanel addButton;
    internal Fuse.Triggers.WhileTrue showMenu;
    static RotatingMenu()
    {
    }
    public RotatingMenu()
    {
        InitializeUX();
    }
    internal void InitializeUX()
    {
        showMenu = new Fuse.Triggers.WhileTrue();
        showMenu_Value_inst = new MyBaseApp_FuseTriggersWhileBool_bool_Value_Property(showMenu);
        showMenu_Value_inst = new MyBaseApp_FuseTriggersWhileBool_bool_Value_Property(showMenu);
        showMenu_Value_inst = new MyBaseApp_FuseTriggersWhileBool_bool_Value_Property(showMenu);
        statusBarConfig = new Fuse.iOS.StatusBarConfig();
        statusBarConfig_IsVisible_inst = new MyBaseApp_FuseiOSStatusBarConfig_bool_IsVisible_Property(statusBarConfig);
        var temp = new Fuse.Controls.BottomBarBackground();
        menuButton = new Fuse.Controls.Panel();
        var temp1 = new Fuse.Controls.Circle();
        var temp2 = new Fuse.Drawing.SolidColor();
        var temp3 = new HamburgerIcon();
        var temp4 = new CloseIcon();
        var temp5 = new Fuse.Gestures.Clicked();
        var temp6 = new Fuse.Controls.Toggle();
        content = new Fuse.Controls.Panel();
        var temp7 = new Fuse.Controls.Grid();
        var temp8 = new Fuse.Controls.Panel();
        var temp9 = new Fuse.Drawing.SolidColor();
        var temp10 = new Fuse.Controls.Text();
        var temp11 = new Fuse.Controls.Panel();
        var temp12 = new Fuse.Drawing.SolidColor();
        var temp13 = new Fuse.Controls.Text();
        var temp14 = new Fuse.Controls.Panel();
        var temp15 = new Fuse.Drawing.SolidColor();
        var temp16 = new Fuse.Controls.Text();
        var temp17 = new Fuse.Controls.Panel();
        var temp18 = new Fuse.Drawing.SolidColor();
        var temp19 = new Fuse.Controls.Text();
        sidebar = new Fuse.Controls.StackPanel();
        var temp20 = new Fuse.Style();
        var temp21 = new Template(this) { Cascade = true, AffectSubtypes = true };
        var temp22 = new Template1(this) { Cascade = true, AffectSubtypes = true };
        profileButton = new Fuse.Controls.StackPanel();
        var temp23 = new SidebarIcon();
        var temp24 = new AccountIcon();
        var temp25 = new Fuse.Controls.Text();
        var temp26 = new Fuse.Gestures.Clicked();
        var temp27 = new Fuse.Triggers.Actions.Set<bool>(showMenu_Value_inst);
        stickersButton = new Fuse.Controls.StackPanel();
        var temp28 = new SidebarIcon();
        var temp29 = new StickersIcon();
        var temp30 = new Fuse.Controls.Text();
        var temp31 = new Fuse.Gestures.Clicked();
        var temp32 = new Fuse.Triggers.Actions.Set<bool>(showMenu_Value_inst);
        addButton = new Fuse.Controls.StackPanel();
        var temp33 = new SidebarIcon();
        var temp34 = new AddIcon();
        var temp35 = new Fuse.Controls.Text();
        var temp36 = new Fuse.Gestures.Clicked();
        var temp37 = new Fuse.Triggers.Actions.Set<bool>(showMenu_Value_inst);
        var temp38 = new Fuse.Animations.Rotate();
        var temp39 = new Fuse.Animations.Rotate();
        var temp40 = new Fuse.Animations.Move();
        var temp41 = new Fuse.Animations.Move();
        var temp42 = new Fuse.Animations.Move();
        var temp43 = new Fuse.Animations.Change<bool>(statusBarConfig_IsVisible_inst);
        statusBarConfig.IsVisible = true;
        statusBarConfig.Style = Uno.Platform.iOS.StatusBarStyle.Light;
        statusBarConfig.Animation = Uno.Platform.iOS.StatusBarAnimation.Slide;
        global::Fuse.Controls.DockPanel.SetDock(temp, Fuse.Layouts.Dock.Bottom);
        menuButton.Width = 170f;
        menuButton.Height = 170f;
        menuButton.Alignment = Fuse.Elements.Alignment.TopLeft;
        menuButton.Padding = float4(40f, 40f, 40f, 40f);
        menuButton.Offset = float2(-85f, -85f);
        menuButton.Name = "menuButton";
        menuButton.Children.Add(temp1);
        menuButton.Children.Add(temp3);
        menuButton.Children.Add(temp4);
        menuButton.Behaviors.Add(temp5);
        temp1.Layer = Fuse.Layer.Background;
        temp1.Fills.Add(temp2);
        temp2.Color = float4(0.9333333f, 0.5176471f, 0.5215687f, 1f);
        temp3.Alignment = Fuse.Elements.Alignment.BottomRight;
        temp4.Alignment = Fuse.Elements.Alignment.BottomLeft;
        temp5.Actions.Add(temp6);
        temp6.Target = showMenu;
        content.Name = "content";
        content.TransformOrigin = Fuse.Elements.TransformOrigins.TopLeft;
        content.Children.Add(temp7);
        temp7.RowCount = 4;
        temp7.Children.Add(temp8);
        temp7.Children.Add(temp11);
        temp7.Children.Add(temp14);
        temp7.Children.Add(temp17);
        temp8.Background = temp9;
        temp8.Children.Add(temp10);
        temp9.Color = float4(0.9921569f, 0.9411765f, 0.8f, 1f);
        temp10.Value = "COUCOU";
        temp10.TextColor = float4(0.7607843f, 0.4627451f, 0.5568628f, 1f);
        temp11.Background = temp12;
        temp11.Children.Add(temp13);
        temp12.Color = float4(0.9686275f, 0.7921569f, 0.6941177f, 1f);
        temp13.Value = "MON";
        temp13.TextColor = float4(0.9098039f, 0.627451f, 0.6352941f, 1f);
        temp14.Background = temp15;
        temp14.Children.Add(temp16);
        temp15.Color = float4(0.9098039f, 0.627451f, 0.6352941f, 1f);
        temp16.Value = "BEBE";
        temp16.TextColor = float4(0.9686275f, 0.7921569f, 0.6941177f, 1f);
        temp17.Background = temp18;
        temp17.Children.Add(temp19);
        temp18.Color = float4(0.7607843f, 0.4627451f, 0.5568628f, 1f);
        temp19.Value = "D'AMOUR";
        temp19.TextColor = float4(0.9921569f, 0.9411765f, 0.8f, 1f);
        sidebar.Alignment = Fuse.Elements.Alignment.BottomLeft;
        sidebar.Margin = float4(0f, 0f, 0f, 50f);
        sidebar.Offset = float2(-130f, 0f);
        sidebar.Name = "sidebar";
        sidebar.Children.Add(profileButton);
        sidebar.Children.Add(stickersButton);
        sidebar.Children.Add(addButton);
        sidebar.Styles.Add(temp20);
        temp20.Templates.Add(temp21);
        temp20.Templates.Add(temp22);
        profileButton.Name = "profileButton";
        profileButton.Children.Add(temp23);
        profileButton.Children.Add(temp25);
        profileButton.Behaviors.Add(temp26);
        temp23.Children.Add(temp24);
        temp25.Value = "PROFILE";
        temp26.Actions.Add(temp27);
        temp27.Value = false;
        stickersButton.Name = "stickersButton";
        stickersButton.Children.Add(temp28);
        stickersButton.Children.Add(temp30);
        stickersButton.Behaviors.Add(temp31);
        temp28.Children.Add(temp29);
        temp30.Value = "STICKERS";
        temp31.Actions.Add(temp32);
        temp32.Value = false;
        addButton.Name = "addButton";
        addButton.Children.Add(temp33);
        addButton.Children.Add(temp35);
        addButton.Behaviors.Add(temp36);
        temp33.Children.Add(temp34);
        temp35.Value = "ADD STICKER";
        temp36.Actions.Add(temp37);
        temp37.Value = false;
        showMenu.Animators.Add(temp38);
        showMenu.Animators.Add(temp39);
        showMenu.Animators.Add(temp40);
        showMenu.Animators.Add(temp41);
        showMenu.Animators.Add(temp42);
        showMenu.Animators.Add(temp43);
        temp38.Degrees = -45f;
        temp38.Easing = Fuse.Animations.Easing.ExponentialInOut;
        temp38.EasingBack = Fuse.Animations.Easing.BounceIn;
        temp38.Duration = 0.45;
        temp38.DurationBack = 0.6;
        temp38.Target = content;
        temp39.Degrees = -90f;
        temp39.Easing = Fuse.Animations.Easing.ExponentialInOut;
        temp39.EasingBack = Fuse.Animations.Easing.BounceIn;
        temp39.Duration = 0.45;
        temp39.DurationBack = 0.6;
        temp39.Target = menuButton;
        temp40.X = 120f;
        temp40.Easing = Fuse.Animations.Easing.ElasticOut;
        temp40.EasingBack = Fuse.Animations.Easing.QuarticInOut;
        temp40.Duration = 0.6;
        temp40.DurationBack = 0.3;
        temp40.DelayBack = 0;
        temp40.Delay = 0.3;
        temp40.Target = profileButton;
        temp41.X = 120f;
        temp41.Easing = Fuse.Animations.Easing.ElasticOut;
        temp41.EasingBack = Fuse.Animations.Easing.QuarticInOut;
        temp41.Duration = 0.6;
        temp41.DurationBack = 0.3;
        temp41.DelayBack = 0;
        temp41.Delay = 0.3;
        temp41.Target = stickersButton;
        temp42.X = 120f;
        temp42.Easing = Fuse.Animations.Easing.ElasticOut;
        temp42.EasingBack = Fuse.Animations.Easing.QuarticInOut;
        temp42.Duration = 0.6;
        temp42.DurationBack = 0.3;
        temp42.DelayBack = 0;
        temp42.Delay = 0.3;
        temp42.Target = addButton;
        temp43.Value = false;
        temp43.Delay = 0.25;
        this.Children.Add(temp);
        this.Children.Add(menuButton);
        this.Children.Add(content);
        this.Children.Add(sidebar);
        this.Behaviors.Add(statusBarConfig);
        this.Behaviors.Add(showMenu);
    }
}

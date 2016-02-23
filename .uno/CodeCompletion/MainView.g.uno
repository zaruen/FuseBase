public partial class MainView: Fuse.App
{
    public partial class Template: Uno.UX.Template<Fuse.Controls.Button>
    {
        internal readonly MainView __parent;
        public Template(MainView parent)
        {
            __parent = parent;
        }
        MyBaseApp_FuseControlsTextControl_string_Value_Property temp_Value_inst;
        MyBaseApp_FuseControlsButton_string_Text_Property self_Text_inst;
        static Template()
        {
        }
        protected override void OnApply(Fuse.Controls.Button self)
        {
            var temp = new Fuse.BasicTheme.ButtonText();
            temp_Value_inst = new MyBaseApp_FuseControlsTextControl_string_Value_Property(temp);
            self_Text_inst = new MyBaseApp_FuseControlsButton_string_Text_Property(self);
            var temp1 = new Fuse.Controls.PropertyBinding<string>(temp_Value_inst, self_Text_inst);
            var temp2 = new Fuse.Drawing.StaticSolidColor(float4(0.8627451f, 0.5647059f, 0.3254902f, 1f));
            Fuse.Elements.Element.MarginProperty.SetStyle(self, float4(4f, 0f, 0f, 1f));
            Fuse.Elements.Element.ClipToBoundsProperty.SetStyle(self, false);
            Fuse.Node.NameProperty.SetStyle(self, "self");
            temp.TextAlignment = Fuse.Elements.TextAlignment.Center;
            temp.TextColor = float4(1f, 1f, 1f, 1f);
            temp.Font = Fuse.BasicTheme.BasicStyle.RobotoMedium;
            temp.Behaviors.Add(temp1);
            Fuse.Controls.Control.BackgroundProperty.SetStyle(self, temp2);
            self.AddStyleChild(temp);
        }
    }
    public partial class Template1: Uno.UX.Template<Fuse.Controls.PageControl>
    {
        internal readonly MainView __parent;
        public Template1(MainView parent)
        {
            __parent = parent;
        }
        public partial class Template2: Uno.UX.Template<Fuse.Controls.Text>
        {
            internal readonly Template1 __parent;
            public Template2(Template1 parent)
            {
                __parent = parent;
            }
            static Template2()
            {
            }
            protected override void OnApply(Fuse.Controls.Text self)
            {
                Fuse.Controls.TextControl.FontSizeProperty.SetStyle(self, 30f);
                Fuse.Elements.Element.AlignmentProperty.SetStyle(self, Fuse.Elements.Alignment.Center);
            }
        }
        static Template1()
        {
        }
        protected override void OnApply(Fuse.Controls.PageControl self)
        {
            var temp = new Fuse.Style();
            var temp1 = new Template2(this) { Cascade = true, AffectSubtypes = true };
            var temp2 = new Fuse.Navigation.EnteringAnimation();
            var temp3 = new Fuse.Animations.Move();
            var temp4 = new Fuse.Navigation.ExitingAnimation();
            var temp5 = new Fuse.Animations.Move();
            Fuse.Elements.Element.ClipToBoundsProperty.SetStyle(self, true);
            temp.Templates.Add(temp1);
            temp2.Animators.Add(temp3);
            temp3.Y = -1f;
            temp3.RelativeTo = Fuse.TranslationModes.Size;
            temp4.Animators.Add(temp5);
            temp5.Y = 1f;
            temp5.RelativeTo = Fuse.TranslationModes.Size;
            self.AddStyleBehavior(temp2);
            self.AddStyleBehavior(temp4);
            self.AddStyleStyle(temp);
        }
    }
    public partial class Template2: Uno.UX.Template<Fuse.Controls.StackPanel>
    {
        internal readonly MainView __parent;
        public Template2(MainView parent)
        {
            __parent = parent;
        }
        static Template2()
        {
        }
        protected override void OnApply(Fuse.Controls.StackPanel self)
        {
        }
    }
    public partial class Factory: Uno.UX.Factory
    {
        internal readonly MainView __parent;
        public Factory(MainView parent): base(null, false)
        {
            __parent = parent;
        }
        public partial class Factory1: Uno.UX.Factory
        {
            internal readonly Factory __parent;
            public Factory1(Factory parent): base(null, false)
            {
                __parent = parent;
            }
            static Factory1()
            {
            }
            public override object New()
            {
                var self = new Fuse.Controls.Text();
                self.Value = "C'est moi";
                self.TextColor = float4(1f, 0.4039216f, 0.4705882f, 1f);
                return self;
            }
        }
        public partial class Factory2: Uno.UX.Factory
        {
            internal readonly Factory __parent;
            public Factory2(Factory parent): base(null, false)
            {
                __parent = parent;
            }
            static Factory2()
            {
            }
            public override object New()
            {
                var self = new Fuse.Controls.Text();
                self.Value = "Bibi";
                self.TextColor = float4(1f, 0.4039216f, 0.4705882f, 1f);
                return self;
            }
        }
        MyBaseApp_FuseControlsTextControl_string_Value_Property temp_Value_inst;
        MyBaseApp_FuseControlsTextControl_string_Value_Property temp1_Value_inst;
        MyBaseApp_FuseReactiveMatch_object_Value_Property temp2_Value_inst;
        static Factory()
        {
        }
        public override object New()
        {
            var self = new Fuse.Controls.StackPanel();
            var temp = new Fuse.Controls.Text();
            temp_Value_inst = new MyBaseApp_FuseControlsTextControl_string_Value_Property(temp);
            var temp1 = new Fuse.Controls.Text();
            temp1_Value_inst = new MyBaseApp_FuseControlsTextControl_string_Value_Property(temp1);
            var temp2 = new Fuse.Reactive.Match();
            temp2_Value_inst = new MyBaseApp_FuseReactiveMatch_object_Value_Property(temp2);
            var temp3 = new Fuse.Reactive.DataBinding<string>(temp_Value_inst, "name");
            var temp4 = new Fuse.Reactive.DataBinding<string>(temp1_Value_inst, "age");
            var temp5 = new Fuse.Reactive.Case();
            var temp6 = new Factory1(this);
            var temp7 = new Fuse.Reactive.Case();
            var temp8 = new Factory2(this);
            var temp9 = new Fuse.Reactive.DataBinding<object>(temp2_Value_inst, "name");
            self.Orientation = Fuse.Layouts.Orientation.Horizontal;
            self.Padding = float4(40f, 0f, 40f, 0f);
            temp.Behaviors.Add(temp3);
            temp1.Margin = float4(20f, 20f, 20f, 20f);
            temp1.Behaviors.Add(temp4);
            temp2.Cases.Add(temp5);
            temp2.Cases.Add(temp7);
            temp5.String = "Thomas";
            temp5.Factories.Add(temp6);
            temp7.String = "Cassandre";
            temp7.Factories.Add(temp8);
            self.Children.Add(temp);
            self.Children.Add(temp1);
            self.Behaviors.Add(temp9);
            self.Behaviors.Add(temp2);
            return self;
        }
    }
    public partial class Factory1: Uno.UX.Factory
    {
        internal readonly MainView __parent;
        public Factory1(MainView parent): base(null, false)
        {
            __parent = parent;
        }
        MyBaseApp_FuseControlsImage_string_Url_Property temp_Url_inst;
        MyBaseApp_FuseControlsTextControl_string_Value_Property temp1_Value_inst;
        static Factory1()
        {
        }
        public override object New()
        {
            var self = new Fuse.Controls.DockPanel();
            var temp = new Fuse.Controls.Image();
            temp_Url_inst = new MyBaseApp_FuseControlsImage_string_Url_Property(temp);
            var temp1 = new Fuse.Controls.Text();
            temp1_Value_inst = new MyBaseApp_FuseControlsTextControl_string_Value_Property(temp1);
            var temp2 = new Fuse.Reactive.DataBinding<string>(temp_Url_inst, "thumbnailUrl");
            var temp3 = new Fuse.Reactive.DataBinding<string>(temp1_Value_inst, "title");
            self.Margin = float4(0f, 0f, 0f, 20f);
            global::Fuse.Controls.DockPanel.SetDock(temp, Fuse.Layouts.Dock.Left);
            temp.Behaviors.Add(temp2);
            temp1.TextWrapping = Fuse.Elements.TextWrapping.Wrap;
            temp1.FontSize = 15f;
            temp1.Alignment = Fuse.Elements.Alignment.CenterLeft;
            temp1.Behaviors.Add(temp3);
            self.Children.Add(temp);
            self.Children.Add(temp1);
            return self;
        }
    }
    MyBaseApp_FuseControlsTextControl_string_Value_Property temp_Value_inst;
    MyBaseApp_FuseControlsTextControl_string_Value_Property temp1_Value_inst;
    MyBaseApp_FuseReactiveEach_object_Items_Property temp2_Items_inst;
    MyBaseApp_FuseReactiveWhileCount_object_Items_Property temp3_Items_inst;
    MyBaseApp_FuseReactiveWhileCount_object_Items_Property temp4_Items_inst;
    MyBaseApp_FuseReactiveWhileCount_object_Items_Property temp5_Items_inst;
    MyBaseApp_FuseControlsTextControl_string_Value_Property temp6_Value_inst;
    MyBaseApp_FuseReactiveEach_object_Items_Property temp7_Items_inst;
    [global::Uno.UX.UXGlobalResource("RotatingWheel")] public static readonly Fuse.Reactive.JavaScript RotatingWheel;
    internal Fuse.Navigation.LinearNavigation _mainNavigation;
    internal Fuse.Controls.PageControl _a;
    internal Fuse.Reactive.EventBinding temp_eb0;
    internal Fuse.Reactive.EventBinding temp_eb1;
    internal Fuse.Controls.PageControl _b;
    internal Fuse.Controls.PageControl _nav;
    internal Fuse.Controls.Panel menuButton;
    internal Unos.Quadrilatere exElement;
    internal Unos.Quadrilatere exElement2;
    internal Fuse.Triggers.WhileTrue showMenu;
    internal Fuse.Controls.PageControl _navAdvance;
    internal FuseIntro _c;
    static MainView()
    {
        RotatingWheel = new Fuse.Reactive.JavaScript();
        global::Uno.UX.Resource.SetGlobalKey(RotatingWheel, "RotatingWheel");
        RotatingWheel.File = new global::Uno.UX.BundleFileSource(import global::Uno.BundleFile("../../Javascript/RotatingWheel.js"));
    }
    public MainView()
    {
        InitializeUX();
    }
    internal void InitializeUX()
    {
        var temp = new Fuse.Controls.TextInput();
        temp_Value_inst = new MyBaseApp_FuseControlsTextControl_string_Value_Property(temp);
        var temp1 = new Fuse.Controls.TextInput();
        temp1_Value_inst = new MyBaseApp_FuseControlsTextControl_string_Value_Property(temp1);
        var temp2 = new Fuse.Reactive.Each();
        temp2_Items_inst = new MyBaseApp_FuseReactiveEach_object_Items_Property(temp2);
        var temp3 = new Fuse.Reactive.WhileEmpty();
        temp3_Items_inst = new MyBaseApp_FuseReactiveWhileCount_object_Items_Property(temp3);
        var temp4 = new Fuse.Reactive.WhileCount();
        temp4_Items_inst = new MyBaseApp_FuseReactiveWhileCount_object_Items_Property(temp4);
        var temp5 = new Fuse.Reactive.WhileCount();
        temp5_Items_inst = new MyBaseApp_FuseReactiveWhileCount_object_Items_Property(temp5);
        var temp6 = new Fuse.Controls.Text();
        temp6_Value_inst = new MyBaseApp_FuseControlsTextControl_string_Value_Property(temp6);
        var temp7 = new Fuse.Reactive.Each();
        temp7_Items_inst = new MyBaseApp_FuseReactiveEach_object_Items_Property(temp7);
        var temp8 = new Fuse.Reactive.JavaScript();
        var temp9 = new Fuse.Elements.Viewport();
        var temp10 = new Fuse.Controls.ClientPanel();
        var temp11 = new Fuse.Controls.DockPanel();
        var temp12 = new Fuse.Controls.Grid();
        var temp13 = new Fuse.Style();
        var temp14 = new Template(this) { Cascade = false, AffectSubtypes = true };
        var temp15 = new Fuse.Controls.Button();
        var temp16 = new Fuse.Gestures.Clicked();
        var temp17 = new Fuse.Navigation.NavigateTo();
        var temp18 = new Fuse.Controls.Button();
        var temp19 = new Fuse.Gestures.Clicked();
        var temp20 = new Fuse.Navigation.NavigateTo();
        var temp21 = new Fuse.Controls.Button();
        var temp22 = new Fuse.Gestures.Clicked();
        var temp23 = new Fuse.Navigation.NavigateTo();
        var temp24 = new Fuse.Controls.Button();
        var temp25 = new Fuse.Gestures.Clicked();
        var temp26 = new Fuse.Navigation.NavigateTo();
        var temp27 = new Fuse.Controls.Button();
        var temp28 = new Fuse.Gestures.Clicked();
        var temp29 = new Fuse.Navigation.NavigateTo();
        var temp30 = new Fuse.Drawing.StaticSolidColor(float4(0.9843137f, 0.6745098f, 0.4901961f, 1f));
        var temp31 = new Fuse.Controls.Panel();
        _mainNavigation = new Fuse.Navigation.LinearNavigation();
        var temp32 = new Fuse.Style();
        var temp33 = new Template1(this) { Cascade = true, AffectSubtypes = true };
        _a = new Fuse.Controls.PageControl();
        var temp34 = new MyPage();
        var temp35 = new Fuse.Controls.Page();
        var temp36 = new Fuse.Controls.ScrollView();
        var temp37 = new Fuse.Controls.StackPanel();
        var temp38 = new Fuse.Controls.StackPanel();
        var temp39 = new Fuse.Reactive.DataBinding<string>(temp_Value_inst, "name");
        var temp40 = new Fuse.Reactive.DataBinding<string>(temp1_Value_inst, "age");
        var temp41 = new Fuse.Controls.Button();
        temp_eb0 = new Fuse.Reactive.EventBinding("submit");
        var temp42 = new Fuse.Controls.Text();
        var temp43 = new Fuse.Controls.StackPanel();
        var temp44 = new Factory(this);
        var temp45 = new Fuse.Reactive.DataBinding<object>(temp2_Items_inst, "myPerson");
        var temp46 = new Fuse.Controls.Text();
        var temp47 = new Fuse.Controls.Text();
        var temp48 = new Fuse.Controls.Text();
        var temp49 = new Fuse.Controls.Button();
        temp_eb1 = new Fuse.Reactive.EventBinding("deleteRelou");
        var temp50 = new Fuse.Reactive.DataBinding<object>(temp3_Items_inst, "myPerson");
        var temp51 = new Fuse.Reactive.DataBinding<object>(temp4_Items_inst, "myPerson");
        var temp52 = new Fuse.Reactive.DataBinding<object>(temp5_Items_inst, "myPerson");
        var temp53 = new Fuse.Drawing.StaticSolidColor(float4(0f, 1f, 0.8f, 1f));
        var temp54 = new Fuse.Controls.Page();
        var temp55 = new DataBinding();
        var temp56 = new Fuse.Drawing.StaticSolidColor(float4(0.8f, 0f, 1f, 1f));
        var temp57 = new Fuse.Controls.Page();
        var temp58 = new Fuse.Reactive.DataBinding<string>(temp6_Value_inst, "errorMessage");
        var temp59 = new Fuse.Controls.ScrollView();
        var temp60 = new Fuse.Controls.StackPanel();
        var temp61 = new Factory1(this);
        var temp62 = new Fuse.Reactive.DataBinding<object>(temp7_Items_inst, "pictures");
        var temp63 = new Fuse.Drawing.StaticSolidColor(float4(1f, 0.945098f, 0.4901961f, 1f));
        var temp64 = new Fuse.Controls.Page();
        var temp65 = new MultiLayout();
        var temp66 = new Fuse.Drawing.StaticSolidColor(float4(0.03137255f, 1f, 0.9294118f, 1f));
        _b = new Fuse.Controls.PageControl();
        var temp67 = new Fuse.Controls.Page();
        var temp68 = new RotatingMenu();
        var temp69 = new Fuse.Drawing.StaticSolidColor(float4(0.5333334f, 0.5333334f, 0.5333334f, 1f));
        var temp70 = new Fuse.Controls.Page();
        var temp71 = new BasicAnimPage();
        var temp72 = new Fuse.Drawing.StaticSolidColor(float4(0f, 0.8f, 1f, 1f));
        var temp73 = new Fuse.Controls.Page();
        var temp74 = new WelcomeAnimation();
        var temp75 = new Fuse.Drawing.StaticSolidColor(float4(0.02352941f, 1f, 0.6117647f, 1f));
        var temp76 = new Fuse.Controls.Page();
        var temp77 = new ScrollingAnimationPage();
        var temp78 = new Fuse.Drawing.StaticSolidColor(float4(0.8f, 0.8f, 0.8f, 1f));
        _nav = new Fuse.Controls.PageControl();
        var temp79 = new Fuse.Controls.Page();
        var temp80 = new RotatingNavigation();
        var temp81 = new Fuse.Drawing.StaticSolidColor(float4(0.5333334f, 0.5333334f, 0.5333334f, 1f));
        var temp82 = new Fuse.Controls.Page();
        var temp83 = new RotatingWheel();
        var temp84 = new Fuse.Controls.Page();
        var temp85 = new Fuse.Controls.Panel();
        var temp86 = new Fuse.Controls.DockPanel();
        var temp87 = new Fuse.Style();
        var temp88 = new Template2(this) { Cascade = true, AffectSubtypes = true };
        menuButton = new Fuse.Controls.Panel();
        var temp89 = new Fuse.Controls.Circle();
        var temp90 = new Fuse.Drawing.SolidColor();
        var temp91 = new HamburgerIcon();
        var temp92 = new CloseIcon();
        var temp93 = new Fuse.Controls.Panel();
        var temp94 = new Fuse.Controls.StackPanel();
        exElement = new Unos.Quadrilatere();
        var temp95 = new Fuse.Controls.Panel();
        var temp96 = new Fuse.Controls.StackPanel();
        exElement2 = new Unos.Quadrilatere();
        var temp97 = new Fuse.Controls.Panel();
        var temp98 = new Fuse.Rotation();
        showMenu = new Fuse.Triggers.WhileTrue();
        var temp99 = new Fuse.Animations.Rotate();
        var temp100 = new Fuse.Drawing.StaticSolidColor(float4(0.5333334f, 0.5333334f, 0.5333334f, 1f));
        var temp101 = new Fuse.Controls.Page();
        var temp102 = new MultiLayoutNav();
        var temp103 = new Fuse.Controls.Page();
        var temp104 = new Fuse.Controls.Panel();
        var temp105 = new Fuse.Controls.EdgeNavigator();
        var temp106 = new Fuse.Controls.Panel();
        var temp107 = new Fuse.Drawing.StaticSolidColor(float4(1f, 0.4f, 0.2f, 1f));
        var temp108 = new Fuse.Controls.Panel();
        var temp109 = new Fuse.Controls.Text();
        var temp110 = new Fuse.Drawing.StaticSolidColor(float4(1f, 1f, 1f, 1f));
        var temp111 = new Fuse.Drawing.StaticSolidColor(float4(0f, 0.8f, 1f, 1f));
        _navAdvance = new Fuse.Controls.PageControl();
        var temp112 = new Fuse.Controls.Page();
        var temp113 = new BigRotatingWheel();
        _c = new FuseIntro();
        this.Background = float4(0.9333333f, 0.9333333f, 0.9333333f, 1f);
        temp8.LineNumber = 3;
        temp8.FileName = "C:\\Users\\TNeuraz\\Documents\\Perso\\FuseBase\\MainView.ux";
        temp8.File = new global::Uno.UX.BundleFileSource(import global::Uno.BundleFile("../../Javascript/main.js"));
        temp9.CullFace = Uno.Graphics.PolygonFace.Back;
        temp9.Perspective = 200f;
        temp9.RootNode = temp10;
        temp10.Children.Add(temp11);
        temp11.Children.Add(temp12);
        temp11.Children.Add(temp31);
        temp12.ColumnCount = 3;
        global::Fuse.Controls.DockPanel.SetDock(temp12, Fuse.Layouts.Dock.Top);
        temp12.Background = temp30;
        temp12.Children.Add(temp15);
        temp12.Children.Add(temp18);
        temp12.Children.Add(temp21);
        temp12.Children.Add(temp24);
        temp12.Children.Add(temp27);
        temp12.Styles.Add(temp13);
        temp13.Templates.Add(temp14);
        temp15.Text = "A";
        temp15.Behaviors.Add(temp16);
        temp16.Actions.Add(temp17);
        temp17.Target = _a;
        temp17.NavigationContext = _mainNavigation;
        temp18.Text = "B";
        temp18.Behaviors.Add(temp19);
        temp19.Actions.Add(temp20);
        temp20.Target = _b;
        temp20.NavigationContext = _mainNavigation;
        temp21.Text = "C";
        temp21.Behaviors.Add(temp22);
        temp22.Actions.Add(temp23);
        temp23.Target = _c;
        temp23.NavigationContext = _mainNavigation;
        temp24.Text = "Nav";
        temp24.Behaviors.Add(temp25);
        temp25.Actions.Add(temp26);
        temp26.Target = _nav;
        temp26.NavigationContext = _mainNavigation;
        temp27.Text = "Nav Advance";
        temp27.Behaviors.Add(temp28);
        temp28.Actions.Add(temp29);
        temp29.Target = _navAdvance;
        temp29.NavigationContext = _mainNavigation;
        global::Fuse.Controls.DockPanel.SetDock(temp31, Fuse.Layouts.Dock.Fill);
        temp31.Children.Add(_a);
        temp31.Children.Add(_b);
        temp31.Children.Add(_nav);
        temp31.Children.Add(_navAdvance);
        temp31.Children.Add(_c);
        temp31.Behaviors.Add(_mainNavigation);
        temp31.Styles.Add(temp32);
        _mainNavigation.Easing = Fuse.Animations.Easing.CubicInOut;
        temp32.Templates.Add(temp33);
        _a.Name = "_a";
        _a.Children.Add(temp34);
        _a.Children.Add(temp35);
        _a.Children.Add(temp54);
        _a.Children.Add(temp57);
        _a.Children.Add(temp64);
        temp35.Background = temp53;
        temp35.Children.Add(temp36);
        temp36.Content = temp37;
        temp37.Children.Add(temp38);
        temp37.Children.Add(temp42);
        temp37.Children.Add(temp43);
        temp37.Behaviors.Add(temp50);
        temp37.Behaviors.Add(temp51);
        temp37.Behaviors.Add(temp52);
        temp37.Behaviors.Add(temp3);
        temp37.Behaviors.Add(temp4);
        temp37.Behaviors.Add(temp5);
        temp38.Children.Add(temp);
        temp38.Children.Add(temp1);
        temp38.Children.Add(temp41);
        temp.Behaviors.Add(temp39);
        temp1.Behaviors.Add(temp40);
        temp41.Text = "Submit";
        global::Fuse.Gestures.Clicked.AddHandler(temp41, temp_eb0.OnEvent);
        temp41.Behaviors.Add(temp_eb0);
        temp42.Value = "Full list";
        temp42.FontSize = 12f;
        temp42.TextColor = float4(0.972549f, 0.5215687f, 0.5215687f, 1f);
        temp43.Behaviors.Add(temp45);
        temp43.Behaviors.Add(temp2);
        temp2.Factories.Add(temp44);
        temp3.Nodes.Add(temp46);
        temp46.Value = "Nobody there !";
        temp46.FontSize = 10f;
        temp4.EqualTo = 2;
        temp4.Nodes.Add(temp47);
        temp47.Value = "Boum ! Only two of us ! LE KIFF";
        temp47.FontSize = 10f;
        temp5.GreaterThan = 2;
        temp5.Nodes.Add(temp48);
        temp5.Nodes.Add(temp49);
        temp48.Value = "Putain ! Qui vient nous faire chier !?";
        temp48.FontSize = 10f;
        temp49.Text = "Delete le relou";
        global::Fuse.Gestures.Clicked.AddHandler(temp49, temp_eb1.OnEvent);
        temp49.Behaviors.Add(temp_eb1);
        temp54.Background = temp56;
        temp54.Children.Add(temp55);
        temp57.Background = temp63;
        temp57.Children.Add(temp6);
        temp57.Children.Add(temp59);
        temp6.FontSize = 12f;
        temp6.TextColor = float4(1f, 0.4039216f, 0.4823529f, 1f);
        temp6.Alignment = Fuse.Elements.Alignment.Center;
        temp6.Behaviors.Add(temp58);
        temp59.ClipToBounds = true;
        temp59.Content = temp60;
        temp60.Behaviors.Add(temp62);
        temp60.Behaviors.Add(temp7);
        temp7.Factories.Add(temp61);
        temp64.Background = temp66;
        temp64.Children.Add(temp65);
        _b.Name = "_b";
        _b.Children.Add(temp67);
        _b.Children.Add(temp70);
        _b.Children.Add(temp73);
        _b.Children.Add(temp76);
        temp67.Background = temp69;
        temp67.Children.Add(temp68);
        temp70.Background = temp72;
        temp70.Children.Add(temp71);
        temp73.Background = temp75;
        temp73.Children.Add(temp74);
        temp76.Background = temp78;
        temp76.Children.Add(temp77);
        _nav.Name = "_nav";
        _nav.Children.Add(temp79);
        _nav.Children.Add(temp82);
        _nav.Children.Add(temp84);
        _nav.Children.Add(temp101);
        _nav.Children.Add(temp103);
        temp79.Background = temp81;
        temp79.Children.Add(temp80);
        temp82.Children.Add(temp83);
        temp84.Background = temp100;
        temp84.Children.Add(temp85);
        temp85.Children.Add(temp86);
        temp85.Behaviors.Add(showMenu);
        temp86.Children.Add(menuButton);
        temp86.Children.Add(temp93);
        temp86.Styles.Add(temp87);
        temp87.Templates.Add(temp88);
        menuButton.Width = 500f;
        menuButton.Height = 500f;
        menuButton.Padding = float4(40f, 40f, 40f, 40f);
        menuButton.Offset = float2(0f, 375f);
        menuButton.Name = "menuButton";
        global::Fuse.Controls.DockPanel.SetDock(menuButton, Fuse.Layouts.Dock.Bottom);
        menuButton.Children.Add(temp89);
        menuButton.Children.Add(temp91);
        menuButton.Children.Add(temp92);
        temp89.Layer = Fuse.Layer.Background;
        temp89.Fills.Add(temp90);
        temp90.Color = float4(0.9333333f, 0.5176471f, 0.5215687f, 1f);
        temp91.Alignment = Fuse.Elements.Alignment.TopLeft;
        temp91.Offset = float2(100f, 0f);
        temp92.Alignment = Fuse.Elements.Alignment.TopRight;
        temp92.Offset = float2(-100f, 0f);
        temp93.Children.Add(temp94);
        temp93.Children.Add(temp96);
        temp94.Children.Add(exElement);
        temp94.Children.Add(temp95);
        exElement.Width = 100f;
        exElement.Height = 200f;
        exElement.Margin = float4(10f, 10f, 10f, 10f);
        exElement.Name = "exElement";
        temp95.Height = 200f;
        temp96.Children.Add(exElement2);
        temp96.Children.Add(temp97);
        temp96.Transforms.Add(temp98);
        exElement2.Width = 100f;
        exElement2.Height = 200f;
        exElement2.Margin = float4(10f, 10f, 10f, 10f);
        exElement2.Name = "exElement2";
        temp97.Height = 200f;
        temp98.Degrees = 20f;
        showMenu.Animators.Add(temp99);
        temp99.Degrees = 45f;
        temp99.Easing = Fuse.Animations.Easing.ExponentialInOut;
        temp99.Duration = 0.5;
        temp99.Target = menuButton;
        temp101.Children.Add(temp102);
        temp103.Background = temp111;
        temp103.Children.Add(temp104);
        temp104.Children.Add(temp105);
        temp105.Children.Add(temp106);
        temp105.Children.Add(temp108);
        temp106.Width = 150f;
        global::Fuse.Navigation.EdgeNavigation.SetEdge(temp106, Fuse.Navigation.NavigationEdge.Left);
        temp106.Background = temp107;
        temp108.Background = temp110;
        temp108.Children.Add(temp109);
        temp109.Value = "This is an example of EdgeNavigator!";
        temp109.Alignment = Fuse.Elements.Alignment.Center;
        _navAdvance.Name = "_navAdvance";
        _navAdvance.Children.Add(temp112);
        temp112.Children.Add(temp113);
        _c.Name = "_c";
        this.RootNode = temp9;
        this.Theme = Fuse.BasicTheme.BasicTheme.Singleton;
        this.Behaviors.Add(temp8);
    }
}

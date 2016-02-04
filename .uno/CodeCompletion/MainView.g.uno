public partial class MainView: Fuse.App
{
    public partial class Template: Uno.UX.Template<Fuse.Controls.PageControl>
    {
        internal readonly MainView __parent;
        public Template(MainView parent)
        {
            __parent = parent;
        }
        public partial class Template1: Uno.UX.Template<Fuse.Controls.Text>
        {
            internal readonly Template __parent;
            public Template1(Template parent)
            {
                __parent = parent;
            }
            static Template1()
            {
            }
            protected override void OnApply(Fuse.Controls.Text self)
            {
                Fuse.Controls.TextControl.FontSizeProperty.SetStyle(self, 30f);
                Fuse.Elements.Element.AlignmentProperty.SetStyle(self, Fuse.Elements.Alignment.Center);
            }
        }
        static Template()
        {
        }
        protected override void OnApply(Fuse.Controls.PageControl self)
        {
            var temp = new Fuse.Style();
            var temp1 = new Template1(this) { Cascade = true, AffectSubtypes = true };
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
    public partial class Factory: Uno.UX.Factory
    {
        internal readonly MainView __parent;
        public Factory(MainView parent): base(null, false)
        {
            __parent = parent;
        }
        MyBaseApp_FuseControlsTextControl_string_Value_Property temp_Value_inst;
        MyBaseApp_FuseControlsTextControl_string_Value_Property temp1_Value_inst;
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
            var temp2 = new Fuse.Reactive.DataBinding<string>(temp_Value_inst, "name");
            var temp3 = new Fuse.Reactive.DataBinding<string>(temp1_Value_inst, "age");
            self.Orientation = Fuse.Layouts.Orientation.Horizontal;
            self.Padding = float4(40f, 0f, 40f, 0f);
            temp.Behaviors.Add(temp2);
            temp1.Margin = float4(20f, 20f, 20f, 20f);
            temp1.Behaviors.Add(temp3);
            self.Children.Add(temp);
            self.Children.Add(temp1);
            return self;
        }
    }
    MyBaseApp_FuseControlsTextControl_string_Value_Property temp_Value_inst;
    MyBaseApp_FuseControlsTextControl_string_Value_Property temp1_Value_inst;
    MyBaseApp_FuseReactiveEach_object_Items_Property temp2_Items_inst;
    internal Fuse.Navigation.LinearNavigation _mainNavigation;
    internal Fuse.Controls.PageControl _a;
    internal Fuse.Reactive.EventBinding temp_eb0;
    internal Fuse.Controls.PageControl _b;
    internal FuseIntro _c;
    static MainView()
    {
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
        var temp3 = new Fuse.Controls.ClientPanel();
        var temp4 = new Fuse.Controls.DockPanel();
        var temp5 = new Fuse.Controls.Grid();
        var temp6 = new Fuse.Controls.Button();
        var temp7 = new Fuse.Gestures.Clicked();
        var temp8 = new Fuse.Navigation.NavigateTo();
        var temp9 = new Fuse.Controls.Button();
        var temp10 = new Fuse.Gestures.Clicked();
        var temp11 = new Fuse.Navigation.NavigateTo();
        var temp12 = new Fuse.Controls.Button();
        var temp13 = new Fuse.Gestures.Clicked();
        var temp14 = new Fuse.Navigation.NavigateTo();
        var temp15 = new Fuse.Drawing.StaticSolidColor(float4(0f, 0.8f, 1f, 1f));
        var temp16 = new Fuse.Controls.Panel();
        _mainNavigation = new Fuse.Navigation.LinearNavigation();
        var temp17 = new Fuse.Style();
        var temp18 = new Template(this) { Cascade = true, AffectSubtypes = true };
        _a = new Fuse.Controls.PageControl();
        var temp19 = new Fuse.Reactive.JavaScript();
        var temp20 = new MyPage();
        var temp21 = new Fuse.Controls.Page();
        var temp22 = new Fuse.Controls.ScrollViewer();
        var temp23 = new Fuse.Controls.StackPanel();
        var temp24 = new Fuse.Controls.StackPanel();
        var temp25 = new Fuse.Reactive.DataBinding<string>(temp_Value_inst, "name");
        var temp26 = new Fuse.Reactive.DataBinding<string>(temp1_Value_inst, "age");
        var temp27 = new Fuse.Controls.Button();
        temp_eb0 = new Fuse.Reactive.EventBinding("submit");
        var temp28 = new Fuse.Controls.Text();
        var temp29 = new Fuse.Controls.StackPanel();
        var temp30 = new Factory(this);
        var temp31 = new Fuse.Reactive.DataBinding<object>(temp2_Items_inst, "myPerson");
        var temp32 = new Fuse.Drawing.StaticSolidColor(float4(0f, 1f, 0.8f, 1f));
        var temp33 = new Fuse.Controls.Page();
        var temp34 = new Fuse.Controls.Text();
        var temp35 = new Fuse.Drawing.StaticSolidColor(float4(0.8f, 0f, 1f, 1f));
        _b = new Fuse.Controls.PageControl();
        var temp36 = new Fuse.Controls.Page();
        var temp37 = new RotatingMenu();
        var temp38 = new Fuse.Drawing.StaticSolidColor(float4(0.5333334f, 0.5333334f, 0.5333334f, 1f));
        var temp39 = new Fuse.Controls.Page();
        var temp40 = new BasicAnimPage();
        var temp41 = new Fuse.Drawing.StaticSolidColor(float4(0f, 0.8f, 1f, 1f));
        var temp42 = new Fuse.Controls.Page();
        var temp43 = new Fuse.Controls.Text();
        var temp44 = new Fuse.Drawing.StaticSolidColor(float4(1f, 0f, 0.8f, 1f));
        _c = new FuseIntro();
        this.Background = float4(0.9333333f, 0.9333333f, 0.9333333f, 1f);
        temp3.Children.Add(temp4);
        temp4.Children.Add(temp5);
        temp4.Children.Add(temp16);
        temp5.ColumnCount = 3;
        global::Fuse.Controls.DockPanel.SetDock(temp5, Fuse.Layouts.Dock.Top);
        temp5.Background = temp15;
        temp5.Children.Add(temp6);
        temp5.Children.Add(temp9);
        temp5.Children.Add(temp12);
        temp6.Text = "A";
        temp6.Behaviors.Add(temp7);
        temp7.Actions.Add(temp8);
        temp8.Target = _a;
        temp8.NavigationContext = _mainNavigation;
        temp9.Text = "B";
        temp9.Behaviors.Add(temp10);
        temp10.Actions.Add(temp11);
        temp11.Target = _b;
        temp11.NavigationContext = _mainNavigation;
        temp12.Text = "C";
        temp12.Behaviors.Add(temp13);
        temp13.Actions.Add(temp14);
        temp14.Target = _c;
        temp14.NavigationContext = _mainNavigation;
        global::Fuse.Controls.DockPanel.SetDock(temp16, Fuse.Layouts.Dock.Fill);
        temp16.Children.Add(_a);
        temp16.Children.Add(_b);
        temp16.Children.Add(_c);
        temp16.Behaviors.Add(_mainNavigation);
        temp16.Styles.Add(temp17);
        _mainNavigation.Easing = Fuse.Animations.Easing.CubicInOut;
        temp17.Templates.Add(temp18);
        _a.Name = "_a";
        _a.Children.Add(temp20);
        _a.Children.Add(temp21);
        _a.Children.Add(temp33);
        _a.Behaviors.Add(temp19);
        temp19.Code = "var Observable = require('FuseJS/Observable');\n\n\t        \t\t\t\tvar myVariable = Observable(\"some value\");\n\t        \t\t\t\tvar name = Observable(\"\");\n\t        \t\t\t\tvar age = Observable(\"\");\n\n\t        \t\t\t\tvar lowercase = myVariable.map(function(x){\n\t        \t\t\t\t\treturn x.toLowerCase();\n\t        \t\t\t\t});\n\n\t        \t\t\t\tvar uppercase = myVariable.map(function(x){\n\t        \t\t\t\t\treturn x.toUpperCase();\n\t        \t\t\t\t});\n\n\n\t        \t\t\t\tvar isThomas = myVariable.map(function(x){\n\t        \t\t\t\t\treturn x==\"Thomas\";\n\t        \t\t\t\t});\n\n\t        \t\t\t\tfunction button_clicked(){\n\t        \t\t\t\t\tmyVariable.value = \"some other value\";\n\t        \t\t\t\t\tdebug_log(myVariable);\n\t        \t\t\t\t}\n\n\t        \t\t\t\tfunction Person(name, age){\n\t        \t\t\t\t\tthis.name = name;\n\t        \t\t\t\t\tthis.age = age;\n\t        \t\t\t\t}\n\n\t        \t\t\t\tvar myPerson = Observable(\n\t        \t\t\t\t\tnew Person(\"Thomas\", 25),\n\t        \t\t\t\t\tnew Person(\"Cassandre\", 25)\n\t        \t\t\t\t);\n\n\t        \t\t\t\tvar listUppercase = myPerson\n\t        \t\t\t\t.map(function(x){\n\t\t\t\t\t\t\t\treturn new Person(x.name.toUpperCase(), x.age);\n\t        \t\t\t\t})\n\t        \t\t\t\t.where(function(x){\n\t        \t\t\t\t\treturn x.age > 30;\n\t        \t\t\t\t});\n\n\t        \t\t\t\tfunction submit(){\n\t        \t\t\t\t\tvar newPerson = new Person(name.value, age.value);\n\t        \t\t\t\t\tmyPerson.add(newPerson);\n\t        \t\t\t\t\tname.value=\"\";\n\t        \t\t\t\t\tage.value=\"\";\n\t        \t\t\t\t}\n\n\t        \t\t\t\tmodule.exports = {\n\t        \t\t\t\t\tmyVariable : myVariable,\n\t        \t\t\t\t\tbutton_clicked: button_clicked,\n\t        \t\t\t\t\tuppercase : uppercase,\n\t        \t\t\t\t\tlowercase : lowercase,\n\t        \t\t\t\t\tisThomas: isThomas,\n\t        \t\t\t\t\tmyPerson : myPerson,\n\t        \t\t\t\t\tname : name,\n\t        \t\t\t\t\tage: age,\n\t        \t\t\t\t\tsubmit : submit,\n\t        \t\t\t\t\tlistUppercase : listUppercase\n\t        \t\t\t\t}";
        temp19.LineNumber = 41;
        temp19.FileName = "C:\\Users\\TNeuraz\\Documents\\Perso\\FuseBase\\MainView.ux";
        temp21.Background = temp32;
        temp21.Children.Add(temp22);
        temp22.Content = temp23;
        temp23.Children.Add(temp24);
        temp23.Children.Add(temp28);
        temp23.Children.Add(temp29);
        temp24.Children.Add(temp);
        temp24.Children.Add(temp1);
        temp24.Children.Add(temp27);
        temp.Behaviors.Add(temp25);
        temp1.Behaviors.Add(temp26);
        temp27.Text = "Submit";
        global::Fuse.Gestures.Clicked.AddHandler(temp27, temp_eb0.OnEvent);
        temp27.Behaviors.Add(temp_eb0);
        temp28.Value = "Full list";
        temp28.FontSize = 12f;
        temp28.TextColor = float4(0.972549f, 0.5215687f, 0.5215687f, 1f);
        temp29.Behaviors.Add(temp31);
        temp29.Behaviors.Add(temp2);
        temp2.Factories.Add(temp30);
        temp33.Background = temp35;
        temp33.Children.Add(temp34);
        temp34.Value = "A3";
        _b.Name = "_b";
        _b.Children.Add(temp36);
        _b.Children.Add(temp39);
        _b.Children.Add(temp42);
        temp36.Background = temp38;
        temp36.Children.Add(temp37);
        temp39.Background = temp41;
        temp39.Children.Add(temp40);
        temp42.Background = temp44;
        temp42.Children.Add(temp43);
        temp43.Value = "B3";
        _c.Name = "_c";
        this.RootNode = temp3;
        this.Theme = Fuse.BasicTheme.BasicTheme.Singleton;
    }
}

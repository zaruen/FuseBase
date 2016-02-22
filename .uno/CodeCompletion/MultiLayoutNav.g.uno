public partial class MultiLayoutNav: Fuse.Controls.Panel
{
    public partial class Template: Uno.UX.Template<Fuse.Controls.Button>
    {
        internal readonly MultiLayoutNav __parent;
        public Template(MultiLayoutNav parent)
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
            var temp2 = new Fuse.Drawing.StaticSolidColor(float4(0.7411765f, 0.7647059f, 0.7803922f, 1f));
            Fuse.Elements.Element.MarginProperty.SetStyle(self, float4(0f, 0f, 0f, 4f));
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
    MyBaseApp_FuseControlsPageControl_FuseNode_Active_Property navigation_Active_inst;
    MyBaseApp_FuseControlsMultiLayoutPanel_FuseElementsElement_LayoutElement_Property tabBar_LayoutElement_inst;
    internal Fuse.Controls.MultiLayoutPanel tabBar;
    internal Fuse.Controls.Panel page1Tab;
    internal Fuse.Controls.Rectangle indicator;
    internal Fuse.Controls.Panel page2Tab;
    internal Fuse.Controls.Panel page3Tab;
    internal Fuse.Controls.PageControl navigation;
    internal Fuse.Controls.Page page1;
    internal Fuse.Controls.Page page2;
    internal Fuse.Controls.Page page3;
    static MultiLayoutNav()
    {
    }
    public MultiLayoutNav()
    {
        InitializeUX();
    }
    internal void InitializeUX()
    {
        navigation = new Fuse.Controls.PageControl();
        navigation_Active_inst = new MyBaseApp_FuseControlsPageControl_FuseNode_Active_Property(navigation);
        navigation_Active_inst = new MyBaseApp_FuseControlsPageControl_FuseNode_Active_Property(navigation);
        navigation_Active_inst = new MyBaseApp_FuseControlsPageControl_FuseNode_Active_Property(navigation);
        tabBar = new Fuse.Controls.MultiLayoutPanel();
        tabBar_LayoutElement_inst = new MyBaseApp_FuseControlsMultiLayoutPanel_FuseElementsElement_LayoutElement_Property(tabBar);
        tabBar_LayoutElement_inst = new MyBaseApp_FuseControlsMultiLayoutPanel_FuseElementsElement_LayoutElement_Property(tabBar);
        tabBar_LayoutElement_inst = new MyBaseApp_FuseControlsMultiLayoutPanel_FuseElementsElement_LayoutElement_Property(tabBar);
        var temp = new Fuse.Controls.DockPanel();
        var temp1 = new Fuse.Style();
        var temp2 = new Template(this) { Cascade = false, AffectSubtypes = true };
        var temp3 = new Fuse.Controls.StackPanel();
        var temp4 = new Fuse.Controls.StatusBarBackground();
        var temp5 = new Fuse.iOS.StatusBarConfig();
        var temp6 = new Fuse.Layouts.GridLayout();
        page1Tab = new Fuse.Controls.Panel();
        var temp7 = new Fuse.Controls.Placeholder();
        indicator = new Fuse.Controls.Rectangle();
        var temp8 = new Fuse.Triggers.LayoutAnimation();
        var temp9 = new Fuse.Animations.Move();
        var temp10 = new Fuse.Drawing.StaticSolidColor(float4(0.4235294f, 0.4784314f, 0.5372549f, 1f));
        var temp11 = new Fuse.Controls.Button();
        var temp12 = new Fuse.Gestures.Clicked();
        var temp13 = new Fuse.Triggers.Actions.Set<Fuse.Node>(navigation_Active_inst);
        page2Tab = new Fuse.Controls.Panel();
        var temp14 = new Fuse.Controls.Placeholder();
        var temp15 = new Fuse.Controls.Button();
        var temp16 = new Fuse.Gestures.Clicked();
        var temp17 = new Fuse.Triggers.Actions.Set<Fuse.Node>(navigation_Active_inst);
        page3Tab = new Fuse.Controls.Panel();
        var temp18 = new Fuse.Controls.Placeholder();
        var temp19 = new Fuse.Controls.Button();
        var temp20 = new Fuse.Gestures.Clicked();
        var temp21 = new Fuse.Triggers.Actions.Set<Fuse.Node>(navigation_Active_inst);
        var temp22 = new Fuse.Drawing.StaticSolidColor(float4(0.7411765f, 0.7647059f, 0.7803922f, 1f));
        page1 = new Fuse.Controls.Page();
        var temp23 = new Fuse.Navigation.WhileActive();
        var temp24 = new Fuse.Triggers.Actions.Set<Fuse.Elements.Element>(tabBar_LayoutElement_inst);
        var temp25 = new WelcomeText();
        var temp26 = new Fuse.Drawing.StaticSolidColor(float4(0.9333333f, 0.9333333f, 0.9333333f, 1f));
        page2 = new Fuse.Controls.Page();
        var temp27 = new Fuse.Navigation.WhileActive();
        var temp28 = new Fuse.Triggers.Actions.Set<Fuse.Elements.Element>(tabBar_LayoutElement_inst);
        var temp29 = new WelcomeText();
        var temp30 = new Fuse.Drawing.StaticSolidColor(float4(0.6705883f, 0.7176471f, 0.7176471f, 1f));
        page3 = new Fuse.Controls.Page();
        var temp31 = new Fuse.Navigation.WhileActive();
        var temp32 = new Fuse.Triggers.Actions.Set<Fuse.Elements.Element>(tabBar_LayoutElement_inst);
        var temp33 = new WelcomeText();
        var temp34 = new Fuse.Drawing.StaticSolidColor(float4(0.9490196f, 0.945098f, 0.9372549f, 1f));
        temp.Margin = float4(50f, 50f, 50f, 50f);
        temp.Children.Add(temp3);
        temp.Children.Add(navigation);
        temp.Styles.Add(temp1);
        temp1.Templates.Add(temp2);
        global::Fuse.Controls.DockPanel.SetDock(temp3, Fuse.Layouts.Dock.Top);
        temp3.Background = temp22;
        temp3.Children.Add(temp4);
        temp3.Children.Add(tabBar);
        temp3.Behaviors.Add(temp5);
        temp5.Style = Uno.Platform.iOS.StatusBarStyle.Light;
        tabBar.Height = 50f;
        tabBar.Name = "tabBar";
        tabBar.Layout = temp6;
        tabBar.Children.Add(page1Tab);
        tabBar.Children.Add(page2Tab);
        tabBar.Children.Add(page3Tab);
        temp6.Rows = "1*";
        temp6.ColumnCount = 3;
        page1Tab.Name = "page1Tab";
        page1Tab.Children.Add(temp7);
        page1Tab.Children.Add(temp11);
        temp7.PlaceholderContent = indicator;
        indicator.Height = 4f;
        indicator.Alignment = Fuse.Elements.Alignment.Bottom;
        indicator.Name = "indicator";
        indicator.Fill = temp10;
        indicator.Behaviors.Add(temp8);
        temp8.Animators.Add(temp9);
        temp9.X = 1f;
        temp9.Easing = Fuse.Animations.Easing.BackIn;
        temp9.Duration = 0.4;
        temp9.RelativeTo = Fuse.Triggers.LayoutTransition.PositionLayoutChange;
        temp11.Text = "Page 1";
        temp11.Behaviors.Add(temp12);
        temp12.Actions.Add(temp13);
        temp13.Value = page1;
        page2Tab.Name = "page2Tab";
        page2Tab.Children.Add(temp14);
        page2Tab.Children.Add(temp15);
        temp14.Target = indicator;
        temp15.Text = "Page 2";
        temp15.Behaviors.Add(temp16);
        temp16.Actions.Add(temp17);
        temp17.Value = page2;
        page3Tab.Name = "page3Tab";
        page3Tab.Children.Add(temp18);
        page3Tab.Children.Add(temp19);
        temp18.Target = indicator;
        temp19.Text = "Page 3";
        temp19.Behaviors.Add(temp20);
        temp20.Actions.Add(temp21);
        temp21.Value = page3;
        navigation.Name = "navigation";
        navigation.Children.Add(page1);
        navigation.Children.Add(page2);
        navigation.Children.Add(page3);
        page1.Name = "page1";
        page1.Background = temp26;
        page1.Children.Add(temp25);
        page1.Behaviors.Add(temp23);
        temp23.Threshold = 0.5f;
        temp23.Actions.Add(temp24);
        temp24.Value = page1Tab;
        temp25.Value = "Welcome to Page 1";
        page2.Name = "page2";
        page2.Background = temp30;
        page2.Children.Add(temp29);
        page2.Behaviors.Add(temp27);
        temp27.Threshold = 0.5f;
        temp27.Actions.Add(temp28);
        temp28.Value = page2Tab;
        temp29.Value = "Welcome to Page 2";
        page3.Name = "page3";
        page3.Background = temp34;
        page3.Children.Add(temp33);
        page3.Behaviors.Add(temp31);
        temp31.Threshold = 0.5f;
        temp31.Actions.Add(temp32);
        temp32.Value = page3Tab;
        temp33.Value = "Welcome to Page 3";
        this.Children.Add(temp);
    }
}

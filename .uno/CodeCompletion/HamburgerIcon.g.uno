public partial class HamburgerIcon: Fuse.Controls.StackPanel
{
    public partial class Template: Uno.UX.Template<Fuse.Controls.Rectangle>
    {
        internal readonly HamburgerIcon __parent;
        public Template(HamburgerIcon parent)
        {
            __parent = parent;
        }
        static Template()
        {
        }
        protected override void OnApply(Fuse.Controls.Rectangle self)
        {
            var temp = new Fuse.Drawing.SolidColor();
            Fuse.Controls.Rectangle.CornerRadiusProperty.SetStyle(self, float4(3f, 3f, 3f, 3f));
            Fuse.Elements.Element.HeightProperty.SetStyle(self, 3f);
            Fuse.Elements.Element.MarginProperty.SetStyle(self, float4(0f, 2f, 0f, 2f));
            temp.Color = float4(1f, 1f, 1f, 1f);
            self.AddStyleFill(temp);
        }
    }
    static HamburgerIcon()
    {
    }
    public HamburgerIcon()
    {
        InitializeUX();
    }
    internal void InitializeUX()
    {
        var temp = new Fuse.Style();
        var temp1 = new Template(this) { Cascade = true, AffectSubtypes = true };
        var temp2 = new Fuse.Controls.Rectangle();
        var temp3 = new Fuse.Controls.Rectangle();
        var temp4 = new Fuse.Controls.Rectangle();
        this.Width = 25f;
        this.Height = 21f;
        temp.Templates.Add(temp1);
        this.Children.Add(temp2);
        this.Children.Add(temp3);
        this.Children.Add(temp4);
        this.Styles.Add(temp);
    }
}

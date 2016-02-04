public partial class CloseIcon: Fuse.Controls.Panel
{
    public partial class Template: Uno.UX.Template<Fuse.Controls.Rectangle>
    {
        internal readonly CloseIcon __parent;
        public Template(CloseIcon parent)
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
            temp.Color = float4(1f, 1f, 1f, 1f);
            self.AddStyleFill(temp);
        }
    }
    static CloseIcon()
    {
    }
    public CloseIcon()
    {
        InitializeUX();
    }
    internal void InitializeUX()
    {
        var temp = new Fuse.Style();
        var temp1 = new Template(this) { Cascade = true, AffectSubtypes = true };
        var temp2 = new Fuse.Controls.Rectangle();
        var temp3 = new Fuse.Rotation();
        var temp4 = new Fuse.Controls.Rectangle();
        var temp5 = new Fuse.Rotation();
        this.Width = 25f;
        this.Height = 25f;
        temp.Templates.Add(temp1);
        temp2.Transforms.Add(temp3);
        temp3.Degrees = 45f;
        temp4.Transforms.Add(temp5);
        temp5.Degrees = -45f;
        this.Children.Add(temp2);
        this.Children.Add(temp4);
        this.Styles.Add(temp);
    }
}

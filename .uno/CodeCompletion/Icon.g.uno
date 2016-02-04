public partial class Icon: Fuse.Controls.Image
{
    static Icon()
    {
    }
    public Icon()
    {
        InitializeUX();
    }
    internal void InitializeUX()
    {
        this.StretchMode = Fuse.Elements.StretchMode.Uniform;
        this.StretchDirection = Fuse.Elements.StretchDirection.DownOnly;
    }
}

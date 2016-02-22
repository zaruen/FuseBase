public partial class RotatingPage: Fuse.Controls.DockPanel
{
    static RotatingPage()
    {
    }
    public RotatingPage()
    {
        InitializeUX();
    }
    internal void InitializeUX()
    {
        var temp = new Fuse.Controls.Panel();
        this.Name = "origin";
        temp.Height = 200f;
        this.Children.Add(temp);
    }
}

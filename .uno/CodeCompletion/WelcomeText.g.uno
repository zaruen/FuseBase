public partial class WelcomeText: Fuse.Controls.Text
{
    static WelcomeText()
    {
    }
    public WelcomeText()
    {
        InitializeUX();
    }
    internal void InitializeUX()
    {
        this.FontSize = 30f;
        this.Alignment = Fuse.Elements.Alignment.Center;
    }
}

public partial class T: Fuse.Controls.Text
{
    static T()
    {
    }
    public T()
    {
        InitializeUX();
    }
    internal void InitializeUX()
    {
        this.FontSize = 18f;
        this.TextColor = float4(1f, 1f, 1f, 1f);
        this.Alignment = Fuse.Elements.Alignment.Center;
        this.Margin = float4(0f, 5f, 0f, 5f);
        this.Opacity = 0f;
    }
}

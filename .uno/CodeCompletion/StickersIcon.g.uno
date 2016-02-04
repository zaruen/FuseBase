public partial class StickersIcon: Icon
{
    static StickersIcon()
    {
    }
    public StickersIcon()
    {
        InitializeUX();
    }
    internal void InitializeUX()
    {
        var temp = new Fuse.Resources.MultiDensityImageSource();
        var temp1 = new Fuse.Resources.FileImageSource();
        var temp2 = new Fuse.Resources.FileImageSource();
        temp.Sources.Add(temp1);
        temp.Sources.Add(temp2);
        temp1.Density = 1f;
        temp1.File = new global::Uno.UX.BundleFileSource(import global::Uno.BundleFile("../../assets/stickers@1x.png"));
        temp2.Density = 2f;
        temp2.File = new global::Uno.UX.BundleFileSource(import global::Uno.BundleFile("../../assets/stickers@2x.png"));
        this.Source = temp;
    }
}

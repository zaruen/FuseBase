public partial class AccountCircleIcon: CircleIcon
{
    static AccountCircleIcon()
    {
    }
    public AccountCircleIcon()
    {
        InitializeUX();
    }
    internal void InitializeUX()
    {
        var temp = new Fuse.Resources.FileImageSource();
        var temp1 = new Uno.UX.Resource("iconFile", temp);
        temp.File = new global::Uno.UX.BundleFileSource(import global::Uno.BundleFile("../../Assets/profile@1x.png"));
        this.Resources.Add(temp1);
    }
}

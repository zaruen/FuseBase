public partial class NotesCircleIcon: CircleIcon
{
    static NotesCircleIcon()
    {
    }
    public NotesCircleIcon()
    {
        InitializeUX();
    }
    internal void InitializeUX()
    {
        var temp = new Fuse.Resources.FileImageSource();
        var temp1 = new Uno.UX.Resource("iconFile", temp);
        temp.File = new global::Uno.UX.BundleFileSource(import global::Uno.BundleFile("../../Assets/notes.png"));
        this.Resources.Add(temp1);
    }
}

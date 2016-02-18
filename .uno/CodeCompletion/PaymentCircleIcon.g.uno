public partial class PaymentCircleIcon: CircleIcon
{
    static PaymentCircleIcon()
    {
    }
    public PaymentCircleIcon()
    {
        InitializeUX();
    }
    internal void InitializeUX()
    {
        var temp = new Fuse.Resources.FileImageSource();
        var temp1 = new Uno.UX.Resource("iconFile", temp);
        var temp2 = new Fuse.Controls.Circle();
        var temp3 = new Fuse.Drawing.StaticSolidColor(float4(0.02352941f, 1f, 0.6117647f, 1f));
        temp.File = new global::Uno.UX.BundleFileSource(import global::Uno.BundleFile("../../Assets/payment.png"));
        temp2.Fill = temp3;
        this.Children.Add(temp2);
        this.Resources.Add(temp1);
    }
}

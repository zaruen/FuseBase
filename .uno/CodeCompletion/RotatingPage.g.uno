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
        var temp = new Fuse.Navigation.EnteringAnimation();
        var temp1 = new Fuse.Animations.Rotate();
        var temp2 = new Fuse.Navigation.ExitingAnimation();
        var temp3 = new Fuse.Animations.Rotate();
        var temp4 = new Fuse.Controls.Panel();
        this.Name = "origin";
        temp.Animators.Add(temp1);
        temp1.Degrees = -60f;
        temp1.Duration = 1;
        temp2.Animators.Add(temp3);
        temp3.Degrees = 60f;
        temp3.Duration = 1;
        temp4.Height = 1000f;
        this.Children.Add(temp4);
        this.Behaviors.Add(temp);
        this.Behaviors.Add(temp2);
    }
}

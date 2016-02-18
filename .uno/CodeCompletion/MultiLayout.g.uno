public partial class MultiLayout: Fuse.Controls.Panel
{
    MyBaseApp_FuseControlsMultiLayoutPanel_FuseElementsElement_LayoutElement_Property multiLayoutPanel_LayoutElement_inst;
    internal Fuse.Controls.MultiLayoutPanel multiLayoutPanel;
    internal Fuse.Controls.Panel panel11;
    internal Fuse.Controls.Rectangle rect;
    internal Fuse.Controls.Panel panel22;
    internal Fuse.Controls.Panel panel33;
    static MultiLayout()
    {
    }
    public MultiLayout()
    {
        InitializeUX();
    }
    internal void InitializeUX()
    {
        multiLayoutPanel = new Fuse.Controls.MultiLayoutPanel();
        multiLayoutPanel_LayoutElement_inst = new MyBaseApp_FuseControlsMultiLayoutPanel_FuseElementsElement_LayoutElement_Property(multiLayoutPanel);
        multiLayoutPanel_LayoutElement_inst = new MyBaseApp_FuseControlsMultiLayoutPanel_FuseElementsElement_LayoutElement_Property(multiLayoutPanel);
        multiLayoutPanel_LayoutElement_inst = new MyBaseApp_FuseControlsMultiLayoutPanel_FuseElementsElement_LayoutElement_Property(multiLayoutPanel);
        var temp = new Fuse.Layouts.DockLayout();
        panel11 = new Fuse.Controls.Panel();
        var temp1 = new Fuse.Controls.Placeholder();
        rect = new Fuse.Controls.Rectangle();
        var temp2 = new Fuse.Triggers.LayoutAnimation();
        var temp3 = new Fuse.Animations.Move();
        var temp4 = new Fuse.Animations.Resize();
        var temp5 = new Fuse.Gestures.Clicked();
        var temp6 = new Fuse.Triggers.Actions.Set<Fuse.Elements.Element>(multiLayoutPanel_LayoutElement_inst);
        panel22 = new Fuse.Controls.Panel();
        var temp7 = new Fuse.Controls.Placeholder();
        var temp8 = new Fuse.Gestures.Clicked();
        var temp9 = new Fuse.Triggers.Actions.Set<Fuse.Elements.Element>(multiLayoutPanel_LayoutElement_inst);
        panel33 = new Fuse.Controls.Panel();
        var temp10 = new Fuse.Controls.Placeholder();
        var temp11 = new Fuse.Gestures.Clicked();
        var temp12 = new Fuse.Triggers.Actions.Set<Fuse.Elements.Element>(multiLayoutPanel_LayoutElement_inst);
        multiLayoutPanel.Name = "multiLayoutPanel";
        multiLayoutPanel.Layout = temp;
        multiLayoutPanel.Children.Add(panel11);
        multiLayoutPanel.Children.Add(panel22);
        multiLayoutPanel.Children.Add(panel33);
        panel11.Name = "panel11";
        panel11.Children.Add(temp1);
        temp1.Width = 50f;
        temp1.Height = 50f;
        temp1.PlaceholderContent = rect;
        temp1.Behaviors.Add(temp5);
        rect.Name = "rect";
        rect.Fill = Fuse.Drawing.Brushes.Teal;
        rect.Behaviors.Add(temp2);
        temp2.Animators.Add(temp3);
        temp2.Animators.Add(temp4);
        temp3.X = 1f;
        temp3.Y = 1f;
        temp3.Duration = 1;
        temp3.RelativeTo = Fuse.Triggers.LayoutTransition.PositionLayoutChange;
        temp4.X = 1f;
        temp4.Y = 1f;
        temp4.Duration = 1;
        temp4.RelativeTo = Fuse.Triggers.LayoutTransition.SizeLayoutChange;
        temp5.Actions.Add(temp6);
        temp6.Value = panel22;
        panel22.Width = 200f;
        panel22.Name = "panel22";
        global::Fuse.Controls.DockPanel.SetDock(panel22, Fuse.Layouts.Dock.Right);
        panel22.Children.Add(temp7);
        temp7.Target = rect;
        temp7.Behaviors.Add(temp8);
        temp8.Actions.Add(temp9);
        temp9.Value = panel33;
        panel33.Height = 100f;
        panel33.Name = "panel33";
        global::Fuse.Controls.DockPanel.SetDock(panel33, Fuse.Layouts.Dock.Bottom);
        panel33.Children.Add(temp10);
        temp10.Target = rect;
        temp10.Behaviors.Add(temp11);
        temp11.Actions.Add(temp12);
        temp12.Value = panel11;
        this.Children.Add(multiLayoutPanel);
    }
}

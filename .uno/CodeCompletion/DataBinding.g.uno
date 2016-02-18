public partial class DataBinding: Fuse.Controls.Panel
{
    MyBaseApp_FuseControlsTextControl_string_Value_Property temp_Value_inst;
    MyBaseApp_FuseControlsTextControl_string_Value_Property temp1_Value_inst;
    MyBaseApp_FuseReactiveSelect_object_Data_Property temp2_Data_inst;
    static DataBinding()
    {
    }
    public DataBinding()
    {
        InitializeUX();
    }
    internal void InitializeUX()
    {
        var temp = new Fuse.Controls.Text();
        temp_Value_inst = new MyBaseApp_FuseControlsTextControl_string_Value_Property(temp);
        var temp1 = new Fuse.Controls.Text();
        temp1_Value_inst = new MyBaseApp_FuseControlsTextControl_string_Value_Property(temp1);
        var temp2 = new Fuse.Reactive.Select();
        temp2_Data_inst = new MyBaseApp_FuseReactiveSelect_object_Data_Property(temp2);
        var temp3 = new Fuse.Controls.StackPanel();
        var temp4 = new Fuse.Controls.Text();
        var temp5 = new Fuse.Reactive.DataBinding<string>(temp_Value_inst, "message2");
        var temp6 = new Fuse.Reactive.DataBinding<string>(temp1_Value_inst, "message3");
        var temp7 = new Fuse.Reactive.DataBinding<object>(temp2_Data_inst, "superNestedObject.here.is.a.very.nested.object");
        temp3.Behaviors.Add(temp7);
        temp3.Behaviors.Add(temp2);
        temp2.Nodes.Add(temp4);
        temp2.Nodes.Add(temp);
        temp2.Nodes.Add(temp1);
        temp4.Value = "Yo";
        temp.Behaviors.Add(temp5);
        temp1.Behaviors.Add(temp6);
        this.Children.Add(temp3);
    }
}

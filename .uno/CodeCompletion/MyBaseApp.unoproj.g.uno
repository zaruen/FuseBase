sealed class MyBaseApp_FuseControlsTextControl_string_Value_Property: Uno.UX.Property<string>
{
    Fuse.Controls.TextControl _obj;
    public MyBaseApp_FuseControlsTextControl_string_Value_Property(Fuse.Controls.TextControl obj) { _obj = obj; obj.ValueChanged += this.OnValueChanged; }
    protected override string OnGet() { return _obj.Value; }
    protected override void OnSet(string v, object origin) { _obj.SetValue(v, origin); }
    protected override void OnAddListener(Uno.UX.ValueChangedHandler<string> listener) { _obj.ValueChanged += listener; }
    protected override void OnRemoveListener(Uno.UX.ValueChangedHandler<string> listener) { _obj.ValueChanged -= listener; }
}
sealed class MyBaseApp_FuseReactiveEach_object_Items_Property: Uno.UX.Property<object>
{
    Fuse.Reactive.Each _obj;
    public MyBaseApp_FuseReactiveEach_object_Items_Property(Fuse.Reactive.Each obj) { _obj = obj;  }
    protected override object OnGet() { return _obj.Items; }
    protected override void OnSet(object v, object origin) { _obj.Items = v; }
}
sealed class MyBaseApp_FuseControlsToggleControl_bool_Value_Property: Uno.UX.Property<bool>
{
    Fuse.Controls.ToggleControl _obj;
    public MyBaseApp_FuseControlsToggleControl_bool_Value_Property(Fuse.Controls.ToggleControl obj) { _obj = obj; obj.ValueChanged += this.OnValueChanged; }
    protected override bool OnGet() { return _obj.Value; }
    protected override void OnSet(bool v, object origin) { _obj.SetValue(v, origin); }
    protected override void OnAddListener(Uno.UX.ValueChangedHandler<bool> listener) { _obj.ValueChanged += listener; }
    protected override void OnRemoveListener(Uno.UX.ValueChangedHandler<bool> listener) { _obj.ValueChanged -= listener; }
}
sealed class MyBaseApp_FuseDrawingSolidColor_float4_Color_Property: Uno.UX.Property<float4>
{
    Fuse.Drawing.SolidColor _obj;
    public MyBaseApp_FuseDrawingSolidColor_float4_Color_Property(Fuse.Drawing.SolidColor obj) { _obj = obj;  }
    protected override float4 OnGet() { return _obj.Color; }
    protected override void OnSet(float4 v, object origin) { _obj.Color = v; }
}
sealed class MyBaseApp_FuseTriggersWhileBool_bool_Value_Property: Uno.UX.Property<bool>
{
    Fuse.Triggers.WhileBool _obj;
    public MyBaseApp_FuseTriggersWhileBool_bool_Value_Property(Fuse.Triggers.WhileBool obj) { _obj = obj;  }
    protected override bool OnGet() { return _obj.Value; }
    protected override void OnSet(bool v, object origin) { _obj.Value = v; }
}
sealed class MyBaseApp_FuseiOSStatusBarConfig_UnoPlatformiOSStatusBarStyle_Style_Property: Uno.UX.Property<Uno.Platform.iOS.StatusBarStyle>
{
    Fuse.iOS.StatusBarConfig _obj;
    public MyBaseApp_FuseiOSStatusBarConfig_UnoPlatformiOSStatusBarStyle_Style_Property(Fuse.iOS.StatusBarConfig obj) { _obj = obj;  }
    protected override Uno.Platform.iOS.StatusBarStyle OnGet() { return _obj.Style; }
    protected override void OnSet(Uno.Platform.iOS.StatusBarStyle v, object origin) { _obj.Style = v; }
}
sealed class MyBaseApp_FuseEffectsBlur_float_Radius_Property: Uno.UX.Property<float>
{
    Fuse.Effects.Blur _obj;
    public MyBaseApp_FuseEffectsBlur_float_Radius_Property(Fuse.Effects.Blur obj) { _obj = obj;  }
    protected override float OnGet() { return _obj.Radius; }
    protected override void OnSet(float v, object origin) { _obj.Radius = v; }
}
sealed class MyBaseApp_FuseiOSStatusBarConfig_bool_IsVisible_Property: Uno.UX.Property<bool>
{
    Fuse.iOS.StatusBarConfig _obj;
    public MyBaseApp_FuseiOSStatusBarConfig_bool_IsVisible_Property(Fuse.iOS.StatusBarConfig obj) { _obj = obj;  }
    protected override bool OnGet() { return _obj.IsVisible; }
    protected override void OnSet(bool v, object origin) { _obj.IsVisible = v; }
}
sealed class MyBaseApp_FuseElementsElement_float_Opacity_Property: Uno.UX.Property<float>
{
    Fuse.Elements.Element _obj;
    public MyBaseApp_FuseElementsElement_float_Opacity_Property(Fuse.Elements.Element obj) { _obj = obj;  }
    protected override float OnGet() { return _obj.Opacity; }
    protected override void OnSet(float v, object origin) { _obj.Opacity = v; }
}
sealed class MyBaseApp_FuseControlsShape_float_Smoothness_Property: Uno.UX.Property<float>
{
    Fuse.Controls.Shape _obj;
    public MyBaseApp_FuseControlsShape_float_Smoothness_Property(Fuse.Controls.Shape obj) { _obj = obj;  }
    protected override float OnGet() { return _obj.Smoothness; }
    protected override void OnSet(float v, object origin) { _obj.Smoothness = v; }
}
sealed class MyBaseApp_FuseDrawingStroke_float_Width_Property: Uno.UX.Property<float>
{
    Fuse.Drawing.Stroke _obj;
    public MyBaseApp_FuseDrawingStroke_float_Width_Property(Fuse.Drawing.Stroke obj) { _obj = obj;  }
    protected override float OnGet() { return _obj.Width; }
    protected override void OnSet(float v, object origin) { _obj.Width = v; }
}

sealed class MyBaseApp_FuseReactiveSelect_object_Data_Property: Uno.UX.Property<object>
{
    Fuse.Reactive.Select _obj;
    public MyBaseApp_FuseReactiveSelect_object_Data_Property(Fuse.Reactive.Select obj) { _obj = obj;  }
    protected override object OnGet() { return _obj.Data; }
    protected override void OnSet(object v, object origin) { _obj.Data = v; }
}
sealed class MyBaseApp_FuseControlsTextControl_string_Value_Property: Uno.UX.Property<string>
{
    Fuse.Controls.TextControl _obj;
    public MyBaseApp_FuseControlsTextControl_string_Value_Property(Fuse.Controls.TextControl obj) { _obj = obj; obj.ValueChanged += this.OnValueChanged; }
    protected override string OnGet() { return _obj.Value; }
    protected override void OnSet(string v, object origin) { _obj.SetValue(v, origin); }
    protected override void OnAddListener(Uno.UX.ValueChangedHandler<string> listener) { _obj.ValueChanged += listener; }
    protected override void OnRemoveListener(Uno.UX.ValueChangedHandler<string> listener) { _obj.ValueChanged -= listener; }
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
sealed class MyBaseApp_FuseRotation_float_Degrees_Property: Uno.UX.Property<float>
{
    Fuse.Rotation _obj;
    public MyBaseApp_FuseRotation_float_Degrees_Property(Fuse.Rotation obj) { _obj = obj;  }
    protected override float OnGet() { return _obj.Degrees; }
    protected override void OnSet(float v, object origin) { _obj.Degrees = v; }
}
sealed class MyBaseApp_FuseControlsImage_FuseResourcesImageSource_Source_Property: Uno.UX.Property<Fuse.Resources.ImageSource>
{
    Fuse.Controls.Image _obj;
    public MyBaseApp_FuseControlsImage_FuseResourcesImageSource_Source_Property(Fuse.Controls.Image obj) { _obj = obj;  }
    protected override Fuse.Resources.ImageSource OnGet() { return _obj.Source; }
    protected override void OnSet(Fuse.Resources.ImageSource v, object origin) { _obj.Source = v; }
}
sealed class MyBaseApp_FuseControlsButton_string_Text_Property: Uno.UX.Property<string>
{
    Fuse.Controls.Button _obj;
    public MyBaseApp_FuseControlsButton_string_Text_Property(Fuse.Controls.Button obj) { _obj = obj; obj.TextChanged += this.OnValueChanged; }
    protected override string OnGet() { return _obj.Text; }
    protected override void OnSet(string v, object origin) { _obj.SetText(v, origin); }
    protected override void OnAddListener(Uno.UX.ValueChangedHandler<string> listener) { _obj.TextChanged += listener; }
    protected override void OnRemoveListener(Uno.UX.ValueChangedHandler<string> listener) { _obj.TextChanged -= listener; }
}
sealed class MyBaseApp_FuseControlsRectangle_float4_CornerRadius_Property: Uno.UX.Property<float4>
{
    Fuse.Controls.Rectangle _obj;
    public MyBaseApp_FuseControlsRectangle_float4_CornerRadius_Property(Fuse.Controls.Rectangle obj) { _obj = obj;  }
    protected override float4 OnGet() { return _obj.CornerRadius; }
    protected override void OnSet(float4 v, object origin) { _obj.CornerRadius = v; }
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
sealed class MyBaseApp_FuseControlsMultiLayoutPanel_FuseElementsElement_LayoutElement_Property: Uno.UX.Property<Fuse.Elements.Element>
{
    Fuse.Controls.MultiLayoutPanel _obj;
    public MyBaseApp_FuseControlsMultiLayoutPanel_FuseElementsElement_LayoutElement_Property(Fuse.Controls.MultiLayoutPanel obj) { _obj = obj;  }
    protected override Fuse.Elements.Element OnGet() { return _obj.LayoutElement; }
    protected override void OnSet(Fuse.Elements.Element v, object origin) { _obj.LayoutElement = v; }
}
sealed class MyBaseApp_FuseControlsPageControl_FuseNode_Active_Property: Uno.UX.Property<Fuse.Node>
{
    Fuse.Controls.PageControl _obj;
    public MyBaseApp_FuseControlsPageControl_FuseNode_Active_Property(Fuse.Controls.PageControl obj) { _obj = obj;  }
    protected override Fuse.Node OnGet() { return _obj.Active; }
    protected override void OnSet(Fuse.Node v, object origin) { _obj.Active = v; }
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
sealed class MyBaseApp_FuseTriggersTimeline_double_TargetProgress_Property: Uno.UX.Property<double>
{
    Fuse.Triggers.Timeline _obj;
    public MyBaseApp_FuseTriggersTimeline_double_TargetProgress_Property(Fuse.Triggers.Timeline obj) { _obj = obj;  }
    protected override double OnGet() { return _obj.TargetProgress; }
    protected override void OnSet(double v, object origin) { _obj.TargetProgress = v; }
}
sealed class MyBaseApp_FuseTranslation_float_X_Property: Uno.UX.Property<float>
{
    Fuse.Translation _obj;
    public MyBaseApp_FuseTranslation_float_X_Property(Fuse.Translation obj) { _obj = obj;  }
    protected override float OnGet() { return _obj.X; }
    protected override void OnSet(float v, object origin) { _obj.X = v; }
}
sealed class MyBaseApp_FuseScaling_float_Factor_Property: Uno.UX.Property<float>
{
    Fuse.Scaling _obj;
    public MyBaseApp_FuseScaling_float_Factor_Property(Fuse.Scaling obj) { _obj = obj;  }
    protected override float OnGet() { return _obj.Factor; }
    protected override void OnSet(float v, object origin) { _obj.Factor = v; }
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

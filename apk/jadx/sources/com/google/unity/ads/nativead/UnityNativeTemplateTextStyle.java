package com.google.unity.ads.nativead;

import android.graphics.drawable.ColorDrawable;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class UnityNativeTemplateTextStyle {
    private final ColorDrawable backgroundColor;
    private final UnityNativeTemplateFontStyle fontStyle;
    private final Double size;
    private final ColorDrawable textColor;

    public UnityNativeTemplateTextStyle(ColorDrawable colorDrawable, ColorDrawable colorDrawable2, UnityNativeTemplateFontStyle unityNativeTemplateFontStyle, Double d) {
        this.textColor = colorDrawable;
        this.backgroundColor = colorDrawable2;
        this.fontStyle = unityNativeTemplateFontStyle;
        this.size = d;
    }

    public boolean equals(Object obj) {
        ColorDrawable colorDrawable;
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof UnityNativeTemplateTextStyle)) {
            UnityNativeTemplateTextStyle unityNativeTemplateTextStyle = (UnityNativeTemplateTextStyle) obj;
            ColorDrawable colorDrawable2 = this.textColor;
            if (((colorDrawable2 == null && unityNativeTemplateTextStyle.textColor == null) || colorDrawable2.getColor() == unityNativeTemplateTextStyle.textColor.getColor()) && ((((colorDrawable = this.backgroundColor) == null && unityNativeTemplateTextStyle.backgroundColor == null) || colorDrawable.getColor() == unityNativeTemplateTextStyle.backgroundColor.getColor()) && Objects.equals(this.size, unityNativeTemplateTextStyle.size) && Objects.equals(this.fontStyle, unityNativeTemplateTextStyle.fontStyle))) {
                return true;
            }
        }
        return false;
    }

    public ColorDrawable getBackgroundColor() {
        return this.backgroundColor;
    }

    public UnityNativeTemplateFontStyle getFontStyle() {
        return this.fontStyle;
    }

    public Float getSize() {
        Double d = this.size;
        if (d == null) {
            return null;
        }
        return Float.valueOf(d.floatValue());
    }

    public ColorDrawable getTextColor() {
        return this.textColor;
    }

    public int hashCode() {
        ColorDrawable colorDrawable = this.textColor;
        Integer numValueOf = colorDrawable == null ? null : Integer.valueOf(colorDrawable.getColor());
        ColorDrawable colorDrawable2 = this.backgroundColor;
        return Objects.hash(numValueOf, colorDrawable2 != null ? Integer.valueOf(colorDrawable2.getColor()) : null, this.size, this.fontStyle);
    }
}

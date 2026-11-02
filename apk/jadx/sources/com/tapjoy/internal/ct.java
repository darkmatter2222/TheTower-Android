package com.tapjoy.internal;

import com.ironsource.C3635i2;

/* JADX INFO: loaded from: classes5.dex */
public enum ct {
    DEFINED_BY_JAVASCRIPT("definedByJavaScript"),
    UNSPECIFIED("unspecified"),
    LOADED("loaded"),
    BEGIN_TO_RENDER("beginToRender"),
    ONE_PIXEL("onePixel"),
    VIEWABLE("viewable"),
    AUDIBLE("audible"),
    OTHER(C3635i2.d);

    private final String i;

    ct(String str) {
        this.i = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.i;
    }
}

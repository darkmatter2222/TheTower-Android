package com.ironsource;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: renamed from: com.ironsource.id, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3646id {
    private final String a;

    public C3646id(String baseControllerUrl) {
        Intrinsics.checkNotNullParameter(baseControllerUrl, "baseControllerUrl");
        this.a = baseControllerUrl;
    }

    public final String a() {
        String str = this.a;
        String strSubstring = str.substring(0, StringsKt.lastIndexOf$default((CharSequence) str, DomExceptionUtils.SEPARATOR, 0, false, 6, (Object) null));
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return strSubstring;
    }
}

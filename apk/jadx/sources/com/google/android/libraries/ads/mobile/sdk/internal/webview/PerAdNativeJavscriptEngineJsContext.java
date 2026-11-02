package com.google.android.libraries.ads.mobile.sdk.internal.webview;

import android.net.Uri;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.nr1;
import kotlin.r31;
import kotlin.r41;
import kotlin.w21;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.Metadata;
import p005kotlin.coroutines.Continuation;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;", "Lads_mobile_sdk/nr1;", "", "Lads_mobile_sdk/r41;", "perAdGmsgHandlers", "Ljava/util/Set;", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class PerAdNativeJavscriptEngineJsContext implements nr1 {
    private final nr1 a;
    private final String b;
    private final Mutex c;
    private final Set<r41> perAdGmsgHandlers;

    public PerAdNativeJavscriptEngineJsContext(nr1 jsContext, String str) {
        Intrinsics.checkNotNullParameter(jsContext, "jsContext");
        this.a = jsContext;
        this.b = str;
        this.c = MutexKt.Mutex(false);
        this.perAdGmsgHandlers = new LinkedHashSet();
    }

    @Override // kotlin.nr1
    public final Object a(r31 r31Var, Uri uri, Continuation continuation) {
        return this.a.a(r31Var, uri, continuation);
    }

    @Override // kotlin.nr1
    public final Object a(r31 r31Var, String str, Continuation continuation) {
        return this.a.a(r31Var, str, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00cc, code lost:
    
        if (r10.a(r8, r9, r0) == r1) goto L50;
     */
    @Override // kotlin.nr1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(java.lang.String r8, kotlin.r41 r9, p005kotlin.coroutines.Continuation r10) {
        /*
            Method dump skipped, instruction units count: 210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.libraries.ads.mobile.sdk.internal.webview.PerAdNativeJavscriptEngineJsContext.a(java.lang.String, ads_mobile_sdk.r41, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlin.nr1
    public final Object a(String str, CompletableDeferred completableDeferred, w21 w21Var) {
        return this.a.a(str, completableDeferred, w21Var);
    }
}

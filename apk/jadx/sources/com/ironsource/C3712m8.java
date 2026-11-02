package com.ironsource;

import android.webkit.JavascriptInterface;

/* JADX INFO: renamed from: com.ironsource.m8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public class C3712m8 {
    private C3766p8 a;

    C3712m8(C3766p8 c3766p8) {
        this.a = c3766p8;
    }

    @JavascriptInterface
    public void receiveMessageFromExternal(String str) {
        this.a.handleMessageFromAd(str);
    }
}

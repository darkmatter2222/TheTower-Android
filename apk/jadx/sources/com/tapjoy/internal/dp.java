package com.tapjoy.internal;

import android.text.TextUtils;
import android.util.Log;

/* JADX INFO: loaded from: classes5.dex */
public final class dp {
    public static void a(String str) {
        if (!cf.a.booleanValue() || TextUtils.isEmpty(str)) {
            return;
        }
        Log.i("OMIDLIB", str);
    }

    public static void a(String str, Exception exc) {
        if (cf.a.booleanValue()) {
            TextUtils.isEmpty(str);
        }
        Log.e("OMIDLIB", str, exc);
    }
}

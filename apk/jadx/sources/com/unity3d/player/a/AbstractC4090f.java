package com.unity3d.player.a;

import android.app.Activity;
import android.app.Dialog;
import android.window.OnBackInvokedDispatcher;

/* JADX INFO: renamed from: com.unity3d.player.a.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractC4090f {
    public static OnBackInvokedDispatcher a(Object obj) {
        if (obj instanceof Activity) {
            return ((Activity) obj).getOnBackInvokedDispatcher();
        }
        if (obj instanceof Dialog) {
            return ((Dialog) obj).getOnBackInvokedDispatcher();
        }
        throw new IllegalArgumentException("Unsupported context type when getting '" + obj.getClass().getName() + "' OnBackInvokedDispatcher");
    }

    public static void a(OnBackInvokedDispatcher onBackInvokedDispatcher, int i, C4089e c4089e) {
        onBackInvokedDispatcher.registerOnBackInvokedCallback(i, c4089e);
    }

    public static void a(OnBackInvokedDispatcher onBackInvokedDispatcher, C4089e c4089e) {
        onBackInvokedDispatcher.unregisterOnBackInvokedCallback(c4089e);
    }
}

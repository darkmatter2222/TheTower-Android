package com.tapjoy.internal;

import android.content.Context;
import com.tapjoy.TJPlacementListener;

/* JADX INFO: loaded from: classes5.dex */
abstract class gf {
    private static final gf a;
    private static gf b;

    static {
        gg ggVar = new gg();
        a = ggVar;
        b = ggVar;
    }

    gf() {
    }

    static gf a() {
        return b;
    }

    public abstract Object a(Context context, String str, TJPlacementListener tJPlacementListener);

    public abstract Object b();
}

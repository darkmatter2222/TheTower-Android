package com.tapjoy.internal;

import android.content.Context;
import com.tapjoy.TJPlacement;
import com.tapjoy.TJPlacementListener;
import com.tapjoy.TJPlacementManager;

/* JADX INFO: loaded from: classes5.dex */
public final class ft {
    private static final gc<Void> a = new gc<Void>() { // from class: com.tapjoy.internal.ft.1
        @Override // com.tapjoy.internal.gc
        protected final /* synthetic */ TJPlacement a(Context context, TJPlacementListener tJPlacementListener, Void r4) {
            return TJPlacementManager.createPlacement(context, "InsufficientCurrency", true, tJPlacementListener);
        }

        @Override // com.tapjoy.internal.gc
        protected final /* bridge */ /* synthetic */ String a(Void r1) {
            return "InsufficientCurrency";
        }
    };

    public static void a() {
        a.c(null);
    }
}

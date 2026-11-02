package com.tapjoy.internal;

import android.content.Context;
import com.tapjoy.TJPlacement;
import com.tapjoy.TJPlacementListener;
import com.tapjoy.TJPlacementManager;
import com.tapjoy.TapjoyConnectCore;
import java.util.Observer;

/* JADX INFO: loaded from: classes5.dex */
public final class fz extends hu {
    private final gc<hu.a> b = new gc<hu.a>() { // from class: com.tapjoy.internal.fz.1
        @Override // com.tapjoy.internal.gc
        protected final /* synthetic */ TJPlacement a(Context context, TJPlacementListener tJPlacementListener, hu.a aVar) {
            hu.a aVar2 = aVar;
            TJPlacement tJPlacementCreatePlacement = TJPlacementManager.createPlacement(TapjoyConnectCore.getContext(), aVar2.b, false, tJPlacementListener);
            tJPlacementCreatePlacement.pushId = aVar2.a;
            return tJPlacementCreatePlacement;
        }

        @Override // com.tapjoy.internal.gc
        protected final /* bridge */ /* synthetic */ String a(hu.a aVar) {
            hu.a aVar2 = aVar;
            if (aVar2 != null) {
                return aVar2.b;
            }
            return null;
        }

        @Override // com.tapjoy.internal.gc
        protected final boolean a() {
            return true;
        }

        @Override // com.tapjoy.internal.gc
        protected final boolean a(Observer observer) {
            if (TapjoyConnectCore.isViewOpen()) {
                TJPlacementManager.dismissContentShowing(true);
            }
            return super.a(observer);
        }

        @Override // com.tapjoy.internal.gc
        protected final /* synthetic */ gc<hu.a>.a b(hu.a aVar) {
            hu.a aVar2 = aVar;
            return new gc.a(aVar2, aVar2.c);
        }
    };

    static {
        hu.a(new fz());
    }

    private fz() {
    }

    public static void a() {
    }

    @Override // com.tapjoy.internal.hu
    public final void a(hu.a aVar) {
        this.b.c(aVar);
    }

    @Override // com.tapjoy.internal.hu
    public final boolean b() {
        return this.b.b != null;
    }
}

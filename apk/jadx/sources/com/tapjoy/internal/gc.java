package com.tapjoy.internal;

import android.content.Context;
import com.tapjoy.TJActionRequest;
import com.tapjoy.TJError;
import com.tapjoy.TJPlacement;
import com.tapjoy.TJPlacementListener;
import com.tapjoy.TapjoyConnectCore;
import com.tapjoy.TapjoyLog;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes5.dex */
abstract class gc<R> {
    volatile gc<R>.a b;

    class a implements TJPlacementListener, Observer {
        private final R b;
        private final fk c;
        private volatile boolean d;
        private TJPlacement e;

        a(gc gcVar, R r) {
            this(r, new fk(10000L));
        }

        a(R r, fk fkVar) {
            this.b = r;
            this.c = fkVar;
        }

        private void a(String str) {
            synchronized (this) {
                String strA = gc.this.a(this.b);
                if (str == null) {
                    TapjoyLog.i("SystemPlacement", "Placement " + strA + " is presented now");
                } else {
                    TapjoyLog.i("SystemPlacement", "Cannot show placement " + strA + " now (" + str + ")");
                }
                this.d = true;
                this.e = null;
                fu.a.deleteObserver(this);
                fu.e.deleteObserver(this);
                fu.c.deleteObserver(this);
            }
            gc.a(gc.this, this);
        }

        final void a() {
            synchronized (this) {
                if (this.d) {
                    return;
                }
                if (this.c.a()) {
                    a("Timed out");
                    return;
                }
                if (!TapjoyConnectCore.isConnected()) {
                    fu.a.addObserver(this);
                    if (!TapjoyConnectCore.isConnected()) {
                        return;
                    } else {
                        fu.a.deleteObserver(this);
                    }
                }
                TJPlacement tJPlacement = this.e;
                if (tJPlacement == null) {
                    if (!gc.this.a()) {
                        a("Cannot request");
                        return;
                    }
                    TJPlacement tJPlacementA = gc.this.a(TapjoyConnectCore.getContext(), this, this.b);
                    this.e = tJPlacementA;
                    tJPlacementA.requestContent();
                    return;
                }
                if (tJPlacement.isContentReady()) {
                    if (gc.this.a((Observer) this)) {
                        this.e.showContent();
                        a(null);
                    }
                }
            }
        }

        @Override // com.tapjoy.TJPlacementListener
        public final void onClick(TJPlacement tJPlacement) {
        }

        @Override // com.tapjoy.TJPlacementListener
        public final void onContentDismiss(TJPlacement tJPlacement) {
        }

        @Override // com.tapjoy.TJPlacementListener
        public final void onContentReady(TJPlacement tJPlacement) {
            a();
        }

        @Override // com.tapjoy.TJPlacementListener
        public final void onContentShow(TJPlacement tJPlacement) {
        }

        @Override // com.tapjoy.TJPlacementListener
        public final void onPurchaseRequest(TJPlacement tJPlacement, TJActionRequest tJActionRequest, String str) {
        }

        @Override // com.tapjoy.TJPlacementListener
        public final void onRequestFailure(TJPlacement tJPlacement, TJError tJError) {
            a(tJError.message);
        }

        @Override // com.tapjoy.TJPlacementListener
        public final void onRequestSuccess(TJPlacement tJPlacement) {
        }

        @Override // com.tapjoy.TJPlacementListener
        public final void onRewardRequest(TJPlacement tJPlacement, TJActionRequest tJActionRequest, String str, int i) {
        }

        @Override // java.util.Observer
        public final void update(Observable observable, Object obj) {
            a();
        }
    }

    gc() {
    }

    static /* synthetic */ void a(gc gcVar, a aVar) {
        synchronized (gcVar) {
            if (gcVar.b == aVar) {
                gcVar.b = null;
            }
        }
    }

    protected abstract TJPlacement a(Context context, TJPlacementListener tJPlacementListener, R r);

    protected abstract String a(R r);

    protected boolean a() {
        return !TapjoyConnectCore.isFullScreenViewOpen();
    }

    protected boolean a(Observer observer) {
        if (TapjoyConnectCore.isFullScreenViewOpen()) {
            fu.e.addObserver(observer);
            if (TapjoyConnectCore.isFullScreenViewOpen()) {
                return false;
            }
            fu.e.deleteObserver(observer);
        }
        if (hj.a().d()) {
            return true;
        }
        fu.c.addObserver(observer);
        if (!hj.a().d()) {
            return false;
        }
        fu.c.deleteObserver(observer);
        return true;
    }

    protected gc<R>.a b(R r) {
        return new a(this, r);
    }

    public final boolean c(R r) {
        gc<R>.a aVarB;
        if (!a()) {
            return false;
        }
        synchronized (this) {
            if (this.b == null) {
                aVarB = b(r);
                this.b = aVarB;
            } else {
                aVarB = null;
            }
        }
        if (aVarB == null) {
            return false;
        }
        aVarB.a();
        return true;
    }
}

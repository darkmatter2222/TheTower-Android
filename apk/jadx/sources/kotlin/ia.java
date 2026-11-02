package kotlin;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.AsyncFunction;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public final class ia {
    public final qc1 a;
    public final wj3 b;
    public final hl3 c;
    public final ts3 d;
    public final ja3 e;
    public final long f;
    public final ks1 g;
    public final long h;
    public final long i = System.currentTimeMillis();
    public final boolean j;
    public final long k;
    public final boolean l;

    public ia(qc1 qc1Var, wj3 wj3Var, hl3 hl3Var, ts3 ts3Var, ja3 ja3Var, ks1 ks1Var, na naVar) {
        this.a = qc1Var;
        this.b = wj3Var;
        this.c = hl3Var;
        this.d = ts3Var;
        this.e = ja3Var;
        this.f = naVar.U();
        this.g = ks1Var;
        this.h = naVar.x();
        this.j = naVar.F();
        this.k = naVar.y();
        this.l = naVar.z();
    }

    public final ListenableFuture a(Context context, String str, View view, Activity activity, Void r5) {
        return ((qj3) this.b.f.get()).b(context, str, view, activity);
    }

    public final ListenableFuture a(Context context, Void r2) {
        return ((qj3) this.b.f.get()).a(context);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String a(final Context context) {
        ListenableFuture listenableFutureA;
        ListenableFuture listenableFuture;
        boolean z = this.j && System.currentTimeMillis() - this.i <= this.k;
        ts3 ts3Var = this.d;
        qr3 qr3Var = new qr3(lq0.EVENT_ID_SIGNAL_QUERY, ts3Var.b, ts3Var.a);
        if (this.l) {
            qc1 qc1Var = this.a;
            synchronized (qc1Var) {
                listenableFuture = (ListenableFuture) Preconditions.checkNotNull(qc1Var.e);
            }
            listenableFutureA = Futures.nonCancellationPropagating(listenableFuture);
        } else {
            listenableFutureA = this.a.a();
        }
        ListenableFuture listenableFutureTransformAsync = Futures.transformAsync(listenableFutureA, new AsyncFunction() { // from class: ads_mobile_sdk.ia$$ExternalSyntheticLambda2
            @Override // com.google.common.util.concurrent.AsyncFunction
            public final ListenableFuture apply(Object obj) {
                return this.f$0.a(context, (Void) obj);
            }
        }, MoreExecutors.directExecutor());
        try {
            try {
                try {
                    try {
                        try {
                            qr3Var.b();
                            String str = (String) listenableFutureTransformAsync.get(z ? this.h : this.f, TimeUnit.MILLISECONDS);
                            qr3Var.a();
                            this.e.a();
                            return str;
                        } catch (Throwable th) {
                            qr3Var.a(th);
                            throw th;
                        }
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                        qr3Var.a(e);
                        qr3Var.a();
                        this.e.a();
                        return "";
                    }
                } catch (TimeoutException unused) {
                    if (this.l) {
                        listenableFutureTransformAsync.cancel(false);
                    }
                    String strA = a(z);
                    qr3Var.a();
                    this.e.a();
                    return strA;
                }
            } catch (ExecutionException e2) {
                e = e2;
                Throwable cause = e.getCause();
                if (cause != null) {
                    e = cause;
                }
                qr3Var.a(e);
                String string = Integer.toString(3);
                qr3Var.a();
                this.e.a();
                return string;
            }
        } catch (Throwable th2) {
            qr3Var.a();
            this.e.a();
            throw th2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String a(final Context context, final String str, final View view, final Activity activity) {
        ListenableFuture listenableFutureA;
        ListenableFuture listenableFuture;
        ts3 ts3Var = this.d;
        qr3 qr3Var = new qr3(lq0.EVENT_ID_SIGNAL_CLICK, ts3Var.b, ts3Var.a);
        if (this.l) {
            qc1 qc1Var = this.a;
            synchronized (qc1Var) {
                listenableFuture = (ListenableFuture) Preconditions.checkNotNull(qc1Var.e);
            }
            listenableFutureA = Futures.nonCancellationPropagating(listenableFuture);
        } else {
            listenableFutureA = this.a.a();
        }
        ListenableFuture listenableFutureTransformAsync = Futures.transformAsync(listenableFutureA, new AsyncFunction() { // from class: ads_mobile_sdk.ia$$ExternalSyntheticLambda0
            @Override // com.google.common.util.concurrent.AsyncFunction
            public final ListenableFuture apply(Object obj) {
                return this.f$0.a(context, str, view, activity, (Void) obj);
            }
        }, MoreExecutors.directExecutor());
        try {
            try {
                try {
                    try {
                        qr3Var.b();
                        String str2 = (String) listenableFutureTransformAsync.get(this.f, TimeUnit.MILLISECONDS);
                        qr3Var.a();
                        this.e.a();
                        return str2;
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                        qr3Var.a(e);
                        qr3Var.a();
                        this.e.a();
                        return "";
                    }
                } catch (TimeoutException unused) {
                    if (this.l) {
                        listenableFutureTransformAsync.cancel(false);
                    }
                    this.d.b(lq0.EVENT_ID_CLICK_SIGNAL_TIMEOUT);
                    String string = Integer.toString(17);
                    qr3Var.a();
                    this.e.a();
                    return string;
                }
            } catch (ExecutionException e2) {
                Throwable th = e2;
                Throwable cause = th.getCause();
                if (cause != null) {
                    th = cause;
                }
                qr3Var.a(th);
                String string2 = Integer.toString(3);
                qr3Var.a();
                this.e.a();
                return string2;
            } catch (Throwable th2) {
                qr3Var.a(th2);
                throw th2;
            }
        } catch (Throwable th3) {
            qr3Var.a();
            this.e.a();
            throw th3;
        }
    }

    public final String a(boolean z) {
        if (!z) {
            this.d.b(lq0.EVENT_ID_QUERY_SIGNAL_TIMEOUT);
            return Integer.toString(17);
        }
        bx1 bx1Var = (bx1) this.g.get();
        long j = this.i;
        cx1 cx1Var = (cx1) bx1Var;
        ts3 ts3Var = cx1Var.b;
        qr3 qr3Var = new qr3(lq0.EVENT_ID_MINIMAL_SIGNAL_QUERY, ts3Var.b, ts3Var.a);
        try {
            qr3Var.b();
            String strA = cx1Var.a(j);
            qr3Var.a();
            return strA;
        } catch (Throwable th) {
            try {
                qr3Var.a(th);
                throw th;
            } catch (Throwable th2) {
                qr3Var.a();
                throw th2;
            }
        }
    }

    public final ListenableFuture b(Context context, String str, View view, Activity activity, Void r5) {
        return ((qj3) this.b.f.get()).a(context, str, view, activity);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String b(final Context context, final String str, final View view, final Activity activity) {
        ListenableFuture listenableFutureA;
        ListenableFuture listenableFuture;
        ts3 ts3Var = this.d;
        qr3 qr3Var = new qr3(lq0.EVENT_ID_SIGNAL_VIEW, ts3Var.b, ts3Var.a);
        if (this.l) {
            qc1 qc1Var = this.a;
            synchronized (qc1Var) {
                listenableFuture = (ListenableFuture) Preconditions.checkNotNull(qc1Var.e);
            }
            listenableFutureA = Futures.nonCancellationPropagating(listenableFuture);
        } else {
            listenableFutureA = this.a.a();
        }
        ListenableFuture listenableFutureTransformAsync = Futures.transformAsync(listenableFutureA, new AsyncFunction() { // from class: ads_mobile_sdk.ia$$ExternalSyntheticLambda1
            @Override // com.google.common.util.concurrent.AsyncFunction
            public final ListenableFuture apply(Object obj) {
                return this.f$0.b(context, str, view, activity, (Void) obj);
            }
        }, MoreExecutors.directExecutor());
        try {
            try {
                try {
                    try {
                        qr3Var.b();
                        String str2 = (String) listenableFutureTransformAsync.get(this.f, TimeUnit.MILLISECONDS);
                        qr3Var.a();
                        this.e.a();
                        return str2;
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                        qr3Var.a(e);
                        qr3Var.a();
                        this.e.a();
                        return "";
                    }
                } catch (TimeoutException unused) {
                    if (this.l) {
                        listenableFutureTransformAsync.cancel(false);
                    }
                    this.d.b(lq0.EVENT_ID_VIEW_SIGNAL_TIMEOUT);
                    String string = Integer.toString(17);
                    qr3Var.a();
                    this.e.a();
                    return string;
                }
            } catch (ExecutionException e2) {
                Throwable th = e2;
                Throwable cause = th.getCause();
                if (cause != null) {
                    th = cause;
                }
                qr3Var.a(th);
                String string2 = Integer.toString(3);
                qr3Var.a();
                this.e.a();
                return string2;
            } catch (Throwable th2) {
                qr3Var.a(th2);
                throw th2;
            }
        } catch (Throwable th3) {
            qr3Var.a();
            this.e.a();
            throw th3;
        }
    }
}

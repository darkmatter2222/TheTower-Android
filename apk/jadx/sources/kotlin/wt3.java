package kotlin;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class wt3 extends z81 implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {
    public static final /* synthetic */ int i = 0;
    public final CoroutineScope a;
    public final Context b;
    public final ur3 c;
    public final ut3 d;
    public final AtomicBoolean e;
    public final AtomicBoolean f;
    public final AtomicBoolean g;
    public final CompletableDeferred h;

    public wt3(CoroutineScope backgroundScope, Context context, ur3 traceLogger) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        this.a = backgroundScope;
        this.b = context;
        this.c = traceLogger;
        this.d = new ut3(this, context, Looper.getMainLooper());
        this.e = new AtomicBoolean(false);
        this.f = new AtomicBoolean(false);
        this.g = new AtomicBoolean(false);
        this.h = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Continuation continuation) {
        st3 st3Var;
        wt3 wt3Var;
        if (continuation instanceof st3) {
            st3Var = (st3) continuation;
            int i2 = st3Var.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                st3Var.d = i2 - Integer.MIN_VALUE;
            } else {
                st3Var = new st3(this, continuation);
            }
        } else {
            st3Var = new st3(this, continuation);
        }
        Object objAwait = st3Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = st3Var.d;
        if (i3 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objAwait);
            if (this.e.getAndSet(true)) {
                CompletableDeferred completableDeferred = this.h;
                st3Var.d = 1;
                Object objAwait2 = completableDeferred.await(st3Var);
                if (objAwait2 != coroutine_suspended) {
                    return objAwait2;
                }
            } else {
                this.d.checkAvailabilityAndConnect();
                CompletableDeferred completableDeferred2 = this.h;
                st3Var.a = this;
                st3Var.d = 2;
                objAwait = completableDeferred2.await(st3Var);
                if (objAwait != coroutine_suspended) {
                    wt3Var = this;
                }
            }
            return coroutine_suspended;
        }
        if (i3 == 1) {
            p005kotlin.ResultKt.throwOnFailure(objAwait);
            return objAwait;
        }
        if (i3 != 2) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        wt3Var = st3Var.a;
        p005kotlin.ResultKt.throwOnFailure(objAwait);
        v01 v01Var = (v01) objAwait;
        BuildersKt__Builders_commonKt.launch$default(wt3Var.a, null, null, new tt3(wt3Var, null), 3, null);
        return v01Var;
    }

    public final void a(oq0 exceptionParcel) {
        Intrinsics.checkNotNullParameter(exceptionParcel, "exceptionParcel");
        m01 m01Var = new m01(exceptionParcel.b() + ". Error code: " + exceptionParcel.a());
        if (this.f.getAndSet(true)) {
            return;
        }
        this.h.complete(m01Var);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        if (this.g.getAndSet(true)) {
            return;
        }
        BuildersKt__Builders_commonKt.launch$default(this.a, null, null, new vt3(this, null), 3, null);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        m01 m01Var = new m01("Failed to connect to GMSCore. Code: " + result.getErrorCode() + ", message: " + result.getErrorMessage());
        if (this.f.getAndSet(true)) {
            return;
        }
        this.h.complete(m01Var);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i2) {
        m01 m01Var = new m01("GMSCore connection suspended. Code: " + i2);
        if (this.f.getAndSet(true)) {
            return;
        }
        this.h.complete(m01Var);
    }
}

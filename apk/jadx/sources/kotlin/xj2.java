package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import java.util.Optional;
import java.util.concurrent.atomic.AtomicBoolean;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.optionals.OptionalsKt;

/* JADX INFO: loaded from: classes.dex */
public final class xj2 implements ai1 {
    public final ec3 a;
    public final im2 b;
    public final al2 c;
    public final BaseRequest d;
    public final j53 e;
    public final Optional f;
    public final cl2 g;
    public final ur3 h;
    public final AtomicBoolean i;

    public xj2(ec3 serverTransaction, im2 persistentCacheManager, al2 persistentCacheFillManager, BaseRequest baseRequest, j53 requestType, Optional numberOfAdsRequested, cl2 flags, ur3 traceLogger) {
        Intrinsics.checkNotNullParameter(serverTransaction, "serverTransaction");
        Intrinsics.checkNotNullParameter(persistentCacheManager, "persistentCacheManager");
        Intrinsics.checkNotNullParameter(persistentCacheFillManager, "persistentCacheFillManager");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(numberOfAdsRequested, "numberOfAdsRequested");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        this.a = serverTransaction;
        this.b = persistentCacheManager;
        this.c = persistentCacheFillManager;
        this.d = baseRequest;
        this.e = requestType;
        this.f = numberOfAdsRequested;
        this.g = flags;
        this.h = traceLogger;
        this.i = new AtomicBoolean(false);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.ai1
    public final Object a(Continuation continuation) {
        vj2 vj2Var;
        om2 om2Var;
        xj2 xj2Var;
        if (continuation instanceof vj2) {
            vj2Var = (vj2) continuation;
            int i = vj2Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                vj2Var.d = i - Integer.MIN_VALUE;
            } else {
                vj2Var = new vj2(this, continuation);
            }
        } else {
            vj2Var = new vj2(this, continuation);
        }
        Object objA = vj2Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = vj2Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            if (this.g.a() && this.a.c && !this.i.get() && (om2Var = this.a.d) != null) {
                im2 im2Var = this.b;
                vj2Var.a = this;
                vj2Var.d = 1;
                im2Var.getClass();
                objA = im2.a(im2Var, om2Var, vj2Var);
                if (objA == coroutine_suspended) {
                    return coroutine_suspended;
                }
                xj2Var = this;
            }
            return p005kotlin.Unit.INSTANCE;
        }
        if (i2 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        xj2Var = vj2Var.a;
        p005kotlin.ResultKt.throwOnFailure(objA);
        v01 v01Var = (v01) objA;
        if (v01Var instanceof i01) {
            ur3 ur3Var = xj2Var.h;
            Throwable thB = ((i01) v01Var).b();
            if (thB == null) {
                thB = new Exception(v01Var.toString());
            }
            ((as3) ur3Var).a("Cache status reset failure on ad destroyed", thB);
        }
        return p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.ai1
    public final Object r(Continuation continuation) {
        wj2 wj2Var;
        om2 om2Var;
        xj2 xj2Var;
        if (continuation instanceof wj2) {
            wj2Var = (wj2) continuation;
            int i = wj2Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                wj2Var.d = i - Integer.MIN_VALUE;
            } else {
                wj2Var = new wj2(this, continuation);
            }
        } else {
            wj2Var = new wj2(this, continuation);
        }
        Object objB = wj2Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = wj2Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objB);
            if (this.g.a() && this.a.c && this.i.compareAndSet(false, true) && (om2Var = this.a.d) != null) {
                im2 im2Var = this.b;
                wj2Var.a = this;
                wj2Var.d = 1;
                im2Var.getClass();
                objB = im2.b(im2Var, om2Var, wj2Var);
                if (objB == coroutine_suspended) {
                    return coroutine_suspended;
                }
                xj2Var = this;
            }
            return p005kotlin.Unit.INSTANCE;
        }
        if (i2 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        xj2Var = wj2Var.a;
        p005kotlin.ResultKt.throwOnFailure(objB);
        v01 v01Var = (v01) objB;
        if (v01Var instanceof i01) {
            ur3 ur3Var = xj2Var.h;
            Throwable thB = ((i01) v01Var).b();
            if (thB == null) {
                thB = new Exception(v01Var.toString());
            }
            ((as3) ur3Var).a("Cache eviction failure on impression", thB);
        } else {
            BaseRequest baseRequest = xj2Var.d;
            AdRequest adRequest = baseRequest instanceof AdRequest ? (AdRequest) baseRequest : null;
            if (adRequest != null) {
                xj2Var.c.a(adRequest, xj2Var.e, ((Number) OptionalsKt.getOrDefault(xj2Var.f, 1)).intValue(), (om2) null);
            }
        }
        return p005kotlin.Unit.INSTANCE;
    }
}

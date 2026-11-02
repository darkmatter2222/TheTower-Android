package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ok2 implements li1, gj1 {
    public final al2 a;
    public final im2 b;
    public final BaseRequest c;
    public final j53 d;
    public final int e;
    public final ur3 f;
    public final cl2 g;
    public om2 h;

    public ok2(al2 persistentCacheFillManager, im2 persistentCacheManager, BaseRequest baseRequest, j53 requestType, int i, ur3 traceLogger, cl2 flags) {
        Intrinsics.checkNotNullParameter(persistentCacheFillManager, "persistentCacheFillManager");
        Intrinsics.checkNotNullParameter(persistentCacheManager, "persistentCacheManager");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = persistentCacheFillManager;
        this.b = persistentCacheManager;
        this.c = baseRequest;
        this.d = requestType;
        this.e = i;
        this.f = traceLogger;
        this.g = flags;
    }

    @Override // kotlin.li1
    public final Object a(ec3 ec3Var, i2 i2Var, ResponseInfo responseInfo, Continuation continuation) {
        if (ec3Var.c && this.g.a()) {
            return p005kotlin.Unit.INSTANCE;
        }
        BaseRequest baseRequest = this.c;
        AdRequest adRequest = baseRequest instanceof AdRequest ? (AdRequest) baseRequest : null;
        if (adRequest != null) {
            this.a.a(adRequest, this.d, this.e, (om2) null);
        }
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.gj1
    public final Object a(ec3 ec3Var, Continuation continuation) {
        if (ec3Var.c) {
            this.h = ec3Var.d;
        }
        return p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0075  */
    /* JADX WARN: Code duplicated, block: B:30:0x0078  */
    /* JADX WARN: Code duplicated, block: B:33:0x007c  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.li1
    public final Object a(i01 i01Var, ResponseInfo responseInfo, Continuation continuation) {
        nk2 nk2Var;
        ok2 ok2Var;
        BaseRequest baseRequest;
        AdRequest adRequest;
        if (continuation instanceof nk2) {
            nk2Var = (nk2) continuation;
            int i = nk2Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                nk2Var.d = i - Integer.MIN_VALUE;
            } else {
                nk2Var = new nk2(this, continuation);
            }
        } else {
            nk2Var = new nk2(this, continuation);
        }
        Object objB = nk2Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = nk2Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objB);
            om2 om2Var = this.h;
            if (om2Var != null) {
                im2 im2Var = this.b;
                nk2Var.a = this;
                nk2Var.d = 1;
                im2Var.getClass();
                objB = im2.b(im2Var, om2Var, nk2Var);
                if (objB == coroutine_suspended) {
                    return coroutine_suspended;
                }
                ok2Var = this;
            } else {
                ok2Var = this;
            }
            baseRequest = ok2Var.c;
            if (baseRequest instanceof AdRequest) {
                adRequest = (AdRequest) baseRequest;
            } else {
                adRequest = null;
            }
            if (adRequest != null) {
                ok2Var.a.a(adRequest, ok2Var.d, ok2Var.e, (om2) null);
            }
            return p005kotlin.Unit.INSTANCE;
        }
        if (i2 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ok2Var = nk2Var.a;
        p005kotlin.ResultKt.throwOnFailure(objB);
        v01 v01Var = (v01) objB;
        if (v01Var instanceof i01) {
            ur3 ur3Var = ok2Var.f;
            Throwable thB = ((i01) v01Var).b();
            if (thB == null) {
                thB = new Exception(v01Var.toString());
            }
            ((as3) ur3Var).a("Failed to evict cached ad upon load/render failure", thB);
        }
        baseRequest = ok2Var.c;
        if (baseRequest instanceof AdRequest) {
            adRequest = (AdRequest) baseRequest;
        } else {
            adRequest = null;
        }
        if (adRequest != null) {
            ok2Var.a.a(adRequest, ok2Var.d, ok2Var.e, (om2) null);
        }
        return p005kotlin.Unit.INSTANCE;
    }
}

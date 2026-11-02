package kotlin;

import android.content.Context;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class oz3 {
    public final Context a;
    public final CoroutineScope b;
    public final CoroutineScope c;
    public final CoroutineContext d;
    public final g83 e;
    public final rb f;
    public final ur3 g;
    public final o21 h;
    public final zw3 i;
    public final w61 j;
    public final vk1 k;
    public final ex0 l;
    public final dz3 m;
    public final e01 n;
    public final yz3 o;
    public final qn p;
    public final bn2 q;
    public vk0 r;

    public oz3(Context context, CoroutineContext backgroundContext, CoroutineScope backgroundScope, CoroutineScope uiScope, CoroutineContext uiContext, g83 rootTraceCreator, rb adSpamClient, ur3 traceLogger, o21 gmaUtil, zw3 userAgentProvider, w61 htmlUtil, vk1 bridgeFactory, ex0 flags, dz3 webViewCompatWrapper, e01 httpClient, yz3 webViewInitializationTask, qn appState, bn2 phantomReferences) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(backgroundContext, "backgroundContext");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(adSpamClient, "adSpamClient");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        Intrinsics.checkNotNullParameter(userAgentProvider, "userAgentProvider");
        Intrinsics.checkNotNullParameter(htmlUtil, "htmlUtil");
        Intrinsics.checkNotNullParameter(bridgeFactory, "bridgeFactory");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(webViewCompatWrapper, "webViewCompatWrapper");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(webViewInitializationTask, "webViewInitializationTask");
        Intrinsics.checkNotNullParameter(appState, "appState");
        Intrinsics.checkNotNullParameter(phantomReferences, "phantomReferences");
        this.a = context;
        this.b = backgroundScope;
        this.c = uiScope;
        this.d = uiContext;
        this.e = rootTraceCreator;
        this.f = adSpamClient;
        this.g = traceLogger;
        this.h = gmaUtil;
        this.i = userAgentProvider;
        this.j = htmlUtil;
        this.k = bridgeFactory;
        this.l = flags;
        this.m = webViewCompatWrapper;
        this.n = httpClient;
        this.o = webViewInitializationTask;
        this.p = appState;
        this.q = phantomReferences;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    public final Object a(v14 v14Var, ks3 ks3Var, mb0 mb0Var, eo2 eo2Var, t91 t91Var, Continuation continuation) {
        mz3 mz3Var;
        oz3 oz3Var;
        if (continuation instanceof mz3) {
            mz3Var = (mz3) continuation;
            int i = mz3Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                mz3Var.d = i - Integer.MIN_VALUE;
            } else {
                mz3Var = new mz3(this, continuation);
            }
        } else {
            mz3Var = new mz3(this, continuation);
        }
        mz3 mz3Var2 = mz3Var;
        Object objA = mz3Var2.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = mz3Var2.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            mz3Var2.a = this;
            mz3Var2.d = 1;
            objA = a(v14Var, ks3Var, mb0Var, null, false, eo2Var, t91Var, false, mz3Var2);
            if (objA != coroutine_suspended) {
                oz3Var = this;
            }
        }
        if (i2 != 1) {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(objA);
            return objA;
        }
        oz3 oz3Var2 = mz3Var2.a;
        p005kotlin.ResultKt.throwOnFailure(objA);
        oz3Var = oz3Var2;
        v01 v01Var = (v01) objA;
        if (v01Var instanceof i01) {
            return v01Var;
        }
        if (!(v01Var instanceof q01)) {
            throw new p005kotlin.NoWhenBranchMatchedException();
        }
        r31 r31Var = (r31) ((q01) v01Var).b;
        CoroutineContext coroutineContext = oz3Var.d;
        nz3 nz3Var = new nz3(r31Var, null);
        mz3Var2.a = null;
        mz3Var2.d = 2;
        Object objWithContext = BuildersKt.withContext(coroutineContext, nz3Var, mz3Var2);
        return objWithContext == coroutine_suspended ? coroutine_suspended : objWithContext;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0115 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object a(v14 v14Var, ks3 ks3Var, mb0 mb0Var, nr1 nr1Var, boolean z, eo2 eo2Var, t91 t91Var, boolean z2, Continuation continuation) {
        kz3 kz3Var;
        ks3 ks3Var2;
        mb0 mb0Var2;
        nr1 nr1Var2;
        eo2 eo2Var2;
        t91 t91Var2;
        boolean z3;
        boolean z4;
        v14 v14Var2;
        oz3 oz3Var;
        String str;
        boolean z5;
        ks3 ks3Var3;
        mb0 mb0Var3;
        eo2 eo2Var3;
        t91 t91Var3;
        boolean z6;
        oz3 oz3Var2;
        Object objWithContext;
        if (continuation instanceof kz3) {
            kz3Var = (kz3) continuation;
            int i = kz3Var.m;
            if ((i & Integer.MIN_VALUE) != 0) {
                kz3Var.m = i - Integer.MIN_VALUE;
            } else {
                kz3Var = new kz3(this, continuation);
            }
        } else {
            kz3Var = new kz3(this, continuation);
        }
        Object objA = kz3Var.k;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = kz3Var.m;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            zw3 zw3Var = this.i;
            kz3Var.a = this;
            kz3Var.b = v14Var;
            ks3Var2 = ks3Var;
            kz3Var.c = ks3Var2;
            mb0Var2 = mb0Var;
            kz3Var.d = mb0Var2;
            nr1Var2 = nr1Var;
            kz3Var.e = nr1Var2;
            eo2Var2 = eo2Var;
            kz3Var.f = eo2Var2;
            t91Var2 = t91Var;
            kz3Var.g = t91Var2;
            kz3Var.i = z;
            z3 = z2;
            kz3Var.j = z3;
            kz3Var.m = 1;
            objA = zw3Var.a(kz3Var);
            if (objA != coroutine_suspended) {
                z4 = z;
                v14Var2 = v14Var;
                oz3Var = this;
            }
            return coroutine_suspended;
        }
        if (i2 == 1) {
            boolean z7 = kz3Var.j;
            z4 = kz3Var.i;
            t91 t91Var4 = kz3Var.g;
            eo2 eo2Var4 = kz3Var.f;
            nr1Var2 = kz3Var.e;
            mb0 mb0Var4 = kz3Var.d;
            ks3 ks3Var4 = kz3Var.c;
            v14Var2 = kz3Var.b;
            oz3 oz3Var3 = kz3Var.a;
            p005kotlin.ResultKt.throwOnFailure(objA);
            z3 = z7;
            oz3Var = oz3Var3;
            t91Var2 = t91Var4;
            ks3Var2 = ks3Var4;
            eo2Var2 = eo2Var4;
            mb0Var2 = mb0Var4;
        } else {
            if (i2 != 2) {
                if (i2 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                p005kotlin.ResultKt.throwOnFailure(objA);
                return objA;
            }
            boolean z8 = kz3Var.j;
            boolean z9 = kz3Var.i;
            String str2 = kz3Var.h;
            t91 t91Var5 = kz3Var.g;
            eo2 eo2Var5 = kz3Var.f;
            nr1Var2 = kz3Var.e;
            mb0 mb0Var5 = kz3Var.d;
            ks3 ks3Var5 = kz3Var.c;
            v14Var2 = kz3Var.b;
            oz3Var2 = kz3Var.a;
            p005kotlin.ResultKt.throwOnFailure(objA);
            z6 = z8;
            z5 = z9;
            str = str2;
            t91Var3 = t91Var5;
            eo2Var3 = eo2Var5;
            mb0Var3 = mb0Var5;
            ks3Var3 = ks3Var5;
        }
        nr1 nr1Var3 = nr1Var2;
        v14 v14Var3 = v14Var2;
        CoroutineContext coroutineContext = oz3Var2.d;
        lz3 lz3Var = new lz3(oz3Var2, z6, nr1Var3, ks3Var3, eo2Var3, t91Var3, z5, mb0Var3, str, v14Var3, null);
        kz3Var.a = null;
        kz3Var.b = null;
        kz3Var.c = null;
        kz3Var.d = null;
        kz3Var.e = null;
        kz3Var.f = null;
        kz3Var.g = null;
        kz3Var.h = null;
        kz3Var.m = 3;
        objWithContext = BuildersKt.withContext(coroutineContext, lz3Var, kz3Var);
        if (objWithContext != coroutine_suspended) {
            return coroutine_suspended;
        }
        return objWithContext;
        String str3 = (String) objA;
        yz3 yz3Var = oz3Var.o;
        kz3Var.a = oz3Var;
        kz3Var.b = v14Var2;
        kz3Var.c = ks3Var2;
        kz3Var.d = mb0Var2;
        kz3Var.e = nr1Var2;
        kz3Var.f = eo2Var2;
        kz3Var.g = t91Var2;
        kz3Var.h = str3;
        kz3Var.i = z4;
        kz3Var.j = z3;
        kz3Var.m = 2;
        if (yz3Var.a(kz3Var) != coroutine_suspended) {
            str = str3;
            z5 = z4;
            ks3Var3 = ks3Var2;
            mb0Var3 = mb0Var2;
            eo2Var3 = eo2Var2;
            t91Var3 = t91Var2;
            z6 = z3;
            oz3Var2 = oz3Var;
            nr1 nr1Var4 = nr1Var2;
            v14 v14Var4 = v14Var2;
            CoroutineContext coroutineContext2 = oz3Var2.d;
            lz3 lz3Var2 = new lz3(oz3Var2, z6, nr1Var4, ks3Var3, eo2Var3, t91Var3, z5, mb0Var3, str, v14Var4, null);
            kz3Var.a = null;
            kz3Var.b = null;
            kz3Var.c = null;
            kz3Var.d = null;
            kz3Var.e = null;
            kz3Var.f = null;
            kz3Var.g = null;
            kz3Var.h = null;
            kz3Var.m = 3;
            objWithContext = BuildersKt.withContext(coroutineContext2, lz3Var2, kz3Var);
            if (objWithContext != coroutine_suspended) {
                return objWithContext;
            }
        }
        return coroutine_suspended;
    }

    public final Object a(v14 v14Var, yr1 yr1Var, boolean z, eo2 eo2Var, t91 t91Var, boolean z2, Continuation continuation) {
        return a(v14Var, new ks3(new n03(), new tn1(), new m33(), new zb()), null, yr1Var, z, eo2Var, t91Var, z2, continuation);
    }
}

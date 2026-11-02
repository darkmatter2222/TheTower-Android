package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback;
import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class bo1 extends ei1 {
    public final AdLoadCallback a;
    public final Function2 b;

    public bo1(AdLoadCallback loadCallback, Function2 wrap) {
        Intrinsics.checkNotNullParameter(loadCallback, "loadCallback");
        Intrinsics.checkNotNullParameter(wrap, "wrap");
        this.a = loadCallback;
        this.b = wrap;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.ei1
    public final Object a(zn1 zn1Var, Continuation continuation) {
        ao1 ao1Var;
        AdLoadCallback adLoadCallback;
        if (continuation instanceof ao1) {
            ao1Var = (ao1) continuation;
            int i = ao1Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                ao1Var.d = i - Integer.MIN_VALUE;
            } else {
                ao1Var = new ao1(this, continuation);
            }
        } else {
            ao1Var = new ao1(this, continuation);
        }
        Object obj = ao1Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ao1Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            AdLoadCallback adLoadCallback2 = this.a;
            Function2 function2 = this.b;
            ao1Var.a = adLoadCallback2;
            ao1Var.d = 1;
            Object objInvoke = function2.invoke(zn1Var, ao1Var);
            if (objInvoke == coroutine_suspended) {
                return coroutine_suspended;
            }
            obj = objInvoke;
            adLoadCallback = adLoadCallback2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            adLoadCallback = ao1Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        adLoadCallback.onAdLoaded(obj);
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.ei1
    public final void a() {
    }

    @Override // kotlin.ei1
    public final void a(LoadAdError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.a.onAdFailedToLoad(error);
    }
}

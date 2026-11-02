package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback;
import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ek1 extends ei1 {
    public final AdLoadCallback a;
    public final Function2 b;

    public ek1(AdLoadCallback loadCallback, Function2 wrap) {
        Intrinsics.checkNotNullParameter(loadCallback, "loadCallback");
        Intrinsics.checkNotNullParameter(wrap, "wrap");
        this.a = loadCallback;
        this.b = wrap;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.ei1
    public final Object a(ck1 ck1Var, Continuation continuation) {
        dk1 dk1Var;
        AdLoadCallback adLoadCallback;
        if (continuation instanceof dk1) {
            dk1Var = (dk1) continuation;
            int i = dk1Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                dk1Var.d = i - Integer.MIN_VALUE;
            } else {
                dk1Var = new dk1(this, continuation);
            }
        } else {
            dk1Var = new dk1(this, continuation);
        }
        Object obj = dk1Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = dk1Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            AdLoadCallback adLoadCallback2 = this.a;
            Function2 function2 = this.b;
            dk1Var.a = adLoadCallback2;
            dk1Var.d = 1;
            Object objInvoke = function2.invoke(ck1Var, dk1Var);
            if (objInvoke == coroutine_suspended) {
                return coroutine_suspended;
            }
            obj = objInvoke;
            adLoadCallback = adLoadCallback2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            adLoadCallback = dk1Var.a;
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

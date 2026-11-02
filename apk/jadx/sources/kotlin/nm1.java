package kotlin;

import android.content.Context;
import android.os.Looper;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdLoadResult;
import kotlinx.coroutines.BuildersKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class nm1 {
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ck1 ck1Var, Continuation continuation) {
        mm1 mm1Var;
        Object objWithContext;
        o53 o53Var;
        if (continuation instanceof mm1) {
            mm1Var = (mm1) continuation;
            int i = mm1Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                mm1Var.d = i - Integer.MIN_VALUE;
            } else {
                mm1Var = new mm1(this, continuation);
            }
        } else {
            mm1Var = new mm1(this, continuation);
        }
        Object obj = mm1Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = mm1Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            a01.a.getClass();
            CoroutineContext coroutineContext = (CoroutineContext) ((vf0) zz0.a()).w.get();
            mm1Var.a = ck1Var;
            mm1Var.d = 1;
            if (Intrinsics.areEqual(Looper.getMainLooper(), Looper.myLooper())) {
                AdSize adSizeM = ck1Var.m();
                Context context = ck1Var.n.getContext();
                Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                o53Var = new o53(context, adSizeM);
                o53Var.addView(ck1Var.n);
            } else {
                objWithContext = BuildersKt.withContext(coroutineContext, new di1(ck1Var, null), mm1Var);
            }
            if (obj == coroutine_suspended) {
                obj = objWithContext;
                obj = o53Var;
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ck1Var = mm1Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        obj = objWithContext;
        obj = o53Var;
        return new NativeAdLoadResult.BannerAdSuccess(new wo(ck1Var, (o53) obj));
    }
}

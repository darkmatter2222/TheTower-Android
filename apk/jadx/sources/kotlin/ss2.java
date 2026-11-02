package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.PreloadCallback;
import com.google.android.libraries.ads.mobile.sdk.common.PreloadConfiguration;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes.dex */
public final class ss2 extends SuspendLambda implements Function3 {
    public /* synthetic */ boolean a;
    public /* synthetic */ boolean b;
    public final /* synthetic */ pt2 c;
    public final /* synthetic */ String d;
    public final /* synthetic */ PreloadConfiguration e;
    public final /* synthetic */ PreloadCallback f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ss2(pt2 pt2Var, String str, PreloadConfiguration preloadConfiguration, PreloadCallback preloadCallback, Continuation continuation) {
        super(3, continuation);
        this.c = pt2Var;
        this.d = str;
        this.e = preloadConfiguration;
        this.f = preloadCallback;
    }

    @Override // p005kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        boolean zBooleanValue2 = ((Boolean) obj2).booleanValue();
        ss2 ss2Var = new ss2(this.c, this.d, this.e, this.f, (Continuation) obj3);
        ss2Var.a = zBooleanValue;
        ss2Var.b = zBooleanValue2;
        return ss2Var.invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        boolean z = this.a;
        boolean z2 = this.b;
        pt2 pt2Var = this.c;
        CoroutineScope coroutineScope = pt2Var.c;
        g83 g83Var = pt2Var.e;
        tx txVar = pt2Var.f;
        ex0 ex0Var = pt2Var.g;
        f13 f13Var = pt2Var.h;
        boolean z3 = pt2Var.H;
        h53 h53Var = j53.b;
        k6 k6Var = pt2Var.p;
        String str = this.d;
        return new rs2(this.f, this.e, ex0Var, k6Var, this.c, g83Var, txVar, f13Var, str, coroutineScope, z, z2, z3);
    }
}

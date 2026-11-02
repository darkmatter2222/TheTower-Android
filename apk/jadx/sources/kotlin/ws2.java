package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.PreloadCallback;
import com.google.android.libraries.ads.mobile.sdk.common.PreloadConfiguration;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdRequest;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes.dex */
public final class ws2 extends SuspendLambda implements Function3 {
    public /* synthetic */ boolean a;
    public /* synthetic */ boolean b;
    public final /* synthetic */ pt2 c;
    public final /* synthetic */ String d;
    public final /* synthetic */ PreloadConfiguration e;
    public final /* synthetic */ PreloadCallback f;
    public final /* synthetic */ NativeAdRequest g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ws2(PreloadCallback preloadCallback, PreloadConfiguration preloadConfiguration, pt2 pt2Var, NativeAdRequest nativeAdRequest, String str, Continuation continuation) {
        super(3, continuation);
        this.c = pt2Var;
        this.d = str;
        this.e = preloadConfiguration;
        this.f = preloadCallback;
        this.g = nativeAdRequest;
    }

    @Override // p005kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        boolean zBooleanValue2 = ((Boolean) obj2).booleanValue();
        pt2 pt2Var = this.c;
        String str = this.d;
        PreloadConfiguration preloadConfiguration = this.e;
        ws2 ws2Var = new ws2(this.f, preloadConfiguration, pt2Var, this.g, str, (Continuation) obj3);
        ws2Var.a = zBooleanValue;
        ws2Var.b = zBooleanValue2;
        return ws2Var.invokeSuspend(p005kotlin.Unit.INSTANCE);
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
        return new vs2(this.d, this.e, this.f, this.c, z, z2, this.g, coroutineScope, g83Var, txVar, ex0Var, f13Var, z3, pt2Var.p);
    }
}

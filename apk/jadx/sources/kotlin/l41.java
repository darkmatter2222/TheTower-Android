package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.VideoController;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class l41 extends SuspendLambda implements Function2 {
    public final /* synthetic */ q41 a;
    public final /* synthetic */ k41 b;
    public final /* synthetic */ k41 c;
    public final /* synthetic */ boolean d;
    public final /* synthetic */ boolean e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l41(q41 q41Var, k41 k41Var, k41 k41Var2, boolean z, boolean z2, Continuation continuation) {
        super(2, continuation);
        this.a = q41Var;
        this.b = k41Var;
        this.c = k41Var2;
        this.d = z;
        this.e = z2;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new l41(this.a, this.b, this.c, this.d, this.e, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((l41) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        p005kotlin.Unit unit;
        VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks;
        VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks2;
        VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks3;
        VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks4;
        VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks5;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        q41 q41Var = this.a;
        Object obj2 = q41Var.f;
        k41 k41Var = this.b;
        k41 k41Var2 = this.c;
        boolean z = this.d;
        boolean z2 = this.e;
        synchronized (obj2) {
            boolean z3 = true;
            boolean z4 = k41Var != k41Var2;
            boolean z5 = q41Var.k;
            boolean z6 = !z5 && k41Var2 == k41.PLAYING;
            boolean z7 = z4 && k41Var2 == k41.PLAYING;
            boolean z8 = z4 && k41Var2 == k41.PAUSED;
            boolean z9 = z4 && k41Var2 == k41.ENDED;
            boolean z10 = z != z2;
            if (!z5 && !z6) {
                z3 = false;
            }
            q41Var.k = z3;
            if (z6 && (videoLifecycleCallbacks5 = q41Var.getVideoLifecycleCallbacks()) != null) {
                videoLifecycleCallbacks5.onVideoStart();
            }
            if (z7 && (videoLifecycleCallbacks4 = q41Var.getVideoLifecycleCallbacks()) != null) {
                videoLifecycleCallbacks4.onVideoPlay();
            }
            if (z8 && (videoLifecycleCallbacks3 = q41Var.getVideoLifecycleCallbacks()) != null) {
                videoLifecycleCallbacks3.onVideoPause();
            }
            if (z9 && (videoLifecycleCallbacks2 = q41Var.getVideoLifecycleCallbacks()) != null) {
                videoLifecycleCallbacks2.onVideoEnd();
            }
            if (z10 && (videoLifecycleCallbacks = q41Var.getVideoLifecycleCallbacks()) != null) {
                videoLifecycleCallbacks.onVideoMute(z2);
            }
            unit = p005kotlin.Unit.INSTANCE;
        }
        return unit;
    }
}

package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback;
import com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAdRequest;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class ln2 extends SuspendLambda implements Function1 {
    public final /* synthetic */ zz2 a;
    public final /* synthetic */ AdLoadCallback b;
    public final /* synthetic */ PictureInPictureAdRequest c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ln2(zz2 zz2Var, AdLoadCallback adLoadCallback, PictureInPictureAdRequest pictureInPictureAdRequest, Continuation continuation) {
        super(1, continuation);
        this.a = zz2Var;
        this.b = adLoadCallback;
        this.c = pictureInPictureAdRequest;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new ln2(this.a, this.b, this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((ln2) create((Continuation) obj)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        zz2 zz2Var = this.a;
        zz2Var.a(new ek1(this.b, new kn2(this.c, zz2Var, null)));
        return p005kotlin.Unit.INSTANCE;
    }
}

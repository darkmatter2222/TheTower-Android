package kotlin;

import android.view.ViewGroup;
import com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class qo extends SuspendLambda implements Function1 {
    public final /* synthetic */ cz2 a;
    public final /* synthetic */ AdLoadCallback b;
    public final /* synthetic */ ViewGroup c;
    public final /* synthetic */ boolean d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qo(cz2 cz2Var, AdLoadCallback adLoadCallback, ViewGroup viewGroup, boolean z, Continuation continuation) {
        super(1, continuation);
        this.a = cz2Var;
        this.b = adLoadCallback;
        this.c = viewGroup;
        this.d = z;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new qo(this.a, this.b, this.c, this.d, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((qo) create((Continuation) obj)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        wy2 wy2VarA = this.a.a();
        ek1 internalAdLoadCallback = new ek1(this.b, new po(this.a, null));
        ViewGroup viewGroup = this.c;
        boolean z = this.d;
        wy2VarA.getClass();
        Intrinsics.checkNotNullParameter(internalAdLoadCallback, "internalAdLoadCallback");
        wy2VarA.B = viewGroup;
        if (z) {
            wy2VarA.y = internalAdLoadCallback;
        }
        wy2VarA.a(internalAdLoadCallback);
        return p005kotlin.Unit.INSTANCE;
    }
}

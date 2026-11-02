package kotlin;

import androidx.webkit.Profile;
import androidx.webkit.ProfileStore;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class z04 extends SuspendLambda implements Function2 {
    public final /* synthetic */ r14 a;
    public final /* synthetic */ String b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z04(r14 r14Var, String str, Continuation continuation) {
        super(2, continuation);
        this.a = r14Var;
        this.b = str;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new z04(this.a, this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new z04(this.a, this.b, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        t04 t04Var = this.a.j;
        String name = this.b;
        t04Var.getClass();
        Intrinsics.checkNotNullParameter(name, "name");
        Profile orCreateProfile = ProfileStore.getInstance().getOrCreateProfile(name);
        Intrinsics.checkNotNullExpressionValue(orCreateProfile, "getOrCreateProfile(...)");
        return orCreateProfile;
    }
}

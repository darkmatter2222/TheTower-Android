package kotlin;

import androidx.webkit.Profile;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class l14 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Profile a;
    public final /* synthetic */ String b;
    public final /* synthetic */ r14 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l14(Profile profile, String str, r14 r14Var, Continuation continuation) {
        super(2, continuation);
        this.a = profile;
        this.b = str;
        this.c = r14Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new l14(this.a, this.b, this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((l14) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        AtomicBoolean atomicBoolean = az3.a;
        Profile profile = this.a;
        String url = this.b;
        rz executor = this.c.g.d;
        Intrinsics.checkNotNullParameter(profile, "profile");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(executor, "executor");
        if (az3.d.get()) {
            try {
                profile.prefetchUrlAsync(url, null, executor, new wy3());
            } catch (Throwable unused) {
                az3.d.set(false);
            }
        }
        return p005kotlin.Unit.INSTANCE;
    }
}

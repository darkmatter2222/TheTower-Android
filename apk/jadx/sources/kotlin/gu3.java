package kotlin;

import android.widget.Toolbar;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class gu3 extends SuspendLambda implements Function2 {
    public final /* synthetic */ r31 a;
    public final /* synthetic */ Toolbar b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gu3(r31 r31Var, Toolbar toolbar, Continuation continuation) {
        super(2, continuation);
        this.a = r31Var;
        this.b = toolbar;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new gu3(this.a, this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new gu3(this.a, this.b, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        String url = this.a.getUrl();
        if (url == null) {
            return null;
        }
        this.b.setSubtitle(url);
        return p005kotlin.Unit.INSTANCE;
    }
}

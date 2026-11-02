package kotlin;

import okhttp3.Response;
import okhttp3.ResponseBody;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class m71 extends SuspendLambda implements Function1 {
    public final /* synthetic */ Response a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m71(Response response, Continuation continuation) {
        super(1, continuation);
        this.a = response;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new m71(this.a, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return new m71(this.a, (Continuation) obj).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        byte[] bArrBytes;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        ResponseBody responseBodyBody = this.a.body();
        if (responseBodyBody == null || (bArrBytes = responseBodyBody.bytes()) == null) {
            bArrBytes = new byte[0];
        }
        return new p53(bArrBytes);
    }
}

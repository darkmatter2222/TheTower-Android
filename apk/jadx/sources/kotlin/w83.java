package kotlin;

import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import java.util.Map;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class w83 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ b93 b;
    public final /* synthetic */ Map.Entry c;
    public final /* synthetic */ BaseRequest d;
    public final /* synthetic */ Map e;
    public final /* synthetic */ j53 f;
    public final /* synthetic */ AdSize g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w83(b93 b93Var, Map.Entry entry, BaseRequest baseRequest, Map map, j53 j53Var, AdSize adSize, Continuation continuation) {
        super(2, continuation);
        this.b = b93Var;
        this.c = entry;
        this.d = baseRequest;
        this.e = map;
        this.f = j53Var;
        this.g = adSize;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new w83(this.b, this.c, this.d, this.e, this.f, this.g, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((w83) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            b93 b93Var = this.b;
            Map.Entry entry = this.c;
            BaseRequest baseRequest = this.d;
            Map map = this.e;
            j53 j53Var = this.f;
            AdSize adSize = this.g;
            this.a = 1;
            if (b93Var.a(entry, baseRequest, map, j53Var, adSize, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        return p005kotlin.Unit.INSTANCE;
    }
}

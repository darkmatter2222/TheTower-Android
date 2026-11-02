package kotlin;

import java.util.LinkedHashMap;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class er2 extends SuspendLambda implements Function2 {
    public Mutex a;
    public pt2 b;
    public j53 c;
    public String d;
    public int e;
    public final /* synthetic */ pt2 f;
    public final /* synthetic */ j53 g;
    public final /* synthetic */ String h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public er2(j53 j53Var, pt2 pt2Var, String str, Continuation continuation) {
        super(2, continuation);
        this.f = pt2Var;
        this.g = j53Var;
        this.h = str;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new er2(this.g, this.f, this.h, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((er2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Mutex mutex;
        j53 j53Var;
        pt2 pt2Var;
        String str;
        h6 h6Var;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.e;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            pt2 pt2Var2 = this.f;
            mutex = pt2Var2.q;
            j53Var = this.g;
            String str2 = this.h;
            this.a = mutex;
            this.b = pt2Var2;
            this.c = j53Var;
            this.d = str2;
            this.e = 1;
            if (mutex.lock(null, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            pt2Var = pt2Var2;
            str = str2;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str = this.d;
            j53Var = this.c;
            pt2Var = this.b;
            mutex = this.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            LinkedHashMap linkedHashMapA = pt2Var.a(j53Var);
            return (linkedHashMapA == null || (h6Var = (h6) linkedHashMapA.get(str)) == null) ? null : h6Var.c;
        } finally {
            mutex.unlock(null);
        }
    }
}

package kotlin;

import com.google.common.base.Splitter;
import java.util.LinkedHashMap;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class jr2 extends SuspendLambda implements Function2 {
    public Mutex a;
    public pt2 b;
    public j53 c;
    public String d;
    public int e;
    public final /* synthetic */ pt2 f;
    public final /* synthetic */ String g;
    public final /* synthetic */ j53 h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jr2(j53 j53Var, pt2 pt2Var, String str, Continuation continuation) {
        super(2, continuation);
        this.f = pt2Var;
        this.g = str;
        this.h = j53Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new jr2(this.h, this.f, this.g, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((jr2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Mutex mutex;
        pt2 pt2Var;
        String str;
        j53 j53Var;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.e;
        try {
            if (i == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                mutex = this.f.q;
                pt2Var = this.f;
                j53 j53Var2 = this.h;
                str = this.g;
                this.a = mutex;
                this.b = pt2Var;
                this.c = j53Var2;
                this.d = str;
                this.e = 1;
                if (mutex.lock(null, this) != coroutine_suspended) {
                    j53Var = j53Var2;
                }
            }
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                p005kotlin.ResultKt.throwOnFailure(obj);
                return obj;
            }
            str = this.d;
            j53Var = this.c;
            pt2Var = this.b;
            mutex = this.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            LinkedHashMap linkedHashMapA = pt2Var.a(j53Var);
            h6 h6Var = linkedHashMapA != null ? (h6) linkedHashMapA.get(str) : null;
            mutex.unlock(null);
            if (h6Var == null) {
                Splitter splitter = f01.a;
                f01.c("No preload found for preload ID " + this.g, null);
                return Boxing.boxBoolean(false);
            }
            this.a = null;
            this.b = null;
            this.c = null;
            this.d = null;
            this.e = 2;
            Object objS = h6Var.s(this);
            return objS == coroutine_suspended ? coroutine_suspended : objS;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }
}

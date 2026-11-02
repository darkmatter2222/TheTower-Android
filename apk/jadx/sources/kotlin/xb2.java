package kotlin;

import android.database.sqlite.SQLiteDatabase;
import com.google.common.base.Splitter;
import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class xb2 extends SuspendLambda implements Function2 {
    public Mutex a;
    public Function2 b;
    public ac2 c;
    public int d;
    public final /* synthetic */ ac2 e;
    public final /* synthetic */ Function2 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xb2(ac2 ac2Var, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.e = ac2Var;
        this.f = function2;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new xb2(this.e, this.f, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new xb2(this.e, this.f, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Mutex mutex;
        Function2 function2;
        ac2 ac2Var;
        Mutex mutex2;
        Exception e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.d;
        try {
            if (i == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                mutex = this.e.e;
                Function2 function3 = this.f;
                ac2 ac2Var2 = this.e;
                this.a = mutex;
                this.b = function3;
                this.c = ac2Var2;
                this.d = 1;
                if (mutex.lock(null, this) != coroutine_suspended) {
                    function2 = function3;
                    ac2Var = ac2Var2;
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutex2 = this.a;
                try {
                    try {
                        p005kotlin.ResultKt.throwOnFailure(obj);
                    } catch (Exception e2) {
                        e = e2;
                        Splitter splitter = f01.a;
                        f01.a("Error interacting with offline buffered ping database: " + e.getMessage(), (Throwable) null);
                    }
                    p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                    mutex2.unlock(null);
                    return unit;
                } catch (Throwable th) {
                    th = th;
                    mutex = mutex2;
                    mutex.unlock(null);
                    throw th;
                }
            }
            ac2Var = this.c;
            function2 = this.b;
            Mutex mutex3 = this.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex3;
            SQLiteDatabase writableDatabase = ac2Var.getWritableDatabase();
            Intrinsics.checkNotNullExpressionValue(writableDatabase, "getWritableDatabase(...)");
            this.a = mutex;
            this.b = null;
            this.c = null;
            this.d = 2;
            if (function2.invoke(writableDatabase, this) != coroutine_suspended) {
                mutex2 = mutex;
                p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                mutex2.unlock(null);
                return unit2;
            }
            return coroutine_suspended;
        } catch (Exception e3) {
            mutex2 = mutex;
            e = e3;
            Splitter splitter2 = f01.a;
            f01.a("Error interacting with offline buffered ping database: " + e.getMessage(), (Throwable) null);
        } catch (Throwable th2) {
            th = th2;
            mutex.unlock(null);
            throw th;
        }
    }
}

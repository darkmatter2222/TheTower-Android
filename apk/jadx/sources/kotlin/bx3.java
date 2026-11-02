package kotlin;

import androidx.datastore.core.DataStore;
import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class bx3 extends SuspendLambda implements Function2 {
    public Mutex a;
    public dx3 b;
    public String c;
    public int d;
    public final /* synthetic */ dx3 e;
    public final /* synthetic */ String f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bx3(dx3 dx3Var, String str, Continuation continuation) {
        super(2, continuation);
        this.e = dx3Var;
        this.f = str;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new bx3(this.e, this.f, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new bx3(this.e, this.f, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        dx3 dx3Var;
        Mutex mutex;
        String str;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.d;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            jw0 jw0Var = this.e.c;
            String newUserAgent = this.f;
            Intrinsics.checkNotNullExpressionValue(newUserAgent, "$newUserAgent");
            this.d = 1;
            Object objUpdateData = ((DataStore) jw0Var.a.get()).updateData(new ew0(newUserAgent, null), this);
            if (objUpdateData != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                objUpdateData = p005kotlin.Unit.INSTANCE;
            }
            if (objUpdateData != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i == 1) {
            p005kotlin.ResultKt.throwOnFailure(obj);
        } else {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str = this.c;
            dx3Var = this.b;
            mutex = this.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            Intrinsics.checkNotNull(str);
            int i2 = dx3.k;
            dx3Var.a(str);
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
        dx3Var = this.e;
        Mutex mutex2 = dx3Var.h;
        String str2 = this.f;
        this.a = mutex2;
        this.b = dx3Var;
        this.c = str2;
        this.d = 2;
        if (mutex2.lock(null, this) != coroutine_suspended) {
            mutex = mutex2;
            str = str2;
            Intrinsics.checkNotNull(str);
            int i3 = dx3.k;
            dx3Var.a(str);
            return p005kotlin.Unit.INSTANCE;
        }
        return coroutine_suspended;
    }
}

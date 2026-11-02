package kotlin;

import com.google.common.base.Splitter;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
public final class if2 extends SuspendLambda implements Function2 {
    public Object a;
    public Object b;
    public Mutex c;
    public vf2 d;
    public int e;
    public final /* synthetic */ Ref.ObjectRef f;
    public final /* synthetic */ vf2 g;
    public final /* synthetic */ String h;
    public final /* synthetic */ Ref.ObjectRef i;
    public final /* synthetic */ x91 j;
    public final /* synthetic */ Ref.ObjectRef k;
    public final /* synthetic */ boolean l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public if2(Ref.ObjectRef objectRef, vf2 vf2Var, String str, Ref.ObjectRef objectRef2, x91 x91Var, Ref.ObjectRef objectRef3, boolean z, Continuation continuation) {
        super(2, continuation);
        this.f = objectRef;
        this.g = vf2Var;
        this.h = str;
        this.i = objectRef2;
        this.j = x91Var;
        this.k = objectRef3;
        this.l = z;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new if2(this.f, this.g, this.h, this.i, this.j, this.k, this.l, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((if2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00c6  */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Deferred deferred;
        Object objAwait;
        Object objWithContext;
        r31 r31Var;
        vf2 vf2Var;
        Mutex mutex;
        k9 k9Var;
        vf2 vf2Var2;
        Mutex mutex2;
        k9 k9Var2;
        vf2 vf2Var3;
        Mutex mutex3;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.e;
        try {
            if (i == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                T t = this.f.element;
                if (t == 0) {
                    Intrinsics.throwUninitializedPropertyAccessException("deferredWebView");
                    deferred = null;
                } else {
                    deferred = (Deferred) t;
                }
                this.e = 1;
                objAwait = deferred.await(this);
                if (objAwait == coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                if (i == 2) {
                    vf2Var = (vf2) this.b;
                    mutex = (Mutex) this.a;
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    try {
                        vf2Var.j = null;
                        return p005kotlin.Unit.INSTANCE;
                    } finally {
                        mutex.unlock(null);
                    }
                }
                if (i == 3) {
                    r31 r31Var2 = (r31) this.a;
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    r31Var = r31Var2;
                    objWithContext = obj;
                    k9Var = (k9) objWithContext;
                    vf2Var2 = this.g;
                    mutex2 = vf2Var2.i;
                    this.a = r31Var;
                    this.b = k9Var;
                    this.c = mutex2;
                    this.d = vf2Var2;
                    this.e = 4;
                    if (mutex2.lock(null, this) != coroutine_suspended) {
                        k9Var2 = k9Var;
                        vf2Var3 = vf2Var2;
                        mutex3 = mutex2;
                    }
                    return coroutine_suspended;
                }
                if (i != 4) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vf2Var3 = this.d;
                mutex3 = this.c;
                k9Var2 = (k9) this.b;
                r31Var = (r31) this.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
                try {
                    vf2Var3.l = k9Var2;
                    vf2Var3.k = r31Var;
                    p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                    return p005kotlin.Unit.INSTANCE;
                } finally {
                    mutex3.unlock(null);
                }
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
            objAwait = obj;
            r31 r31Var3 = (r31) objAwait;
            if (r31Var3 == null) {
                vf2 vf2Var4 = this.g;
                Mutex mutex4 = vf2Var4.i;
                this.a = mutex4;
                this.b = vf2Var4;
                this.e = 2;
                if (mutex4.lock(null, this) != coroutine_suspended) {
                    vf2Var = vf2Var4;
                    mutex = mutex4;
                    vf2Var.j = null;
                    return p005kotlin.Unit.INSTANCE;
                }
            } else {
                vf2 vf2Var5 = this.g;
                CoroutineContext coroutineContext = vf2Var5.b;
                hf2 hf2Var = new hf2(vf2Var5, r31Var3, this.h, this.i, this.j, this.k, this.l, null);
                this.a = r31Var3;
                this.e = 3;
                objWithContext = BuildersKt.withContext(coroutineContext, hf2Var, this);
                if (objWithContext != coroutine_suspended) {
                    r31Var = r31Var3;
                    k9Var = (k9) objWithContext;
                    vf2Var2 = this.g;
                    mutex2 = vf2Var2.i;
                    this.a = r31Var;
                    this.b = k9Var;
                    this.c = mutex2;
                    this.d = vf2Var2;
                    this.e = 4;
                    if (mutex2.lock(null, this) != coroutine_suspended) {
                        k9Var2 = k9Var;
                        vf2Var3 = vf2Var2;
                        mutex3 = mutex2;
                        vf2Var3.l = k9Var2;
                        vf2Var3.k = r31Var;
                        p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                        return p005kotlin.Unit.INSTANCE;
                    }
                }
            }
            return coroutine_suspended;
        } catch (CancellationException unused) {
            Splitter splitter = f01.a;
            f01.c("omid session creation was cancelled in onAdWillBeReturned", null);
        }
    }
}

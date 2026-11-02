package kotlin;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import java.util.WeakHashMap;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class v02 extends SuspendLambda implements Function2 {
    public rr3 a;
    public rr3 b;
    public s02 c;
    public int d;
    public final /* synthetic */ s02 e;
    public final /* synthetic */ g12 f;
    public final /* synthetic */ JsonObject g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v02(s02 s02Var, g12 g12Var, JsonObject jsonObject, Continuation continuation) {
        super(2, continuation);
        this.e = s02Var;
        this.f = g12Var;
        this.g = jsonObject;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new v02(this.e, this.f, this.g, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((v02) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:34:0x008c A[Catch: all -> 0x00bb, TryCatch #2 {all -> 0x00bb, blocks: (B:32:0x0085, B:34:0x008c, B:36:0x0090, B:38:0x0094, B:39:0x0097, B:41:0x009b, B:43:0x009f, B:45:0x00a3, B:46:0x00a4, B:47:0x00a9, B:48:0x00aa, B:49:0x00b1, B:50:0x00b2, B:51:0x00b9, B:52:0x00ba), top: B:62:0x0085 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x009b A[Catch: all -> 0x00bb, TryCatch #2 {all -> 0x00bb, blocks: (B:32:0x0085, B:34:0x008c, B:36:0x0090, B:38:0x0094, B:39:0x0097, B:41:0x009b, B:43:0x009f, B:45:0x00a3, B:46:0x00a4, B:47:0x00a9, B:48:0x00aa, B:49:0x00b1, B:50:0x00b2, B:51:0x00b9, B:52:0x00ba), top: B:62:0x0085 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x009f A[Catch: all -> 0x00bb, TryCatch #2 {all -> 0x00bb, blocks: (B:32:0x0085, B:34:0x008c, B:36:0x0090, B:38:0x0094, B:39:0x0097, B:41:0x009b, B:43:0x009f, B:45:0x00a3, B:46:0x00a4, B:47:0x00a9, B:48:0x00aa, B:49:0x00b1, B:50:0x00b2, B:51:0x00b9, B:52:0x00ba), top: B:62:0x0085 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00a3 A[Catch: all -> 0x00bb, TryCatch #2 {all -> 0x00bb, blocks: (B:32:0x0085, B:34:0x008c, B:36:0x0090, B:38:0x0094, B:39:0x0097, B:41:0x009b, B:43:0x009f, B:45:0x00a3, B:46:0x00a4, B:47:0x00a9, B:48:0x00aa, B:49:0x00b1, B:50:0x00b2, B:51:0x00b9, B:52:0x00ba), top: B:62:0x0085 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00a4 A[Catch: all -> 0x00bb, TryCatch #2 {all -> 0x00bb, blocks: (B:32:0x0085, B:34:0x008c, B:36:0x0090, B:38:0x0094, B:39:0x0097, B:41:0x009b, B:43:0x009f, B:45:0x00a3, B:46:0x00a4, B:47:0x00a9, B:48:0x00aa, B:49:0x00b1, B:50:0x00b2, B:51:0x00b9, B:52:0x00ba), top: B:62:0x0085 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00aa A[Catch: all -> 0x00bb, TryCatch #2 {all -> 0x00bb, blocks: (B:32:0x0085, B:34:0x008c, B:36:0x0090, B:38:0x0094, B:39:0x0097, B:41:0x009b, B:43:0x009f, B:45:0x00a3, B:46:0x00a4, B:47:0x00a9, B:48:0x00aa, B:49:0x00b1, B:50:0x00b2, B:51:0x00b9, B:52:0x00ba), top: B:62:0x0085 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x00b2 A[Catch: all -> 0x00bb, TryCatch #2 {all -> 0x00bb, blocks: (B:32:0x0085, B:34:0x008c, B:36:0x0090, B:38:0x0094, B:39:0x0097, B:41:0x009b, B:43:0x009f, B:45:0x00a3, B:46:0x00a4, B:47:0x00a9, B:48:0x00aa, B:49:0x00b1, B:50:0x00b2, B:51:0x00b9, B:52:0x00ba), top: B:62:0x0085 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x00ba A[Catch: all -> 0x00bb, TRY_LEAVE, TryCatch #2 {all -> 0x00bb, blocks: (B:32:0x0085, B:34:0x008c, B:36:0x0090, B:38:0x0094, B:39:0x0097, B:41:0x009b, B:43:0x009f, B:45:0x00a3, B:46:0x00a4, B:47:0x00a9, B:48:0x00aa, B:49:0x00b1, B:50:0x00b2, B:51:0x00b9, B:52:0x00ba), top: B:62:0x0085 }] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        rr3 rr3VarA;
        rr3 rr3Var;
        s02 s02Var;
        rr3 rr3Var2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.d;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            s02 s02Var2 = this.e;
            s11 s11Var = s11.CUI_NAME_LOAD_NATIVE_IMAGE;
            g12 g12Var = this.f;
            JsonObject jsonObject = this.g;
            WeakHashMap weakHashMap = hs3.a;
            rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
            try {
                v42 v42Var = g12Var.c;
                this.a = rr3VarA;
                this.b = rr3VarA;
                this.c = s02Var2;
                this.d = 1;
                v42Var.getClass();
                JsonArray jsonArrayE = ds1.e(jsonObject, "images");
                Object objA = (jsonArrayE == null || jsonArrayE.isEmpty()) ? null : v42Var.a(ds1.a(jsonArrayE.get(0)), v42Var.a.getIsImageLoadingDisabled(), this);
                if (objA == coroutine_suspended) {
                    return coroutine_suspended;
                }
                s02Var = s02Var2;
                obj = objA;
                rr3Var2 = rr3VarA;
            } catch (Throwable th) {
                th = th;
                rr3Var = rr3VarA;
                rr3VarA.b(th);
                if (!(th instanceof v24)) {
                    throw th;
                }
                if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                    rr3VarA.a(th);
                }
                if (!(th instanceof TimeoutCancellationException)) {
                    throw new i21(th);
                }
                if (!(th instanceof CancellationException)) {
                    throw new wz0(th);
                }
                if (th instanceof w01) {
                    throw th;
                }
                throw new b01(th);
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            s02Var = this.c;
            rr3VarA = this.b;
            rr3Var2 = this.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj);
            } catch (Throwable th2) {
                th = th2;
                rr3Var = rr3VarA;
                rr3VarA = rr3Var2;
                try {
                    rr3VarA.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        rr3VarA.a(th);
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        throw new i21(th);
                    }
                    if (!(th instanceof CancellationException)) {
                        throw new wz0(th);
                    }
                    if (th instanceof w01) {
                        throw th;
                    }
                    throw new b01(th);
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        CloseableKt.closeFinally(rr3Var, th3);
                        throw th4;
                    }
                }
            }
        }
        km1 km1Var = (km1) obj;
        if (km1Var instanceof i01) {
            xs3.a((i01) km1Var, false);
        }
        CloseableKt.closeFinally(rr3VarA, null);
        s02Var.f = km1Var;
        return p005kotlin.Unit.INSTANCE;
    }
}

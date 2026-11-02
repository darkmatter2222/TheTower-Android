package kotlin;

import com.google.gson.JsonObject;
import java.util.List;
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
public final class y02 extends SuspendLambda implements Function2 {
    public s02 a;
    public rr3 b;
    public rr3 c;
    public int d;
    public final /* synthetic */ g12 e;
    public final /* synthetic */ JsonObject f;
    public final /* synthetic */ s02 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y02(s02 s02Var, g12 g12Var, JsonObject jsonObject, Continuation continuation) {
        super(2, continuation);
        this.e = g12Var;
        this.f = jsonObject;
        this.g = s02Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new y02(this.g, this.e, this.f, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((y02) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00a1 A[Catch: all -> 0x00d0, TryCatch #0 {all -> 0x00d0, blocks: (B:33:0x009a, B:35:0x00a1, B:37:0x00a5, B:39:0x00a9, B:40:0x00ac, B:42:0x00b0, B:44:0x00b4, B:46:0x00b8, B:47:0x00b9, B:48:0x00be, B:49:0x00bf, B:50:0x00c6, B:51:0x00c7, B:52:0x00ce, B:53:0x00cf), top: B:59:0x009a }] */
    /* JADX WARN: Code duplicated, block: B:42:0x00b0 A[Catch: all -> 0x00d0, TryCatch #0 {all -> 0x00d0, blocks: (B:33:0x009a, B:35:0x00a1, B:37:0x00a5, B:39:0x00a9, B:40:0x00ac, B:42:0x00b0, B:44:0x00b4, B:46:0x00b8, B:47:0x00b9, B:48:0x00be, B:49:0x00bf, B:50:0x00c6, B:51:0x00c7, B:52:0x00ce, B:53:0x00cf), top: B:59:0x009a }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00b4 A[Catch: all -> 0x00d0, TryCatch #0 {all -> 0x00d0, blocks: (B:33:0x009a, B:35:0x00a1, B:37:0x00a5, B:39:0x00a9, B:40:0x00ac, B:42:0x00b0, B:44:0x00b4, B:46:0x00b8, B:47:0x00b9, B:48:0x00be, B:49:0x00bf, B:50:0x00c6, B:51:0x00c7, B:52:0x00ce, B:53:0x00cf), top: B:59:0x009a }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00b8 A[Catch: all -> 0x00d0, TryCatch #0 {all -> 0x00d0, blocks: (B:33:0x009a, B:35:0x00a1, B:37:0x00a5, B:39:0x00a9, B:40:0x00ac, B:42:0x00b0, B:44:0x00b4, B:46:0x00b8, B:47:0x00b9, B:48:0x00be, B:49:0x00bf, B:50:0x00c6, B:51:0x00c7, B:52:0x00ce, B:53:0x00cf), top: B:59:0x009a }] */
    /* JADX WARN: Code duplicated, block: B:47:0x00b9 A[Catch: all -> 0x00d0, TryCatch #0 {all -> 0x00d0, blocks: (B:33:0x009a, B:35:0x00a1, B:37:0x00a5, B:39:0x00a9, B:40:0x00ac, B:42:0x00b0, B:44:0x00b4, B:46:0x00b8, B:47:0x00b9, B:48:0x00be, B:49:0x00bf, B:50:0x00c6, B:51:0x00c7, B:52:0x00ce, B:53:0x00cf), top: B:59:0x009a }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00bf A[Catch: all -> 0x00d0, TryCatch #0 {all -> 0x00d0, blocks: (B:33:0x009a, B:35:0x00a1, B:37:0x00a5, B:39:0x00a9, B:40:0x00ac, B:42:0x00b0, B:44:0x00b4, B:46:0x00b8, B:47:0x00b9, B:48:0x00be, B:49:0x00bf, B:50:0x00c6, B:51:0x00c7, B:52:0x00ce, B:53:0x00cf), top: B:59:0x009a }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00c7 A[Catch: all -> 0x00d0, TryCatch #0 {all -> 0x00d0, blocks: (B:33:0x009a, B:35:0x00a1, B:37:0x00a5, B:39:0x00a9, B:40:0x00ac, B:42:0x00b0, B:44:0x00b4, B:46:0x00b8, B:47:0x00b9, B:48:0x00be, B:49:0x00bf, B:50:0x00c6, B:51:0x00c7, B:52:0x00ce, B:53:0x00cf), top: B:59:0x009a }] */
    /* JADX WARN: Code duplicated, block: B:53:0x00cf A[Catch: all -> 0x00d0, TRY_LEAVE, TryCatch #0 {all -> 0x00d0, blocks: (B:33:0x009a, B:35:0x00a1, B:37:0x00a5, B:39:0x00a9, B:40:0x00ac, B:42:0x00b0, B:44:0x00b4, B:46:0x00b8, B:47:0x00b9, B:48:0x00be, B:49:0x00bf, B:50:0x00c6, B:51:0x00c7, B:52:0x00ce, B:53:0x00cf), top: B:59:0x009a }] */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        rr3 rr3Var;
        TimeoutCancellationException th;
        rr3 rr3Var2;
        s02 s02Var;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.d;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            s11 s11Var = s11.CUI_NAME_LOAD_NATIVE_CUSTOM_ASSETS;
            g12 g12Var = this.e;
            JsonObject jsonObject = this.f;
            s02 s02Var2 = this.g;
            WeakHashMap weakHashMap = hs3.a;
            rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
            try {
                g52 g52Var = g12Var.d;
                this.a = s02Var2;
                this.b = rr3VarA;
                this.c = rr3VarA;
                this.d = 1;
                Object objA = g52Var.a(jsonObject, "custom_assets", this);
                if (objA == coroutine_suspended) {
                    return coroutine_suspended;
                }
                rr3Var2 = rr3VarA;
                s02Var = s02Var2;
                obj = objA;
                rr3Var = rr3Var2;
            } catch (Throwable th2) {
                rr3Var = rr3VarA;
                th = th2;
                rr3Var2 = rr3Var;
                rr3Var.b(th);
                if (!(th instanceof v24)) {
                    throw th;
                }
                if (!(th instanceof TimeoutCancellationException)) {
                    rr3Var.a(th);
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
            rr3Var2 = this.c;
            rr3Var = this.b;
            s02Var = this.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj);
            } catch (Throwable th3) {
                th = th3;
                try {
                    rr3Var.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        rr3Var.a(th);
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
                } catch (Throwable th4) {
                    try {
                        throw th4;
                    } catch (Throwable th5) {
                        CloseableKt.closeFinally(rr3Var2, th4);
                        throw th5;
                    }
                }
            }
        }
        for (fc0 fc0Var : (List) obj) {
            if (fc0Var instanceof ec0) {
                s02Var.d.put(((ec0) fc0Var).a, ((ec0) fc0Var).b);
            } else if (fc0Var instanceof dc0) {
                s02Var.i.put(((dc0) fc0Var).a, ((dc0) fc0Var).b);
            }
        }
        Object obj2 = p005kotlin.Unit.INSTANCE;
        if (obj2 instanceof i01) {
            xs3.a((i01) obj2, false);
        }
        CloseableKt.closeFinally(rr3Var2, null);
        return obj2;
    }
}

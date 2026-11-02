package kotlin;

import java.io.File;
import java.util.WeakHashMap;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class rl2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ im2 a;
    public final /* synthetic */ String b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rl2(im2 im2Var, String str, Continuation continuation) {
        super(2, continuation);
        this.a = im2Var;
        this.b = str;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new rl2(this.a, this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new rl2(this.a, this.b, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0077 A[Catch: all -> 0x0083, TRY_LEAVE, TryCatch #0 {all -> 0x0083, blocks: (B:3:0x0021, B:9:0x003c, B:11:0x0042, B:19:0x0073, B:21:0x0077, B:12:0x004c, B:14:0x0052, B:15:0x005c, B:17:0x0062, B:18:0x006a, B:6:0x0026, B:8:0x0032), top: B:51:0x0021 }] */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object m01Var;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        e9 e9Var = this.a.b;
        String filename = this.b;
        e9Var.getClass();
        Intrinsics.checkNotNullParameter(filename, "filename");
        s11 s11Var = s11.CUI_NAME_PERSISTENT_CACHE_FILE_DELETE;
        WeakHashMap weakHashMap = hs3.a;
        rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
        try {
            if (!e9Var.b) {
                e9Var.b = e9Var.a.exists();
                if (!e9Var.b) {
                    m01Var = new m01("Cache directory not found", kk1.INTERNAL_ERROR);
                }
                if (m01Var instanceof i01) {
                    xs3.a((i01) m01Var, false);
                }
                CloseableKt.closeFinally(rr3VarA, null);
                return m01Var;
            }
            File fileB = e9Var.b(filename);
            if (fileB == null) {
                m01Var = new m01("Invalid filename", kk1.INTERNAL_ERROR);
            } else if (fileB.exists()) {
                m01Var = fileB.delete() ? new q01(p005kotlin.Unit.INSTANCE) : new m01("Failed to delete file", kk1.INTERNAL_ERROR);
            } else {
                m01Var = new m01("File not found", kk1.INTERNAL_ERROR);
            }
            if (m01Var instanceof i01) {
                xs3.a((i01) m01Var, false);
            }
            CloseableKt.closeFinally(rr3VarA, null);
            return m01Var;
        } catch (Throwable th) {
            try {
                rr3VarA.b(th);
                if (th instanceof v24) {
                    throw th;
                }
                if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                    rr3VarA.a(th);
                }
                if (th instanceof TimeoutCancellationException) {
                    throw new i21(th);
                }
                if (th instanceof CancellationException) {
                    throw new wz0(th);
                }
                if (th instanceof w01) {
                    throw th;
                }
                throw new b01(th);
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    CloseableKt.closeFinally(rr3VarA, th2);
                    throw th3;
                }
            }
        }
    }
}

package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.flow.Flow;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class xw2 extends SuspendLambda implements Function2 {
    public rr3 a;
    public rr3 b;
    public int c;
    public final /* synthetic */ px2 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xw2(px2 px2Var, Continuation continuation) {
        super(2, continuation);
        this.d = px2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new xw2(this.d, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new xw2(this.d, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0148 A[Catch: all -> 0x0168, TryCatch #1 {all -> 0x0168, blocks: (B:92:0x0132, B:94:0x0139, B:96:0x013d, B:98:0x0141, B:99:0x0144, B:101:0x0148, B:103:0x014c, B:105:0x0150, B:106:0x0151, B:107:0x0156, B:108:0x0157, B:109:0x015e, B:110:0x015f, B:111:0x0166, B:112:0x0167), top: B:119:0x0132 }] */
    /* JADX WARN: Code duplicated, block: B:103:0x014c A[Catch: all -> 0x0168, TryCatch #1 {all -> 0x0168, blocks: (B:92:0x0132, B:94:0x0139, B:96:0x013d, B:98:0x0141, B:99:0x0144, B:101:0x0148, B:103:0x014c, B:105:0x0150, B:106:0x0151, B:107:0x0156, B:108:0x0157, B:109:0x015e, B:110:0x015f, B:111:0x0166, B:112:0x0167), top: B:119:0x0132 }] */
    /* JADX WARN: Code duplicated, block: B:105:0x0150 A[Catch: all -> 0x0168, TryCatch #1 {all -> 0x0168, blocks: (B:92:0x0132, B:94:0x0139, B:96:0x013d, B:98:0x0141, B:99:0x0144, B:101:0x0148, B:103:0x014c, B:105:0x0150, B:106:0x0151, B:107:0x0156, B:108:0x0157, B:109:0x015e, B:110:0x015f, B:111:0x0166, B:112:0x0167), top: B:119:0x0132 }] */
    /* JADX WARN: Code duplicated, block: B:106:0x0151 A[Catch: all -> 0x0168, TryCatch #1 {all -> 0x0168, blocks: (B:92:0x0132, B:94:0x0139, B:96:0x013d, B:98:0x0141, B:99:0x0144, B:101:0x0148, B:103:0x014c, B:105:0x0150, B:106:0x0151, B:107:0x0156, B:108:0x0157, B:109:0x015e, B:110:0x015f, B:111:0x0166, B:112:0x0167), top: B:119:0x0132 }] */
    /* JADX WARN: Code duplicated, block: B:108:0x0157 A[Catch: all -> 0x0168, TryCatch #1 {all -> 0x0168, blocks: (B:92:0x0132, B:94:0x0139, B:96:0x013d, B:98:0x0141, B:99:0x0144, B:101:0x0148, B:103:0x014c, B:105:0x0150, B:106:0x0151, B:107:0x0156, B:108:0x0157, B:109:0x015e, B:110:0x015f, B:111:0x0166, B:112:0x0167), top: B:119:0x0132 }] */
    /* JADX WARN: Code duplicated, block: B:110:0x015f A[Catch: all -> 0x0168, TryCatch #1 {all -> 0x0168, blocks: (B:92:0x0132, B:94:0x0139, B:96:0x013d, B:98:0x0141, B:99:0x0144, B:101:0x0148, B:103:0x014c, B:105:0x0150, B:106:0x0151, B:107:0x0156, B:108:0x0157, B:109:0x015e, B:110:0x015f, B:111:0x0166, B:112:0x0167), top: B:119:0x0132 }] */
    /* JADX WARN: Code duplicated, block: B:112:0x0167 A[Catch: all -> 0x0168, TRY_LEAVE, TryCatch #1 {all -> 0x0168, blocks: (B:92:0x0132, B:94:0x0139, B:96:0x013d, B:98:0x0141, B:99:0x0144, B:101:0x0148, B:103:0x014c, B:105:0x0150, B:106:0x0151, B:107:0x0156, B:108:0x0157, B:109:0x015e, B:110:0x015f, B:111:0x0166, B:112:0x0167), top: B:119:0x0132 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x0093 A[Catch: all -> 0x002c, TRY_LEAVE, TryCatch #5 {all -> 0x002c, blocks: (B:14:0x0028, B:36:0x008d, B:38:0x0093), top: B:126:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00a8 A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:43:0x00a1, B:45:0x00a8, B:47:0x00ac, B:49:0x00b0, B:50:0x00b3, B:52:0x00b7, B:54:0x00bb, B:56:0x00bf, B:57:0x00c0, B:58:0x00c5, B:59:0x00c6, B:60:0x00cd, B:61:0x00ce, B:62:0x00d5, B:63:0x00d6), top: B:118:0x00a1 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x00b7 A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:43:0x00a1, B:45:0x00a8, B:47:0x00ac, B:49:0x00b0, B:50:0x00b3, B:52:0x00b7, B:54:0x00bb, B:56:0x00bf, B:57:0x00c0, B:58:0x00c5, B:59:0x00c6, B:60:0x00cd, B:61:0x00ce, B:62:0x00d5, B:63:0x00d6), top: B:118:0x00a1 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x00bb A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:43:0x00a1, B:45:0x00a8, B:47:0x00ac, B:49:0x00b0, B:50:0x00b3, B:52:0x00b7, B:54:0x00bb, B:56:0x00bf, B:57:0x00c0, B:58:0x00c5, B:59:0x00c6, B:60:0x00cd, B:61:0x00ce, B:62:0x00d5, B:63:0x00d6), top: B:118:0x00a1 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x00bf A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:43:0x00a1, B:45:0x00a8, B:47:0x00ac, B:49:0x00b0, B:50:0x00b3, B:52:0x00b7, B:54:0x00bb, B:56:0x00bf, B:57:0x00c0, B:58:0x00c5, B:59:0x00c6, B:60:0x00cd, B:61:0x00ce, B:62:0x00d5, B:63:0x00d6), top: B:118:0x00a1 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x00c0 A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:43:0x00a1, B:45:0x00a8, B:47:0x00ac, B:49:0x00b0, B:50:0x00b3, B:52:0x00b7, B:54:0x00bb, B:56:0x00bf, B:57:0x00c0, B:58:0x00c5, B:59:0x00c6, B:60:0x00cd, B:61:0x00ce, B:62:0x00d5, B:63:0x00d6), top: B:118:0x00a1 }] */
    /* JADX WARN: Code duplicated, block: B:59:0x00c6 A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:43:0x00a1, B:45:0x00a8, B:47:0x00ac, B:49:0x00b0, B:50:0x00b3, B:52:0x00b7, B:54:0x00bb, B:56:0x00bf, B:57:0x00c0, B:58:0x00c5, B:59:0x00c6, B:60:0x00cd, B:61:0x00ce, B:62:0x00d5, B:63:0x00d6), top: B:118:0x00a1 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x00ce A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:43:0x00a1, B:45:0x00a8, B:47:0x00ac, B:49:0x00b0, B:50:0x00b3, B:52:0x00b7, B:54:0x00bb, B:56:0x00bf, B:57:0x00c0, B:58:0x00c5, B:59:0x00c6, B:60:0x00cd, B:61:0x00ce, B:62:0x00d5, B:63:0x00d6), top: B:118:0x00a1 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x00d6 A[Catch: all -> 0x00d7, TRY_LEAVE, TryCatch #0 {all -> 0x00d7, blocks: (B:43:0x00a1, B:45:0x00a8, B:47:0x00ac, B:49:0x00b0, B:50:0x00b3, B:52:0x00b7, B:54:0x00bb, B:56:0x00bf, B:57:0x00c0, B:58:0x00c5, B:59:0x00c6, B:60:0x00cd, B:61:0x00ce, B:62:0x00d5, B:63:0x00d6), top: B:118:0x00a1 }] */
    /* JADX WARN: Code duplicated, block: B:87:0x0124 A[Catch: all -> 0x0019, TRY_LEAVE, TryCatch #3 {all -> 0x0019, blocks: (B:7:0x0014, B:85:0x011e, B:87:0x0124), top: B:122:0x0014 }] */
    /* JADX WARN: Code duplicated, block: B:94:0x0139 A[Catch: all -> 0x0168, TryCatch #1 {all -> 0x0168, blocks: (B:92:0x0132, B:94:0x0139, B:96:0x013d, B:98:0x0141, B:99:0x0144, B:101:0x0148, B:103:0x014c, B:105:0x0150, B:106:0x0151, B:107:0x0156, B:108:0x0157, B:109:0x015e, B:110:0x015f, B:111:0x0166, B:112:0x0167), top: B:119:0x0132 }] */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        rr3 rr3Var;
        TimeoutCancellationException th;
        rr3 rr3Var2;
        rr3 rr3Var3;
        TimeoutCancellationException th2;
        rr3 rr3Var4;
        Object obj2;
        Object obj3;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.c;
        if (i != 0) {
            if (i == 1) {
                rr3Var4 = this.b;
                rr3Var3 = this.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    obj2 = (Flow) obj;
                    if (obj2 instanceof i01) {
                        xs3.a((i01) obj2, false);
                    }
                    CloseableKt.closeFinally(rr3Var4, null);
                    return obj2;
                } catch (Throwable th3) {
                    th2 = th3;
                    try {
                        rr3Var3.b(th2);
                        if (!(th2 instanceof v24)) {
                            throw th2;
                        }
                        if (!(th2 instanceof TimeoutCancellationException) && !(th2 instanceof CancellationException)) {
                            rr3Var3.a(th2);
                        }
                        if (!(th2 instanceof TimeoutCancellationException)) {
                            throw new i21(th2);
                        }
                        if (!(th2 instanceof CancellationException)) {
                            throw new wz0(th2);
                        }
                        if (th2 instanceof w01) {
                            throw th2;
                        }
                        throw new b01(th2);
                    } catch (Throwable th4) {
                        try {
                            throw th4;
                        } catch (Throwable th5) {
                            CloseableKt.closeFinally(rr3Var4, th4);
                            throw th5;
                        }
                    }
                }
            }
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            rr3Var2 = this.b;
            rr3Var = this.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj);
                obj3 = (Flow) obj;
                if (obj3 instanceof i01) {
                    xs3.a((i01) obj3, false);
                }
                CloseableKt.closeFinally(rr3Var2, null);
                return obj3;
            } catch (Throwable th6) {
                th = th6;
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
                } catch (Throwable th7) {
                    try {
                        throw th7;
                    } catch (Throwable th8) {
                        CloseableKt.closeFinally(rr3Var2, th7);
                        throw th8;
                    }
                }
            }
        }
        p005kotlin.ResultKt.throwOnFailure(obj);
        px2 px2Var = this.d;
        g83 g83Var = px2Var.e;
        s11 s11Var = s11.CUI_NAME_ADREQUEST;
        List listListOf = CollectionsKt.listOf(px2Var.g.toString());
        px2 px2Var2 = this.d;
        ks3 ks3Var = px2Var2.c;
        String str = "";
        if (hs3.b().a == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listListOf, ks3Var);
            try {
                n03 n03Var = px2Var2.c.a;
                n03Var.a = px2Var2.f;
                n03Var.c = px2Var2.g;
                BaseRequest baseRequest = px2Var2.h;
                String adUnitId = baseRequest != null ? baseRequest.getAdUnitId() : null;
                if (adUnitId != null) {
                    str = adUnitId;
                }
                n03Var.b = str;
                BaseRequest baseRequest2 = px2Var2.h;
                n03Var.f = baseRequest2 != null ? baseRequest2.getSkipUninitializedAdapters() : false;
                this.a = tu2VarA;
                this.b = tu2VarA;
                this.c = 1;
                Object objA = px2Var2.a(this);
                if (objA != coroutine_suspended) {
                    rr3Var4 = tu2VarA;
                    obj = objA;
                    rr3Var3 = rr3Var4;
                    obj2 = (Flow) obj;
                    if (obj2 instanceof i01) {
                        xs3.a((i01) obj2, false);
                    }
                    CloseableKt.closeFinally(rr3Var4, null);
                    return obj2;
                }
            } catch (Throwable th9) {
                rr3Var3 = tu2VarA;
                th2 = th9;
                rr3Var4 = rr3Var3;
                rr3Var3.b(th2);
                if (!(th2 instanceof v24)) {
                    throw th2;
                }
                if (!(th2 instanceof TimeoutCancellationException)) {
                    rr3Var3.a(th2);
                }
                if (!(th2 instanceof TimeoutCancellationException)) {
                    throw new i21(th2);
                }
                if (!(th2 instanceof CancellationException)) {
                    throw new wz0(th2);
                }
                if (th2 instanceof w01) {
                    throw th2;
                }
                throw new b01(th2);
            }
        } else {
            rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
            try {
                n03 n03Var2 = px2Var2.c.a;
                n03Var2.a = px2Var2.f;
                n03Var2.c = px2Var2.g;
                BaseRequest baseRequest3 = px2Var2.h;
                String adUnitId2 = baseRequest3 != null ? baseRequest3.getAdUnitId() : null;
                if (adUnitId2 != null) {
                    str = adUnitId2;
                }
                n03Var2.b = str;
                BaseRequest baseRequest4 = px2Var2.h;
                n03Var2.f = baseRequest4 != null ? baseRequest4.getSkipUninitializedAdapters() : false;
                this.a = rr3VarA;
                this.b = rr3VarA;
                this.c = 2;
                Object objA2 = px2Var2.a(this);
                if (objA2 != coroutine_suspended) {
                    rr3Var2 = rr3VarA;
                    obj = objA2;
                    rr3Var = rr3Var2;
                    obj3 = (Flow) obj;
                    if (obj3 instanceof i01) {
                        xs3.a((i01) obj3, false);
                    }
                    CloseableKt.closeFinally(rr3Var2, null);
                    return obj3;
                }
            } catch (Throwable th10) {
                rr3Var = rr3VarA;
                th = th10;
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
        }
        return coroutine_suspended;
    }
}

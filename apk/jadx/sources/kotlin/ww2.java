package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class ww2 extends SuspendLambda implements Function2 {
    public rr3 a;
    public rr3 b;
    public int c;
    public final /* synthetic */ px2 d;
    public final /* synthetic */ ei1 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ww2(px2 px2Var, ei1 ei1Var, Continuation continuation) {
        super(2, continuation);
        this.d = px2Var;
        this.e = ei1Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ww2(this.d, this.e, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new ww2(this.d, this.e, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:106:0x0159 A[Catch: all -> 0x0188, TryCatch #1 {all -> 0x0188, blocks: (B:104:0x0152, B:106:0x0159, B:108:0x015d, B:110:0x0161, B:111:0x0164, B:113:0x0168, B:115:0x016c, B:117:0x0170, B:118:0x0171, B:119:0x0176, B:120:0x0177, B:121:0x017e, B:122:0x017f, B:123:0x0186, B:124:0x0187), top: B:131:0x0152 }] */
    /* JADX WARN: Code duplicated, block: B:113:0x0168 A[Catch: all -> 0x0188, TryCatch #1 {all -> 0x0188, blocks: (B:104:0x0152, B:106:0x0159, B:108:0x015d, B:110:0x0161, B:111:0x0164, B:113:0x0168, B:115:0x016c, B:117:0x0170, B:118:0x0171, B:119:0x0176, B:120:0x0177, B:121:0x017e, B:122:0x017f, B:123:0x0186, B:124:0x0187), top: B:131:0x0152 }] */
    /* JADX WARN: Code duplicated, block: B:115:0x016c A[Catch: all -> 0x0188, TryCatch #1 {all -> 0x0188, blocks: (B:104:0x0152, B:106:0x0159, B:108:0x015d, B:110:0x0161, B:111:0x0164, B:113:0x0168, B:115:0x016c, B:117:0x0170, B:118:0x0171, B:119:0x0176, B:120:0x0177, B:121:0x017e, B:122:0x017f, B:123:0x0186, B:124:0x0187), top: B:131:0x0152 }] */
    /* JADX WARN: Code duplicated, block: B:117:0x0170 A[Catch: all -> 0x0188, TryCatch #1 {all -> 0x0188, blocks: (B:104:0x0152, B:106:0x0159, B:108:0x015d, B:110:0x0161, B:111:0x0164, B:113:0x0168, B:115:0x016c, B:117:0x0170, B:118:0x0171, B:119:0x0176, B:120:0x0177, B:121:0x017e, B:122:0x017f, B:123:0x0186, B:124:0x0187), top: B:131:0x0152 }] */
    /* JADX WARN: Code duplicated, block: B:118:0x0171 A[Catch: all -> 0x0188, TryCatch #1 {all -> 0x0188, blocks: (B:104:0x0152, B:106:0x0159, B:108:0x015d, B:110:0x0161, B:111:0x0164, B:113:0x0168, B:115:0x016c, B:117:0x0170, B:118:0x0171, B:119:0x0176, B:120:0x0177, B:121:0x017e, B:122:0x017f, B:123:0x0186, B:124:0x0187), top: B:131:0x0152 }] */
    /* JADX WARN: Code duplicated, block: B:120:0x0177 A[Catch: all -> 0x0188, TryCatch #1 {all -> 0x0188, blocks: (B:104:0x0152, B:106:0x0159, B:108:0x015d, B:110:0x0161, B:111:0x0164, B:113:0x0168, B:115:0x016c, B:117:0x0170, B:118:0x0171, B:119:0x0176, B:120:0x0177, B:121:0x017e, B:122:0x017f, B:123:0x0186, B:124:0x0187), top: B:131:0x0152 }] */
    /* JADX WARN: Code duplicated, block: B:122:0x017f A[Catch: all -> 0x0188, TryCatch #1 {all -> 0x0188, blocks: (B:104:0x0152, B:106:0x0159, B:108:0x015d, B:110:0x0161, B:111:0x0164, B:113:0x0168, B:115:0x016c, B:117:0x0170, B:118:0x0171, B:119:0x0176, B:120:0x0177, B:121:0x017e, B:122:0x017f, B:123:0x0186, B:124:0x0187), top: B:131:0x0152 }] */
    /* JADX WARN: Code duplicated, block: B:124:0x0187 A[Catch: all -> 0x0188, TRY_LEAVE, TryCatch #1 {all -> 0x0188, blocks: (B:104:0x0152, B:106:0x0159, B:108:0x015d, B:110:0x0161, B:111:0x0164, B:113:0x0168, B:115:0x016c, B:117:0x0170, B:118:0x0171, B:119:0x0176, B:120:0x0177, B:121:0x017e, B:122:0x017f, B:123:0x0186, B:124:0x0187), top: B:131:0x0152 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00a4 A[Catch: all -> 0x002d, TRY_LEAVE, TryCatch #5 {all -> 0x002d, blocks: (B:14:0x0028, B:42:0x009e, B:44:0x00a4), top: B:138:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x00b9 A[Catch: all -> 0x00e8, TryCatch #0 {all -> 0x00e8, blocks: (B:48:0x00b2, B:50:0x00b9, B:52:0x00bd, B:54:0x00c1, B:55:0x00c4, B:57:0x00c8, B:59:0x00cc, B:61:0x00d0, B:62:0x00d1, B:63:0x00d6, B:64:0x00d7, B:65:0x00de, B:66:0x00df, B:67:0x00e6, B:68:0x00e7), top: B:130:0x00b2 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x00c8 A[Catch: all -> 0x00e8, TryCatch #0 {all -> 0x00e8, blocks: (B:48:0x00b2, B:50:0x00b9, B:52:0x00bd, B:54:0x00c1, B:55:0x00c4, B:57:0x00c8, B:59:0x00cc, B:61:0x00d0, B:62:0x00d1, B:63:0x00d6, B:64:0x00d7, B:65:0x00de, B:66:0x00df, B:67:0x00e6, B:68:0x00e7), top: B:130:0x00b2 }] */
    /* JADX WARN: Code duplicated, block: B:59:0x00cc A[Catch: all -> 0x00e8, TryCatch #0 {all -> 0x00e8, blocks: (B:48:0x00b2, B:50:0x00b9, B:52:0x00bd, B:54:0x00c1, B:55:0x00c4, B:57:0x00c8, B:59:0x00cc, B:61:0x00d0, B:62:0x00d1, B:63:0x00d6, B:64:0x00d7, B:65:0x00de, B:66:0x00df, B:67:0x00e6, B:68:0x00e7), top: B:130:0x00b2 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x00d0 A[Catch: all -> 0x00e8, TryCatch #0 {all -> 0x00e8, blocks: (B:48:0x00b2, B:50:0x00b9, B:52:0x00bd, B:54:0x00c1, B:55:0x00c4, B:57:0x00c8, B:59:0x00cc, B:61:0x00d0, B:62:0x00d1, B:63:0x00d6, B:64:0x00d7, B:65:0x00de, B:66:0x00df, B:67:0x00e6, B:68:0x00e7), top: B:130:0x00b2 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x00d1 A[Catch: all -> 0x00e8, TryCatch #0 {all -> 0x00e8, blocks: (B:48:0x00b2, B:50:0x00b9, B:52:0x00bd, B:54:0x00c1, B:55:0x00c4, B:57:0x00c8, B:59:0x00cc, B:61:0x00d0, B:62:0x00d1, B:63:0x00d6, B:64:0x00d7, B:65:0x00de, B:66:0x00df, B:67:0x00e6, B:68:0x00e7), top: B:130:0x00b2 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x00d7 A[Catch: all -> 0x00e8, TryCatch #0 {all -> 0x00e8, blocks: (B:48:0x00b2, B:50:0x00b9, B:52:0x00bd, B:54:0x00c1, B:55:0x00c4, B:57:0x00c8, B:59:0x00cc, B:61:0x00d0, B:62:0x00d1, B:63:0x00d6, B:64:0x00d7, B:65:0x00de, B:66:0x00df, B:67:0x00e6, B:68:0x00e7), top: B:130:0x00b2 }] */
    /* JADX WARN: Code duplicated, block: B:66:0x00df A[Catch: all -> 0x00e8, TryCatch #0 {all -> 0x00e8, blocks: (B:48:0x00b2, B:50:0x00b9, B:52:0x00bd, B:54:0x00c1, B:55:0x00c4, B:57:0x00c8, B:59:0x00cc, B:61:0x00d0, B:62:0x00d1, B:63:0x00d6, B:64:0x00d7, B:65:0x00de, B:66:0x00df, B:67:0x00e6, B:68:0x00e7), top: B:130:0x00b2 }] */
    /* JADX WARN: Code duplicated, block: B:68:0x00e7 A[Catch: all -> 0x00e8, TRY_LEAVE, TryCatch #0 {all -> 0x00e8, blocks: (B:48:0x00b2, B:50:0x00b9, B:52:0x00bd, B:54:0x00c1, B:55:0x00c4, B:57:0x00c8, B:59:0x00cc, B:61:0x00d0, B:62:0x00d1, B:63:0x00d6, B:64:0x00d7, B:65:0x00de, B:66:0x00df, B:67:0x00e6, B:68:0x00e7), top: B:130:0x00b2 }] */
    /* JADX WARN: Code duplicated, block: B:98:0x0143 A[Catch: all -> 0x0019, TRY_LEAVE, TryCatch #2 {all -> 0x0019, blocks: (B:7:0x0014, B:96:0x013d, B:98:0x0143), top: B:132:0x0014 }] */
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
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            px2 px2Var = this.d;
            g83 g83Var = px2Var.e;
            s11 s11Var = s11.CUI_NAME_ADREQUEST;
            List listListOf = CollectionsKt.listOf(px2Var.g.toString());
            px2 px2Var2 = this.d;
            ks3 ks3Var = px2Var2.c;
            ei1 ei1Var = this.e;
            String str = "";
            if (hs3.b().a == null) {
                tu2 tu2VarA = g83.a(g83Var, s11Var, listListOf, ks3Var);
                try {
                    n03 n03Var = px2Var2.c.a;
                    n03Var.a = px2Var2.f;
                    n03Var.c = px2Var2.g;
                    BaseRequest baseRequest = px2Var2.h;
                    String adUnitId = baseRequest != null ? baseRequest.getAdUnitId() : null;
                    if (adUnitId == null) {
                        adUnitId = "";
                    }
                    n03Var.b = adUnitId;
                    BaseRequest baseRequest2 = px2Var2.h;
                    n03Var.f = baseRequest2 != null ? baseRequest2.getSkipUninitializedAdapters() : false;
                    BaseRequest baseRequest3 = px2Var2.h;
                    String requestAgent = baseRequest3 != null ? baseRequest3.getRequestAgent() : null;
                    if (requestAgent != null) {
                        str = requestAgent;
                    }
                    n03Var.g = str;
                    this.a = tu2VarA;
                    this.b = tu2VarA;
                    this.c = 1;
                    if (px2.a(px2Var2, ei1Var, this) != coroutine_suspended) {
                        rr3Var4 = tu2VarA;
                        rr3Var3 = rr3Var4;
                        obj2 = p005kotlin.Unit.INSTANCE;
                        if (obj2 instanceof i01) {
                            xs3.a((i01) obj2, false);
                        }
                        CloseableKt.closeFinally(rr3Var4, null);
                    }
                } catch (Throwable th3) {
                    rr3Var3 = tu2VarA;
                    th2 = th3;
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
                    BaseRequest baseRequest4 = px2Var2.h;
                    String adUnitId2 = baseRequest4 != null ? baseRequest4.getAdUnitId() : null;
                    if (adUnitId2 == null) {
                        adUnitId2 = "";
                    }
                    n03Var2.b = adUnitId2;
                    BaseRequest baseRequest5 = px2Var2.h;
                    n03Var2.f = baseRequest5 != null ? baseRequest5.getSkipUninitializedAdapters() : false;
                    BaseRequest baseRequest6 = px2Var2.h;
                    String requestAgent2 = baseRequest6 != null ? baseRequest6.getRequestAgent() : null;
                    if (requestAgent2 != null) {
                        str = requestAgent2;
                    }
                    n03Var2.g = str;
                    this.a = rr3VarA;
                    this.b = rr3VarA;
                    this.c = 2;
                    if (px2.a(px2Var2, ei1Var, this) != coroutine_suspended) {
                        rr3Var2 = rr3VarA;
                        rr3Var = rr3Var2;
                        obj3 = p005kotlin.Unit.INSTANCE;
                        if (obj3 instanceof i01) {
                            xs3.a((i01) obj3, false);
                        }
                        CloseableKt.closeFinally(rr3Var2, null);
                    }
                } catch (Throwable th4) {
                    rr3Var = rr3VarA;
                    th = th4;
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
        if (i == 1) {
            rr3Var4 = this.b;
            rr3Var3 = this.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj);
                obj2 = p005kotlin.Unit.INSTANCE;
                if (obj2 instanceof i01) {
                    xs3.a((i01) obj2, false);
                }
                CloseableKt.closeFinally(rr3Var4, null);
            } catch (Throwable th5) {
                th2 = th5;
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
                } catch (Throwable th6) {
                    try {
                        throw th6;
                    } catch (Throwable th7) {
                        CloseableKt.closeFinally(rr3Var4, th6);
                        throw th7;
                    }
                }
            }
        } else {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            rr3Var2 = this.b;
            rr3Var = this.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj);
                obj3 = p005kotlin.Unit.INSTANCE;
                if (obj3 instanceof i01) {
                    xs3.a((i01) obj3, false);
                }
                CloseableKt.closeFinally(rr3Var2, null);
            } catch (Throwable th8) {
                th = th8;
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
                } catch (Throwable th9) {
                    try {
                        throw th9;
                    } catch (Throwable th10) {
                        CloseableKt.closeFinally(rr3Var2, th9);
                        throw th10;
                    }
                }
            }
        }
        return p005kotlin.Unit.INSTANCE;
    }
}

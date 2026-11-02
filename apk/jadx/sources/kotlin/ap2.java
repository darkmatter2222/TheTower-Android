package kotlin;

import android.net.Uri;
import android.util.Base64;
import com.ironsource.C3510b4;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.Charsets;
import p005kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class ap2 implements e1 {
    public final i2 a;
    public final tx b;
    public final zy c;
    public final CoroutineScope d;
    public final g83 e;
    public final d63 f;
    public final ex0 g;
    public final du1 h;
    public final ec3 i;
    public final Object j;
    public final dp2 k;
    public boolean l;
    public boolean m;
    public Job n;

    public ap2(i2 adConfig, tx clock, zy commonConfiguration, CoroutineScope backgroundScope, g83 rootTraceCreator, d63 retryingUrlPinger, ex0 flags, du1 macroExpander, ec3 serverTransaction) {
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(retryingUrlPinger, "retryingUrlPinger");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(macroExpander, "macroExpander");
        Intrinsics.checkNotNullParameter(serverTransaction, "serverTransaction");
        this.a = adConfig;
        this.b = clock;
        this.c = commonConfiguration;
        this.d = backgroundScope;
        this.e = rootTraceCreator;
        this.f = retryingUrlPinger;
        this.g = flags;
        this.h = macroExpander;
        this.i = serverTransaction;
        this.j = new Object();
        dp2 dp2VarV = ep2.v();
        Intrinsics.checkNotNullExpressionValue(dp2VarV, "newBuilder(...)");
        this.k = dp2VarV;
    }

    public static final Object a(ap2 ap2Var, Continuation continuation) {
        synchronized (ap2Var.j) {
            if (ap2Var.m) {
                return p005kotlin.Unit.INSTANCE;
            }
            ap2Var.m = true;
            Object obj = p005kotlin.Unit.INSTANCE;
            ep2 ep2Var = (ep2) ap2Var.f().b();
            Intrinsics.checkNotNull(ep2Var);
            ex0 ex0Var = ap2Var.g;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:enable_pclm_rcs_logger:enabled", C3510b4.i.W);
            if (((Boolean) ex0Var.a("gads:enable_pclm_rcs_logger:enabled", Boolean.TRUE, yr.b)).booleanValue()) {
                g83 g83Var = ap2Var.e;
                s11 s11Var = s11.CUI_NAME_POST_CLICK_LIFECYCLE_MONITORING;
                List listEmptyList = CollectionsKt.emptyList();
                ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
                if (hs3.b().a == null) {
                    tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                    try {
                        hs3.a().e().H = ep2Var;
                        hs3.a().a.b.b = ap2Var.c.h;
                        if (obj instanceof i01) {
                            xs3.a((i01) obj, false);
                        }
                        CloseableKt.closeFinally(tu2VarA, null);
                    } catch (Throwable th) {
                        try {
                            tu2VarA.b(th);
                            if (th instanceof v24) {
                                throw th;
                            }
                            if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                tu2VarA.a(th);
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
                                CloseableKt.closeFinally(tu2VarA, th2);
                                throw th3;
                            }
                        }
                    }
                } else {
                    rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                    try {
                        hs3.a().e().H = ep2Var;
                        hs3.a().a.b.b = ap2Var.c.h;
                        if (obj instanceof i01) {
                            xs3.a((i01) obj, false);
                        }
                        CloseableKt.closeFinally(rr3VarA, null);
                    } catch (Throwable th4) {
                        try {
                            rr3VarA.b(th4);
                            if (th4 instanceof v24) {
                                throw th4;
                            }
                            if (!(th4 instanceof TimeoutCancellationException) && !(th4 instanceof CancellationException)) {
                                rr3VarA.a(th4);
                            }
                            if (th4 instanceof TimeoutCancellationException) {
                                throw new i21(th4);
                            }
                            if (th4 instanceof CancellationException) {
                                throw new wz0(th4);
                            }
                            if (th4 instanceof w01) {
                                throw th4;
                            }
                            throw new b01(th4);
                        } catch (Throwable th5) {
                            try {
                                throw th5;
                            } catch (Throwable th6) {
                                CloseableKt.closeFinally(rr3VarA, th5);
                                throw th6;
                            }
                        }
                    }
                }
            }
            Object objA = ap2Var.a(ep2Var, continuation);
            return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : obj;
        }
    }

    /* JADX WARN: Code duplicated, block: B:110:0x0228 A[Catch: all -> 0x0257, TryCatch #5 {all -> 0x0257, blocks: (B:108:0x0221, B:110:0x0228, B:112:0x022c, B:114:0x0230, B:115:0x0233, B:117:0x0237, B:119:0x023b, B:121:0x023f, B:122:0x0240, B:123:0x0245, B:124:0x0246, B:125:0x024d, B:126:0x024e, B:127:0x0255, B:128:0x0256), top: B:147:0x0221 }] */
    /* JADX WARN: Code duplicated, block: B:112:0x022c A[Catch: all -> 0x0257, TryCatch #5 {all -> 0x0257, blocks: (B:108:0x0221, B:110:0x0228, B:112:0x022c, B:114:0x0230, B:115:0x0233, B:117:0x0237, B:119:0x023b, B:121:0x023f, B:122:0x0240, B:123:0x0245, B:124:0x0246, B:125:0x024d, B:126:0x024e, B:127:0x0255, B:128:0x0256), top: B:147:0x0221 }] */
    /* JADX WARN: Code duplicated, block: B:117:0x0237 A[Catch: all -> 0x0257, TryCatch #5 {all -> 0x0257, blocks: (B:108:0x0221, B:110:0x0228, B:112:0x022c, B:114:0x0230, B:115:0x0233, B:117:0x0237, B:119:0x023b, B:121:0x023f, B:122:0x0240, B:123:0x0245, B:124:0x0246, B:125:0x024d, B:126:0x024e, B:127:0x0255, B:128:0x0256), top: B:147:0x0221 }] */
    /* JADX WARN: Code duplicated, block: B:119:0x023b A[Catch: all -> 0x0257, TryCatch #5 {all -> 0x0257, blocks: (B:108:0x0221, B:110:0x0228, B:112:0x022c, B:114:0x0230, B:115:0x0233, B:117:0x0237, B:119:0x023b, B:121:0x023f, B:122:0x0240, B:123:0x0245, B:124:0x0246, B:125:0x024d, B:126:0x024e, B:127:0x0255, B:128:0x0256), top: B:147:0x0221 }] */
    /* JADX WARN: Code duplicated, block: B:121:0x023f A[Catch: all -> 0x0257, TryCatch #5 {all -> 0x0257, blocks: (B:108:0x0221, B:110:0x0228, B:112:0x022c, B:114:0x0230, B:115:0x0233, B:117:0x0237, B:119:0x023b, B:121:0x023f, B:122:0x0240, B:123:0x0245, B:124:0x0246, B:125:0x024d, B:126:0x024e, B:127:0x0255, B:128:0x0256), top: B:147:0x0221 }] */
    /* JADX WARN: Code duplicated, block: B:122:0x0240 A[Catch: all -> 0x0257, TryCatch #5 {all -> 0x0257, blocks: (B:108:0x0221, B:110:0x0228, B:112:0x022c, B:114:0x0230, B:115:0x0233, B:117:0x0237, B:119:0x023b, B:121:0x023f, B:122:0x0240, B:123:0x0245, B:124:0x0246, B:125:0x024d, B:126:0x024e, B:127:0x0255, B:128:0x0256), top: B:147:0x0221 }] */
    /* JADX WARN: Code duplicated, block: B:124:0x0246 A[Catch: all -> 0x0257, TryCatch #5 {all -> 0x0257, blocks: (B:108:0x0221, B:110:0x0228, B:112:0x022c, B:114:0x0230, B:115:0x0233, B:117:0x0237, B:119:0x023b, B:121:0x023f, B:122:0x0240, B:123:0x0245, B:124:0x0246, B:125:0x024d, B:126:0x024e, B:127:0x0255, B:128:0x0256), top: B:147:0x0221 }] */
    /* JADX WARN: Code duplicated, block: B:126:0x024e A[Catch: all -> 0x0257, TryCatch #5 {all -> 0x0257, blocks: (B:108:0x0221, B:110:0x0228, B:112:0x022c, B:114:0x0230, B:115:0x0233, B:117:0x0237, B:119:0x023b, B:121:0x023f, B:122:0x0240, B:123:0x0245, B:124:0x0246, B:125:0x024d, B:126:0x024e, B:127:0x0255, B:128:0x0256), top: B:147:0x0221 }] */
    /* JADX WARN: Code duplicated, block: B:128:0x0256 A[Catch: all -> 0x0257, TRY_LEAVE, TryCatch #5 {all -> 0x0257, blocks: (B:108:0x0221, B:110:0x0228, B:112:0x022c, B:114:0x0230, B:115:0x0233, B:117:0x0237, B:119:0x023b, B:121:0x023f, B:122:0x0240, B:123:0x0245, B:124:0x0246, B:125:0x024d, B:126:0x024e, B:127:0x0255, B:128:0x0256), top: B:147:0x0221 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x0132 A[Catch: all -> 0x013c, TRY_LEAVE, TryCatch #9 {all -> 0x013c, blocks: (B:50:0x0125, B:52:0x0132), top: B:154:0x0125 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x014f A[Catch: all -> 0x017e, TryCatch #11 {all -> 0x017e, blocks: (B:61:0x0148, B:63:0x014f, B:65:0x0153, B:67:0x0157, B:68:0x015a, B:70:0x015e, B:72:0x0162, B:74:0x0166, B:75:0x0167, B:76:0x016c, B:77:0x016d, B:78:0x0174, B:79:0x0175, B:80:0x017c, B:81:0x017d), top: B:158:0x0148 }] */
    /* JADX WARN: Code duplicated, block: B:65:0x0153 A[Catch: all -> 0x017e, TryCatch #11 {all -> 0x017e, blocks: (B:61:0x0148, B:63:0x014f, B:65:0x0153, B:67:0x0157, B:68:0x015a, B:70:0x015e, B:72:0x0162, B:74:0x0166, B:75:0x0167, B:76:0x016c, B:77:0x016d, B:78:0x0174, B:79:0x0175, B:80:0x017c, B:81:0x017d), top: B:158:0x0148 }] */
    /* JADX WARN: Code duplicated, block: B:70:0x015e A[Catch: all -> 0x017e, TryCatch #11 {all -> 0x017e, blocks: (B:61:0x0148, B:63:0x014f, B:65:0x0153, B:67:0x0157, B:68:0x015a, B:70:0x015e, B:72:0x0162, B:74:0x0166, B:75:0x0167, B:76:0x016c, B:77:0x016d, B:78:0x0174, B:79:0x0175, B:80:0x017c, B:81:0x017d), top: B:158:0x0148 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x0162 A[Catch: all -> 0x017e, TryCatch #11 {all -> 0x017e, blocks: (B:61:0x0148, B:63:0x014f, B:65:0x0153, B:67:0x0157, B:68:0x015a, B:70:0x015e, B:72:0x0162, B:74:0x0166, B:75:0x0167, B:76:0x016c, B:77:0x016d, B:78:0x0174, B:79:0x0175, B:80:0x017c, B:81:0x017d), top: B:158:0x0148 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x0166 A[Catch: all -> 0x017e, TryCatch #11 {all -> 0x017e, blocks: (B:61:0x0148, B:63:0x014f, B:65:0x0153, B:67:0x0157, B:68:0x015a, B:70:0x015e, B:72:0x0162, B:74:0x0166, B:75:0x0167, B:76:0x016c, B:77:0x016d, B:78:0x0174, B:79:0x0175, B:80:0x017c, B:81:0x017d), top: B:158:0x0148 }] */
    /* JADX WARN: Code duplicated, block: B:75:0x0167 A[Catch: all -> 0x017e, TryCatch #11 {all -> 0x017e, blocks: (B:61:0x0148, B:63:0x014f, B:65:0x0153, B:67:0x0157, B:68:0x015a, B:70:0x015e, B:72:0x0162, B:74:0x0166, B:75:0x0167, B:76:0x016c, B:77:0x016d, B:78:0x0174, B:79:0x0175, B:80:0x017c, B:81:0x017d), top: B:158:0x0148 }] */
    /* JADX WARN: Code duplicated, block: B:77:0x016d A[Catch: all -> 0x017e, TryCatch #11 {all -> 0x017e, blocks: (B:61:0x0148, B:63:0x014f, B:65:0x0153, B:67:0x0157, B:68:0x015a, B:70:0x015e, B:72:0x0162, B:74:0x0166, B:75:0x0167, B:76:0x016c, B:77:0x016d, B:78:0x0174, B:79:0x0175, B:80:0x017c, B:81:0x017d), top: B:158:0x0148 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x0175 A[Catch: all -> 0x017e, TryCatch #11 {all -> 0x017e, blocks: (B:61:0x0148, B:63:0x014f, B:65:0x0153, B:67:0x0157, B:68:0x015a, B:70:0x015e, B:72:0x0162, B:74:0x0166, B:75:0x0167, B:76:0x016c, B:77:0x016d, B:78:0x0174, B:79:0x0175, B:80:0x017c, B:81:0x017d), top: B:158:0x0148 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:81:0x017d A[Catch: all -> 0x017e, TRY_LEAVE, TryCatch #11 {all -> 0x017e, blocks: (B:61:0x0148, B:63:0x014f, B:65:0x0153, B:67:0x0157, B:68:0x015a, B:70:0x015e, B:72:0x0162, B:74:0x0166, B:75:0x0167, B:76:0x016c, B:77:0x016d, B:78:0x0174, B:79:0x0175, B:80:0x017c, B:81:0x017d), top: B:158:0x0148 }] */
    /* JADX WARN: Code duplicated, block: B:97:0x0209 A[Catch: all -> 0x0214, TRY_LEAVE, TryCatch #3 {all -> 0x0214, blocks: (B:95:0x01fc, B:97:0x0209), top: B:143:0x01fc }] */
    public final Object a(ep2 ep2Var, Continuation continuation) {
        yo2 yo2Var;
        String strC;
        String strD;
        String strB;
        Object obj;
        rr3 rr3Var;
        rr3 rr3Var2;
        rr3 rr3Var3;
        rr3 rr3Var4;
        ap2 ap2Var;
        tu2 tu2Var;
        rr3 rr3Var5;
        rr3 rr3Var6;
        Throwable th;
        rr3 rr3Var7;
        rr3 rr3Var8;
        ap2 ap2Var2;
        Object obj2;
        Object obj3;
        if (continuation instanceof yo2) {
            yo2Var = (yo2) continuation;
            int i = yo2Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                yo2Var.f = i - Integer.MIN_VALUE;
            } else {
                yo2Var = new yo2(this, continuation);
            }
        } else {
            yo2Var = new yo2(this, continuation);
        }
        Object obj4 = yo2Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = yo2Var.f;
        if (i2 != 0) {
            if (i2 == 1) {
                rr3Var5 = yo2Var.c;
                rr3Var6 = yo2Var.b;
                ap2 ap2Var3 = yo2Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj4);
                    rr3Var8 = rr3Var6;
                    rr3Var7 = rr3Var5;
                    ap2Var2 = ap2Var3;
                    th = null;
                    try {
                        d63.a(ap2Var2.f, (List) obj4);
                        obj2 = p005kotlin.Unit.INSTANCE;
                        if (obj2 instanceof i01) {
                            xs3.a((i01) obj2, false);
                        }
                        CloseableKt.closeFinally(rr3Var7, th);
                        return p005kotlin.Unit.INSTANCE;
                    } catch (Throwable th2) {
                        th = th2;
                        rr3Var5 = rr3Var7;
                        rr3Var6 = rr3Var8;
                        try {
                            rr3Var6.b(th);
                            if (th instanceof v24) {
                                throw th;
                            }
                            if (!(th instanceof TimeoutCancellationException)) {
                                rr3Var6.a(th);
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
                        } catch (Throwable th3) {
                            try {
                                throw th3;
                            } catch (Throwable th4) {
                                CloseableKt.closeFinally(rr3Var5, th3);
                                throw th4;
                            }
                        }
                    }
                } catch (Throwable th5) {
                    th = th5;
                    rr3Var6.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        rr3Var6.a(th);
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
                }
            }
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            rr3Var2 = yo2Var.c;
            rr3Var3 = yo2Var.b;
            ap2 ap2Var4 = yo2Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj4);
                rr3Var = rr3Var3;
                rr3Var4 = rr3Var2;
                ap2Var = ap2Var4;
                try {
                    d63.a(ap2Var.f, (List) obj4);
                    obj3 = p005kotlin.Unit.INSTANCE;
                    if (obj3 instanceof i01) {
                        xs3.a((i01) obj3, false);
                    }
                    CloseableKt.closeFinally(rr3Var4, 0);
                    return p005kotlin.Unit.INSTANCE;
                } catch (Throwable th6) {
                    th = th6;
                    rr3Var2 = rr3Var4;
                    rr3Var3 = rr3Var;
                    try {
                        rr3Var3.b(th);
                        if (th instanceof v24) {
                            throw th;
                        }
                        if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                            rr3Var3.a(th);
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
                    } catch (Throwable th7) {
                        try {
                            throw th7;
                        } catch (Throwable th8) {
                            CloseableKt.closeFinally(rr3Var2, th7);
                            throw th8;
                        }
                    }
                }
            } catch (Throwable th9) {
                th = th9;
                rr3Var3.b(th);
                if (th instanceof v24) {
                    throw th;
                }
                if (!(th instanceof TimeoutCancellationException)) {
                    rr3Var3.a(th);
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
            }
        }
        p005kotlin.ResultKt.throwOnFailure(obj4);
        if (!this.g.L() || (strC = this.a.c()) == null || strC.length() == 0 || (strD = this.a.d()) == null || strD.length() == 0 || (strB = this.a.b()) == null || strB.length() == 0) {
            return p005kotlin.Unit.INSTANCE;
        }
        g83 g83Var = this.e;
        s11 s11Var = s11.CUI_NAME_POST_CLICK_LIFECYCLE_MONITORING_INTERACTION;
        List listEmptyList = CollectionsKt.emptyList();
        ks3 ks3VarA = js3.a();
        if (hs3.c() == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3VarA);
            try {
                byte[] bArrEncode = Base64.encode(ep2Var.c(), 10);
                Intrinsics.checkNotNullExpressionValue(bArrEncode, "encode(...)");
                String str = new String(bArrEncode, Charsets.UTF_8);
                Uri uri = Uri.parse(this.a.b() + this.a.d());
                du1 du1Var = this.h;
                List listListOf = CollectionsKt.listOf(uri);
                ec3 ec3Var = this.i;
                i2 i2Var = this.a;
                String strC2 = i2Var.c();
                yo2Var.a = this;
                yo2Var.b = tu2VarA;
                yo2Var.c = tu2VarA;
                yo2Var.f = 1;
                tu2Var = tu2VarA;
                obj = coroutine_suspended;
                yo2 yo2Var2 = yo2Var;
                th = null;
                try {
                    Object objA = du1Var.a(listListOf, ec3Var, i2Var, (4080 & 8) != 0 ? null : null, (4080 & 16) != 0 ? null : null, (4080 & 32) != 0 ? null : null, (4080 & 64) != 0 ? "" : null, (4080 & 128) != 0 ? null : null, (4080 & 256) != 0 ? null : null, (4080 & 512) != 0 ? null : null, (4080 & 1024) != 0 ? null : str, (4080 & 2048) != 0 ? null : strC2, yo2Var2);
                    if (objA != obj) {
                        rr3Var7 = tu2Var;
                        rr3Var8 = rr3Var7;
                        obj4 = objA;
                        ap2Var2 = this;
                        d63.a(ap2Var2.f, (List) obj4);
                        obj2 = p005kotlin.Unit.INSTANCE;
                        if (obj2 instanceof i01) {
                            xs3.a((i01) obj2, false);
                        }
                        CloseableKt.closeFinally(rr3Var7, th);
                        return p005kotlin.Unit.INSTANCE;
                    }
                } catch (Throwable th10) {
                    th = th10;
                    rr3Var5 = tu2Var;
                    rr3Var6 = rr3Var5;
                    rr3Var6.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        rr3Var6.a(th);
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
                }
            } catch (Throwable th11) {
                th = th11;
                tu2Var = tu2VarA;
            }
        } else {
            obj = coroutine_suspended;
            yo2 yo2Var3 = yo2Var;
            rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
            try {
                byte[] bArrEncode2 = Base64.encode(ep2Var.c(), 10);
                Intrinsics.checkNotNullExpressionValue(bArrEncode2, "encode(...)");
                String str2 = new String(bArrEncode2, Charsets.UTF_8);
                Uri uri2 = Uri.parse(this.a.b() + this.a.d());
                du1 du1Var2 = this.h;
                List listListOf2 = CollectionsKt.listOf(uri2);
                ec3 ec3Var2 = this.i;
                i2 i2Var2 = this.a;
                String strC3 = i2Var2.c();
                yo2Var3.a = this;
                yo2Var3.b = rr3VarA;
                yo2Var3.c = rr3VarA;
                yo2Var3.f = 2;
                rr3Var = rr3VarA;
                try {
                    Object objA2 = du1Var2.a(listListOf2, ec3Var2, i2Var2, (4080 & 8) != 0 ? null : null, (4080 & 16) != 0 ? null : null, (4080 & 32) != 0 ? null : null, (4080 & 64) != 0 ? "" : null, (4080 & 128) != 0 ? null : null, (4080 & 256) != 0 ? null : null, (4080 & 512) != 0 ? null : null, (4080 & 1024) != 0 ? null : str2, (4080 & 2048) != 0 ? null : strC3, yo2Var3);
                    if (objA2 != obj) {
                        obj4 = objA2;
                        rr3Var4 = rr3Var;
                        ap2Var = this;
                        d63.a(ap2Var.f, (List) obj4);
                        obj3 = p005kotlin.Unit.INSTANCE;
                        if (obj3 instanceof i01) {
                            xs3.a((i01) obj3, false);
                        }
                        CloseableKt.closeFinally(rr3Var4, 0);
                        return p005kotlin.Unit.INSTANCE;
                    }
                } catch (Throwable th12) {
                    th = th12;
                    rr3Var2 = rr3Var;
                    rr3Var3 = rr3Var2;
                    rr3Var3.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        rr3Var3.a(th);
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
                }
            } catch (Throwable th13) {
                th = th13;
                rr3Var = rr3VarA;
            }
        }
        return obj;
    }

    @Override // kotlin.e1
    public final void a() {
        a(ki.ON_START);
    }

    public final void a(ki value) {
        synchronized (this.j) {
            if (!this.m && this.l) {
                dp2 dp2Var = this.k;
                ji builder = li.v();
                Intrinsics.checkNotNullExpressionValue(builder, "newBuilder(...)");
                Intrinsics.checkNotNullParameter(builder, "builder");
                Intrinsics.checkNotNullParameter(value, "value");
                builder.a(value);
                this.b.getClass();
                builder.a(System.currentTimeMillis());
                vz0 vz0VarB = builder.b();
                Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
                dp2Var.a((li) vz0VarB);
                if (value == ki.ON_DESTROY) {
                    Job job = this.n;
                    if (job != null) {
                        Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
                    }
                    CoroutineScope coroutineScope = this.d;
                    xo2 block = new xo2(this, null);
                    EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                    Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                    Intrinsics.checkNotNullParameter(context, "context");
                    Intrinsics.checkNotNullParameter(block, "block");
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
                }
                p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
            }
        }
    }

    @Override // kotlin.e1
    public final void b() {
        a(ki.ON_USER_LEAVE_HINT);
    }

    @Override // kotlin.e1
    public final void c() {
        a(ki.ON_RESTART);
    }

    @Override // kotlin.e1
    public final void d() {
        a(ki.ON_CREATE);
    }

    public final dp2 f() {
        dp2 dp2Var;
        synchronized (this.j) {
            dp2Var = this.k;
        }
        return dp2Var;
    }

    public final void g() {
        synchronized (this.j) {
            if (Duration.m4366compareToLRDsOJo(this.a.C0, Duration.INSTANCE.m4458getZEROUwyO8pc()) > 0 && !this.l && !this.m) {
                dp2 dp2Var = this.k;
                this.b.getClass();
                dp2Var.a(System.currentTimeMillis());
                this.l = true;
                CoroutineScope coroutineScope = this.d;
                zo2 block = new zo2(this, null);
                EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(block, "block");
                this.n = BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
                p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
            }
        }
    }

    @Override // kotlin.e1
    public final void onDestroy() {
        a(ki.ON_DESTROY);
    }

    @Override // kotlin.e1
    public final void onPause() {
        a(ki.ON_PAUSE);
    }

    @Override // kotlin.e1
    public final void onResume() {
        a(ki.ON_RESUME);
    }

    @Override // kotlin.e1
    public final void onStop() {
        a(ki.ON_STOP);
    }
}

package kotlin;

import android.content.Context;
import androidx.webkit.Profile;
import androidx.webkit.WebViewFeature;
import com.ironsource.C3510b4;
import java.io.Closeable;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class r14 extends fp2 implements p04, q04 {
    public final ex0 c;
    public final CoroutineContext d;
    public final CoroutineScope e;
    public final g83 f;
    public final sz g;
    public final cw2 h;
    public final rz3 i;
    public final t04 j;
    public final tx k;
    public final cw2 l;
    public Profile m;
    public final Mutex n;
    public final Mutex o;
    public Job p;
    public long q;
    public Job r;
    public final p005kotlin.Lazy s;

    public r14(Context context, ex0 flags, CoroutineContext uiContext, CoroutineScope backgroundScope, g83 rootTraceCreator, zw3 userAgentProvider, sz concurrencyObjects, dw2 webViewInitializationTaskProvider, rz3 webViewFeatureWrapper, t04 webViewProfileStoreWrapper, tx clock, dw2 sdkCoreJavascriptEngine) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(userAgentProvider, "userAgentProvider");
        Intrinsics.checkNotNullParameter(concurrencyObjects, "concurrencyObjects");
        Intrinsics.checkNotNullParameter(webViewInitializationTaskProvider, "webViewInitializationTaskProvider");
        Intrinsics.checkNotNullParameter(webViewFeatureWrapper, "webViewFeatureWrapper");
        Intrinsics.checkNotNullParameter(webViewProfileStoreWrapper, "webViewProfileStoreWrapper");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(sdkCoreJavascriptEngine, "sdkCoreJavascriptEngine");
        this.c = flags;
        this.d = uiContext;
        this.e = backgroundScope;
        this.f = rootTraceCreator;
        this.g = concurrencyObjects;
        this.h = webViewInitializationTaskProvider;
        this.i = webViewFeatureWrapper;
        this.j = webViewProfileStoreWrapper;
        this.k = clock;
        this.l = sdkCoreJavascriptEngine;
        this.n = MutexKt.Mutex$default(false, 1, null);
        this.o = MutexKt.Mutex$default(false, 1, null);
        this.s = p005kotlin.LazyKt.lazy(new q14(this));
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:46:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:48:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:53:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00d1, code lost:
    
        if (r11.a(r12, r0) == r1) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00e9, code lost:
    
        if (r11.a(r2, r0) == r1) goto L50;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object a(kotlin.r14 r11, java.util.List r12, p005kotlin.coroutines.Continuation r13) {
        /*
            Method dump skipped, instruction units count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.r14.a(ads_mobile_sdk.r14, java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0194 A[Catch: all -> 0x01c3, TryCatch #3 {all -> 0x01c3, blocks: (B:98:0x018d, B:100:0x0194, B:102:0x0198, B:104:0x019c, B:105:0x019f, B:107:0x01a3, B:109:0x01a7, B:111:0x01ab, B:112:0x01ac, B:113:0x01b1, B:114:0x01b2, B:115:0x01b9, B:116:0x01ba, B:117:0x01c1, B:118:0x01c2), top: B:132:0x018d }] */
    /* JADX WARN: Code duplicated, block: B:107:0x01a3 A[Catch: all -> 0x01c3, TryCatch #3 {all -> 0x01c3, blocks: (B:98:0x018d, B:100:0x0194, B:102:0x0198, B:104:0x019c, B:105:0x019f, B:107:0x01a3, B:109:0x01a7, B:111:0x01ab, B:112:0x01ac, B:113:0x01b1, B:114:0x01b2, B:115:0x01b9, B:116:0x01ba, B:117:0x01c1, B:118:0x01c2), top: B:132:0x018d }] */
    /* JADX WARN: Code duplicated, block: B:109:0x01a7 A[Catch: all -> 0x01c3, TryCatch #3 {all -> 0x01c3, blocks: (B:98:0x018d, B:100:0x0194, B:102:0x0198, B:104:0x019c, B:105:0x019f, B:107:0x01a3, B:109:0x01a7, B:111:0x01ab, B:112:0x01ac, B:113:0x01b1, B:114:0x01b2, B:115:0x01b9, B:116:0x01ba, B:117:0x01c1, B:118:0x01c2), top: B:132:0x018d }] */
    /* JADX WARN: Code duplicated, block: B:111:0x01ab A[Catch: all -> 0x01c3, TryCatch #3 {all -> 0x01c3, blocks: (B:98:0x018d, B:100:0x0194, B:102:0x0198, B:104:0x019c, B:105:0x019f, B:107:0x01a3, B:109:0x01a7, B:111:0x01ab, B:112:0x01ac, B:113:0x01b1, B:114:0x01b2, B:115:0x01b9, B:116:0x01ba, B:117:0x01c1, B:118:0x01c2), top: B:132:0x018d }] */
    /* JADX WARN: Code duplicated, block: B:112:0x01ac A[Catch: all -> 0x01c3, TryCatch #3 {all -> 0x01c3, blocks: (B:98:0x018d, B:100:0x0194, B:102:0x0198, B:104:0x019c, B:105:0x019f, B:107:0x01a3, B:109:0x01a7, B:111:0x01ab, B:112:0x01ac, B:113:0x01b1, B:114:0x01b2, B:115:0x01b9, B:116:0x01ba, B:117:0x01c1, B:118:0x01c2), top: B:132:0x018d }] */
    /* JADX WARN: Code duplicated, block: B:114:0x01b2 A[Catch: all -> 0x01c3, TryCatch #3 {all -> 0x01c3, blocks: (B:98:0x018d, B:100:0x0194, B:102:0x0198, B:104:0x019c, B:105:0x019f, B:107:0x01a3, B:109:0x01a7, B:111:0x01ab, B:112:0x01ac, B:113:0x01b1, B:114:0x01b2, B:115:0x01b9, B:116:0x01ba, B:117:0x01c1, B:118:0x01c2), top: B:132:0x018d }] */
    /* JADX WARN: Code duplicated, block: B:116:0x01ba A[Catch: all -> 0x01c3, TryCatch #3 {all -> 0x01c3, blocks: (B:98:0x018d, B:100:0x0194, B:102:0x0198, B:104:0x019c, B:105:0x019f, B:107:0x01a3, B:109:0x01a7, B:111:0x01ab, B:112:0x01ac, B:113:0x01b1, B:114:0x01b2, B:115:0x01b9, B:116:0x01ba, B:117:0x01c1, B:118:0x01c2), top: B:132:0x018d }] */
    /* JADX WARN: Code duplicated, block: B:118:0x01c2 A[Catch: all -> 0x01c3, TRY_LEAVE, TryCatch #3 {all -> 0x01c3, blocks: (B:98:0x018d, B:100:0x0194, B:102:0x0198, B:104:0x019c, B:105:0x019f, B:107:0x01a3, B:109:0x01a7, B:111:0x01ab, B:112:0x01ac, B:113:0x01b1, B:114:0x01b2, B:115:0x01b9, B:116:0x01ba, B:117:0x01c1, B:118:0x01c2), top: B:132:0x018d }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00fc A[Catch: all -> 0x0057, TRY_LEAVE, TryCatch #5 {all -> 0x0057, blocks: (B:21:0x0052, B:47:0x00f6, B:49:0x00fc), top: B:135:0x0052 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x0111 A[Catch: all -> 0x0140, TryCatch #0 {all -> 0x0140, blocks: (B:54:0x010a, B:56:0x0111, B:58:0x0115, B:60:0x0119, B:61:0x011c, B:63:0x0120, B:65:0x0124, B:67:0x0128, B:68:0x0129, B:69:0x012e, B:70:0x012f, B:71:0x0136, B:72:0x0137, B:73:0x013e, B:74:0x013f), top: B:127:0x010a }] */
    /* JADX WARN: Code duplicated, block: B:63:0x0120 A[Catch: all -> 0x0140, TryCatch #0 {all -> 0x0140, blocks: (B:54:0x010a, B:56:0x0111, B:58:0x0115, B:60:0x0119, B:61:0x011c, B:63:0x0120, B:65:0x0124, B:67:0x0128, B:68:0x0129, B:69:0x012e, B:70:0x012f, B:71:0x0136, B:72:0x0137, B:73:0x013e, B:74:0x013f), top: B:127:0x010a }] */
    /* JADX WARN: Code duplicated, block: B:65:0x0124 A[Catch: all -> 0x0140, TryCatch #0 {all -> 0x0140, blocks: (B:54:0x010a, B:56:0x0111, B:58:0x0115, B:60:0x0119, B:61:0x011c, B:63:0x0120, B:65:0x0124, B:67:0x0128, B:68:0x0129, B:69:0x012e, B:70:0x012f, B:71:0x0136, B:72:0x0137, B:73:0x013e, B:74:0x013f), top: B:127:0x010a }] */
    /* JADX WARN: Code duplicated, block: B:67:0x0128 A[Catch: all -> 0x0140, TryCatch #0 {all -> 0x0140, blocks: (B:54:0x010a, B:56:0x0111, B:58:0x0115, B:60:0x0119, B:61:0x011c, B:63:0x0120, B:65:0x0124, B:67:0x0128, B:68:0x0129, B:69:0x012e, B:70:0x012f, B:71:0x0136, B:72:0x0137, B:73:0x013e, B:74:0x013f), top: B:127:0x010a }] */
    /* JADX WARN: Code duplicated, block: B:68:0x0129 A[Catch: all -> 0x0140, TryCatch #0 {all -> 0x0140, blocks: (B:54:0x010a, B:56:0x0111, B:58:0x0115, B:60:0x0119, B:61:0x011c, B:63:0x0120, B:65:0x0124, B:67:0x0128, B:68:0x0129, B:69:0x012e, B:70:0x012f, B:71:0x0136, B:72:0x0137, B:73:0x013e, B:74:0x013f), top: B:127:0x010a }] */
    /* JADX WARN: Code duplicated, block: B:70:0x012f A[Catch: all -> 0x0140, TryCatch #0 {all -> 0x0140, blocks: (B:54:0x010a, B:56:0x0111, B:58:0x0115, B:60:0x0119, B:61:0x011c, B:63:0x0120, B:65:0x0124, B:67:0x0128, B:68:0x0129, B:69:0x012e, B:70:0x012f, B:71:0x0136, B:72:0x0137, B:73:0x013e, B:74:0x013f), top: B:127:0x010a }] */
    /* JADX WARN: Code duplicated, block: B:72:0x0137 A[Catch: all -> 0x0140, TryCatch #0 {all -> 0x0140, blocks: (B:54:0x010a, B:56:0x0111, B:58:0x0115, B:60:0x0119, B:61:0x011c, B:63:0x0120, B:65:0x0124, B:67:0x0128, B:68:0x0129, B:69:0x012e, B:70:0x012f, B:71:0x0136, B:72:0x0137, B:73:0x013e, B:74:0x013f), top: B:127:0x010a }] */
    /* JADX WARN: Code duplicated, block: B:74:0x013f A[Catch: all -> 0x0140, TRY_LEAVE, TryCatch #0 {all -> 0x0140, blocks: (B:54:0x010a, B:56:0x0111, B:58:0x0115, B:60:0x0119, B:61:0x011c, B:63:0x0120, B:65:0x0124, B:67:0x0128, B:68:0x0129, B:69:0x012e, B:70:0x012f, B:71:0x0136, B:72:0x0137, B:73:0x013e, B:74:0x013f), top: B:127:0x010a }] */
    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    /* JADX WARN: Code duplicated, block: B:93:0x0180 A[Catch: all -> 0x0040, TRY_LEAVE, TryCatch #1 {all -> 0x0040, blocks: (B:14:0x003b, B:91:0x017a, B:93:0x0180), top: B:128:0x003b }] */
    public static final Object a(r14 r14Var, Continuation continuation) {
        w04 w04Var;
        rr3 rr3VarA;
        rr3 rr3Var;
        rr3 rr3Var2;
        rr3 rr3VarA2;
        rr3 rr3Var3;
        rr3 rr3Var4;
        Object obj;
        Object obj2;
        r14 r14Var2 = r14Var;
        r14Var2.getClass();
        if (continuation instanceof w04) {
            w04Var = (w04) continuation;
            int i = w04Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                w04Var.e = i - Integer.MIN_VALUE;
            } else {
                w04Var = new w04(r14Var2, continuation);
            }
        } else {
            w04Var = new w04(r14Var2, continuation);
        }
        Object obj3 = w04Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = w04Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj3);
            ex0 ex0Var = r14Var2.c;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:webview_quic_hints_enabled", C3510b4.i.W);
            if (!((Boolean) ex0Var.a("gads:webview_quic_hints_enabled", Boolean.TRUE, yr.b)).booleanValue()) {
                return p005kotlin.Unit.INSTANCE;
            }
            yz3 yz3Var = (yz3) r14Var2.h.get();
            w04Var.a = r14Var2;
            w04Var.e = 1;
            if (yz3Var.a(w04Var) != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 == 2) {
                rr3Var3 = w04Var.b;
                rr3Var4 = (rr3) w04Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj3);
                    obj = p005kotlin.Unit.INSTANCE;
                    if (obj instanceof i01) {
                        xs3.a((i01) obj, false);
                    }
                    CloseableKt.closeFinally(rr3Var3, null);
                    return p005kotlin.Unit.INSTANCE;
                } catch (Throwable th) {
                    th = th;
                    rr3VarA2 = rr3Var4;
                    try {
                        rr3VarA2.b(th);
                        if (!(th instanceof v24)) {
                            throw th;
                        }
                        if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                            rr3VarA2.a(th);
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
                    } catch (Throwable th2) {
                        try {
                            throw th2;
                        } catch (Throwable th3) {
                            CloseableKt.closeFinally(rr3Var3, th2);
                            throw th3;
                        }
                    }
                }
            }
            if (i2 != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            rr3Var = w04Var.b;
            rr3Var2 = (rr3) w04Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj3);
                obj2 = p005kotlin.Unit.INSTANCE;
                if (obj2 instanceof i01) {
                    xs3.a((i01) obj2, false);
                }
                CloseableKt.closeFinally(rr3Var, null);
                return p005kotlin.Unit.INSTANCE;
            } catch (Throwable th4) {
                th = th4;
                rr3VarA = rr3Var2;
                try {
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
                } catch (Throwable th5) {
                    try {
                        throw th5;
                    } catch (Throwable th6) {
                        CloseableKt.closeFinally(rr3Var, th5);
                        throw th6;
                    }
                }
            }
        }
        r14Var2 = (r14) w04Var.a;
        p005kotlin.ResultKt.throwOnFailure(obj3);
        Profile profile = r14Var2.m;
        if (profile != null) {
            g83 g83Var = r14Var2.f;
            s11 s11Var = s11.CUI_NAME_WEBVIEW_PROFILE_QUIC_HINTS;
            List listEmptyList = CollectionsKt.emptyList();
            ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
            if (hs3.b().a == null) {
                rr3VarA2 = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                try {
                    AtomicBoolean atomicBoolean = az3.a;
                    if (!az3.a(r14Var2.i)) {
                        xs3.a("Quic hints are not supported", null, 6);
                        p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                        CloseableKt.closeFinally(rr3VarA2, null);
                        return unit;
                    }
                    CoroutineContext coroutineContext = r14Var2.d;
                    x04 x04Var = new x04(profile, r14Var2, null);
                    w04Var.a = rr3VarA2;
                    w04Var.b = rr3VarA2;
                    w04Var.e = 2;
                    if (BuildersKt.withContext(coroutineContext, x04Var, w04Var) != coroutine_suspended) {
                        rr3Var4 = rr3VarA2;
                        rr3Var3 = rr3Var4;
                        obj = p005kotlin.Unit.INSTANCE;
                        if (obj instanceof i01) {
                            xs3.a((i01) obj, false);
                        }
                        CloseableKt.closeFinally(rr3Var3, null);
                    }
                } catch (Throwable th7) {
                    th = th7;
                    rr3Var3 = rr3VarA2;
                    rr3VarA2.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        rr3VarA2.a(th);
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
                rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                try {
                    AtomicBoolean atomicBoolean2 = az3.a;
                    if (!az3.a(r14Var2.i)) {
                        xs3.a("Quic hints are not supported", null, 6);
                        p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                        CloseableKt.closeFinally(rr3VarA, null);
                        return unit2;
                    }
                    CoroutineContext coroutineContext2 = r14Var2.d;
                    x04 x04Var2 = new x04(profile, r14Var2, null);
                    w04Var.a = rr3VarA;
                    w04Var.b = rr3VarA;
                    w04Var.e = 3;
                    if (BuildersKt.withContext(coroutineContext2, x04Var2, w04Var) != coroutine_suspended) {
                        rr3Var2 = rr3VarA;
                        rr3Var = rr3Var2;
                        obj2 = p005kotlin.Unit.INSTANCE;
                        if (obj2 instanceof i01) {
                            xs3.a((i01) obj2, false);
                        }
                        CloseableKt.closeFinally(rr3Var, null);
                    }
                } catch (Throwable th8) {
                    th = th8;
                    rr3Var = rr3VarA;
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
                }
            }
            return coroutine_suspended;
        }
        return p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00c4 A[Catch: all -> 0x004e, TRY_LEAVE, TryCatch #7 {all -> 0x004e, blocks: (B:20:0x004a, B:31:0x00be, B:33:0x00c4), top: B:116:0x004a }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00da A[Catch: all -> 0x0109, TryCatch #4 {all -> 0x0109, blocks: (B:37:0x00d3, B:39:0x00da, B:41:0x00de, B:43:0x00e2, B:44:0x00e5, B:46:0x00e9, B:48:0x00ed, B:50:0x00f1, B:51:0x00f2, B:52:0x00f7, B:53:0x00f8, B:54:0x00ff, B:55:0x0100, B:56:0x0107, B:57:0x0108), top: B:111:0x00d3 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00e9 A[Catch: all -> 0x0109, TryCatch #4 {all -> 0x0109, blocks: (B:37:0x00d3, B:39:0x00da, B:41:0x00de, B:43:0x00e2, B:44:0x00e5, B:46:0x00e9, B:48:0x00ed, B:50:0x00f1, B:51:0x00f2, B:52:0x00f7, B:53:0x00f8, B:54:0x00ff, B:55:0x0100, B:56:0x0107, B:57:0x0108), top: B:111:0x00d3 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00ed A[Catch: all -> 0x0109, TryCatch #4 {all -> 0x0109, blocks: (B:37:0x00d3, B:39:0x00da, B:41:0x00de, B:43:0x00e2, B:44:0x00e5, B:46:0x00e9, B:48:0x00ed, B:50:0x00f1, B:51:0x00f2, B:52:0x00f7, B:53:0x00f8, B:54:0x00ff, B:55:0x0100, B:56:0x0107, B:57:0x0108), top: B:111:0x00d3 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x00f1 A[Catch: all -> 0x0109, TryCatch #4 {all -> 0x0109, blocks: (B:37:0x00d3, B:39:0x00da, B:41:0x00de, B:43:0x00e2, B:44:0x00e5, B:46:0x00e9, B:48:0x00ed, B:50:0x00f1, B:51:0x00f2, B:52:0x00f7, B:53:0x00f8, B:54:0x00ff, B:55:0x0100, B:56:0x0107, B:57:0x0108), top: B:111:0x00d3 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00f2 A[Catch: all -> 0x0109, TryCatch #4 {all -> 0x0109, blocks: (B:37:0x00d3, B:39:0x00da, B:41:0x00de, B:43:0x00e2, B:44:0x00e5, B:46:0x00e9, B:48:0x00ed, B:50:0x00f1, B:51:0x00f2, B:52:0x00f7, B:53:0x00f8, B:54:0x00ff, B:55:0x0100, B:56:0x0107, B:57:0x0108), top: B:111:0x00d3 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x00f8 A[Catch: all -> 0x0109, TryCatch #4 {all -> 0x0109, blocks: (B:37:0x00d3, B:39:0x00da, B:41:0x00de, B:43:0x00e2, B:44:0x00e5, B:46:0x00e9, B:48:0x00ed, B:50:0x00f1, B:51:0x00f2, B:52:0x00f7, B:53:0x00f8, B:54:0x00ff, B:55:0x0100, B:56:0x0107, B:57:0x0108), top: B:111:0x00d3 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x0100 A[Catch: all -> 0x0109, TryCatch #4 {all -> 0x0109, blocks: (B:37:0x00d3, B:39:0x00da, B:41:0x00de, B:43:0x00e2, B:44:0x00e5, B:46:0x00e9, B:48:0x00ed, B:50:0x00f1, B:51:0x00f2, B:52:0x00f7, B:53:0x00f8, B:54:0x00ff, B:55:0x0100, B:56:0x0107, B:57:0x0108), top: B:111:0x00d3 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x0108 A[Catch: all -> 0x0109, TRY_LEAVE, TryCatch #4 {all -> 0x0109, blocks: (B:37:0x00d3, B:39:0x00da, B:41:0x00de, B:43:0x00e2, B:44:0x00e5, B:46:0x00e9, B:48:0x00ed, B:50:0x00f1, B:51:0x00f2, B:52:0x00f7, B:53:0x00f8, B:54:0x00ff, B:55:0x0100, B:56:0x0107, B:57:0x0108), top: B:111:0x00d3 }] */
    /* JADX WARN: Code duplicated, block: B:71:0x0156 A[Catch: all -> 0x0038, TRY_LEAVE, TryCatch #3 {all -> 0x0038, blocks: (B:13:0x0033, B:69:0x0150, B:71:0x0156), top: B:109:0x0033 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x0193 A[Catch: all -> 0x01c2, TryCatch #0 {all -> 0x01c2, blocks: (B:77:0x018c, B:79:0x0193, B:81:0x0197, B:83:0x019b, B:84:0x019e, B:86:0x01a2, B:88:0x01a6, B:90:0x01aa, B:91:0x01ab, B:92:0x01b0, B:93:0x01b1, B:94:0x01b8, B:95:0x01b9, B:96:0x01c0, B:97:0x01c1), top: B:104:0x018c }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    /* JADX WARN: Code duplicated, block: B:86:0x01a2 A[Catch: all -> 0x01c2, TryCatch #0 {all -> 0x01c2, blocks: (B:77:0x018c, B:79:0x0193, B:81:0x0197, B:83:0x019b, B:84:0x019e, B:86:0x01a2, B:88:0x01a6, B:90:0x01aa, B:91:0x01ab, B:92:0x01b0, B:93:0x01b1, B:94:0x01b8, B:95:0x01b9, B:96:0x01c0, B:97:0x01c1), top: B:104:0x018c }] */
    /* JADX WARN: Code duplicated, block: B:88:0x01a6 A[Catch: all -> 0x01c2, TryCatch #0 {all -> 0x01c2, blocks: (B:77:0x018c, B:79:0x0193, B:81:0x0197, B:83:0x019b, B:84:0x019e, B:86:0x01a2, B:88:0x01a6, B:90:0x01aa, B:91:0x01ab, B:92:0x01b0, B:93:0x01b1, B:94:0x01b8, B:95:0x01b9, B:96:0x01c0, B:97:0x01c1), top: B:104:0x018c }] */
    /* JADX WARN: Code duplicated, block: B:90:0x01aa A[Catch: all -> 0x01c2, TryCatch #0 {all -> 0x01c2, blocks: (B:77:0x018c, B:79:0x0193, B:81:0x0197, B:83:0x019b, B:84:0x019e, B:86:0x01a2, B:88:0x01a6, B:90:0x01aa, B:91:0x01ab, B:92:0x01b0, B:93:0x01b1, B:94:0x01b8, B:95:0x01b9, B:96:0x01c0, B:97:0x01c1), top: B:104:0x018c }] */
    /* JADX WARN: Code duplicated, block: B:91:0x01ab A[Catch: all -> 0x01c2, TryCatch #0 {all -> 0x01c2, blocks: (B:77:0x018c, B:79:0x0193, B:81:0x0197, B:83:0x019b, B:84:0x019e, B:86:0x01a2, B:88:0x01a6, B:90:0x01aa, B:91:0x01ab, B:92:0x01b0, B:93:0x01b1, B:94:0x01b8, B:95:0x01b9, B:96:0x01c0, B:97:0x01c1), top: B:104:0x018c }] */
    /* JADX WARN: Code duplicated, block: B:93:0x01b1 A[Catch: all -> 0x01c2, TryCatch #0 {all -> 0x01c2, blocks: (B:77:0x018c, B:79:0x0193, B:81:0x0197, B:83:0x019b, B:84:0x019e, B:86:0x01a2, B:88:0x01a6, B:90:0x01aa, B:91:0x01ab, B:92:0x01b0, B:93:0x01b1, B:94:0x01b8, B:95:0x01b9, B:96:0x01c0, B:97:0x01c1), top: B:104:0x018c }] */
    /* JADX WARN: Code duplicated, block: B:95:0x01b9 A[Catch: all -> 0x01c2, TryCatch #0 {all -> 0x01c2, blocks: (B:77:0x018c, B:79:0x0193, B:81:0x0197, B:83:0x019b, B:84:0x019e, B:86:0x01a2, B:88:0x01a6, B:90:0x01aa, B:91:0x01ab, B:92:0x01b0, B:93:0x01b1, B:94:0x01b8, B:95:0x01b9, B:96:0x01c0, B:97:0x01c1), top: B:104:0x018c }] */
    /* JADX WARN: Code duplicated, block: B:97:0x01c1 A[Catch: all -> 0x01c2, TRY_LEAVE, TryCatch #0 {all -> 0x01c2, blocks: (B:77:0x018c, B:79:0x0193, B:81:0x0197, B:83:0x019b, B:84:0x019e, B:86:0x01a2, B:88:0x01a6, B:90:0x01aa, B:91:0x01ab, B:92:0x01b0, B:93:0x01b1, B:94:0x01b8, B:95:0x01b9, B:96:0x01c0, B:97:0x01c1), top: B:104:0x018c }] */
    public static final Object b(r14 r14Var, Continuation continuation) {
        y04 y04Var;
        rr3 rr3Var;
        TimeoutCancellationException timeoutCancellationException;
        rr3 rr3Var2;
        r14 r14Var2;
        rr3 rr3Var3;
        TimeoutCancellationException timeoutCancellationException2;
        rr3 rr3Var4;
        Object obj;
        Object obj2;
        r14Var.getClass();
        if (continuation instanceof y04) {
            y04Var = (y04) continuation;
            int i = y04Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                y04Var.f = i - Integer.MIN_VALUE;
            } else {
                y04Var = new y04(r14Var, continuation);
            }
        } else {
            y04Var = new y04(r14Var, continuation);
        }
        Object obj3 = y04Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = y04Var.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj3);
            g83 g83Var = r14Var.f;
            s11 s11Var = s11.CUI_NAME_WEBVIEW_PROFILE_INIT;
            List listEmptyList = CollectionsKt.emptyList();
            ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
            if (hs3.b().a == null) {
                tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                try {
                    ex0 ex0Var = r14Var.c;
                    ex0Var.getClass();
                    Duration.Companion companion = Duration.INSTANCE;
                    long duration = DurationKt.toDuration(2, DurationUnit.SECONDS);
                    Intrinsics.checkNotNullParameter("gads:webview_profile_timeout", C3510b4.i.W);
                    long rawValue = ((Duration) ex0Var.a("gads:webview_profile_timeout", Duration.m4365boximpl(duration), yr.l)).getRawValue();
                    a14 a14Var = new a14(r14Var, null);
                    y04Var.a = r14Var;
                    y04Var.b = tu2VarA;
                    y04Var.c = tu2VarA;
                    y04Var.f = 1;
                    if (TimeoutKt.m4522withTimeoutKLykuaI(rawValue, a14Var, y04Var) != coroutine_suspended) {
                        r14Var2 = r14Var;
                        rr3Var4 = tu2VarA;
                        rr3Var3 = rr3Var4;
                        obj = p005kotlin.Unit.INSTANCE;
                        if (obj instanceof i01) {
                            xs3.a((i01) obj, false);
                        }
                        CloseableKt.closeFinally(rr3Var4, null);
                    }
                } catch (Throwable th) {
                    rr3Var3 = tu2VarA;
                    timeoutCancellationException2 = th;
                    rr3Var4 = rr3Var3;
                    rr3Var3.b(timeoutCancellationException2);
                    if (!(timeoutCancellationException2 instanceof v24)) {
                        throw timeoutCancellationException2;
                    }
                    if (!(timeoutCancellationException2 instanceof TimeoutCancellationException) && !(timeoutCancellationException2 instanceof CancellationException)) {
                        rr3Var3.a(timeoutCancellationException2);
                    }
                    if (!(timeoutCancellationException2 instanceof TimeoutCancellationException)) {
                        throw new i21(timeoutCancellationException2);
                    }
                    if (!(timeoutCancellationException2 instanceof CancellationException)) {
                        throw new wz0(timeoutCancellationException2);
                    }
                    if (timeoutCancellationException2 instanceof w01) {
                        throw timeoutCancellationException2;
                    }
                    throw new b01(timeoutCancellationException2);
                }
            } else {
                rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                try {
                    ex0 ex0Var2 = r14Var.c;
                    ex0Var2.getClass();
                    Duration.Companion companion2 = Duration.INSTANCE;
                    long duration2 = DurationKt.toDuration(2, DurationUnit.SECONDS);
                    Intrinsics.checkNotNullParameter("gads:webview_profile_timeout", C3510b4.i.W);
                    long rawValue2 = ((Duration) ex0Var2.a("gads:webview_profile_timeout", Duration.m4365boximpl(duration2), yr.l)).getRawValue();
                    a14 a14Var2 = new a14(r14Var, null);
                    y04Var.a = r14Var;
                    y04Var.b = rr3VarA;
                    y04Var.c = rr3VarA;
                    y04Var.f = 2;
                    if (TimeoutKt.m4522withTimeoutKLykuaI(rawValue2, a14Var2, y04Var) != coroutine_suspended) {
                        r14Var2 = r14Var;
                        rr3Var2 = rr3VarA;
                        rr3Var = rr3Var2;
                        obj2 = p005kotlin.Unit.INSTANCE;
                        if (obj2 instanceof i01) {
                            xs3.a((i01) obj2, false);
                        }
                        CloseableKt.closeFinally(rr3Var2, null);
                    }
                } catch (Throwable th2) {
                    rr3Var = rr3VarA;
                    timeoutCancellationException = th2;
                    rr3Var2 = rr3Var;
                    rr3Var.b(timeoutCancellationException);
                    if (!(timeoutCancellationException instanceof v24)) {
                        throw timeoutCancellationException;
                    }
                    if (!(timeoutCancellationException instanceof TimeoutCancellationException) && !(timeoutCancellationException instanceof CancellationException)) {
                        rr3Var.a(timeoutCancellationException);
                    }
                    if (!(timeoutCancellationException instanceof TimeoutCancellationException)) {
                        throw new i21(timeoutCancellationException);
                    }
                    if (!(timeoutCancellationException instanceof CancellationException)) {
                        throw new wz0(timeoutCancellationException);
                    }
                    if (timeoutCancellationException instanceof w01) {
                        throw timeoutCancellationException;
                    }
                    throw new b01(timeoutCancellationException);
                }
            }
            return coroutine_suspended;
        }
        if (i2 == 1) {
            rr3Var4 = y04Var.c;
            rr3Var3 = y04Var.b;
            r14Var2 = y04Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj3);
                obj = p005kotlin.Unit.INSTANCE;
                if (obj instanceof i01) {
                    xs3.a((i01) obj, false);
                }
                CloseableKt.closeFinally(rr3Var4, null);
            } catch (Throwable th3) {
                timeoutCancellationException2 = th3;
                try {
                    rr3Var3.b(timeoutCancellationException2);
                    if (!(timeoutCancellationException2 instanceof v24)) {
                        throw timeoutCancellationException2;
                    }
                    if (!(timeoutCancellationException2 instanceof TimeoutCancellationException)) {
                        rr3Var3.a(timeoutCancellationException2);
                    }
                    if (!(timeoutCancellationException2 instanceof TimeoutCancellationException)) {
                        throw new i21(timeoutCancellationException2);
                    }
                    if (!(timeoutCancellationException2 instanceof CancellationException)) {
                        throw new wz0(timeoutCancellationException2);
                    }
                    if (timeoutCancellationException2 instanceof w01) {
                        throw timeoutCancellationException2;
                    }
                    throw new b01(timeoutCancellationException2);
                } catch (Throwable th4) {
                    try {
                        throw th4;
                    } catch (Throwable th5) {
                        CloseableKt.closeFinally(rr3Var4, th4);
                        throw th5;
                    }
                }
            }
        } else {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            rr3Var2 = y04Var.c;
            rr3Var = y04Var.b;
            r14Var2 = y04Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj3);
                obj2 = p005kotlin.Unit.INSTANCE;
                if (obj2 instanceof i01) {
                    xs3.a((i01) obj2, false);
                }
                CloseableKt.closeFinally(rr3Var2, null);
            } catch (Throwable th6) {
                timeoutCancellationException = th6;
                try {
                    rr3Var.b(timeoutCancellationException);
                    if (!(timeoutCancellationException instanceof v24)) {
                        throw timeoutCancellationException;
                    }
                    if (!(timeoutCancellationException instanceof TimeoutCancellationException)) {
                        rr3Var.a(timeoutCancellationException);
                    }
                    if (!(timeoutCancellationException instanceof TimeoutCancellationException)) {
                        throw new i21(timeoutCancellationException);
                    }
                    if (!(timeoutCancellationException instanceof CancellationException)) {
                        throw new wz0(timeoutCancellationException);
                    }
                    if (timeoutCancellationException instanceof w01) {
                        throw timeoutCancellationException;
                    }
                    throw new b01(timeoutCancellationException);
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
        CoroutineScope coroutineScope = r14Var2.e;
        b14 block = new b14(r14Var2, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        r14Var2.i();
        return p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x0202 A[Catch: all -> 0x0231, TryCatch #1 {all -> 0x0231, blocks: (B:101:0x01fb, B:103:0x0202, B:105:0x0206, B:107:0x020a, B:108:0x020d, B:110:0x0211, B:112:0x0215, B:114:0x0219, B:115:0x021a, B:116:0x021f, B:117:0x0220, B:118:0x0227, B:119:0x0228, B:120:0x022f, B:121:0x0230), top: B:132:0x01fb }] */
    /* JADX WARN: Code duplicated, block: B:110:0x0211 A[Catch: all -> 0x0231, TryCatch #1 {all -> 0x0231, blocks: (B:101:0x01fb, B:103:0x0202, B:105:0x0206, B:107:0x020a, B:108:0x020d, B:110:0x0211, B:112:0x0215, B:114:0x0219, B:115:0x021a, B:116:0x021f, B:117:0x0220, B:118:0x0227, B:119:0x0228, B:120:0x022f, B:121:0x0230), top: B:132:0x01fb }] */
    /* JADX WARN: Code duplicated, block: B:112:0x0215 A[Catch: all -> 0x0231, TryCatch #1 {all -> 0x0231, blocks: (B:101:0x01fb, B:103:0x0202, B:105:0x0206, B:107:0x020a, B:108:0x020d, B:110:0x0211, B:112:0x0215, B:114:0x0219, B:115:0x021a, B:116:0x021f, B:117:0x0220, B:118:0x0227, B:119:0x0228, B:120:0x022f, B:121:0x0230), top: B:132:0x01fb }] */
    /* JADX WARN: Code duplicated, block: B:114:0x0219 A[Catch: all -> 0x0231, TryCatch #1 {all -> 0x0231, blocks: (B:101:0x01fb, B:103:0x0202, B:105:0x0206, B:107:0x020a, B:108:0x020d, B:110:0x0211, B:112:0x0215, B:114:0x0219, B:115:0x021a, B:116:0x021f, B:117:0x0220, B:118:0x0227, B:119:0x0228, B:120:0x022f, B:121:0x0230), top: B:132:0x01fb }] */
    /* JADX WARN: Code duplicated, block: B:115:0x021a A[Catch: all -> 0x0231, TryCatch #1 {all -> 0x0231, blocks: (B:101:0x01fb, B:103:0x0202, B:105:0x0206, B:107:0x020a, B:108:0x020d, B:110:0x0211, B:112:0x0215, B:114:0x0219, B:115:0x021a, B:116:0x021f, B:117:0x0220, B:118:0x0227, B:119:0x0228, B:120:0x022f, B:121:0x0230), top: B:132:0x01fb }] */
    /* JADX WARN: Code duplicated, block: B:117:0x0220 A[Catch: all -> 0x0231, TryCatch #1 {all -> 0x0231, blocks: (B:101:0x01fb, B:103:0x0202, B:105:0x0206, B:107:0x020a, B:108:0x020d, B:110:0x0211, B:112:0x0215, B:114:0x0219, B:115:0x021a, B:116:0x021f, B:117:0x0220, B:118:0x0227, B:119:0x0228, B:120:0x022f, B:121:0x0230), top: B:132:0x01fb }] */
    /* JADX WARN: Code duplicated, block: B:119:0x0228 A[Catch: all -> 0x0231, TryCatch #1 {all -> 0x0231, blocks: (B:101:0x01fb, B:103:0x0202, B:105:0x0206, B:107:0x020a, B:108:0x020d, B:110:0x0211, B:112:0x0215, B:114:0x0219, B:115:0x021a, B:116:0x021f, B:117:0x0220, B:118:0x0227, B:119:0x0228, B:120:0x022f, B:121:0x0230), top: B:132:0x01fb }] */
    /* JADX WARN: Code duplicated, block: B:121:0x0230 A[Catch: all -> 0x0231, TRY_LEAVE, TryCatch #1 {all -> 0x0231, blocks: (B:101:0x01fb, B:103:0x0202, B:105:0x0206, B:107:0x020a, B:108:0x020d, B:110:0x0211, B:112:0x0215, B:114:0x0219, B:115:0x021a, B:116:0x021f, B:117:0x0220, B:118:0x0227, B:119:0x0228, B:120:0x022f, B:121:0x0230), top: B:132:0x01fb }] */
    /* JADX WARN: Code duplicated, block: B:52:0x0136 A[Catch: all -> 0x0061, TRY_LEAVE, TryCatch #0 {all -> 0x0061, blocks: (B:24:0x005c, B:50:0x0130, B:52:0x0136), top: B:130:0x005c }] */
    /* JADX WARN: Code duplicated, block: B:59:0x014c A[Catch: all -> 0x017b, TryCatch #6 {all -> 0x017b, blocks: (B:57:0x0145, B:59:0x014c, B:61:0x0150, B:63:0x0154, B:64:0x0157, B:66:0x015b, B:68:0x015f, B:70:0x0163, B:71:0x0164, B:72:0x0169, B:73:0x016a, B:74:0x0171, B:75:0x0172, B:76:0x0179, B:77:0x017a), top: B:143:0x0145 }] */
    /* JADX WARN: Code duplicated, block: B:66:0x015b A[Catch: all -> 0x017b, TryCatch #6 {all -> 0x017b, blocks: (B:57:0x0145, B:59:0x014c, B:61:0x0150, B:63:0x0154, B:64:0x0157, B:66:0x015b, B:68:0x015f, B:70:0x0163, B:71:0x0164, B:72:0x0169, B:73:0x016a, B:74:0x0171, B:75:0x0172, B:76:0x0179, B:77:0x017a), top: B:143:0x0145 }] */
    /* JADX WARN: Code duplicated, block: B:68:0x015f A[Catch: all -> 0x017b, TryCatch #6 {all -> 0x017b, blocks: (B:57:0x0145, B:59:0x014c, B:61:0x0150, B:63:0x0154, B:64:0x0157, B:66:0x015b, B:68:0x015f, B:70:0x0163, B:71:0x0164, B:72:0x0169, B:73:0x016a, B:74:0x0171, B:75:0x0172, B:76:0x0179, B:77:0x017a), top: B:143:0x0145 }] */
    /* JADX WARN: Code duplicated, block: B:70:0x0163 A[Catch: all -> 0x017b, TryCatch #6 {all -> 0x017b, blocks: (B:57:0x0145, B:59:0x014c, B:61:0x0150, B:63:0x0154, B:64:0x0157, B:66:0x015b, B:68:0x015f, B:70:0x0163, B:71:0x0164, B:72:0x0169, B:73:0x016a, B:74:0x0171, B:75:0x0172, B:76:0x0179, B:77:0x017a), top: B:143:0x0145 }] */
    /* JADX WARN: Code duplicated, block: B:71:0x0164 A[Catch: all -> 0x017b, TryCatch #6 {all -> 0x017b, blocks: (B:57:0x0145, B:59:0x014c, B:61:0x0150, B:63:0x0154, B:64:0x0157, B:66:0x015b, B:68:0x015f, B:70:0x0163, B:71:0x0164, B:72:0x0169, B:73:0x016a, B:74:0x0171, B:75:0x0172, B:76:0x0179, B:77:0x017a), top: B:143:0x0145 }] */
    /* JADX WARN: Code duplicated, block: B:73:0x016a A[Catch: all -> 0x017b, TryCatch #6 {all -> 0x017b, blocks: (B:57:0x0145, B:59:0x014c, B:61:0x0150, B:63:0x0154, B:64:0x0157, B:66:0x015b, B:68:0x015f, B:70:0x0163, B:71:0x0164, B:72:0x0169, B:73:0x016a, B:74:0x0171, B:75:0x0172, B:76:0x0179, B:77:0x017a), top: B:143:0x0145 }] */
    /* JADX WARN: Code duplicated, block: B:75:0x0172 A[Catch: all -> 0x017b, TryCatch #6 {all -> 0x017b, blocks: (B:57:0x0145, B:59:0x014c, B:61:0x0150, B:63:0x0154, B:64:0x0157, B:66:0x015b, B:68:0x015f, B:70:0x0163, B:71:0x0164, B:72:0x0169, B:73:0x016a, B:74:0x0171, B:75:0x0172, B:76:0x0179, B:77:0x017a), top: B:143:0x0145 }] */
    /* JADX WARN: Code duplicated, block: B:77:0x017a A[Catch: all -> 0x017b, TRY_LEAVE, TryCatch #6 {all -> 0x017b, blocks: (B:57:0x0145, B:59:0x014c, B:61:0x0150, B:63:0x0154, B:64:0x0157, B:66:0x015b, B:68:0x015f, B:70:0x0163, B:71:0x0164, B:72:0x0169, B:73:0x016a, B:74:0x0171, B:75:0x0172, B:76:0x0179, B:77:0x017a), top: B:143:0x0145 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    /* JADX WARN: Code duplicated, block: B:96:0x01ed A[Catch: all -> 0x0051, TRY_LEAVE, TryCatch #2 {all -> 0x0051, blocks: (B:19:0x004c, B:94:0x01e7, B:96:0x01ed), top: B:133:0x004c }] */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x012a, code lost:
    
        if (r0.a(r1, r2) == r3) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01e2, code lost:
    
        if (r0.a(r1, r2) == r3) goto L140;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object c(kotlin.r14 r16, p005kotlin.coroutines.Continuation r17) {
        /*
            Method dump skipped, instruction units count: 572
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.r14.c(ads_mobile_sdk.r14, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object d(r14 r14Var, Continuation continuation) {
        c14 c14Var;
        Mutex mutex;
        if (continuation instanceof c14) {
            c14Var = (c14) continuation;
            int i = c14Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                c14Var.e = i - Integer.MIN_VALUE;
            } else {
                c14Var = new c14(r14Var, continuation);
            }
        } else {
            c14Var = new c14(r14Var, continuation);
        }
        Object obj = c14Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c14Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            ex0 ex0Var = r14Var.c;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:webview_profile:enabled", C3510b4.i.W);
            if (!((Boolean) ex0Var.a("gads:webview_profile:enabled", Boolean.TRUE, yr.b)).booleanValue()) {
                return p005kotlin.Unit.INSTANCE;
            }
            mutex = r14Var.n;
            c14Var.a = r14Var;
            c14Var.b = mutex;
            c14Var.e = 1;
            if (mutex.lock(null, c14Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = c14Var.b;
            r14 r14Var2 = c14Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            r14Var = r14Var2;
        }
        try {
            if (r14Var.m == null && r14Var.p == null) {
                r14Var.p = BuildersKt__Builders_commonKt.launch$default(r14Var.e, null, null, new d14(r14Var, null), 3, null);
                return p005kotlin.Unit.INSTANCE;
            }
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object e(r14 r14Var, Continuation continuation) {
        n14 n14Var;
        if (continuation instanceof n14) {
            n14Var = (n14) continuation;
            int i = n14Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                n14Var.c = i - Integer.MIN_VALUE;
            } else {
                n14Var = new n14(r14Var, continuation);
            }
        } else {
            n14Var = new n14(r14Var, continuation);
        }
        Object obj = n14Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = n14Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            ex0 ex0Var = r14Var.c;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("init_profile_in_post_init_task:enabled", C3510b4.i.W);
            if (((Boolean) ex0Var.a("init_profile_in_post_init_task:enabled", Boolean.TRUE, yr.b)).booleanValue()) {
                n14Var.c = 1;
                if (d(r14Var, n14Var) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        return new q01(p005kotlin.Unit.INSTANCE);
    }

    public final Object a(Profile profile, Continuation continuation) {
        AtomicBoolean atomicBoolean = az3.a;
        rz3 featureWrapper = this.i;
        Intrinsics.checkNotNullParameter(featureWrapper, "featureWrapper");
        if (az3.c.get()) {
            try {
                featureWrapper.getClass();
                Intrinsics.checkNotNullParameter("PRECONNECT", "feature");
                if (WebViewFeature.isFeatureSupported("PRECONNECT")) {
                    Object objWithContext = BuildersKt.withContext(this.d, new i14(profile, this, null), continuation);
                    return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : p005kotlin.Unit.INSTANCE;
                }
            } catch (Throwable unused) {
                az3.c.set(false);
            }
        }
        xs3.a("Preconnect is not supported", null, 6);
        return p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object a(List list, Continuation continuation) {
        k14 k14Var;
        r14 r14Var;
        List<String> list2;
        if (continuation instanceof k14) {
            k14Var = (k14) continuation;
            int i = k14Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                k14Var.e = i - Integer.MIN_VALUE;
            } else {
                k14Var = new k14(this, continuation);
            }
        } else {
            k14Var = new k14(this, continuation);
        }
        Object obj = k14Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = k14Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            ex0 ex0Var = this.c;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:webview_prefetch_resources_enabled", C3510b4.i.W);
            if (!((Boolean) ex0Var.a("gads:webview_prefetch_resources_enabled", Boolean.TRUE, yr.b)).booleanValue()) {
                return p005kotlin.Unit.INSTANCE;
            }
            yz3 yz3Var = (yz3) this.h.get();
            k14Var.a = this;
            k14Var.b = list;
            k14Var.e = 1;
            if (yz3Var.a(k14Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            r14Var = this;
            list2 = list;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            list2 = k14Var.b;
            r14Var = k14Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        g83 g83Var = r14Var.f;
        s11 s11Var = s11.CUI_NAME_WEBVIEW_PROFILE_PREFETCH_RESOURCES;
        List listEmptyList = CollectionsKt.emptyList();
        ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
        if (hs3.b().a == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
            try {
                Profile profile = r14Var.m;
                if (profile == null) {
                    xs3.a("Profile has not been initialized yet", null, 6);
                    p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                    CloseableKt.closeFinally(tu2VarA, null);
                    return unit;
                }
                AtomicBoolean atomicBoolean = az3.a;
                if (!az3.c(r14Var.i)) {
                    xs3.a("Profile prefetch is not supported", null, 6);
                    p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                    CloseableKt.closeFinally(tu2VarA, null);
                    return unit2;
                }
                for (String str : list2) {
                    CoroutineScope coroutineScope = r14Var.e;
                    l14 block = new l14(profile, str, r14Var, null);
                    EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                    Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                    Intrinsics.checkNotNullParameter(context, "context");
                    Intrinsics.checkNotNullParameter(block, "block");
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
                }
                Object obj2 = p005kotlin.Unit.INSTANCE;
                if (obj2 instanceof i01) {
                    xs3.a((i01) obj2, false);
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
                Profile profile2 = r14Var.m;
                if (profile2 == null) {
                    xs3.a("Profile has not been initialized yet", null, 6);
                    p005kotlin.Unit unit3 = p005kotlin.Unit.INSTANCE;
                    CloseableKt.closeFinally(rr3VarA, null);
                    return unit3;
                }
                AtomicBoolean atomicBoolean2 = az3.a;
                if (!az3.c(r14Var.i)) {
                    xs3.a("Profile prefetch is not supported", null, 6);
                    p005kotlin.Unit unit4 = p005kotlin.Unit.INSTANCE;
                    CloseableKt.closeFinally(rr3VarA, null);
                    return unit4;
                }
                for (String str2 : list2) {
                    CoroutineScope coroutineScope2 = r14Var.e;
                    l14 block2 = new l14(profile2, str2, r14Var, null);
                    EmptyCoroutineContext context2 = EmptyCoroutineContext.INSTANCE;
                    Intrinsics.checkNotNullParameter(coroutineScope2, "<this>");
                    Intrinsics.checkNotNullParameter(context2, "context");
                    Intrinsics.checkNotNullParameter(block2, "block");
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope2, context2, null, new ws3(block2, null), 2, null);
                }
                Object obj3 = p005kotlin.Unit.INSTANCE;
                if (obj3 instanceof i01) {
                    xs3.a((i01) obj3, false);
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
        return p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x01c8 A[Catch: all -> 0x0065, TryCatch #4 {all -> 0x0065, blocks: (B:22:0x0060, B:99:0x01c0, B:101:0x01c8, B:106:0x01dd, B:108:0x01e5, B:103:0x01ce, B:105:0x01d8, B:111:0x01ef), top: B:153:0x0060 }] */
    /* JADX WARN: Code duplicated, block: B:103:0x01ce A[Catch: all -> 0x0065, TryCatch #4 {all -> 0x0065, blocks: (B:22:0x0060, B:99:0x01c0, B:101:0x01c8, B:106:0x01dd, B:108:0x01e5, B:103:0x01ce, B:105:0x01d8, B:111:0x01ef), top: B:153:0x0060 }] */
    /* JADX WARN: Code duplicated, block: B:105:0x01d8 A[Catch: all -> 0x0065, TryCatch #4 {all -> 0x0065, blocks: (B:22:0x0060, B:99:0x01c0, B:101:0x01c8, B:106:0x01dd, B:108:0x01e5, B:103:0x01ce, B:105:0x01d8, B:111:0x01ef), top: B:153:0x0060 }] */
    /* JADX WARN: Code duplicated, block: B:108:0x01e5 A[Catch: all -> 0x0065, TRY_LEAVE, TryCatch #4 {all -> 0x0065, blocks: (B:22:0x0060, B:99:0x01c0, B:101:0x01c8, B:106:0x01dd, B:108:0x01e5, B:103:0x01ce, B:105:0x01d8, B:111:0x01ef), top: B:153:0x0060 }] */
    /* JADX WARN: Code duplicated, block: B:111:0x01ef A[Catch: all -> 0x0065, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x0065, blocks: (B:22:0x0060, B:99:0x01c0, B:101:0x01c8, B:106:0x01dd, B:108:0x01e5, B:103:0x01ce, B:105:0x01d8, B:111:0x01ef), top: B:153:0x0060 }] */
    /* JADX WARN: Code duplicated, block: B:114:0x020f  */
    /* JADX WARN: Code duplicated, block: B:49:0x0109 A[Catch: all -> 0x008d, TryCatch #9 {all -> 0x008d, blocks: (B:32:0x0086, B:47:0x0101, B:49:0x0109, B:53:0x011c, B:55:0x0124, B:50:0x010e, B:52:0x0118, B:58:0x0130), top: B:162:0x0086 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x010e A[Catch: all -> 0x008d, TryCatch #9 {all -> 0x008d, blocks: (B:32:0x0086, B:47:0x0101, B:49:0x0109, B:53:0x011c, B:55:0x0124, B:50:0x010e, B:52:0x0118, B:58:0x0130), top: B:162:0x0086 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x0118 A[Catch: all -> 0x008d, TryCatch #9 {all -> 0x008d, blocks: (B:32:0x0086, B:47:0x0101, B:49:0x0109, B:53:0x011c, B:55:0x0124, B:50:0x010e, B:52:0x0118, B:58:0x0130), top: B:162:0x0086 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x0124 A[Catch: all -> 0x008d, TRY_LEAVE, TryCatch #9 {all -> 0x008d, blocks: (B:32:0x0086, B:47:0x0101, B:49:0x0109, B:53:0x011c, B:55:0x0124, B:50:0x010e, B:52:0x0118, B:58:0x0130), top: B:162:0x0086 }] */
    /* JADX WARN: Code duplicated, block: B:58:0x0130 A[Catch: all -> 0x008d, TRY_ENTER, TRY_LEAVE, TryCatch #9 {all -> 0x008d, blocks: (B:32:0x0086, B:47:0x0101, B:49:0x0109, B:53:0x011c, B:55:0x0124, B:50:0x010e, B:52:0x0118, B:58:0x0130), top: B:162:0x0086 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x0151  */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    public final Object b(List list, Continuation continuation) {
        m14 m14Var;
        rr3 rr3VarA;
        rr3 rr3Var;
        Closeable closeable;
        r14 r14Var;
        rr3 rr3Var2;
        rr3 rr3VarA2;
        rr3 rr3Var3;
        Closeable closeable2;
        r14 r14Var2;
        rr3 rr3Var4;
        Object objBoxBoolean;
        Object objBoxBoolean2;
        List list2 = list;
        if (continuation instanceof m14) {
            m14Var = (m14) continuation;
            int i = m14Var.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                m14Var.g = i - Integer.MIN_VALUE;
            } else {
                m14Var = new m14(this, continuation);
            }
        } else {
            m14Var = new m14(this, continuation);
        }
        Object objC = m14Var.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = m14Var.g;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objC);
            ex0 ex0Var = this.c;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:webview_prerender_resources_enabled", C3510b4.i.W);
            if (!((Boolean) ex0Var.a("gads:webview_prerender_resources_enabled", Boolean.FALSE, yr.b)).booleanValue()) {
                return Boxing.boxBoolean(false);
            }
            g83 g83Var = this.f;
            s11 s11Var = s11.CUI_NAME_WEBVIEW_PRERENDER_RESOURCES;
            List listEmptyList = CollectionsKt.emptyList();
            ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
            if (hs3.b().a == null) {
                rr3VarA2 = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                try {
                    Object obj = (jb3) this.l.get();
                    m14Var.a = this;
                    m14Var.b = list2;
                    m14Var.c = rr3VarA2;
                    m14Var.d = rr3VarA2;
                    m14Var.g = 1;
                    objC = ((rp0) obj).c(m14Var);
                    if (objC != coroutine_suspended) {
                        r14Var2 = this;
                        rr3Var4 = rr3VarA2;
                        if (((Boolean) objC).booleanValue()) {
                            AtomicBoolean atomicBoolean = az3.a;
                            if (!az3.b(r14Var2.i)) {
                                jb3 jb3Var = (jb3) r14Var2.l.get();
                                rz rzVar = r14Var2.g.d;
                                m14Var.a = rr3VarA2;
                                m14Var.b = rr3Var4;
                                m14Var.c = null;
                                m14Var.d = null;
                                m14Var.g = 2;
                                objC = ((yq1) jb3Var).a(list2, rzVar, m14Var);
                                if (objC != coroutine_suspended) {
                                    closeable2 = rr3Var4;
                                    CloseableKt.closeFinally(closeable2, null);
                                    return objC;
                                }
                            } else {
                                xs3.a("Prerender is not supported", null, 6);
                            }
                        } else {
                            xs3.a("SDK Core is not loaded", null, 6);
                        }
                        objBoxBoolean = Boxing.boxBoolean(r13);
                        if (objBoxBoolean instanceof i01) {
                            xs3.a((i01) objBoxBoolean, false);
                        }
                        CloseableKt.closeFinally(rr3Var4, null);
                        return objBoxBoolean;
                    }
                } catch (Throwable th) {
                    th = th;
                    rr3Var3 = rr3VarA2;
                    closeable2 = rr3Var3;
                }
            } else {
                rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                try {
                    Object obj2 = (jb3) this.l.get();
                    m14Var.a = this;
                    m14Var.b = list2;
                    m14Var.c = rr3VarA;
                    m14Var.d = rr3VarA;
                    m14Var.g = 3;
                    objC = ((rp0) obj2).c(m14Var);
                    if (objC != coroutine_suspended) {
                        r14Var = this;
                        rr3Var2 = rr3VarA;
                        if (((Boolean) objC).booleanValue()) {
                            AtomicBoolean atomicBoolean2 = az3.a;
                            if (!az3.b(r14Var.i)) {
                                jb3 jb3Var2 = (jb3) r14Var.l.get();
                                rz rzVar2 = r14Var.g.d;
                                m14Var.a = rr3VarA;
                                m14Var.b = rr3Var2;
                                m14Var.c = null;
                                m14Var.d = null;
                                m14Var.g = 4;
                                objC = ((yq1) jb3Var2).a(list2, rzVar2, m14Var);
                                if (objC != coroutine_suspended) {
                                    closeable = rr3Var2;
                                    CloseableKt.closeFinally(closeable, null);
                                    return objC;
                                }
                            } else {
                                xs3.a("Prerender is not supported", null, 6);
                            }
                        } else {
                            xs3.a("SDK Core is not loaded", null, 6);
                        }
                        objBoxBoolean2 = Boxing.boxBoolean(false);
                        if (objBoxBoolean2 instanceof i01) {
                            xs3.a((i01) objBoxBoolean2, false);
                        }
                        CloseableKt.closeFinally(rr3Var2, null);
                        return objBoxBoolean2;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    rr3Var = rr3VarA;
                    closeable = rr3Var;
                }
            }
            return coroutine_suspended;
        }
        if (i2 == 1) {
            rr3Var4 = m14Var.d;
            rr3VarA2 = m14Var.c;
            list2 = (List) m14Var.b;
            r14Var2 = (r14) m14Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(objC);
                if (((Boolean) objC).booleanValue()) {
                    xs3.a("SDK Core is not loaded", null, 6);
                } else {
                    AtomicBoolean atomicBoolean3 = az3.a;
                    if (!az3.b(r14Var2.i)) {
                        jb3 jb3Var3 = (jb3) r14Var2.l.get();
                        rz rzVar3 = r14Var2.g.d;
                        m14Var.a = rr3VarA2;
                        m14Var.b = rr3Var4;
                        m14Var.c = null;
                        m14Var.d = null;
                        m14Var.g = 2;
                        objC = ((yq1) jb3Var3).a(list2, rzVar3, m14Var);
                        if (objC != coroutine_suspended) {
                            closeable2 = rr3Var4;
                            CloseableKt.closeFinally(closeable2, null);
                            return objC;
                        }
                        return coroutine_suspended;
                    }
                    xs3.a("Prerender is not supported", null, 6);
                }
                objBoxBoolean = Boxing.boxBoolean(r13);
                if (objBoxBoolean instanceof i01) {
                    xs3.a((i01) objBoxBoolean, false);
                }
                CloseableKt.closeFinally(rr3Var4, null);
                return objBoxBoolean;
            } catch (Throwable th3) {
                th = th3;
                closeable2 = rr3Var4;
                rr3Var3 = rr3VarA2;
            }
        } else {
            if (i2 != 2) {
                if (i2 == 3) {
                    rr3Var2 = m14Var.d;
                    rr3VarA = m14Var.c;
                    list2 = (List) m14Var.b;
                    r14Var = (r14) m14Var.a;
                    try {
                        p005kotlin.ResultKt.throwOnFailure(objC);
                        if (((Boolean) objC).booleanValue()) {
                            xs3.a("SDK Core is not loaded", null, 6);
                        } else {
                            AtomicBoolean atomicBoolean4 = az3.a;
                            if (!az3.b(r14Var.i)) {
                                jb3 jb3Var4 = (jb3) r14Var.l.get();
                                rz rzVar4 = r14Var.g.d;
                                m14Var.a = rr3VarA;
                                m14Var.b = rr3Var2;
                                m14Var.c = null;
                                m14Var.d = null;
                                m14Var.g = 4;
                                objC = ((yq1) jb3Var4).a(list2, rzVar4, m14Var);
                                if (objC != coroutine_suspended) {
                                    closeable = rr3Var2;
                                    CloseableKt.closeFinally(closeable, null);
                                    return objC;
                                }
                                return coroutine_suspended;
                            }
                            xs3.a("Prerender is not supported", null, 6);
                        }
                        objBoxBoolean2 = Boxing.boxBoolean(false);
                        if (objBoxBoolean2 instanceof i01) {
                            xs3.a((i01) objBoxBoolean2, false);
                        }
                        CloseableKt.closeFinally(rr3Var2, null);
                        return objBoxBoolean2;
                    } catch (Throwable th4) {
                        th = th4;
                        closeable = rr3Var2;
                        rr3Var = rr3VarA;
                    }
                } else {
                    if (i2 != 4) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    closeable = (Closeable) m14Var.b;
                    rr3Var = (rr3) m14Var.a;
                    try {
                        p005kotlin.ResultKt.throwOnFailure(objC);
                        CloseableKt.closeFinally(closeable, null);
                        return objC;
                    } catch (Throwable th5) {
                        th = th5;
                    }
                }
                try {
                    rr3Var.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        rr3Var.a(th);
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
                } catch (Throwable th6) {
                    try {
                        throw th6;
                    } catch (Throwable th7) {
                        CloseableKt.closeFinally(closeable, th6);
                        throw th7;
                    }
                }
            }
            closeable2 = (Closeable) m14Var.b;
            rr3Var3 = (rr3) m14Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(objC);
                CloseableKt.closeFinally(closeable2, null);
                return objC;
            } catch (Throwable th8) {
                th = th8;
            }
        }
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
        } catch (Throwable th9) {
            try {
                throw th9;
            } catch (Throwable th10) {
                CloseableKt.closeFinally(closeable2, th9);
                throw th10;
            }
        }
    }

    public final boolean g() {
        return ((Boolean) this.s.getValue()).booleanValue();
    }

    public final void i() {
        CoroutineScope coroutineScope = this.e;
        f14 block = new f14(this, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }

    @Override // kotlin.nc1
    public final Object u(Continuation continuation) {
        return e(this, continuation);
    }
}

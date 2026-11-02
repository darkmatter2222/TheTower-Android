package kotlin;

import android.os.SystemClock;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.NonCancellable;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class vi2 {
    public final CoroutineScope a;
    public final CoroutineContext b;
    public final u43 c;
    public final tx d;
    public final v33 e;
    public final k8 f;
    public List g;
    public ec3 h;
    public final Mutex i;
    public q01 j;
    public int k;
    public boolean l;
    public final HashSet m;
    public final ArrayList n;
    public CompletableJob o;
    public List p;

    public vi2(CoroutineScope backgroundScope, CoroutineContext backgroundContext, u43 requestThrottler, tx clock, v33 renderingMonitor, k8 adRendererProvider) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(backgroundContext, "backgroundContext");
        Intrinsics.checkNotNullParameter(requestThrottler, "requestThrottler");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(renderingMonitor, "renderingMonitor");
        Intrinsics.checkNotNullParameter(adRendererProvider, "adRendererProvider");
        this.a = backgroundScope;
        this.b = backgroundContext;
        this.c = requestThrottler;
        this.d = clock;
        this.e = renderingMonitor;
        this.f = adRendererProvider;
        this.i = MutexKt.Mutex$default(false, 1, null);
        this.k = Integer.MAX_VALUE;
        this.m = new HashSet();
        this.n = new ArrayList();
        CompletableJob completableJobJob$default = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        completableJobJob$default.complete();
        this.o = completableJobJob$default;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0066 A[PHI: r0 r2
  0x0066: PHI (r0v18 java.lang.Object) = (r0v21 java.lang.Object), (r0v1 java.lang.Object) binds: [B:25:0x0079, B:21:0x0061] A[DONT_GENERATE, DONT_INLINE]
  0x0066: PHI (r2v6 ads_mobile_sdk.vi2) = (r2v9 ads_mobile_sdk.vi2), (r2v13 ads_mobile_sdk.vi2) binds: [B:25:0x0079, B:21:0x0061] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:29:0x0082  */
    /* JADX WARN: Code duplicated, block: B:31:0x0085  */
    /* JADX WARN: Code duplicated, block: B:34:0x0092 A[PHI: r0 r2 r4
  0x0092: PHI (r0v16 java.lang.Object) = (r0v19 java.lang.Object), (r0v1 java.lang.Object) binds: [B:32:0x008f, B:20:0x0059] A[DONT_GENERATE, DONT_INLINE]
  0x0092: PHI (r2v4 ads_mobile_sdk.i2) = (r2v8 ads_mobile_sdk.i2), (r2v14 ads_mobile_sdk.i2) binds: [B:32:0x008f, B:20:0x0059] A[DONT_GENERATE, DONT_INLINE]
  0x0092: PHI (r4v5 ads_mobile_sdk.vi2) = (r4v7 ads_mobile_sdk.vi2), (r4v11 ads_mobile_sdk.vi2) binds: [B:32:0x008f, B:20:0x0059] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:37:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:40:0x00b0 A[Catch: all -> 0x0138, TryCatch #0 {all -> 0x0138, blocks: (B:15:0x0040, B:51:0x00f4, B:53:0x00f8, B:38:0x00ac, B:40:0x00b0, B:41:0x00b5, B:43:0x00c9, B:45:0x00cf, B:47:0x00d3, B:48:0x00dc), top: B:66:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00c9 A[Catch: all -> 0x0138, TryCatch #0 {all -> 0x0138, blocks: (B:15:0x0040, B:51:0x00f4, B:53:0x00f8, B:38:0x00ac, B:40:0x00b0, B:41:0x00b5, B:43:0x00c9, B:45:0x00cf, B:47:0x00d3, B:48:0x00dc), top: B:66:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x00d3 A[Catch: all -> 0x0138, TryCatch #0 {all -> 0x0138, blocks: (B:15:0x0040, B:51:0x00f4, B:53:0x00f8, B:38:0x00ac, B:40:0x00b0, B:41:0x00b5, B:43:0x00c9, B:45:0x00cf, B:47:0x00d3, B:48:0x00dc), top: B:66:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00dc A[Catch: all -> 0x0138, TryCatch #0 {all -> 0x0138, blocks: (B:15:0x0040, B:51:0x00f4, B:53:0x00f8, B:38:0x00ac, B:40:0x00b0, B:41:0x00b5, B:43:0x00c9, B:45:0x00cf, B:47:0x00d3, B:48:0x00dc), top: B:66:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x010b A[Catch: all -> 0x012f, TryCatch #1 {all -> 0x012f, blocks: (B:55:0x0105, B:57:0x010b, B:60:0x0131), top: B:68:0x0105 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00c7 -> B:54:0x0103). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00cd -> B:54:0x0103). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00d3 -> B:54:0x0103). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x00f1 -> B:51:0x00f4). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object a(kotlin.vi2 r16, p005kotlin.coroutines.Continuation r17) {
        /*
            Method dump skipped, instruction units count: 318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.vi2.a(ads_mobile_sdk.vi2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00f1 A[Catch: all -> 0x0039, TRY_LEAVE, TryCatch #2 {all -> 0x0039, blocks: (B:14:0x0034, B:42:0x00eb, B:44:0x00f1), top: B:83:0x0034 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x010e A[Catch: all -> 0x013d, TryCatch #3 {all -> 0x013d, blocks: (B:52:0x0107, B:54:0x010e, B:56:0x0112, B:58:0x0116, B:59:0x0119, B:61:0x011d, B:63:0x0121, B:65:0x0125, B:66:0x0126, B:67:0x012b, B:68:0x012c, B:69:0x0133, B:70:0x0134, B:71:0x013b, B:72:0x013c), top: B:85:0x0107 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x0112 A[Catch: all -> 0x013d, TryCatch #3 {all -> 0x013d, blocks: (B:52:0x0107, B:54:0x010e, B:56:0x0112, B:58:0x0116, B:59:0x0119, B:61:0x011d, B:63:0x0121, B:65:0x0125, B:66:0x0126, B:67:0x012b, B:68:0x012c, B:69:0x0133, B:70:0x0134, B:71:0x013b, B:72:0x013c), top: B:85:0x0107 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x011d A[Catch: all -> 0x013d, TryCatch #3 {all -> 0x013d, blocks: (B:52:0x0107, B:54:0x010e, B:56:0x0112, B:58:0x0116, B:59:0x0119, B:61:0x011d, B:63:0x0121, B:65:0x0125, B:66:0x0126, B:67:0x012b, B:68:0x012c, B:69:0x0133, B:70:0x0134, B:71:0x013b, B:72:0x013c), top: B:85:0x0107 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x0121 A[Catch: all -> 0x013d, TryCatch #3 {all -> 0x013d, blocks: (B:52:0x0107, B:54:0x010e, B:56:0x0112, B:58:0x0116, B:59:0x0119, B:61:0x011d, B:63:0x0121, B:65:0x0125, B:66:0x0126, B:67:0x012b, B:68:0x012c, B:69:0x0133, B:70:0x0134, B:71:0x013b, B:72:0x013c), top: B:85:0x0107 }] */
    /* JADX WARN: Code duplicated, block: B:65:0x0125 A[Catch: all -> 0x013d, TryCatch #3 {all -> 0x013d, blocks: (B:52:0x0107, B:54:0x010e, B:56:0x0112, B:58:0x0116, B:59:0x0119, B:61:0x011d, B:63:0x0121, B:65:0x0125, B:66:0x0126, B:67:0x012b, B:68:0x012c, B:69:0x0133, B:70:0x0134, B:71:0x013b, B:72:0x013c), top: B:85:0x0107 }] */
    /* JADX WARN: Code duplicated, block: B:66:0x0126 A[Catch: all -> 0x013d, TryCatch #3 {all -> 0x013d, blocks: (B:52:0x0107, B:54:0x010e, B:56:0x0112, B:58:0x0116, B:59:0x0119, B:61:0x011d, B:63:0x0121, B:65:0x0125, B:66:0x0126, B:67:0x012b, B:68:0x012c, B:69:0x0133, B:70:0x0134, B:71:0x013b, B:72:0x013c), top: B:85:0x0107 }] */
    /* JADX WARN: Code duplicated, block: B:68:0x012c A[Catch: all -> 0x013d, TryCatch #3 {all -> 0x013d, blocks: (B:52:0x0107, B:54:0x010e, B:56:0x0112, B:58:0x0116, B:59:0x0119, B:61:0x011d, B:63:0x0121, B:65:0x0125, B:66:0x0126, B:67:0x012b, B:68:0x012c, B:69:0x0133, B:70:0x0134, B:71:0x013b, B:72:0x013c), top: B:85:0x0107 }] */
    /* JADX WARN: Code duplicated, block: B:70:0x0134 A[Catch: all -> 0x013d, TryCatch #3 {all -> 0x013d, blocks: (B:52:0x0107, B:54:0x010e, B:56:0x0112, B:58:0x0116, B:59:0x0119, B:61:0x011d, B:63:0x0121, B:65:0x0125, B:66:0x0126, B:67:0x012b, B:68:0x012c, B:69:0x0133, B:70:0x0134, B:71:0x013b, B:72:0x013c), top: B:85:0x0107 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x013c A[Catch: all -> 0x013d, TRY_LEAVE, TryCatch #3 {all -> 0x013d, blocks: (B:52:0x0107, B:54:0x010e, B:56:0x0112, B:58:0x0116, B:59:0x0119, B:61:0x011d, B:63:0x0121, B:65:0x0125, B:66:0x0126, B:67:0x012b, B:68:0x012c, B:69:0x0133, B:70:0x0134, B:71:0x013b, B:72:0x013c), top: B:85:0x0107 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00d0, code lost:
    
        if (kotlin.u43.a(r11, r5, r0) == r1) goto L78;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v5, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r10v0, types: [ads_mobile_sdk.ec3, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v11, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v14, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r10v15, types: [ads_mobile_sdk.ec3] */
    /* JADX WARN: Type inference failed for: r10v17 */
    /* JADX WARN: Type inference failed for: r10v19 */
    /* JADX WARN: Type inference failed for: r10v20 */
    /* JADX WARN: Type inference failed for: r10v21 */
    /* JADX WARN: Type inference failed for: r10v22 */
    /* JADX WARN: Type inference failed for: r10v23 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v8, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r11v14, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v26 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v15, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlin.ec3 r10, p005kotlin.coroutines.Continuation r11) {
        /*
            Method dump skipped, instruction units count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.vi2.a(ads_mobile_sdk.ec3, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:54:0x0130 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:64:0x0177 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(i2 i2Var, Continuation continuation) {
        ni2 ni2Var;
        vi2 vi2Var;
        i2 i2Var2;
        vi2 vi2Var2;
        i2 i2Var3;
        String str;
        j2 j2Var;
        tx txVar;
        long jElapsedRealtime;
        Object objA;
        tx txVar2;
        i2 i2Var4;
        long j;
        vi2 vi2Var3;
        v01 v01Var;
        long rawValue;
        v33 v33Var;
        n01 n01Var;
        NonCancellable nonCancellable;
        oi2 oi2Var;
        if (continuation instanceof ni2) {
            ni2Var = (ni2) continuation;
            int i = ni2Var.h;
            if ((i & Integer.MIN_VALUE) != 0) {
                ni2Var.h = i - Integer.MIN_VALUE;
            } else {
                ni2Var = new ni2(this, continuation);
            }
        } else {
            ni2Var = new ni2(this, continuation);
        }
        ni2 ni2Var2 = ni2Var;
        Object obj = ni2Var2.f;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ni2Var2.h;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            k8 k8Var = this.f;
            ec3 ec3Var = this.h;
            if (ec3Var == null) {
                Intrinsics.throwUninitializedPropertyAccessException("serverTransaction");
                ec3Var = null;
            }
            h8 h8VarA = k8Var.a(ec3Var, i2Var);
            try {
                Iterator it = i2Var.b0.iterator();
                while (true) {
                    if (it.hasNext()) {
                        String str2 = (String) it.next();
                        j2 j2VarA = h8VarA.a(str2);
                        if (j2VarA != null && j2VarA.b()) {
                            v33 v33Var2 = this.e;
                            ni2Var2.a = this;
                            ni2Var2.b = i2Var;
                            ni2Var2.c = str2;
                            ni2Var2.d = j2VarA;
                            ni2Var2.h = 1;
                            if (v33Var2.a(i2Var, ni2Var2) != coroutine_suspended) {
                                vi2Var2 = this;
                                i2Var3 = i2Var;
                                str = str2;
                                j2Var = j2VarA;
                                break;
                            }
                        }
                    } else {
                        n01 n01Var2 = new n01(b(), 2);
                        v33 v33Var3 = this.e;
                        long jM4458getZEROUwyO8pc = Duration.INSTANCE.m4458getZEROUwyO8pc();
                        ni2Var2.a = n01Var2;
                        ni2Var2.h = 5;
                        if (v33Var3.a(n01Var2, i2Var, jM4458getZEROUwyO8pc, ni2Var2) != coroutine_suspended) {
                            return n01Var2;
                        }
                    }
                }
                m21 m21Var = o21.f;
                txVar = vi2Var2.d;
                txVar.getClass();
                jElapsedRealtime = SystemClock.elapsedRealtime();
                int i3 = i2Var3.w;
                ni2Var2.a = vi2Var2;
                ni2Var2.b = i2Var3;
                ni2Var2.c = txVar;
                ni2Var2.d = null;
                ni2Var2.e = jElapsedRealtime;
                ni2Var2.h = 2;
                objA = j2Var.a(str, i3, ni2Var2);
                if (objA != coroutine_suspended) {
                    obj = objA;
                    txVar2 = txVar;
                    i2Var4 = i2Var3;
                    j = jElapsedRealtime;
                    vi2Var3 = vi2Var2;
                    Duration.Companion companion = Duration.INSTANCE;
                    txVar2.getClass();
                    p005kotlin.Pair pair = new p005kotlin.Pair((v01) obj, Duration.m4365boximpl(DurationKt.toDuration(SystemClock.elapsedRealtime() - j, DurationUnit.MILLISECONDS)));
                    v01Var = (v01) pair.component1();
                    rawValue = ((Duration) pair.component2()).getRawValue();
                    v33Var = vi2Var3.e;
                    ni2Var2.a = vi2Var3;
                    ni2Var2.b = i2Var4;
                    ni2Var2.c = v01Var;
                    ni2Var2.h = 3;
                    if (v33Var.a(v01Var, i2Var4, rawValue, ni2Var2) != coroutine_suspended) {
                        return v01Var;
                    }
                }
            } catch (CancellationException unused) {
                vi2Var = this;
                i2Var2 = i2Var;
            }
        } else if (i2 != 1) {
            if (i2 == 2) {
                j = ni2Var2.e;
                txVar2 = (tx) ni2Var2.c;
                i2 i2Var5 = ni2Var2.b;
                vi2 vi2Var4 = (vi2) ni2Var2.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    vi2Var3 = vi2Var4;
                    i2Var4 = i2Var5;
                    try {
                        Duration.Companion companion2 = Duration.INSTANCE;
                        txVar2.getClass();
                        p005kotlin.Pair pair2 = new p005kotlin.Pair((v01) obj, Duration.m4365boximpl(DurationKt.toDuration(SystemClock.elapsedRealtime() - j, DurationUnit.MILLISECONDS)));
                        v01Var = (v01) pair2.component1();
                        rawValue = ((Duration) pair2.component2()).getRawValue();
                        v33Var = vi2Var3.e;
                        ni2Var2.a = vi2Var3;
                        ni2Var2.b = i2Var4;
                        ni2Var2.c = v01Var;
                        ni2Var2.h = 3;
                        if (v33Var.a(v01Var, i2Var4, rawValue, ni2Var2) != coroutine_suspended) {
                            return v01Var;
                        }
                    } catch (CancellationException unused2) {
                        i2Var2 = i2Var4;
                        vi2Var = vi2Var3;
                        n01Var = new n01(vi2Var.b(), 2);
                        nonCancellable = NonCancellable.INSTANCE;
                        oi2Var = new oi2(vi2Var, n01Var, i2Var2, null);
                        ni2Var2.a = n01Var;
                        ni2Var2.b = null;
                        ni2Var2.c = null;
                        ni2Var2.d = null;
                        ni2Var2.h = 4;
                        if (BuildersKt.withContext(nonCancellable, oi2Var, ni2Var2) == coroutine_suspended) {
                            return n01Var;
                        }
                    }
                } catch (CancellationException unused3) {
                    i2Var2 = i2Var5;
                    vi2Var = vi2Var4;
                }
            } else {
                if (i2 != 3) {
                    if (i2 != 4 && i2 != 5) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    n01 n01Var3 = (n01) ni2Var2.a;
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    return n01Var3;
                }
                v01 v01Var2 = (v01) ni2Var2.c;
                i2 i2Var6 = ni2Var2.b;
                vi2Var = (vi2) ni2Var2.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    return v01Var2;
                } catch (CancellationException unused4) {
                    i2Var2 = i2Var6;
                }
            }
            n01Var = new n01(vi2Var.b(), 2);
            nonCancellable = NonCancellable.INSTANCE;
            oi2Var = new oi2(vi2Var, n01Var, i2Var2, null);
            ni2Var2.a = n01Var;
            ni2Var2.b = null;
            ni2Var2.c = null;
            ni2Var2.d = null;
            ni2Var2.h = 4;
            if (BuildersKt.withContext(nonCancellable, oi2Var, ni2Var2) == coroutine_suspended) {
                return n01Var;
            }
        } else {
            j2Var = ni2Var2.d;
            str = (String) ni2Var2.c;
            i2Var3 = ni2Var2.b;
            vi2Var2 = (vi2) ni2Var2.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj);
                m21 m21Var2 = o21.f;
                txVar = vi2Var2.d;
                txVar.getClass();
                jElapsedRealtime = SystemClock.elapsedRealtime();
                int i4 = i2Var3.w;
                ni2Var2.a = vi2Var2;
                ni2Var2.b = i2Var3;
                ni2Var2.c = txVar;
                ni2Var2.d = null;
                ni2Var2.e = jElapsedRealtime;
                ni2Var2.h = 2;
                objA = j2Var.a(str, i4, ni2Var2);
                if (objA != coroutine_suspended) {
                    obj = objA;
                    txVar2 = txVar;
                    i2Var4 = i2Var3;
                    j = jElapsedRealtime;
                    vi2Var3 = vi2Var2;
                    Duration.Companion companion3 = Duration.INSTANCE;
                    txVar2.getClass();
                    p005kotlin.Pair pair3 = new p005kotlin.Pair((v01) obj, Duration.m4365boximpl(DurationKt.toDuration(SystemClock.elapsedRealtime() - j, DurationUnit.MILLISECONDS)));
                    v01Var = (v01) pair3.component1();
                    rawValue = ((Duration) pair3.component2()).getRawValue();
                    v33Var = vi2Var3.e;
                    ni2Var2.a = vi2Var3;
                    ni2Var2.b = i2Var4;
                    ni2Var2.c = v01Var;
                    ni2Var2.h = 3;
                    if (v33Var.a(v01Var, i2Var4, rawValue, ni2Var2) != coroutine_suspended) {
                        return v01Var;
                    }
                }
            } catch (CancellationException unused5) {
                i2Var2 = i2Var3;
                vi2Var = vi2Var2;
            }
        }
        return coroutine_suspended;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0063 A[PHI: r0 r2
  0x0063: PHI (r0v9 ??) = (r0v19 ??), (r0v20 ??), (r0v21 ??) binds: [B:23:0x005f, B:42:0x00b4, B:14:0x002f] A[DONT_GENERATE, DONT_INLINE]
  0x0063: PHI (r2v8 ads_mobile_sdk.vi2) = (r2v1 ads_mobile_sdk.vi2), (r2v3 ads_mobile_sdk.vi2), (r2v12 ads_mobile_sdk.vi2) binds: [B:23:0x005f, B:42:0x00b4, B:14:0x002f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:27:0x0072  */
    /* JADX WARN: Code duplicated, block: B:30:0x007e A[Catch: all -> 0x00bc, TRY_LEAVE, TryCatch #1 {all -> 0x00bc, blocks: (B:28:0x0076, B:30:0x007e, B:35:0x008f, B:20:0x004f), top: B:52:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x008f A[Catch: all -> 0x00bc, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x00bc, blocks: (B:28:0x0076, B:30:0x007e, B:35:0x008f, B:20:0x004f), top: B:52:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v2, types: [ads_mobile_sdk.li2, kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v3, types: [ads_mobile_sdk.li2, kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r0v5, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.lang.Object, kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9, types: [ads_mobile_sdk.li2, kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v3, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r10v6, types: [ads_mobile_sdk.li2, kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r10v8, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v7, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r8v1, types: [kotlinx.coroutines.CompletableJob] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00b4 -> B:24:0x0063). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object a(p005kotlin.coroutines.Continuation r10) {
        /*
            r9 = this;
            boolean r0 = r10 instanceof kotlin.li2
            if (r0 == 0) goto L13
            r0 = r10
            ads_mobile_sdk.li2 r0 = (kotlin.li2) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.li2 r0 = new ads_mobile_sdk.li2
            r0.<init>(r9, r10)
        L18:
            java.lang.Object r10 = r0.c
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 4
            r4 = 3
            r5 = 2
            r6 = 1
            r7 = 0
            if (r2 == 0) goto L5f
            if (r2 == r6) goto L53
            if (r2 == r5) goto L4b
            if (r2 == r4) goto L3f
            if (r2 != r3) goto L37
            java.lang.Object r2 = r0.a
            ads_mobile_sdk.vi2 r2 = (kotlin.vi2) r2
            p005kotlin.ResultKt.throwOnFailure(r10)
            goto L63
        L37:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L3f:
            kotlinx.coroutines.sync.Mutex r2 = r0.b
            java.lang.Object r8 = r0.a
            ads_mobile_sdk.vi2 r8 = (kotlin.vi2) r8
            p005kotlin.ResultKt.throwOnFailure(r10)
        L48:
            r10 = r2
            r2 = r8
            goto La5
        L4b:
            java.lang.Object r0 = r0.a
            kotlinx.coroutines.sync.Mutex r0 = (kotlinx.coroutines.sync.Mutex) r0
            p005kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> Lbc
            goto L8b
        L53:
            kotlinx.coroutines.sync.Mutex r2 = r0.b
            java.lang.Object r8 = r0.a
            ads_mobile_sdk.vi2 r8 = (kotlin.vi2) r8
            p005kotlin.ResultKt.throwOnFailure(r10)
            r10 = r0
            r0 = r2
            goto L76
        L5f:
            p005kotlin.ResultKt.throwOnFailure(r10)
            r2 = r9
        L63:
            kotlinx.coroutines.sync.Mutex r10 = r2.i
            r0.a = r2
            r0.b = r10
            r0.e = r6
            java.lang.Object r8 = r10.lock(r7, r0)
            if (r8 != r1) goto L72
            goto Lb6
        L72:
            r8 = r0
            r0 = r10
            r10 = r8
            r8 = r2
        L76:
            kotlinx.coroutines.CompletableJob r2 = r8.o     // Catch: java.lang.Throwable -> Lbc
            boolean r2 = r2.isCompleted()     // Catch: java.lang.Throwable -> Lbc
            if (r2 == 0) goto L8f
            r10.a = r0     // Catch: java.lang.Throwable -> Lbc
            r10.b = r7     // Catch: java.lang.Throwable -> Lbc
            r10.e = r5     // Catch: java.lang.Throwable -> Lbc
            ads_mobile_sdk.i2 r10 = r8.c()     // Catch: java.lang.Throwable -> Lbc
            if (r10 != r1) goto L8b
            goto Lb6
        L8b:
            r0.unlock(r7)
            return r10
        L8f:
            kotlin.Unit r2 = p005kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> Lbc
            r0.unlock(r7)
            kotlinx.coroutines.sync.Mutex r2 = r8.i
            r10.a = r8
            r10.b = r2
            r10.e = r4
            java.lang.Object r0 = r2.lock(r7, r10)
            if (r0 != r1) goto La3
            goto Lb6
        La3:
            r0 = r10
            goto L48
        La5:
            kotlinx.coroutines.CompletableJob r8 = r2.o     // Catch: java.lang.Throwable -> Lb7
            r10.unlock(r7)
            r0.a = r2
            r0.b = r7
            r0.e = r3
            java.lang.Object r10 = r8.join(r0)
            if (r10 != r1) goto L63
        Lb6:
            return r1
        Lb7:
            r0 = move-exception
            r10.unlock(r7)
            throw r0
        Lbc:
            r10 = move-exception
            r0.unlock(r7)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.vi2.a(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final boolean a() {
        ArrayList arrayList = this.n;
        if (!(arrayList instanceof Collection) || !arrayList.isEmpty()) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (((i2) it.next()).w < this.k) {
                    return true;
                }
            }
        }
        List list = this.p;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("remainingAdConfigs");
            list = null;
        }
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            if (((i2) it2.next()).w < this.k) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0058 A[PHI: r2
  0x0058: PHI (r2v6 ads_mobile_sdk.vi2) = (r2v4 ads_mobile_sdk.vi2), (r2v8 ads_mobile_sdk.vi2) binds: [B:30:0x00a5, B:15:0x0053] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:25:0x007a  */
    /* JADX WARN: Code duplicated, block: B:29:0x009a A[PHI: r2
  0x009a: PHI (r2v4 ads_mobile_sdk.vi2) = (r2v2 ads_mobile_sdk.vi2), (r2v5 ads_mobile_sdk.vi2) binds: [B:27:0x0097, B:17:0x005a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:42:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:43:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:53:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:54:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:56:0x0101  */
    /* JADX WARN: Code duplicated, block: B:63:0x0112  */
    /* JADX WARN: Code duplicated, block: B:66:0x011b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:67:0x011c  */
    /* JADX WARN: Code duplicated, block: B:75:0x00cf A[EXC_TOP_SPLITTER, PHI: r2 r6 r9
  0x00cf: PHI (r2v13 kotlinx.coroutines.sync.Mutex) = (r2v10 kotlinx.coroutines.sync.Mutex), (r2v16 kotlinx.coroutines.sync.Mutex) binds: [B:37:0x00cc, B:13:0x0039] A[DONT_GENERATE, DONT_INLINE]
  0x00cf: PHI (r6v5 ads_mobile_sdk.vi2) = (r6v3 ads_mobile_sdk.vi2), (r6v8 ads_mobile_sdk.vi2) binds: [B:37:0x00cc, B:13:0x0039] A[DONT_GENERATE, DONT_INLINE]
  0x00cf: PHI (r9v18 ads_mobile_sdk.q01) = (r9v17 ads_mobile_sdk.q01), (r9v22 ads_mobile_sdk.q01) binds: [B:37:0x00cc, B:13:0x0039] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:77:0x00b8 A[EXC_TOP_SPLITTER, PHI: r2 r6
  0x00b8: PHI (r2v9 kotlinx.coroutines.sync.Mutex) = (r2v7 kotlinx.coroutines.sync.Mutex), (r2v12 kotlinx.coroutines.sync.Mutex) binds: [B:33:0x00b5, B:14:0x0048] A[DONT_GENERATE, DONT_INLINE]
  0x00b8: PHI (r6v3 ads_mobile_sdk.vi2) = (r6v2 ads_mobile_sdk.vi2), (r6v4 ads_mobile_sdk.vi2) binds: [B:33:0x00b5, B:14:0x0048] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(Continuation continuation) {
        pi2 pi2Var;
        vi2 vi2Var;
        ec3 ec3Var;
        ri2 ri2Var;
        v33 v33Var;
        vi2 vi2Var2;
        Mutex mutex;
        q01 q01Var;
        Mutex mutex2;
        boolean z;
        q01 q01Var2;
        v01 v01Var;
        Flow flow;
        vi2 vi2Var3;
        q01 q01Var3;
        zh1 zh1Var;
        ks3 ks3VarA;
        if (continuation instanceof pi2) {
            pi2Var = (pi2) continuation;
            int i = pi2Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                pi2Var.f = i - Integer.MIN_VALUE;
            } else {
                pi2Var = new pi2(this, continuation);
            }
        } else {
            pi2Var = new pi2(this, continuation);
        }
        Object obj = pi2Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        m33 m33Var = null;
        switch (pi2Var.f) {
            case 0:
                p005kotlin.ResultKt.throwOnFailure(obj);
                pi2Var.a = this;
                pi2Var.f = 1;
                if (c(pi2Var) != coroutine_suspended) {
                    vi2Var = this;
                    ec3Var = vi2Var.h;
                    if (ec3Var == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("serverTransaction");
                        ec3Var = null;
                    }
                    ri2Var = new ri2(vi2Var, Integer.max(1, ec3Var.b.b.l), null);
                    pi2Var.a = vi2Var;
                    pi2Var.f = 2;
                    if (SupervisorKt.supervisorScope(ri2Var, pi2Var) != coroutine_suspended) {
                        v33Var = vi2Var.e;
                        pi2Var.a = vi2Var;
                        pi2Var.f = 3;
                        if (v33Var.a(pi2Var) != coroutine_suspended) {
                            vi2Var2 = vi2Var;
                            mutex = vi2Var2.i;
                            pi2Var.a = vi2Var2;
                            pi2Var.b = mutex;
                            pi2Var.f = 4;
                            if (mutex.lock(null, pi2Var) != coroutine_suspended) {
                                try {
                                    q01Var = vi2Var2.j;
                                    mutex.unlock(null);
                                    mutex2 = vi2Var2.i;
                                    pi2Var.a = vi2Var2;
                                    pi2Var.b = q01Var;
                                    pi2Var.c = mutex2;
                                    pi2Var.f = 5;
                                    if (mutex2.lock(null, pi2Var) != coroutine_suspended) {
                                        try {
                                            z = vi2Var2.l;
                                            mutex2.unlock(null);
                                            if (!z) {
                                                if (q01Var != null || (flow = (Flow) q01Var.b) == null) {
                                                    q01Var2 = q01Var;
                                                    v01Var = null;
                                                } else {
                                                    pi2Var.a = vi2Var2;
                                                    pi2Var.b = q01Var;
                                                    pi2Var.c = null;
                                                    pi2Var.f = 6;
                                                    Object objFirst = FlowKt.first(flow, pi2Var);
                                                    if (objFirst != coroutine_suspended) {
                                                        q01Var2 = q01Var;
                                                        obj = objFirst;
                                                        vi2Var3 = vi2Var2;
                                                        v01Var = (v01) obj;
                                                        vi2Var2 = vi2Var3;
                                                    }
                                                }
                                                if (v01Var instanceof q01) {
                                                    q01Var3 = (q01) v01Var;
                                                } else {
                                                    q01Var3 = null;
                                                }
                                                if (q01Var3 != null && (zh1Var = (zh1) q01Var3.b) != null && (ks3VarA = zh1Var.a()) != null) {
                                                    m33Var = ks3VarA.c;
                                                }
                                                if (m33Var != null) {
                                                    m33Var.f = Boxing.boxBoolean(true);
                                                }
                                                q01Var = q01Var2;
                                            }
                                            if (q01Var != null) {
                                                return q01Var;
                                            }
                                            return new n01(vi2Var2.b(), 2);
                                        } catch (Throwable th) {
                                            mutex2.unlock(null);
                                            throw th;
                                        }
                                    }
                                } catch (Throwable th2) {
                                    mutex.unlock(null);
                                    throw th2;
                                }
                            }
                        }
                    }
                }
                return coroutine_suspended;
            case 1:
                vi2Var = pi2Var.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
                ec3Var = vi2Var.h;
                if (ec3Var == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("serverTransaction");
                    ec3Var = null;
                }
                ri2Var = new ri2(vi2Var, Integer.max(1, ec3Var.b.b.l), null);
                pi2Var.a = vi2Var;
                pi2Var.f = 2;
                if (SupervisorKt.supervisorScope(ri2Var, pi2Var) != coroutine_suspended) {
                    v33Var = vi2Var.e;
                    pi2Var.a = vi2Var;
                    pi2Var.f = 3;
                    if (v33Var.a(pi2Var) != coroutine_suspended) {
                        vi2Var2 = vi2Var;
                        mutex = vi2Var2.i;
                        pi2Var.a = vi2Var2;
                        pi2Var.b = mutex;
                        pi2Var.f = 4;
                        if (mutex.lock(null, pi2Var) != coroutine_suspended) {
                            q01Var = vi2Var2.j;
                            mutex.unlock(null);
                            mutex2 = vi2Var2.i;
                            pi2Var.a = vi2Var2;
                            pi2Var.b = q01Var;
                            pi2Var.c = mutex2;
                            pi2Var.f = 5;
                            if (mutex2.lock(null, pi2Var) != coroutine_suspended) {
                                z = vi2Var2.l;
                                mutex2.unlock(null);
                                if (!z) {
                                    if (q01Var != null) {
                                    }
                                    q01Var2 = q01Var;
                                    v01Var = null;
                                    if (v01Var instanceof q01) {
                                        q01Var3 = (q01) v01Var;
                                    } else {
                                        q01Var3 = null;
                                    }
                                    if (q01Var3 != null) {
                                        m33Var = ks3VarA.c;
                                    }
                                    if (m33Var != null) {
                                        m33Var.f = Boxing.boxBoolean(true);
                                    }
                                    q01Var = q01Var2;
                                    break;
                                }
                                if (q01Var != null) {
                                    return q01Var;
                                }
                                return new n01(vi2Var2.b(), 2);
                            }
                        }
                    }
                }
                return coroutine_suspended;
            case 2:
                vi2Var = pi2Var.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
                v33Var = vi2Var.e;
                pi2Var.a = vi2Var;
                pi2Var.f = 3;
                if (v33Var.a(pi2Var) != coroutine_suspended) {
                    vi2Var2 = vi2Var;
                    mutex = vi2Var2.i;
                    pi2Var.a = vi2Var2;
                    pi2Var.b = mutex;
                    pi2Var.f = 4;
                    if (mutex.lock(null, pi2Var) != coroutine_suspended) {
                        q01Var = vi2Var2.j;
                        mutex.unlock(null);
                        mutex2 = vi2Var2.i;
                        pi2Var.a = vi2Var2;
                        pi2Var.b = q01Var;
                        pi2Var.c = mutex2;
                        pi2Var.f = 5;
                        if (mutex2.lock(null, pi2Var) != coroutine_suspended) {
                            z = vi2Var2.l;
                            mutex2.unlock(null);
                            if (!z) {
                                if (q01Var != null) {
                                }
                                q01Var2 = q01Var;
                                v01Var = null;
                                if (v01Var instanceof q01) {
                                    q01Var3 = (q01) v01Var;
                                } else {
                                    q01Var3 = null;
                                }
                                if (q01Var3 != null) {
                                    m33Var = ks3VarA.c;
                                }
                                if (m33Var != null) {
                                    m33Var.f = Boxing.boxBoolean(true);
                                }
                                q01Var = q01Var2;
                                break;
                            }
                            if (q01Var != null) {
                                return q01Var;
                            }
                            return new n01(vi2Var2.b(), 2);
                        }
                    }
                }
                return coroutine_suspended;
            case 3:
                vi2Var = pi2Var.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
                vi2Var2 = vi2Var;
                mutex = vi2Var2.i;
                pi2Var.a = vi2Var2;
                pi2Var.b = mutex;
                pi2Var.f = 4;
                if (mutex.lock(null, pi2Var) != coroutine_suspended) {
                    q01Var = vi2Var2.j;
                    mutex.unlock(null);
                    mutex2 = vi2Var2.i;
                    pi2Var.a = vi2Var2;
                    pi2Var.b = q01Var;
                    pi2Var.c = mutex2;
                    pi2Var.f = 5;
                    if (mutex2.lock(null, pi2Var) != coroutine_suspended) {
                        z = vi2Var2.l;
                        mutex2.unlock(null);
                        if (!z) {
                            if (q01Var != null) {
                            }
                            q01Var2 = q01Var;
                            v01Var = null;
                            if (v01Var instanceof q01) {
                                q01Var3 = (q01) v01Var;
                            } else {
                                q01Var3 = null;
                            }
                            if (q01Var3 != null) {
                                m33Var = ks3VarA.c;
                            }
                            if (m33Var != null) {
                                m33Var.f = Boxing.boxBoolean(true);
                            }
                            q01Var = q01Var2;
                            break;
                        }
                        if (q01Var != null) {
                            return q01Var;
                        }
                        return new n01(vi2Var2.b(), 2);
                    }
                }
                return coroutine_suspended;
            case 4:
                mutex = (Mutex) pi2Var.b;
                vi2Var2 = pi2Var.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
                q01Var = vi2Var2.j;
                mutex.unlock(null);
                mutex2 = vi2Var2.i;
                pi2Var.a = vi2Var2;
                pi2Var.b = q01Var;
                pi2Var.c = mutex2;
                pi2Var.f = 5;
                if (mutex2.lock(null, pi2Var) != coroutine_suspended) {
                    z = vi2Var2.l;
                    mutex2.unlock(null);
                    if (!z) {
                        if (q01Var != null) {
                        }
                        q01Var2 = q01Var;
                        v01Var = null;
                        if (v01Var instanceof q01) {
                            q01Var3 = (q01) v01Var;
                        } else {
                            q01Var3 = null;
                        }
                        if (q01Var3 != null) {
                            m33Var = ks3VarA.c;
                        }
                        if (m33Var != null) {
                            m33Var.f = Boxing.boxBoolean(true);
                        }
                        q01Var = q01Var2;
                        break;
                    }
                    if (q01Var != null) {
                        return q01Var;
                    }
                    return new n01(vi2Var2.b(), 2);
                }
                return coroutine_suspended;
            case 5:
                mutex2 = pi2Var.c;
                q01 q01Var4 = (q01) pi2Var.b;
                vi2 vi2Var4 = pi2Var.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
                q01Var = q01Var4;
                vi2Var2 = vi2Var4;
                z = vi2Var2.l;
                mutex2.unlock(null);
                if (!z) {
                    if (q01Var != null) {
                    }
                    q01Var2 = q01Var;
                    v01Var = null;
                    if (v01Var instanceof q01) {
                        q01Var3 = (q01) v01Var;
                    } else {
                        q01Var3 = null;
                    }
                    if (q01Var3 != null) {
                        m33Var = ks3VarA.c;
                    }
                    if (m33Var != null) {
                        m33Var.f = Boxing.boxBoolean(true);
                    }
                    q01Var = q01Var2;
                    break;
                }
                if (q01Var != null) {
                    return q01Var;
                }
                return new n01(vi2Var2.b(), 2);
            case 6:
                q01Var2 = (q01) pi2Var.b;
                vi2Var3 = pi2Var.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
                v01Var = (v01) obj;
                vi2Var2 = vi2Var3;
                if (v01Var instanceof q01) {
                    q01Var3 = (q01) v01Var;
                } else {
                    q01Var3 = null;
                }
                if (q01Var3 != null) {
                    m33Var = ks3VarA.c;
                }
                if (m33Var != null) {
                    m33Var.f = Boxing.boxBoolean(true);
                }
                q01Var = q01Var2;
                if (q01Var != null) {
                    return q01Var;
                }
                return new n01(vi2Var2.b(), 2);
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public final String b() {
        ec3 ec3Var = this.h;
        if (ec3Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("serverTransaction");
            ec3Var = null;
        }
        et etVar = ec3Var.b.b.g;
        if (etVar != null) {
            return String.valueOf(etVar);
        }
        ir0 ir0Var = ir0.b;
        return "No fill.";
    }

    public final i2 c() {
        Object next;
        List list = this.p;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("remainingAdConfigs");
            list = null;
        }
        Iterator it = list.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (CollectionsKt.contains(this.m, ((i2) next).U));
        i2 i2Var = (i2) next;
        if (i2Var == null || i2Var.w > this.k) {
            return null;
        }
        this.n.add(i2Var);
        List list2 = this.p;
        if (list2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("remainingAdConfigs");
            list2 = null;
        }
        list2.remove(i2Var);
        String str = i2Var.U;
        if (str != null && str.length() != 0) {
            this.m.add(str);
        }
        if (i2Var.c0) {
            this.o = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        }
        return i2Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x007d, code lost:
    
        if (r8.a(r2, r0) == r1) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(p005kotlin.coroutines.Continuation r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof kotlin.ui2
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.ui2 r0 = (kotlin.ui2) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.ui2 r0 = new ads_mobile_sdk.ui2
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.c
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L3d
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            p005kotlin.ResultKt.throwOnFailure(r8)
            goto L80
        L2d:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L35:
            kotlinx.coroutines.sync.Mutex r2 = r0.b
            ads_mobile_sdk.vi2 r4 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r8)
            goto L50
        L3d:
            p005kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Mutex r2 = r7.i
            r0.a = r7
            r0.b = r2
            r0.e = r4
            java.lang.Object r8 = r2.lock(r5, r0)
            if (r8 != r1) goto L4f
            goto L7f
        L4f:
            r4 = r7
        L50:
            ads_mobile_sdk.ec3 r8 = r4.h     // Catch: java.lang.Throwable -> L83
            java.lang.String r6 = "serverTransaction"
            if (r8 != 0) goto L5a
            p005kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r6)     // Catch: java.lang.Throwable -> L83
            r8 = r5
        L5a:
            ads_mobile_sdk.ac3 r8 = r8.b     // Catch: java.lang.Throwable -> L83
            java.util.List r8 = r8.a     // Catch: java.lang.Throwable -> L83
            java.util.List r8 = p005kotlin.collections.CollectionsKt.toMutableList(r8)     // Catch: java.lang.Throwable -> L83
            r4.p = r8     // Catch: java.lang.Throwable -> L83
            kotlin.Unit r8 = p005kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L83
            r2.unlock(r5)
            ads_mobile_sdk.v33 r8 = r4.e
            ads_mobile_sdk.ec3 r2 = r4.h
            if (r2 != 0) goto L73
            p005kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r6)
            r2 = r5
        L73:
            r0.a = r5
            r0.b = r5
            r0.e = r3
            java.lang.Object r8 = r8.a(r2, r0)
            if (r8 != r1) goto L80
        L7f:
            return r1
        L80:
            kotlin.Unit r8 = p005kotlin.Unit.INSTANCE
            return r8
        L83:
            r8 = move-exception
            r2.unlock(r5)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.vi2.c(kotlin.coroutines.Continuation):java.lang.Object");
    }
}

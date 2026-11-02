package kotlin;

import android.content.Context;
import android.os.Bundle;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class b93 {
    public final Context a;
    public final tx b;
    public final pn c;
    public final f0 d;
    public final rv1 e;
    public final CoroutineScope f;
    public final g83 g;
    public final hf h;
    public final BaseRequest i;
    public final m13 j;
    public final long k;
    public final long l;
    public final Mutex m;
    public final ArrayList n;

    public b93(ex0 flags, Context context, tx clock, pn appState, f0 activityTracker, rv1 mediationAdapterProxyFactory, CoroutineScope backgroundScope, g83 rootTraceCreator, hf adapterInitializer, BaseRequest baseRequest, m13 recursiveAdData) {
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(appState, "appState");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(mediationAdapterProxyFactory, "mediationAdapterProxyFactory");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(adapterInitializer, "adapterInitializer");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(recursiveAdData, "recursiveAdData");
        this.a = context;
        this.b = clock;
        this.c = appState;
        this.d = activityTracker;
        this.e = mediationAdapterProxyFactory;
        this.f = backgroundScope;
        this.g = rootTraceCreator;
        this.h = adapterInitializer;
        this.i = baseRequest;
        this.j = recursiveAdData;
        this.k = flags.B0();
        this.l = Duration.m4397timesUwyO8pc(kj3.e.d(), flags.C0());
        this.m = MutexKt.Mutex$default(false, 1, null);
        this.n = new ArrayList();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00e8, code lost:
    
        if (r1.lock(null, r8) == r9) goto L49;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(android.os.Bundle r22, android.os.Bundle r23, com.google.android.libraries.ads.mobile.sdk.banner.AdSize r24, java.lang.String r25, java.lang.String r26, p005kotlin.coroutines.Continuation r27) {
        /*
            Method dump skipped, instruction units count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.b93.a(android.os.Bundle, android.os.Bundle, com.google.android.libraries.ads.mobile.sdk.banner.AdSize, java.lang.String, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    public final Object a(AdSize adSize, j53 j53Var, BaseRequest baseRequest, Continuation continuation) {
        v83 v83Var;
        b93 b93Var;
        b93 b93Var2;
        Mutex mutex;
        if (continuation instanceof v83) {
            v83Var = (v83) continuation;
            int i = v83Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                v83Var.e = i - Integer.MIN_VALUE;
            } else {
                v83Var = new v83(this, continuation);
            }
        } else {
            v83Var = new v83(this, continuation);
        }
        v83 v83Var2 = v83Var;
        Object obj = v83Var2.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = v83Var2.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            m21 m21Var = o21.f;
            long j = this.l;
            x83 x83Var = new x83(this, baseRequest, j53Var, adSize, null);
            v83Var2.a = this;
            v83Var2.e = 1;
            if (m21Var.a(j, x83Var, v83Var2) != coroutine_suspended) {
                b93Var = this;
            }
            return coroutine_suspended;
        }
        if (i2 == 1) {
            b93Var = v83Var2.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        } else {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = v83Var2.b;
            b93Var2 = v83Var2.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            return b93Var2.n;
        } finally {
            mutex.unlock(null);
        }
        Mutex mutex2 = b93Var.m;
        v83Var2.a = b93Var;
        v83Var2.b = mutex2;
        v83Var2.e = 2;
        if (mutex2.lock(null, v83Var2) != coroutine_suspended) {
            b93Var2 = b93Var;
            mutex = mutex2;
            return b93Var2.n;
        }
        return coroutine_suspended;
    }

    /* JADX WARN: Code duplicated, block: B:105:0x0251 A[Catch: all -> 0x0301, TRY_LEAVE, TryCatch #2 {all -> 0x0301, blocks: (B:103:0x0249, B:105:0x0251, B:108:0x0276, B:110:0x0288, B:111:0x028d, B:113:0x029d, B:115:0x02a3, B:116:0x02ab, B:118:0x02b1, B:119:0x02c7, B:120:0x02c9), top: B:169:0x0249 }] */
    /* JADX WARN: Code duplicated, block: B:108:0x0276 A[Catch: all -> 0x0301, TRY_ENTER, TryCatch #2 {all -> 0x0301, blocks: (B:103:0x0249, B:105:0x0251, B:108:0x0276, B:110:0x0288, B:111:0x028d, B:113:0x029d, B:115:0x02a3, B:116:0x02ab, B:118:0x02b1, B:119:0x02c7, B:120:0x02c9), top: B:169:0x0249 }] */
    /* JADX WARN: Code duplicated, block: B:110:0x0288 A[Catch: all -> 0x0301, TryCatch #2 {all -> 0x0301, blocks: (B:103:0x0249, B:105:0x0251, B:108:0x0276, B:110:0x0288, B:111:0x028d, B:113:0x029d, B:115:0x02a3, B:116:0x02ab, B:118:0x02b1, B:119:0x02c7, B:120:0x02c9), top: B:169:0x0249 }] */
    /* JADX WARN: Code duplicated, block: B:118:0x02b1 A[Catch: all -> 0x0301, LOOP:0: B:116:0x02ab->B:118:0x02b1, LOOP_END, TryCatch #2 {all -> 0x0301, blocks: (B:103:0x0249, B:105:0x0251, B:108:0x0276, B:110:0x0288, B:111:0x028d, B:113:0x029d, B:115:0x02a3, B:116:0x02ab, B:118:0x02b1, B:119:0x02c7, B:120:0x02c9), top: B:169:0x0249 }] */
    /* JADX WARN: Code duplicated, block: B:125:0x02eb  */
    /* JADX WARN: Code duplicated, block: B:128:0x02f2 A[Catch: all -> 0x007f, TRY_LEAVE, TryCatch #10 {all -> 0x007f, blocks: (B:16:0x004c, B:126:0x02ec, B:128:0x02f2, B:21:0x006e), top: B:174:0x0037 }] */
    /* JADX WARN: Code duplicated, block: B:141:0x030d A[Catch: all -> 0x033c, TryCatch #6 {all -> 0x033c, blocks: (B:139:0x0306, B:141:0x030d, B:143:0x0311, B:145:0x0315, B:146:0x0318, B:148:0x031c, B:150:0x0320, B:152:0x0324, B:153:0x0325, B:154:0x032a, B:155:0x032b, B:156:0x0332, B:157:0x0333, B:158:0x033a, B:159:0x033b), top: B:176:0x0306 }] */
    /* JADX WARN: Code duplicated, block: B:148:0x031c A[Catch: all -> 0x033c, TryCatch #6 {all -> 0x033c, blocks: (B:139:0x0306, B:141:0x030d, B:143:0x0311, B:145:0x0315, B:146:0x0318, B:148:0x031c, B:150:0x0320, B:152:0x0324, B:153:0x0325, B:154:0x032a, B:155:0x032b, B:156:0x0332, B:157:0x0333, B:158:0x033a, B:159:0x033b), top: B:176:0x0306 }] */
    /* JADX WARN: Code duplicated, block: B:150:0x0320 A[Catch: all -> 0x033c, TryCatch #6 {all -> 0x033c, blocks: (B:139:0x0306, B:141:0x030d, B:143:0x0311, B:145:0x0315, B:146:0x0318, B:148:0x031c, B:150:0x0320, B:152:0x0324, B:153:0x0325, B:154:0x032a, B:155:0x032b, B:156:0x0332, B:157:0x0333, B:158:0x033a, B:159:0x033b), top: B:176:0x0306 }] */
    /* JADX WARN: Code duplicated, block: B:152:0x0324 A[Catch: all -> 0x033c, TryCatch #6 {all -> 0x033c, blocks: (B:139:0x0306, B:141:0x030d, B:143:0x0311, B:145:0x0315, B:146:0x0318, B:148:0x031c, B:150:0x0320, B:152:0x0324, B:153:0x0325, B:154:0x032a, B:155:0x032b, B:156:0x0332, B:157:0x0333, B:158:0x033a, B:159:0x033b), top: B:176:0x0306 }] */
    /* JADX WARN: Code duplicated, block: B:153:0x0325 A[Catch: all -> 0x033c, TryCatch #6 {all -> 0x033c, blocks: (B:139:0x0306, B:141:0x030d, B:143:0x0311, B:145:0x0315, B:146:0x0318, B:148:0x031c, B:150:0x0320, B:152:0x0324, B:153:0x0325, B:154:0x032a, B:155:0x032b, B:156:0x0332, B:157:0x0333, B:158:0x033a, B:159:0x033b), top: B:176:0x0306 }] */
    /* JADX WARN: Code duplicated, block: B:155:0x032b A[Catch: all -> 0x033c, TryCatch #6 {all -> 0x033c, blocks: (B:139:0x0306, B:141:0x030d, B:143:0x0311, B:145:0x0315, B:146:0x0318, B:148:0x031c, B:150:0x0320, B:152:0x0324, B:153:0x0325, B:154:0x032a, B:155:0x032b, B:156:0x0332, B:157:0x0333, B:158:0x033a, B:159:0x033b), top: B:176:0x0306 }] */
    /* JADX WARN: Code duplicated, block: B:157:0x0333 A[Catch: all -> 0x033c, TryCatch #6 {all -> 0x033c, blocks: (B:139:0x0306, B:141:0x030d, B:143:0x0311, B:145:0x0315, B:146:0x0318, B:148:0x031c, B:150:0x0320, B:152:0x0324, B:153:0x0325, B:154:0x032a, B:155:0x032b, B:156:0x0332, B:157:0x0333, B:158:0x033a, B:159:0x033b), top: B:176:0x0306 }] */
    /* JADX WARN: Code duplicated, block: B:159:0x033b A[Catch: all -> 0x033c, TRY_LEAVE, TryCatch #6 {all -> 0x033c, blocks: (B:139:0x0306, B:141:0x030d, B:143:0x0311, B:145:0x0315, B:146:0x0318, B:148:0x031c, B:150:0x0320, B:152:0x0324, B:153:0x0325, B:154:0x032a, B:155:0x032b, B:156:0x0332, B:157:0x0333, B:158:0x033a, B:159:0x033b), top: B:176:0x0306 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x0113 A[Catch: all -> 0x01c1, TRY_LEAVE, TryCatch #1 {all -> 0x01c1, blocks: (B:40:0x010b, B:42:0x0113, B:45:0x0138, B:47:0x014b, B:48:0x0150, B:50:0x015d, B:52:0x0163, B:53:0x016b, B:55:0x0171, B:56:0x0187, B:57:0x0189), top: B:168:0x010b }] */
    /* JADX WARN: Code duplicated, block: B:45:0x0138 A[Catch: all -> 0x01c1, TRY_ENTER, TryCatch #1 {all -> 0x01c1, blocks: (B:40:0x010b, B:42:0x0113, B:45:0x0138, B:47:0x014b, B:48:0x0150, B:50:0x015d, B:52:0x0163, B:53:0x016b, B:55:0x0171, B:56:0x0187, B:57:0x0189), top: B:168:0x010b }] */
    /* JADX WARN: Code duplicated, block: B:47:0x014b A[Catch: all -> 0x01c1, TryCatch #1 {all -> 0x01c1, blocks: (B:40:0x010b, B:42:0x0113, B:45:0x0138, B:47:0x014b, B:48:0x0150, B:50:0x015d, B:52:0x0163, B:53:0x016b, B:55:0x0171, B:56:0x0187, B:57:0x0189), top: B:168:0x010b }] */
    /* JADX WARN: Code duplicated, block: B:55:0x0171 A[Catch: all -> 0x01c1, LOOP:1: B:53:0x016b->B:55:0x0171, LOOP_END, TryCatch #1 {all -> 0x01c1, blocks: (B:40:0x010b, B:42:0x0113, B:45:0x0138, B:47:0x014b, B:48:0x0150, B:50:0x015d, B:52:0x0163, B:53:0x016b, B:55:0x0171, B:56:0x0187, B:57:0x0189), top: B:168:0x010b }] */
    /* JADX WARN: Code duplicated, block: B:60:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:63:0x01b5 A[Catch: all -> 0x00b5, TRY_LEAVE, TryCatch #5 {all -> 0x00b5, blocks: (B:26:0x008c, B:61:0x01af, B:63:0x01b5, B:29:0x00a6), top: B:174:0x0037 }] */
    /* JADX WARN: Code duplicated, block: B:73:0x01ce A[Catch: all -> 0x01fd, TryCatch #7 {all -> 0x01fd, blocks: (B:71:0x01c7, B:73:0x01ce, B:75:0x01d2, B:77:0x01d6, B:78:0x01d9, B:80:0x01dd, B:82:0x01e1, B:84:0x01e5, B:85:0x01e6, B:86:0x01eb, B:87:0x01ec, B:88:0x01f3, B:89:0x01f4, B:90:0x01fb, B:91:0x01fc), top: B:177:0x01c7 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0021  */
    /* JADX WARN: Code duplicated, block: B:80:0x01dd A[Catch: all -> 0x01fd, TryCatch #7 {all -> 0x01fd, blocks: (B:71:0x01c7, B:73:0x01ce, B:75:0x01d2, B:77:0x01d6, B:78:0x01d9, B:80:0x01dd, B:82:0x01e1, B:84:0x01e5, B:85:0x01e6, B:86:0x01eb, B:87:0x01ec, B:88:0x01f3, B:89:0x01f4, B:90:0x01fb, B:91:0x01fc), top: B:177:0x01c7 }] */
    /* JADX WARN: Code duplicated, block: B:82:0x01e1 A[Catch: all -> 0x01fd, TryCatch #7 {all -> 0x01fd, blocks: (B:71:0x01c7, B:73:0x01ce, B:75:0x01d2, B:77:0x01d6, B:78:0x01d9, B:80:0x01dd, B:82:0x01e1, B:84:0x01e5, B:85:0x01e6, B:86:0x01eb, B:87:0x01ec, B:88:0x01f3, B:89:0x01f4, B:90:0x01fb, B:91:0x01fc), top: B:177:0x01c7 }] */
    /* JADX WARN: Code duplicated, block: B:84:0x01e5 A[Catch: all -> 0x01fd, TryCatch #7 {all -> 0x01fd, blocks: (B:71:0x01c7, B:73:0x01ce, B:75:0x01d2, B:77:0x01d6, B:78:0x01d9, B:80:0x01dd, B:82:0x01e1, B:84:0x01e5, B:85:0x01e6, B:86:0x01eb, B:87:0x01ec, B:88:0x01f3, B:89:0x01f4, B:90:0x01fb, B:91:0x01fc), top: B:177:0x01c7 }] */
    /* JADX WARN: Code duplicated, block: B:85:0x01e6 A[Catch: all -> 0x01fd, TryCatch #7 {all -> 0x01fd, blocks: (B:71:0x01c7, B:73:0x01ce, B:75:0x01d2, B:77:0x01d6, B:78:0x01d9, B:80:0x01dd, B:82:0x01e1, B:84:0x01e5, B:85:0x01e6, B:86:0x01eb, B:87:0x01ec, B:88:0x01f3, B:89:0x01f4, B:90:0x01fb, B:91:0x01fc), top: B:177:0x01c7 }] */
    /* JADX WARN: Code duplicated, block: B:87:0x01ec A[Catch: all -> 0x01fd, TryCatch #7 {all -> 0x01fd, blocks: (B:71:0x01c7, B:73:0x01ce, B:75:0x01d2, B:77:0x01d6, B:78:0x01d9, B:80:0x01dd, B:82:0x01e1, B:84:0x01e5, B:85:0x01e6, B:86:0x01eb, B:87:0x01ec, B:88:0x01f3, B:89:0x01f4, B:90:0x01fb, B:91:0x01fc), top: B:177:0x01c7 }] */
    /* JADX WARN: Code duplicated, block: B:89:0x01f4 A[Catch: all -> 0x01fd, TryCatch #7 {all -> 0x01fd, blocks: (B:71:0x01c7, B:73:0x01ce, B:75:0x01d2, B:77:0x01d6, B:78:0x01d9, B:80:0x01dd, B:82:0x01e1, B:84:0x01e5, B:85:0x01e6, B:86:0x01eb, B:87:0x01ec, B:88:0x01f3, B:89:0x01f4, B:90:0x01fb, B:91:0x01fc), top: B:177:0x01c7 }] */
    /* JADX WARN: Code duplicated, block: B:91:0x01fc A[Catch: all -> 0x01fd, TRY_LEAVE, TryCatch #7 {all -> 0x01fd, blocks: (B:71:0x01c7, B:73:0x01ce, B:75:0x01d2, B:77:0x01d6, B:78:0x01d9, B:80:0x01dd, B:82:0x01e1, B:84:0x01e5, B:85:0x01e6, B:86:0x01eb, B:87:0x01ec, B:88:0x01f3, B:89:0x01f4, B:90:0x01fb, B:91:0x01fc), top: B:177:0x01c7 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.google.android.libraries.ads.mobile.sdk.common.BaseRequest] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15, types: [com.google.android.libraries.ads.mobile.sdk.common.BaseRequest] */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v28, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v29, types: [com.google.android.libraries.ads.mobile.sdk.common.BaseRequest] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v37 */
    /* JADX WARN: Type inference failed for: r2v47, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v49 */
    /* JADX WARN: Type inference failed for: r2v53 */
    /* JADX WARN: Type inference failed for: r2v57 */
    /* JADX WARN: Type inference failed for: r2v58 */
    /* JADX WARN: Type inference failed for: r2v59 */
    /* JADX WARN: Type inference failed for: r2v60 */
    /* JADX WARN: Type inference failed for: r2v61 */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v25 */
    /* JADX WARN: Type inference failed for: r3v26, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r3v27 */
    /* JADX WARN: Type inference failed for: r3v29 */
    /* JADX WARN: Type inference failed for: r3v32 */
    /* JADX WARN: Type inference failed for: r3v34 */
    /* JADX WARN: Type inference failed for: r3v38 */
    /* JADX WARN: Type inference failed for: r3v41 */
    /* JADX WARN: Type inference failed for: r3v42 */
    /* JADX WARN: Type inference failed for: r3v43 */
    /* JADX WARN: Type inference failed for: r3v44 */
    /* JADX WARN: Type inference failed for: r3v45 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v11, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r6v10, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9, types: [ads_mobile_sdk.j53, ads_mobile_sdk.rr3, com.google.android.libraries.ads.mobile.sdk.banner.AdSize, com.google.android.libraries.ads.mobile.sdk.common.BaseRequest, java.lang.Throwable, java.util.Map] */
    /* JADX WARN: Type inference failed for: r8v1, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v29 */
    public final Object a(Map.Entry entry, BaseRequest baseRequest, Map map, j53 j53Var, AdSize adSize, Continuation continuation) {
        a93 a93Var;
        ?? r5;
        ?? r6;
        ?? r2;
        ?? r8;
        ?? r7;
        ?? r9;
        Object objA;
        Map.Entry entry2;
        b93 b93Var;
        AdSize adSize2;
        Object objA2;
        Map.Entry entry3;
        b93 b93Var2;
        AdSize adSize3;
        rr3 rr3Var;
        rr3 rr3Var2;
        ?? r3;
        ?? r4;
        String str;
        Bundle bundle;
        ts tsVar;
        Bundle bundle2;
        String strD;
        Map mapW;
        Object obj;
        rr3 rr3Var3;
        ?? r10;
        ?? r11;
        String str2;
        Bundle bundle3;
        Bundle bundle4;
        ts tsVar2;
        b93 b93Var3;
        Bundle bundle5;
        String strD2;
        Map mapW2;
        ?? r12;
        Object obj2;
        ?? r13 = baseRequest;
        ?? r14 = map;
        j53 j53Var2 = j53Var;
        if (continuation instanceof a93) {
            a93Var = (a93) continuation;
            int i = a93Var.k;
            if ((i & Integer.MIN_VALUE) != 0) {
                a93Var.k = i - Integer.MIN_VALUE;
            } else {
                a93Var = new a93(this, continuation);
            }
        } else {
            a93Var = new a93(this, continuation);
        }
        a93 a93Var2 = a93Var;
        Object obj3 = a93Var2.i;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = a93Var2.k;
        try {
            try {
                if (i2 == 0) {
                    p005kotlin.ResultKt.throwOnFailure(obj3);
                    g83 g83Var = this.g;
                    s11 s11Var = s11.CUI_NAME_RTB_ADAPTER_SIGNALS;
                    List listEmptyList = CollectionsKt.emptyList();
                    ks3 ks3VarA = js3.a();
                    if (hs3.c() == null) {
                        tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3VarA);
                        try {
                            hs3.a().g().c.d = (String) entry.getKey();
                            hf hfVar = this.h;
                            BaseRequest baseRequest2 = this.i;
                            String str3 = (String) entry.getKey();
                            a93Var2.a = this;
                            a93Var2.b = entry;
                            a93Var2.c = r13;
                            a93Var2.d = r14;
                            a93Var2.e = j53Var2;
                            a93Var2.f = adSize;
                            a93Var2.g = tu2VarA;
                            a93Var2.h = tu2VarA;
                            a93Var2.k = 1;
                            objA2 = hfVar.a(baseRequest2, str3, a93Var2);
                            if (objA2 != coroutine_suspended) {
                                entry3 = entry;
                                b93Var2 = this;
                                adSize3 = adSize;
                                rr3Var = tu2VarA;
                                r4 = r13;
                                r3 = r14;
                                rr3Var2 = tu2VarA;
                                if (!((Boolean) objA2).booleanValue()) {
                                    xs3.a(new m01("The adapter requested for collecting bidding signals (" + entry3.getKey() + ") is not eligible because it was excluded by AdRequest.skipUninitializedAdapters and has not yet successfully initialized.", kk1.INVALID_REQUEST), false);
                                    p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                                    CloseableKt.closeFinally(rr3Var2, null);
                                    return unit;
                                }
                                str = (String) entry3.getKey();
                                bundle = r4.getAdSourceExtrasBundles().get(str);
                                if (bundle == null) {
                                    bundle = new Bundle();
                                }
                                tsVar = (ts) r3.get(str);
                                bundle2 = new Bundle();
                                if (tsVar != null) {
                                    for (Map.Entry entry4 : mapW.entrySet()) {
                                        bundle2.putString((String) entry4.getKey(), (String) entry4.getValue());
                                    }
                                    p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                                }
                                strD = j53Var2.d();
                                a93Var2.a = rr3Var;
                                a93Var2.b = rr3Var2;
                                a93Var2.c = null;
                                a93Var2.d = null;
                                a93Var2.e = null;
                                a93Var2.f = null;
                                a93Var2.g = null;
                                a93Var2.h = null;
                                a93Var2.k = 2;
                                if (b93Var2.a(bundle2, bundle, adSize3, str, strD, a93Var2) != coroutine_suspended) {
                                    r14 = rr3Var;
                                    r13 = rr3Var2;
                                    obj = p005kotlin.Unit.INSTANCE;
                                    if (obj instanceof i01) {
                                        xs3.a((i01) obj, false);
                                    }
                                    CloseableKt.closeFinally(r13, 0);
                                    return obj;
                                }
                            }
                        } catch (Throwable th) {
                            th = th;
                            r2 = tu2VarA;
                            r6 = tu2VarA;
                            r6.b(th);
                            if (!(th instanceof v24)) {
                                throw th;
                            }
                            if (!(th instanceof TimeoutCancellationException)) {
                                r6.a(th);
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
                        r9 = 0;
                        rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                        try {
                            hs3.a().g().c.d = (String) entry.getKey();
                            hf hfVar2 = this.h;
                            BaseRequest baseRequest3 = this.i;
                            String str4 = (String) entry.getKey();
                            a93Var2.a = this;
                            a93Var2.b = entry;
                            a93Var2.c = r13;
                            a93Var2.d = r14;
                            a93Var2.e = j53Var2;
                            a93Var2.f = adSize;
                            a93Var2.g = rr3VarA;
                            a93Var2.h = rr3VarA;
                            a93Var2.k = 3;
                            objA = hfVar2.a(baseRequest3, str4, a93Var2);
                            if (objA != coroutine_suspended) {
                                entry2 = entry;
                                b93Var = this;
                                adSize2 = adSize;
                                r5 = rr3VarA;
                                r11 = r13;
                                r10 = r14;
                                rr3Var3 = rr3VarA;
                                if (!((Boolean) objA).booleanValue()) {
                                    xs3.a(new m01("The adapter requested for collecting bidding signals (" + entry2.getKey() + ") is not eligible because it was excluded by AdRequest.skipUninitializedAdapters and has not yet successfully initialized.", kk1.INVALID_REQUEST), false);
                                    p005kotlin.Unit unit3 = p005kotlin.Unit.INSTANCE;
                                    CloseableKt.closeFinally(r5, r9);
                                    return unit3;
                                }
                                str2 = (String) entry2.getKey();
                                bundle3 = r11.getAdSourceExtrasBundles().get(str2);
                                if (bundle3 == null) {
                                    bundle3 = new Bundle();
                                }
                                bundle4 = bundle3;
                                tsVar2 = (ts) r10.get(str2);
                                b93Var3 = b93Var;
                                bundle5 = new Bundle();
                                if (tsVar2 != null) {
                                    for (Map.Entry entry5 : mapW2.entrySet()) {
                                        bundle5.putString((String) entry5.getKey(), (String) entry5.getValue());
                                    }
                                    p005kotlin.Unit unit4 = p005kotlin.Unit.INSTANCE;
                                }
                                strD2 = j53Var2.d();
                                a93Var2.a = rr3Var3;
                                a93Var2.b = r5;
                                a93Var2.c = r9;
                                a93Var2.d = r9;
                                a93Var2.e = r9;
                                a93Var2.f = r9;
                                a93Var2.g = r9;
                                a93Var2.h = r9;
                                a93Var2.k = 4;
                                r14 = rr3Var3;
                                if (b93Var3.a(bundle5, bundle4, adSize2, str2, strD2, a93Var2) != coroutine_suspended) {
                                    r13 = r5;
                                    r14 = r14;
                                    r12 = r9;
                                    obj2 = p005kotlin.Unit.INSTANCE;
                                    if (obj2 instanceof i01) {
                                        xs3.a((i01) obj2, false);
                                    }
                                    CloseableKt.closeFinally(r13, r12);
                                    return obj2;
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            r7 = rr3VarA;
                            r8 = rr3VarA;
                        }
                    }
                    return coroutine_suspended;
                }
                if (i2 == 1) {
                    rr3 rr3Var4 = a93Var2.h;
                    rr3 rr3Var5 = a93Var2.g;
                    adSize3 = a93Var2.f;
                    j53Var2 = a93Var2.e;
                    Map map2 = a93Var2.d;
                    BaseRequest baseRequest4 = a93Var2.c;
                    entry3 = (Map.Entry) a93Var2.b;
                    b93Var2 = (b93) a93Var2.a;
                    p005kotlin.ResultKt.throwOnFailure(obj3);
                    rr3Var2 = rr3Var4;
                    r4 = baseRequest4;
                    objA2 = obj3;
                    rr3Var = rr3Var5;
                    r3 = map2;
                    try {
                        if (!((Boolean) objA2).booleanValue()) {
                            xs3.a(new m01("The adapter requested for collecting bidding signals (" + entry3.getKey() + ") is not eligible because it was excluded by AdRequest.skipUninitializedAdapters and has not yet successfully initialized.", kk1.INVALID_REQUEST), false);
                            p005kotlin.Unit unit5 = p005kotlin.Unit.INSTANCE;
                            CloseableKt.closeFinally(rr3Var2, null);
                            return unit5;
                        }
                        str = (String) entry3.getKey();
                        bundle = r4.getAdSourceExtrasBundles().get(str);
                        if (bundle == null) {
                            bundle = new Bundle();
                        }
                        tsVar = (ts) r3.get(str);
                        bundle2 = new Bundle();
                        if (tsVar != null && (mapW = tsVar.w()) != null) {
                            while (r3.hasNext()) {
                                bundle2.putString((String) entry4.getKey(), (String) entry4.getValue());
                            }
                            p005kotlin.Unit unit6 = p005kotlin.Unit.INSTANCE;
                        }
                        strD = j53Var2.d();
                        a93Var2.a = rr3Var;
                        a93Var2.b = rr3Var2;
                        a93Var2.c = null;
                        a93Var2.d = null;
                        a93Var2.e = null;
                        a93Var2.f = null;
                        a93Var2.g = null;
                        a93Var2.h = null;
                        a93Var2.k = 2;
                        if (b93Var2.a(bundle2, bundle, adSize3, str, strD, a93Var2) != coroutine_suspended) {
                            r14 = rr3Var;
                            r13 = rr3Var2;
                        }
                        return coroutine_suspended;
                    } catch (Throwable th3) {
                        th = th3;
                        r2 = rr3Var2;
                        r6 = rr3Var;
                        try {
                            r6.b(th);
                            if (!(th instanceof v24)) {
                                throw th;
                            }
                            if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                r6.a(th);
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
                                CloseableKt.closeFinally(r2, th4);
                                throw th5;
                            }
                        }
                    }
                }
                if (i2 != 2) {
                    if (i2 == 3) {
                        rr3 rr3Var6 = a93Var2.h;
                        rr3 rr3Var7 = a93Var2.g;
                        adSize2 = a93Var2.f;
                        j53Var2 = a93Var2.e;
                        Map map3 = a93Var2.d;
                        BaseRequest baseRequest5 = a93Var2.c;
                        entry2 = (Map.Entry) a93Var2.b;
                        b93Var = (b93) a93Var2.a;
                        p005kotlin.ResultKt.throwOnFailure(obj3);
                        r5 = rr3Var6;
                        r11 = baseRequest5;
                        rr3Var3 = rr3Var7;
                        r10 = map3;
                        objA = obj3;
                        r9 = 0;
                        try {
                            if (!((Boolean) objA).booleanValue()) {
                                xs3.a(new m01("The adapter requested for collecting bidding signals (" + entry2.getKey() + ") is not eligible because it was excluded by AdRequest.skipUninitializedAdapters and has not yet successfully initialized.", kk1.INVALID_REQUEST), false);
                                p005kotlin.Unit unit7 = p005kotlin.Unit.INSTANCE;
                                CloseableKt.closeFinally(r5, r9);
                                return unit7;
                            }
                            str2 = (String) entry2.getKey();
                            bundle3 = r11.getAdSourceExtrasBundles().get(str2);
                            if (bundle3 == null) {
                                bundle3 = new Bundle();
                            }
                            bundle4 = bundle3;
                            tsVar2 = (ts) r10.get(str2);
                            b93Var3 = b93Var;
                            bundle5 = new Bundle();
                            if (tsVar2 != null && (mapW2 = tsVar2.w()) != null) {
                                while (r2.hasNext()) {
                                    bundle5.putString((String) entry5.getKey(), (String) entry5.getValue());
                                }
                                p005kotlin.Unit unit8 = p005kotlin.Unit.INSTANCE;
                            }
                            strD2 = j53Var2.d();
                            a93Var2.a = rr3Var3;
                            a93Var2.b = r5;
                            a93Var2.c = r9;
                            a93Var2.d = r9;
                            a93Var2.e = r9;
                            a93Var2.f = r9;
                            a93Var2.g = r9;
                            a93Var2.h = r9;
                            a93Var2.k = 4;
                            r14 = rr3Var3;
                            try {
                                if (b93Var3.a(bundle5, bundle4, adSize2, str2, strD2, a93Var2) != coroutine_suspended) {
                                    r13 = r5;
                                    r14 = r14;
                                    r12 = r9;
                                }
                                return coroutine_suspended;
                            } catch (Throwable th6) {
                                th = th6;
                                r8 = r14;
                                r7 = r5;
                                r8.b(th);
                                if (!(th instanceof v24)) {
                                    throw th;
                                }
                                if (!(th instanceof TimeoutCancellationException)) {
                                    r8.a(th);
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
                        } catch (Throwable th7) {
                            th = th7;
                            r14 = rr3Var3;
                        }
                    } else {
                        if (i2 != 4) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        Closeable closeable = (Closeable) a93Var2.b;
                        rr3 rr3Var8 = (rr3) a93Var2.a;
                        p005kotlin.ResultKt.throwOnFailure(obj3);
                        r12 = 0;
                        r13 = closeable;
                        r14 = rr3Var8;
                    }
                    obj2 = p005kotlin.Unit.INSTANCE;
                    if (obj2 instanceof i01) {
                        xs3.a((i01) obj2, false);
                    }
                    CloseableKt.closeFinally(r13, r12);
                    return obj2;
                }
                Closeable closeable2 = (Closeable) a93Var2.b;
                rr3 rr3Var9 = (rr3) a93Var2.a;
                p005kotlin.ResultKt.throwOnFailure(obj3);
                r13 = closeable2;
                r14 = rr3Var9;
                obj = p005kotlin.Unit.INSTANCE;
                if (obj instanceof i01) {
                    xs3.a((i01) obj, false);
                }
                CloseableKt.closeFinally(r13, 0);
                return obj;
            } catch (Throwable th8) {
                th = th8;
                r6 = r14;
                r2 = r13;
            }
        } catch (Throwable th9) {
            th = th9;
            r5 = r13;
        }
        try {
            r8.b(th);
            if (!(th instanceof v24)) {
                throw th;
            }
            if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                r8.a(th);
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
        } catch (Throwable th10) {
            try {
                throw th10;
            } catch (Throwable th11) {
                CloseableKt.closeFinally(r7, th10);
                throw th11;
            }
        }
    }
}

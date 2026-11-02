package kotlin;

import androidx.datastore.core.DataStore;
import com.ironsource.C3510b4;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class q7 implements r6 {
    public final v7 a;
    public final ux b;
    public final d8 c;
    public final CoroutineScope d;
    public final f40 e;
    public final Mutex f;
    public final Mutex g;
    public final Mutex h;
    public boolean i;
    public n6 j;
    public boolean k;
    public final DataStore l;
    public final Mutex m;
    public Job n;

    public q7(DataStore adQualityDataStore, d40 coroutineScopeProvider, v7 dataPinger, ux clock, d8 flags) {
        Intrinsics.checkNotNullParameter(adQualityDataStore, "adQualityDataStore");
        Intrinsics.checkNotNullParameter(coroutineScopeProvider, "coroutineScopeProvider");
        Intrinsics.checkNotNullParameter(dataPinger, "dataPinger");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = dataPinger;
        this.b = clock;
        this.c = flags;
        this.d = coroutineScopeProvider.get();
        this.e = new f40();
        this.f = MutexKt.Mutex$default(false, 1, null);
        this.g = MutexKt.Mutex$default(false, 1, null);
        this.h = MutexKt.Mutex$default(false, 1, null);
        this.l = adQualityDataStore;
        this.m = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX WARN: Code duplicated, block: B:32:0x00af A[Catch: all -> 0x00fd, TRY_LEAVE, TryCatch #1 {all -> 0x00fd, blocks: (B:30:0x00ab, B:32:0x00af, B:35:0x00b5, B:37:0x00ca, B:38:0x00d0), top: B:55:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:35:0x00b5 A[Catch: all -> 0x00fd, TRY_ENTER, TryCatch #1 {all -> 0x00fd, blocks: (B:30:0x00ab, B:32:0x00af, B:35:0x00b5, B:37:0x00ca, B:38:0x00d0), top: B:55:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:37:0x00ca A[Catch: all -> 0x00fd, TryCatch #1 {all -> 0x00fd, blocks: (B:30:0x00ab, B:32:0x00af, B:35:0x00b5, B:37:0x00ca, B:38:0x00d0), top: B:55:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:42:0x00ef A[PHI: r12
  0x00ef: PHI (r12v6 ads_mobile_sdk.q7) = (r12v3 ads_mobile_sdk.q7), (r12v13 ads_mobile_sdk.q7) binds: [B:40:0x00ec, B:17:0x003f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00f7, code lost:
    
        if (r12.d(r0) == r1) goto L44;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(kotlin.q7 r12, java.lang.String r13, java.util.List r14, p005kotlin.coroutines.Continuation r15) {
        /*
            Method dump skipped, instruction units count: 263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.q7.a(ads_mobile_sdk.q7, java.lang.String, java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0087 A[Catch: all -> 0x00e0, TRY_LEAVE, TryCatch #0 {all -> 0x00e0, blocks: (B:30:0x0083, B:32:0x0087, B:35:0x008d), top: B:58:0x0083 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x008d A[Catch: all -> 0x00e0, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x00e0, blocks: (B:30:0x0083, B:32:0x0087, B:35:0x008d), top: B:58:0x0083 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:42:0x00b4 A[Catch: all -> 0x00db, TryCatch #1 {all -> 0x00db, blocks: (B:40:0x00b0, B:42:0x00b4, B:43:0x00ba), top: B:59:0x00b0 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x00cd A[PHI: r11
  0x00cd: PHI (r11v8 ads_mobile_sdk.q7) = (r11v6 ads_mobile_sdk.q7), (r11v14 ads_mobile_sdk.q7) binds: [B:45:0x00ca, B:18:0x0042] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00d5, code lost:
    
        if (r11.c(r0) == r1) goto L49;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(kotlin.q7 r11, p005kotlin.coroutines.Continuation r12) {
        /*
            Method dump skipped, instruction units count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.q7.a(ads_mobile_sdk.q7, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object b(q7 q7Var, Continuation continuation) {
        f7 f7Var;
        Mutex mutex;
        long j;
        q7Var.getClass();
        if (continuation instanceof f7) {
            f7Var = (f7) continuation;
            int i = f7Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                f7Var.f = i - Integer.MIN_VALUE;
            } else {
                f7Var = new f7(q7Var, continuation);
            }
        } else {
            f7Var = new f7(q7Var, continuation);
        }
        Object obj = f7Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = f7Var.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            q7Var.b.getClass();
            long jCurrentTimeMillis = System.currentTimeMillis();
            mutex = q7Var.f;
            f7Var.a = q7Var;
            f7Var.b = mutex;
            f7Var.c = jCurrentTimeMillis;
            f7Var.f = 1;
            if (mutex.lock(null, f7Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            j = jCurrentTimeMillis;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            j = f7Var.c;
            Mutex mutex2 = f7Var.b;
            q7 q7Var2 = f7Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            q7Var = q7Var2;
        }
        try {
            n6 n6Var = q7Var.j;
            if (n6Var == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adQualityDataBuilder");
                n6Var = null;
            }
            n6Var.a(j);
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0095 A[Catch: all -> 0x013a, TRY_LEAVE, TryCatch #1 {all -> 0x013a, blocks: (B:29:0x0091, B:31:0x0095, B:35:0x009c), top: B:74:0x0091 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x009b  */
    /* JADX WARN: Code duplicated, block: B:42:0x00c4 A[Catch: all -> 0x0135, TRY_ENTER, TryCatch #0 {all -> 0x0135, blocks: (B:39:0x00be, B:42:0x00c4, B:43:0x00c8, B:45:0x00cc, B:46:0x00d0, B:48:0x00da, B:49:0x00de, B:51:0x00ea, B:52:0x00ee, B:54:0x00f5, B:55:0x00f9), top: B:72:0x00be }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00cc A[Catch: all -> 0x0135, TryCatch #0 {all -> 0x0135, blocks: (B:39:0x00be, B:42:0x00c4, B:43:0x00c8, B:45:0x00cc, B:46:0x00d0, B:48:0x00da, B:49:0x00de, B:51:0x00ea, B:52:0x00ee, B:54:0x00f5, B:55:0x00f9), top: B:72:0x00be }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00da A[Catch: all -> 0x0135, TryCatch #0 {all -> 0x0135, blocks: (B:39:0x00be, B:42:0x00c4, B:43:0x00c8, B:45:0x00cc, B:46:0x00d0, B:48:0x00da, B:49:0x00de, B:51:0x00ea, B:52:0x00ee, B:54:0x00f5, B:55:0x00f9), top: B:72:0x00be }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00ea A[Catch: all -> 0x0135, TryCatch #0 {all -> 0x0135, blocks: (B:39:0x00be, B:42:0x00c4, B:43:0x00c8, B:45:0x00cc, B:46:0x00d0, B:48:0x00da, B:49:0x00de, B:51:0x00ea, B:52:0x00ee, B:54:0x00f5, B:55:0x00f9), top: B:72:0x00be }] */
    /* JADX WARN: Code duplicated, block: B:54:0x00f5 A[Catch: all -> 0x0135, TryCatch #0 {all -> 0x0135, blocks: (B:39:0x00be, B:42:0x00c4, B:43:0x00c8, B:45:0x00cc, B:46:0x00d0, B:48:0x00da, B:49:0x00de, B:51:0x00ea, B:52:0x00ee, B:54:0x00f5, B:55:0x00f9), top: B:72:0x00be }] */
    /* JADX WARN: Code duplicated, block: B:59:0x010f A[PHI: r0 r4
  0x010f: PHI (r0v16 ads_mobile_sdk.o6) = (r0v14 ads_mobile_sdk.o6), (r0v27 ads_mobile_sdk.o6) binds: [B:57:0x010c, B:18:0x0046] A[DONT_GENERATE, DONT_INLINE]
  0x010f: PHI (r4v5 ads_mobile_sdk.q7) = (r4v4 ads_mobile_sdk.q7), (r4v8 ads_mobile_sdk.q7) binds: [B:57:0x010c, B:18:0x0046] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:61:0x011c  */
    /* JADX WARN: Code duplicated, block: B:72:0x00be A[EXC_TOP_SPLITTER, PHI: r0 r4 r8
  0x00be: PHI (r0v9 long) = (r0v7 long), (r0v25 long) binds: [B:37:0x00ba, B:19:0x0051] A[DONT_GENERATE, DONT_INLINE]
  0x00be: PHI (r4v4 ads_mobile_sdk.q7) = (r4v3 ads_mobile_sdk.q7), (r4v7 ads_mobile_sdk.q7) binds: [B:37:0x00ba, B:19:0x0051] A[DONT_GENERATE, DONT_INLINE]
  0x00be: PHI (r8v2 kotlinx.coroutines.sync.Mutex) = (r8v1 kotlinx.coroutines.sync.Mutex), (r8v3 kotlinx.coroutines.sync.Mutex) binds: [B:37:0x00ba, B:19:0x0051] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x012f, code lost:
    
        if (r4.a(r0, r2) == r3) goto L63;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object c(kotlin.q7 r17, p005kotlin.coroutines.Continuation r18) {
        /*
            Method dump skipped, instruction units count: 319
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.q7.c(ads_mobile_sdk.q7, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0116, code lost:
    
        if (r0.b(r2) == r3) goto L56;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [int] */
    /* JADX WARN: Type inference failed for: r4v1, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v5, types: [kotlinx.coroutines.sync.Mutex] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object d(kotlin.q7 r18, p005kotlin.coroutines.Continuation r19) {
        /*
            Method dump skipped, instruction units count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.q7.d(ads_mobile_sdk.q7, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0095 A[Catch: all -> 0x0145, TRY_LEAVE, TryCatch #1 {all -> 0x0145, blocks: (B:29:0x0091, B:31:0x0095, B:35:0x009c), top: B:77:0x0091 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x009b  */
    /* JADX WARN: Code duplicated, block: B:42:0x00c4 A[Catch: all -> 0x0140, TRY_ENTER, TryCatch #0 {all -> 0x0140, blocks: (B:39:0x00be, B:42:0x00c4, B:43:0x00c8, B:45:0x00cc, B:46:0x00d0, B:48:0x00da, B:49:0x00de, B:51:0x00ea, B:52:0x00ee, B:54:0x00f5, B:55:0x00f9, B:57:0x0100, B:58:0x0104), top: B:75:0x00be }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00cc A[Catch: all -> 0x0140, TryCatch #0 {all -> 0x0140, blocks: (B:39:0x00be, B:42:0x00c4, B:43:0x00c8, B:45:0x00cc, B:46:0x00d0, B:48:0x00da, B:49:0x00de, B:51:0x00ea, B:52:0x00ee, B:54:0x00f5, B:55:0x00f9, B:57:0x0100, B:58:0x0104), top: B:75:0x00be }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00da A[Catch: all -> 0x0140, TryCatch #0 {all -> 0x0140, blocks: (B:39:0x00be, B:42:0x00c4, B:43:0x00c8, B:45:0x00cc, B:46:0x00d0, B:48:0x00da, B:49:0x00de, B:51:0x00ea, B:52:0x00ee, B:54:0x00f5, B:55:0x00f9, B:57:0x0100, B:58:0x0104), top: B:75:0x00be }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00ea A[Catch: all -> 0x0140, TryCatch #0 {all -> 0x0140, blocks: (B:39:0x00be, B:42:0x00c4, B:43:0x00c8, B:45:0x00cc, B:46:0x00d0, B:48:0x00da, B:49:0x00de, B:51:0x00ea, B:52:0x00ee, B:54:0x00f5, B:55:0x00f9, B:57:0x0100, B:58:0x0104), top: B:75:0x00be }] */
    /* JADX WARN: Code duplicated, block: B:54:0x00f5 A[Catch: all -> 0x0140, TryCatch #0 {all -> 0x0140, blocks: (B:39:0x00be, B:42:0x00c4, B:43:0x00c8, B:45:0x00cc, B:46:0x00d0, B:48:0x00da, B:49:0x00de, B:51:0x00ea, B:52:0x00ee, B:54:0x00f5, B:55:0x00f9, B:57:0x0100, B:58:0x0104), top: B:75:0x00be }] */
    /* JADX WARN: Code duplicated, block: B:57:0x0100 A[Catch: all -> 0x0140, TryCatch #0 {all -> 0x0140, blocks: (B:39:0x00be, B:42:0x00c4, B:43:0x00c8, B:45:0x00cc, B:46:0x00d0, B:48:0x00da, B:49:0x00de, B:51:0x00ea, B:52:0x00ee, B:54:0x00f5, B:55:0x00f9, B:57:0x0100, B:58:0x0104), top: B:75:0x00be }] */
    /* JADX WARN: Code duplicated, block: B:62:0x011a A[PHI: r0 r4
  0x011a: PHI (r0v19 ads_mobile_sdk.o6) = (r0v16 ads_mobile_sdk.o6), (r0v30 ads_mobile_sdk.o6) binds: [B:60:0x0117, B:18:0x0046] A[DONT_GENERATE, DONT_INLINE]
  0x011a: PHI (r4v5 ads_mobile_sdk.q7) = (r4v4 ads_mobile_sdk.q7), (r4v8 ads_mobile_sdk.q7) binds: [B:60:0x0117, B:18:0x0046] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:64:0x0127  */
    /* JADX WARN: Code duplicated, block: B:75:0x00be A[EXC_TOP_SPLITTER, PHI: r0 r4 r8
  0x00be: PHI (r0v9 long) = (r0v7 long), (r0v28 long) binds: [B:37:0x00ba, B:19:0x0051] A[DONT_GENERATE, DONT_INLINE]
  0x00be: PHI (r4v4 ads_mobile_sdk.q7) = (r4v3 ads_mobile_sdk.q7), (r4v7 ads_mobile_sdk.q7) binds: [B:37:0x00ba, B:19:0x0051] A[DONT_GENERATE, DONT_INLINE]
  0x00be: PHI (r8v2 kotlinx.coroutines.sync.Mutex) = (r8v1 kotlinx.coroutines.sync.Mutex), (r8v3 kotlinx.coroutines.sync.Mutex) binds: [B:37:0x00ba, B:19:0x0051] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x013a, code lost:
    
        if (r4.a(r0, r2) == r3) goto L66;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object e(kotlin.q7 r17, p005kotlin.coroutines.Continuation r18) {
        /*
            Method dump skipped, instruction units count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.q7.e(ads_mobile_sdk.q7, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:35:0x009c A[Catch: all -> 0x0168, TRY_ENTER, TryCatch #0 {all -> 0x0168, blocks: (B:32:0x0096, B:35:0x009c, B:36:0x00a0, B:39:0x00a8, B:41:0x00ac, B:42:0x00b0, B:44:0x00cc, B:45:0x00d0, B:47:0x00fb, B:49:0x00ff, B:50:0x0103, B:51:0x010c, B:53:0x0110, B:54:0x0114, B:56:0x011a, B:58:0x011e, B:59:0x0122, B:61:0x013e, B:62:0x0142, B:63:0x014a, B:65:0x014e, B:66:0x0152), top: B:78:0x0096 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00a8 A[Catch: all -> 0x0168, TRY_ENTER, TryCatch #0 {all -> 0x0168, blocks: (B:32:0x0096, B:35:0x009c, B:36:0x00a0, B:39:0x00a8, B:41:0x00ac, B:42:0x00b0, B:44:0x00cc, B:45:0x00d0, B:47:0x00fb, B:49:0x00ff, B:50:0x0103, B:51:0x010c, B:53:0x0110, B:54:0x0114, B:56:0x011a, B:58:0x011e, B:59:0x0122, B:61:0x013e, B:62:0x0142, B:63:0x014a, B:65:0x014e, B:66:0x0152), top: B:78:0x0096 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x00ac A[Catch: all -> 0x0168, TryCatch #0 {all -> 0x0168, blocks: (B:32:0x0096, B:35:0x009c, B:36:0x00a0, B:39:0x00a8, B:41:0x00ac, B:42:0x00b0, B:44:0x00cc, B:45:0x00d0, B:47:0x00fb, B:49:0x00ff, B:50:0x0103, B:51:0x010c, B:53:0x0110, B:54:0x0114, B:56:0x011a, B:58:0x011e, B:59:0x0122, B:61:0x013e, B:62:0x0142, B:63:0x014a, B:65:0x014e, B:66:0x0152), top: B:78:0x0096 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00cc A[Catch: all -> 0x0168, TryCatch #0 {all -> 0x0168, blocks: (B:32:0x0096, B:35:0x009c, B:36:0x00a0, B:39:0x00a8, B:41:0x00ac, B:42:0x00b0, B:44:0x00cc, B:45:0x00d0, B:47:0x00fb, B:49:0x00ff, B:50:0x0103, B:51:0x010c, B:53:0x0110, B:54:0x0114, B:56:0x011a, B:58:0x011e, B:59:0x0122, B:61:0x013e, B:62:0x0142, B:63:0x014a, B:65:0x014e, B:66:0x0152), top: B:78:0x0096 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x00fb A[Catch: all -> 0x0168, TryCatch #0 {all -> 0x0168, blocks: (B:32:0x0096, B:35:0x009c, B:36:0x00a0, B:39:0x00a8, B:41:0x00ac, B:42:0x00b0, B:44:0x00cc, B:45:0x00d0, B:47:0x00fb, B:49:0x00ff, B:50:0x0103, B:51:0x010c, B:53:0x0110, B:54:0x0114, B:56:0x011a, B:58:0x011e, B:59:0x0122, B:61:0x013e, B:62:0x0142, B:63:0x014a, B:65:0x014e, B:66:0x0152), top: B:78:0x0096 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00ff A[Catch: all -> 0x0168, TryCatch #0 {all -> 0x0168, blocks: (B:32:0x0096, B:35:0x009c, B:36:0x00a0, B:39:0x00a8, B:41:0x00ac, B:42:0x00b0, B:44:0x00cc, B:45:0x00d0, B:47:0x00fb, B:49:0x00ff, B:50:0x0103, B:51:0x010c, B:53:0x0110, B:54:0x0114, B:56:0x011a, B:58:0x011e, B:59:0x0122, B:61:0x013e, B:62:0x0142, B:63:0x014a, B:65:0x014e, B:66:0x0152), top: B:78:0x0096 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x0110 A[Catch: all -> 0x0168, TryCatch #0 {all -> 0x0168, blocks: (B:32:0x0096, B:35:0x009c, B:36:0x00a0, B:39:0x00a8, B:41:0x00ac, B:42:0x00b0, B:44:0x00cc, B:45:0x00d0, B:47:0x00fb, B:49:0x00ff, B:50:0x0103, B:51:0x010c, B:53:0x0110, B:54:0x0114, B:56:0x011a, B:58:0x011e, B:59:0x0122, B:61:0x013e, B:62:0x0142, B:63:0x014a, B:65:0x014e, B:66:0x0152), top: B:78:0x0096 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x011a A[Catch: all -> 0x0168, TryCatch #0 {all -> 0x0168, blocks: (B:32:0x0096, B:35:0x009c, B:36:0x00a0, B:39:0x00a8, B:41:0x00ac, B:42:0x00b0, B:44:0x00cc, B:45:0x00d0, B:47:0x00fb, B:49:0x00ff, B:50:0x0103, B:51:0x010c, B:53:0x0110, B:54:0x0114, B:56:0x011a, B:58:0x011e, B:59:0x0122, B:61:0x013e, B:62:0x0142, B:63:0x014a, B:65:0x014e, B:66:0x0152), top: B:78:0x0096 }] */
    /* JADX WARN: Code duplicated, block: B:58:0x011e A[Catch: all -> 0x0168, TryCatch #0 {all -> 0x0168, blocks: (B:32:0x0096, B:35:0x009c, B:36:0x00a0, B:39:0x00a8, B:41:0x00ac, B:42:0x00b0, B:44:0x00cc, B:45:0x00d0, B:47:0x00fb, B:49:0x00ff, B:50:0x0103, B:51:0x010c, B:53:0x0110, B:54:0x0114, B:56:0x011a, B:58:0x011e, B:59:0x0122, B:61:0x013e, B:62:0x0142, B:63:0x014a, B:65:0x014e, B:66:0x0152), top: B:78:0x0096 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x013e A[Catch: all -> 0x0168, TryCatch #0 {all -> 0x0168, blocks: (B:32:0x0096, B:35:0x009c, B:36:0x00a0, B:39:0x00a8, B:41:0x00ac, B:42:0x00b0, B:44:0x00cc, B:45:0x00d0, B:47:0x00fb, B:49:0x00ff, B:50:0x0103, B:51:0x010c, B:53:0x0110, B:54:0x0114, B:56:0x011a, B:58:0x011e, B:59:0x0122, B:61:0x013e, B:62:0x0142, B:63:0x014a, B:65:0x014e, B:66:0x0152), top: B:78:0x0096 }] */
    /* JADX WARN: Code duplicated, block: B:65:0x014e A[Catch: all -> 0x0168, TryCatch #0 {all -> 0x0168, blocks: (B:32:0x0096, B:35:0x009c, B:36:0x00a0, B:39:0x00a8, B:41:0x00ac, B:42:0x00b0, B:44:0x00cc, B:45:0x00d0, B:47:0x00fb, B:49:0x00ff, B:50:0x0103, B:51:0x010c, B:53:0x0110, B:54:0x0114, B:56:0x011a, B:58:0x011e, B:59:0x0122, B:61:0x013e, B:62:0x0142, B:63:0x014a, B:65:0x014e, B:66:0x0152), top: B:78:0x0096 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0162, code lost:
    
        if (r4.d(r2) == r3) goto L69;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object f(kotlin.q7 r17, p005kotlin.coroutines.Continuation r18) {
        /*
            Method dump skipped, instruction units count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.q7.f(ads_mobile_sdk.q7, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(long j, Continuation continuation) {
        u6 u6Var;
        q7 q7Var;
        Mutex mutex;
        if (continuation instanceof u6) {
            u6Var = (u6) continuation;
            int i = u6Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                u6Var.f = i - Integer.MIN_VALUE;
            } else {
                u6Var = new u6(this, continuation);
            }
        } else {
            u6Var = new u6(this, continuation);
        }
        Object obj = u6Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = u6Var.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Mutex mutex2 = this.f;
            u6Var.a = this;
            u6Var.b = mutex2;
            u6Var.c = j;
            u6Var.f = 1;
            if (mutex2.lock(null, u6Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            q7Var = this;
            mutex = mutex2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            j = u6Var.c;
            mutex = u6Var.b;
            q7Var = u6Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            n6 n6Var = q7Var.j;
            if (n6Var == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adQualityDataBuilder");
                n6Var = null;
            }
            n6 n6Var2 = q7Var.j;
            if (n6Var2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adQualityDataBuilder");
                n6Var2 = null;
            }
            long jM = j - n6Var2.m();
            n6 n6Var3 = q7Var.j;
            if (n6Var3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adQualityDataBuilder");
                n6Var3 = null;
            }
            n6Var.e(jM - n6Var3.p());
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0071, code lost:
    
        if (r8 == r1) goto L26;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v1, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v4, types: [kotlinx.coroutines.sync.Mutex] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(java.lang.String r7, p005kotlin.coroutines.Continuation r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof kotlin.s6
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.s6 r0 = (kotlin.s6) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.s6 r0 = new ads_mobile_sdk.s6
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.d
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L47
            if (r2 == r4) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r7 = r0.a
            kotlinx.coroutines.sync.Mutex r7 = (kotlinx.coroutines.sync.Mutex) r7
            p005kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L31
            goto L74
        L31:
            r8 = move-exception
            goto L7c
        L33:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3b:
            kotlinx.coroutines.sync.Mutex r7 = r0.c
            java.lang.String r2 = r0.b
            java.lang.Object r4 = r0.a
            ads_mobile_sdk.q7 r4 = (kotlin.q7) r4
            p005kotlin.ResultKt.throwOnFailure(r8)
            goto L5e
        L47:
            p005kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Mutex r8 = r6.h
            r0.a = r6
            r0.b = r7
            r0.c = r8
            r0.f = r4
            java.lang.Object r2 = r8.lock(r5, r0)
            if (r2 != r1) goto L5b
            goto L73
        L5b:
            r4 = r6
            r2 = r7
            r7 = r8
        L5e:
            androidx.datastore.core.DataStore r8 = r4.l     // Catch: java.lang.Throwable -> L31
            ads_mobile_sdk.t6 r4 = new ads_mobile_sdk.t6     // Catch: java.lang.Throwable -> L31
            r4.<init>(r2, r5)     // Catch: java.lang.Throwable -> L31
            r0.a = r7     // Catch: java.lang.Throwable -> L31
            r0.b = r5     // Catch: java.lang.Throwable -> L31
            r0.c = r5     // Catch: java.lang.Throwable -> L31
            r0.f = r3     // Catch: java.lang.Throwable -> L31
            java.lang.Object r8 = r8.updateData(r4, r0)     // Catch: java.lang.Throwable -> L31
            if (r8 != r1) goto L74
        L73:
            return r1
        L74:
            ads_mobile_sdk.u7 r8 = (kotlin.u7) r8     // Catch: java.lang.Throwable -> L31
            r7.unlock(r5)
            kotlin.Unit r7 = p005kotlin.Unit.INSTANCE
            return r7
        L7c:
            r7.unlock(r5)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.q7.a(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Continuation continuation) {
        v6 v6Var;
        q7 q7Var;
        Mutex mutex;
        if (continuation instanceof v6) {
            v6Var = (v6) continuation;
            int i = v6Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                v6Var.e = i - Integer.MIN_VALUE;
            } else {
                v6Var = new v6(this, continuation);
            }
        } else {
            v6Var = new v6(this, continuation);
        }
        Object obj = v6Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = v6Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Mutex mutex2 = this.m;
            v6Var.a = this;
            v6Var.b = mutex2;
            v6Var.e = 1;
            if (mutex2.lock(null, v6Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            q7Var = this;
            mutex = mutex2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = v6Var.b;
            q7Var = v6Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            Job job = q7Var.n;
            if (job != null) {
                Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
            }
            q7Var.n = null;
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(Continuation continuation) throws Throwable {
        w6 w6Var;
        Mutex mutex;
        q7 q7Var;
        Mutex mutex2;
        if (continuation instanceof w6) {
            w6Var = (w6) continuation;
            int i = w6Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                w6Var.e = i - Integer.MIN_VALUE;
            } else {
                w6Var = new w6(this, continuation);
            }
        } else {
            w6Var = new w6(this, continuation);
        }
        Object objUpdateData = w6Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = w6Var.e;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(objUpdateData);
                mutex = this.h;
                w6Var.a = this;
                w6Var.b = mutex;
                w6Var.e = 1;
                if (mutex.lock(null, w6Var) != coroutine_suspended) {
                    q7Var = this;
                }
                return coroutine_suspended;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutex2 = (Mutex) w6Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(objUpdateData);
                    mutex2.unlock(null);
                    return p005kotlin.Unit.INSTANCE;
                } catch (Throwable th) {
                    th = th;
                    mutex = mutex2;
                    mutex.unlock(null);
                    throw th;
                }
            }
            mutex = w6Var.b;
            q7Var = (q7) w6Var.a;
            p005kotlin.ResultKt.throwOnFailure(objUpdateData);
            DataStore dataStore = q7Var.l;
            x6 x6Var = new x6(null);
            w6Var.a = mutex;
            w6Var.b = null;
            w6Var.e = 2;
            objUpdateData = dataStore.updateData(x6Var, w6Var);
            if (objUpdateData != coroutine_suspended) {
                mutex2 = mutex;
                mutex2.unlock(null);
                return p005kotlin.Unit.INSTANCE;
            }
            return coroutine_suspended;
        } catch (Throwable th2) {
            th = th2;
            mutex.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object c(Continuation continuation) throws Throwable {
        a7 a7Var;
        Mutex mutex;
        q7 q7Var;
        Mutex mutex2;
        o6 o6Var;
        Mutex mutex3;
        if (continuation instanceof a7) {
            a7Var = (a7) continuation;
            int i = a7Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                a7Var.f = i - Integer.MIN_VALUE;
            } else {
                a7Var = new a7(this, continuation);
            }
        } else {
            a7Var = new a7(this, continuation);
        }
        Object objUpdateData = a7Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = a7Var.f;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(objUpdateData);
                mutex = this.f;
                a7Var.a = this;
                a7Var.b = mutex;
                a7Var.f = 1;
                if (mutex.lock(null, a7Var) != coroutine_suspended) {
                    q7Var = this;
                }
                return coroutine_suspended;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    mutex3 = (Mutex) a7Var.a;
                    try {
                        p005kotlin.ResultKt.throwOnFailure(objUpdateData);
                        mutex3.unlock(null);
                        return p005kotlin.Unit.INSTANCE;
                    } catch (Throwable th) {
                        th = th;
                        mutex3.unlock(null);
                        throw th;
                    }
                }
                mutex2 = a7Var.c;
                o6Var = (o6) a7Var.b;
                q7Var = (q7) a7Var.a;
                p005kotlin.ResultKt.throwOnFailure(objUpdateData);
                try {
                    DataStore dataStore = q7Var.l;
                    b7 b7Var = new b7(o6Var, null);
                    a7Var.a = mutex2;
                    a7Var.b = null;
                    a7Var.c = null;
                    a7Var.f = 3;
                    objUpdateData = dataStore.updateData(b7Var, a7Var);
                    if (objUpdateData != coroutine_suspended) {
                        mutex3 = mutex2;
                        mutex3.unlock(null);
                        return p005kotlin.Unit.INSTANCE;
                    }
                    return coroutine_suspended;
                } catch (Throwable th2) {
                    th = th2;
                    mutex3 = mutex2;
                    mutex3.unlock(null);
                    throw th;
                }
            }
            mutex = (Mutex) a7Var.b;
            q7Var = (q7) a7Var.a;
            p005kotlin.ResultKt.throwOnFailure(objUpdateData);
            n6 n6Var = q7Var.j;
            if (n6Var == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adQualityDataBuilder");
                n6Var = null;
            }
            o6 o6Var2 = (o6) n6Var.b();
            mutex.unlock(null);
            mutex2 = q7Var.h;
            a7Var.a = q7Var;
            a7Var.b = o6Var2;
            a7Var.c = mutex2;
            a7Var.f = 2;
            if (mutex2.lock(null, a7Var) != coroutine_suspended) {
                o6Var = o6Var2;
                DataStore dataStore2 = q7Var.l;
                b7 b7Var2 = new b7(o6Var, null);
                a7Var.a = mutex2;
                a7Var.b = null;
                a7Var.c = null;
                a7Var.f = 3;
                objUpdateData = dataStore2.updateData(b7Var2, a7Var);
                if (objUpdateData != coroutine_suspended) {
                    mutex3 = mutex2;
                    mutex3.unlock(null);
                    return p005kotlin.Unit.INSTANCE;
                }
            }
            return coroutine_suspended;
        } catch (Throwable th3) {
            mutex.unlock(null);
            throw th3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object d(Continuation continuation) {
        o7 o7Var;
        q7 q7Var;
        long j;
        Mutex mutex;
        if (continuation instanceof o7) {
            o7Var = (o7) continuation;
            int i = o7Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                o7Var.f = i - Integer.MIN_VALUE;
            } else {
                o7Var = new o7(this, continuation);
            }
        } else {
            o7Var = new o7(this, continuation);
        }
        Object obj = o7Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = o7Var.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            ex0 ex0Var = ((e8) this.c).a;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:ad_quality_metrics:heartbeat_enabled", C3510b4.i.W);
            if (!((Boolean) ex0Var.a("gads:ad_quality_metrics:heartbeat_enabled", Boolean.FALSE, yr.b)).booleanValue()) {
                return p005kotlin.Unit.INSTANCE;
            }
            ex0 ex0Var2 = ((e8) this.c).a;
            ex0Var2.getClass();
            Intrinsics.checkNotNullParameter("gads:ad_quality_metrics:heartbeat_interval_ms", C3510b4.i.W);
            long jLongValue = ((Number) ex0Var2.a("gads:ad_quality_metrics:heartbeat_interval_ms", 10000L, yr.d)).longValue();
            if (jLongValue <= 0) {
                return p005kotlin.Unit.INSTANCE;
            }
            Mutex mutex2 = this.m;
            o7Var.a = this;
            o7Var.b = mutex2;
            o7Var.c = jLongValue;
            o7Var.f = 1;
            if (mutex2.lock(null, o7Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            q7Var = this;
            j = jLongValue;
            mutex = mutex2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            j = o7Var.c;
            mutex = o7Var.b;
            q7Var = o7Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            Job job = q7Var.n;
            if (job != null) {
                Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
            }
            q7Var.n = BuildersKt__Builders_commonKt.launch$default(q7Var.d, null, null, new p7(j, q7Var, null), 3, null);
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }
}

package kotlin;

import android.os.SystemClock;
import com.ironsource.C3510b4;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class e33 implements gj1, g33 {
    public final CoroutineScope a;
    public final tx b;
    public final ex0 c;
    public wy2 d;
    public final Mutex e;
    public Job f;
    public CompletableJob g;
    public CompletableJob h;
    public boolean i;
    public boolean j;
    public boolean k;
    public long l;
    public long m;
    public long n;
    public long o;
    public long p;

    public e33(CoroutineScope backgroundScope, tx clock, ex0 flags) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = backgroundScope;
        this.b = clock;
        this.c = flags;
        this.e = MutexKt.Mutex$default(false, 1, null);
        CompletableJob completableJobJob$default = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        completableJobJob$default.complete();
        this.g = completableJobJob$default;
        CompletableJob completableJobJob$default2 = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        completableJobJob$default2.complete();
        this.h = completableJobJob$default2;
        Duration.Companion companion = Duration.INSTANCE;
        this.l = companion.m4458getZEROUwyO8pc();
        this.m = companion.m4458getZEROUwyO8pc();
        this.n = companion.m4458getZEROUwyO8pc();
        this.o = flags.B();
        this.p = flags.D();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001c  */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00cc, code lost:
    
        if (r0.join(r4) == r5) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(long r17, kotlin.e33 r19, p005kotlin.coroutines.Continuation r20) {
        /*
            Method dump skipped, instruction units count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.e33.a(long, ads_mobile_sdk.e33, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:100:0x00a4 A[EXC_TOP_SPLITTER, PHI: r12 r13
  0x00a4: PHI (r12v36 ads_mobile_sdk.e33) = (r12v15 ads_mobile_sdk.e33), (r12v44 ads_mobile_sdk.e33) binds: [B:37:0x0086, B:44:0x00a0] A[DONT_GENERATE, DONT_INLINE]
  0x00a4: PHI (r13v21 kotlinx.coroutines.sync.Mutex) = (r13v6 kotlinx.coroutines.sync.Mutex), (r13v24 kotlinx.coroutines.sync.Mutex) binds: [B:37:0x0086, B:44:0x00a0] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:0x0094 A[Catch: CancellationException -> 0x0165, dz2 -> 0x0182, PHI: r12
  0x0094: PHI (r12v38 ads_mobile_sdk.e33) = (r12v41 ads_mobile_sdk.e33), (r12v42 ads_mobile_sdk.e33), (r12v43 ads_mobile_sdk.e33) binds: [B:42:0x0091, B:80:0x0158, B:14:0x003a] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #6 {dz2 -> 0x0182, CancellationException -> 0x0165, blocks: (B:14:0x003a, B:43:0x0094, B:50:0x00b5, B:52:0x00ba, B:54:0x00bd, B:57:0x00d1, B:59:0x00d5, B:60:0x00d9, B:63:0x00ed, B:79:0x014b, B:86:0x0161, B:87:0x0164, B:30:0x0072, B:33:0x0079), top: B:104:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:49:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:52:0x00ba A[Catch: CancellationException -> 0x0165, dz2 -> 0x0182, TryCatch #6 {dz2 -> 0x0182, CancellationException -> 0x0165, blocks: (B:14:0x003a, B:43:0x0094, B:50:0x00b5, B:52:0x00ba, B:54:0x00bd, B:57:0x00d1, B:59:0x00d5, B:60:0x00d9, B:63:0x00ed, B:79:0x014b, B:86:0x0161, B:87:0x0164, B:30:0x0072, B:33:0x0079), top: B:104:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x00bd A[Catch: CancellationException -> 0x0165, dz2 -> 0x0182, TryCatch #6 {dz2 -> 0x0182, CancellationException -> 0x0165, blocks: (B:14:0x003a, B:43:0x0094, B:50:0x00b5, B:52:0x00ba, B:54:0x00bd, B:57:0x00d1, B:59:0x00d5, B:60:0x00d9, B:63:0x00ed, B:79:0x014b, B:86:0x0161, B:87:0x0164, B:30:0x0072, B:33:0x0079), top: B:104:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:57:0x00d1 A[Catch: CancellationException -> 0x0165, dz2 -> 0x0182, PHI: r12
  0x00d1: PHI (r12v35 ads_mobile_sdk.e33) = (r12v45 ads_mobile_sdk.e33), (r12v46 ads_mobile_sdk.e33) binds: [B:33:0x0079, B:55:0x00cd] A[DONT_GENERATE, DONT_INLINE], TryCatch #6 {dz2 -> 0x0182, CancellationException -> 0x0165, blocks: (B:14:0x003a, B:43:0x0094, B:50:0x00b5, B:52:0x00ba, B:54:0x00bd, B:57:0x00d1, B:59:0x00d5, B:60:0x00d9, B:63:0x00ed, B:79:0x014b, B:86:0x0161, B:87:0x0164, B:30:0x0072, B:33:0x0079), top: B:104:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:59:0x00d5 A[Catch: CancellationException -> 0x0165, dz2 -> 0x0182, TryCatch #6 {dz2 -> 0x0182, CancellationException -> 0x0165, blocks: (B:14:0x003a, B:43:0x0094, B:50:0x00b5, B:52:0x00ba, B:54:0x00bd, B:57:0x00d1, B:59:0x00d5, B:60:0x00d9, B:63:0x00ed, B:79:0x014b, B:86:0x0161, B:87:0x0164, B:30:0x0072, B:33:0x0079), top: B:104:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:63:0x00ed A[Catch: CancellationException -> 0x0165, dz2 -> 0x0182, PHI: r12 r13
  0x00ed: PHI (r12v33 ads_mobile_sdk.e33) = (r12v47 ads_mobile_sdk.e33), (r12v48 ads_mobile_sdk.e33) binds: [B:30:0x0072, B:61:0x00e9] A[DONT_GENERATE, DONT_INLINE]
  0x00ed: PHI (r13v13 java.lang.Object) = (r13v1 java.lang.Object), (r13v19 java.lang.Object) binds: [B:30:0x0072, B:61:0x00e9] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #6 {dz2 -> 0x0182, CancellationException -> 0x0165, blocks: (B:14:0x003a, B:43:0x0094, B:50:0x00b5, B:52:0x00ba, B:54:0x00bd, B:57:0x00d1, B:59:0x00d5, B:60:0x00d9, B:63:0x00ed, B:79:0x014b, B:86:0x0161, B:87:0x0164, B:30:0x0072, B:33:0x0079), top: B:104:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:66:0x0110  */
    /* JADX WARN: Code duplicated, block: B:70:0x0127  */
    /* JADX WARN: Code duplicated, block: B:74:0x0134 A[Catch: CancellationException -> 0x005a, dz2 -> 0x005d, TryCatch #7 {dz2 -> 0x005d, CancellationException -> 0x005a, blocks: (B:67:0x0113, B:72:0x012d, B:74:0x0134, B:75:0x0138, B:83:0x015c, B:84:0x015f, B:20:0x0055, B:27:0x0068), top: B:104:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x014a  */
    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:80:0x0158 -> B:43:0x0094). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object a(kotlin.e33 r12, p005kotlin.coroutines.Continuation r13) {
        /*
            Method dump skipped, instruction units count: 442
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.e33.a(ads_mobile_sdk.e33, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0043 A[PHI: r2 r10
  0x0043: PHI (r2v5 ads_mobile_sdk.e33) = (r2v1 ads_mobile_sdk.e33), (r2v8 ads_mobile_sdk.e33) binds: [B:31:0x008f, B:17:0x003c] A[DONT_GENERATE, DONT_INLINE]
  0x0043: PHI (r10v5 kotlin.jvm.functions.Function1) = (r10v14 kotlin.jvm.functions.Function1), (r10v15 kotlin.jvm.functions.Function1) binds: [B:31:0x008f, B:17:0x003c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:29:0x0082  */
    /* JADX WARN: Code duplicated, block: B:35:0x0096 A[Catch: all -> 0x00b6, TRY_LEAVE, TryCatch #0 {all -> 0x00b6, blocks: (B:33:0x0092, B:35:0x0096), top: B:50:0x0092 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x006e A[EXC_TOP_SPLITTER, PHI: r8 r10 r11
  0x006e: PHI (r8v1 ads_mobile_sdk.e33) = (r8v2 ads_mobile_sdk.e33), (r8v4 ads_mobile_sdk.e33) binds: [B:23:0x006b, B:20:0x004d] A[DONT_GENERATE, DONT_INLINE]
  0x006e: PHI (r10v2 kotlin.jvm.functions.Function1) = (r10v18 kotlin.jvm.functions.Function1), (r10v10 kotlin.jvm.functions.Function1) binds: [B:23:0x006b, B:20:0x004d] A[DONT_GENERATE, DONT_INLINE]
  0x006e: PHI (r11v4 kotlinx.coroutines.sync.Mutex) = (r11v6 kotlinx.coroutines.sync.Mutex), (r11v12 kotlinx.coroutines.sync.Mutex) binds: [B:23:0x006b, B:20:0x004d] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x008f -> B:18:0x0043). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object a(kotlin.d33 r10, p005kotlin.coroutines.Continuation r11) {
        /*
            r9 = this;
            boolean r0 = r11 instanceof kotlin.t23
            if (r0 == 0) goto L13
            r0 = r11
            ads_mobile_sdk.t23 r0 = (kotlin.t23) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.t23 r0 = new ads_mobile_sdk.t23
            r0.<init>(r9, r11)
        L18:
            java.lang.Object r11 = r0.d
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 4
            r4 = 3
            r5 = 2
            r6 = 1
            r7 = 0
            if (r2 == 0) goto L59
            if (r2 == r6) goto L4d
            if (r2 == r5) goto L45
            if (r2 == r4) goto L3c
            if (r2 != r3) goto L34
            p005kotlin.ResultKt.throwOnFailure(r11)
            goto Lad
        L34:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r11)
            throw r10
        L3c:
            kotlin.jvm.functions.Function1 r10 = r0.b
            ads_mobile_sdk.e33 r2 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r11)
        L43:
            r8 = r2
            goto L92
        L45:
            kotlin.jvm.functions.Function1 r10 = r0.b
            ads_mobile_sdk.e33 r2 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r11)
            goto L83
        L4d:
            kotlinx.coroutines.sync.Mutex r10 = r0.c
            kotlin.jvm.functions.Function1 r2 = r0.b
            ads_mobile_sdk.e33 r8 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r11)
            r11 = r10
            r10 = r2
            goto L6e
        L59:
            p005kotlin.ResultKt.throwOnFailure(r11)
            r8 = r9
        L5d:
            kotlinx.coroutines.sync.Mutex r11 = r8.e
            r0.a = r8
            r0.b = r10
            r0.c = r11
            r0.f = r6
            java.lang.Object r2 = r11.lock(r7, r0)
            if (r2 != r1) goto L6e
            goto Lac
        L6e:
            kotlinx.coroutines.CompletableJob r2 = r8.g     // Catch: java.lang.Throwable -> Lbd
            r11.unlock(r7)
            r0.a = r8
            r0.b = r10
            r0.c = r7
            r0.f = r5
            java.lang.Object r11 = r2.join(r0)
            if (r11 != r1) goto L82
            goto Lac
        L82:
            r2 = r8
        L83:
            kotlinx.coroutines.sync.Mutex r11 = r2.e
            r0.a = r2
            r0.b = r10
            r0.f = r4
            java.lang.Object r11 = kotlinx.coroutines.sync.Mutex.DefaultImpls.lock$default(r11, r7, r0, r6, r7)
            if (r11 != r1) goto L43
            goto Lac
        L92:
            boolean r11 = r8.i     // Catch: java.lang.Throwable -> Lb6
            if (r11 != 0) goto Lb0
            boolean r11 = r8.j     // Catch: java.lang.Throwable -> Lb6
            if (r11 == 0) goto L9b
            goto Lb0
        L9b:
            kotlinx.coroutines.sync.Mutex r11 = r8.e
            kotlinx.coroutines.sync.Mutex.DefaultImpls.unlock$default(r11, r7, r6, r7)
            r0.a = r7
            r0.b = r7
            r0.f = r3
            java.lang.Object r10 = r10.invoke(r0)
            if (r10 != r1) goto Lad
        Lac:
            return r1
        Lad:
            kotlin.Unit r10 = p005kotlin.Unit.INSTANCE
            return r10
        Lb0:
            kotlinx.coroutines.sync.Mutex r11 = r8.e
            kotlinx.coroutines.sync.Mutex.DefaultImpls.unlock$default(r11, r7, r6, r7)
            goto L5d
        Lb6:
            r10 = move-exception
            kotlinx.coroutines.sync.Mutex r11 = r8.e
            kotlinx.coroutines.sync.Mutex.DefaultImpls.unlock$default(r11, r7, r6, r7)
            throw r10
        Lbd:
            r10 = move-exception
            r11.unlock(r7)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.e33.a(ads_mobile_sdk.d33, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.gj1
    public final Object a(ec3 ec3Var, Continuation continuation) {
        p23 p23Var;
        Mutex mutex;
        e33 e33Var;
        if (continuation instanceof p23) {
            p23Var = (p23) continuation;
            int i = p23Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                p23Var.f = i - Integer.MIN_VALUE;
            } else {
                p23Var = new p23(this, continuation);
            }
        } else {
            p23Var = new p23(this, continuation);
        }
        Object obj = p23Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = p23Var.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = this.e;
            p23Var.a = this;
            p23Var.b = ec3Var;
            p23Var.c = mutex;
            p23Var.f = 1;
            if (mutex.lock(null, p23Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            e33Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = p23Var.c;
            ec3 ec3Var2 = p23Var.b;
            e33Var = p23Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            ec3Var = ec3Var2;
        }
        try {
            zy zyVar = ec3Var.b.b;
            e33Var.p = zyVar.o;
            e33Var.o = zyVar.n;
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:32:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:36:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:38:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object a(wy2 wy2Var, SharedFlow sharedFlow, Continuation continuation) {
        u23 u23Var;
        SharedFlow sharedFlow2;
        e33 e33Var;
        Mutex mutex;
        SharedFlow sharedFlow3;
        Mutex mutex2;
        Mutex mutex3;
        e33 e33Var2;
        Job job;
        if (continuation instanceof u23) {
            u23Var = (u23) continuation;
            int i = u23Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                u23Var.f = i - Integer.MIN_VALUE;
            } else {
                u23Var = new u23(this, continuation);
            }
        } else {
            u23Var = new u23(this, continuation);
        }
        Object obj = u23Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = u23Var.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            this.d = wy2Var;
            u23Var.a = this;
            sharedFlow2 = sharedFlow;
            u23Var.b = sharedFlow2;
            u23Var.f = 1;
            if (d(true, u23Var) != coroutine_suspended) {
                e33Var = this;
            }
            return coroutine_suspended;
        }
        try {
            if (i2 == 1) {
                SharedFlow sharedFlow4 = u23Var.b;
                e33Var = u23Var.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
                sharedFlow2 = sharedFlow4;
            } else {
                if (i2 == 2) {
                    Mutex mutex4 = u23Var.c;
                    SharedFlow sharedFlow5 = u23Var.b;
                    e33Var = u23Var.a;
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    mutex = mutex4;
                    sharedFlow3 = sharedFlow5;
                    try {
                        CoroutineScope coroutineScope = e33Var.a;
                        v23 block = new v23(e33Var, null);
                        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                        Intrinsics.checkNotNullParameter(context, "context");
                        Intrinsics.checkNotNullParameter(block, "block");
                        e33Var.f = BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
                        p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                        mutex.unlock(null);
                        if (sharedFlow3 != null) {
                            mutex2 = e33Var.e;
                            u23Var.a = e33Var;
                            u23Var.b = sharedFlow3;
                            u23Var.c = mutex2;
                            u23Var.f = 3;
                            if (mutex2.lock(null, u23Var) != coroutine_suspended) {
                                mutex3 = mutex2;
                                e33Var2 = e33Var;
                            }
                            return coroutine_suspended;
                        }
                        return p005kotlin.Unit.INSTANCE;
                    } catch (Throwable th) {
                        mutex.unlock(null);
                        throw th;
                    }
                }
                if (i2 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutex3 = u23Var.c;
                sharedFlow3 = u23Var.b;
                e33Var2 = u23Var.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
            }
            job = e33Var2.f;
            mutex3.unlock(null);
            if (job == null) {
                return p005kotlin.Unit.INSTANCE;
            }
            CoroutineScope coroutineScope2 = e33Var2.a;
            y23 block2 = new y23(sharedFlow3, job, null);
            EmptyCoroutineContext context2 = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope2, "<this>");
            Intrinsics.checkNotNullParameter(context2, "context");
            Intrinsics.checkNotNullParameter(block2, "block");
            job.invokeOnCompletion(new w23(BuildersKt__Builders_commonKt.launch$default(coroutineScope2, context2, null, new ws3(block2, null), 2, null)));
            return p005kotlin.Unit.INSTANCE;
        } catch (Throwable th2) {
            mutex3.unlock(null);
            throw th2;
        }
        Mutex mutex5 = e33Var.e;
        u23Var.a = e33Var;
        u23Var.b = sharedFlow2;
        u23Var.c = mutex5;
        u23Var.f = 2;
        if (mutex5.lock(null, u23Var) != coroutine_suspended) {
            mutex = mutex5;
            sharedFlow3 = sharedFlow2;
            CoroutineScope coroutineScope3 = e33Var.a;
            v23 block3 = new v23(e33Var, null);
            EmptyCoroutineContext context3 = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope3, "<this>");
            Intrinsics.checkNotNullParameter(context3, "context");
            Intrinsics.checkNotNullParameter(block3, "block");
            e33Var.f = BuildersKt__Builders_commonKt.launch$default(coroutineScope3, context3, null, new ws3(block3, null), 2, null);
            p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
            mutex.unlock(null);
            if (sharedFlow3 != null) {
                mutex2 = e33Var.e;
                u23Var.a = e33Var;
                u23Var.b = sharedFlow3;
                u23Var.c = mutex2;
                u23Var.f = 3;
                if (mutex2.lock(null, u23Var) != coroutine_suspended) {
                    mutex3 = mutex2;
                    e33Var2 = e33Var;
                    job = e33Var2.f;
                    mutex3.unlock(null);
                    if (job == null) {
                        return p005kotlin.Unit.INSTANCE;
                    }
                    CoroutineScope coroutineScope4 = e33Var2.a;
                    y23 block4 = new y23(sharedFlow3, job, null);
                    EmptyCoroutineContext context4 = EmptyCoroutineContext.INSTANCE;
                    Intrinsics.checkNotNullParameter(coroutineScope4, "<this>");
                    Intrinsics.checkNotNullParameter(context4, "context");
                    Intrinsics.checkNotNullParameter(block4, "block");
                    job.invokeOnCompletion(new w23(BuildersKt__Builders_commonKt.launch$default(coroutineScope4, context4, null, new ws3(block4, null), 2, null)));
                }
            }
            return p005kotlin.Unit.INSTANCE;
        }
        return coroutine_suspended;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x004a A[PHI: r2 r13 r14
  0x004a: PHI (r2v1 ads_mobile_sdk.e33) = (r2v4 ads_mobile_sdk.e33), (r2v12 ads_mobile_sdk.e33) binds: [B:33:0x009c, B:18:0x0043] A[DONT_GENERATE, DONT_INLINE]
  0x004a: PHI (r13v1 kotlin.jvm.functions.Function1) = (r13v4 kotlin.jvm.functions.Function1), (r13v11 kotlin.jvm.functions.Function1) binds: [B:33:0x009c, B:18:0x0043] A[DONT_GENERATE, DONT_INLINE]
  0x004a: PHI (r14v3 java.lang.Object) = (r14v11 java.lang.Object), (r14v1 java.lang.Object) binds: [B:33:0x009c, B:18:0x0043] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:26:0x0074  */
    /* JADX WARN: Code duplicated, block: B:30:0x0082 A[PHI: r2 r13 r14
  0x0082: PHI (r2v4 ads_mobile_sdk.e33) = (r2v5 ads_mobile_sdk.e33), (r2v11 ads_mobile_sdk.e33) binds: [B:28:0x007f, B:20:0x004c] A[DONT_GENERATE, DONT_INLINE]
  0x0082: PHI (r13v4 kotlin.jvm.functions.Function1) = (r13v5 kotlin.jvm.functions.Function1), (r13v10 kotlin.jvm.functions.Function1) binds: [B:28:0x007f, B:20:0x004c] A[DONT_GENERATE, DONT_INLINE]
  0x0082: PHI (r14v7 java.lang.Object) = (r14v12 java.lang.Object), (r14v1 java.lang.Object) binds: [B:28:0x007f, B:20:0x004c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:32:0x0092  */
    /* JADX WARN: Code duplicated, block: B:37:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:39:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:42:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:53:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00bb -> B:15:0x0038). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x00e1 -> B:23:0x0060). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object a(p005kotlin.jvm.functions.Function1 r13, p005kotlin.coroutines.Continuation r14) {
        /*
            Method dump skipped, instruction units count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.e33.a(kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.g33
    public final Object a(boolean z, Continuation continuation) {
        r23 r23Var;
        e33 e33Var;
        Mutex mutex;
        if (continuation instanceof r23) {
            r23Var = (r23) continuation;
            int i = r23Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                r23Var.f = i - Integer.MIN_VALUE;
            } else {
                r23Var = new r23(this, continuation);
            }
        } else {
            r23Var = new r23(this, continuation);
        }
        Object obj = r23Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = r23Var.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Mutex mutex2 = this.e;
            r23Var.a = this;
            r23Var.b = mutex2;
            r23Var.c = z;
            r23Var.f = 1;
            if (mutex2.lock(null, r23Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            e33Var = this;
            mutex = mutex2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            z = r23Var.c;
            mutex = r23Var.b;
            e33Var = r23Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            if (!e33Var.i && !e33Var.j) {
                e33Var.g = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
                e33Var.l = e33Var.g();
            }
            if (z) {
                e33Var.i = true;
            } else {
                e33Var.j = true;
            }
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.g33
    public final Object b(Continuation continuation) {
        q23 q23Var;
        e33 e33Var;
        Mutex mutex;
        if (continuation instanceof q23) {
            q23Var = (q23) continuation;
            int i = q23Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                q23Var.e = i - Integer.MIN_VALUE;
            } else {
                q23Var = new q23(this, continuation);
            }
        } else {
            q23Var = new q23(this, continuation);
        }
        Object obj = q23Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = q23Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Mutex mutex2 = this.e;
            q23Var.a = this;
            q23Var.b = mutex2;
            q23Var.e = 1;
            if (mutex2.lock(null, q23Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            e33Var = this;
            mutex = mutex2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = q23Var.b;
            e33Var = q23Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            e33Var.i = false;
            e33Var.j = false;
            e33Var.k = true;
            long jG = e33Var.g();
            e33Var.m = jG;
            e33Var.n = jG;
            e33Var.g.complete();
            e33Var.h.complete();
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.g33
    public final Object c(boolean z, Continuation continuation) {
        s23 s23Var;
        e33 e33Var;
        Mutex mutex;
        if (continuation instanceof s23) {
            s23Var = (s23) continuation;
            int i = s23Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                s23Var.f = i - Integer.MIN_VALUE;
            } else {
                s23Var = new s23(this, continuation);
            }
        } else {
            s23Var = new s23(this, continuation);
        }
        Object obj = s23Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = s23Var.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Mutex mutex2 = this.e;
            s23Var.a = this;
            s23Var.b = mutex2;
            s23Var.c = z;
            s23Var.f = 1;
            if (mutex2.lock(null, s23Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            e33Var = this;
            mutex = mutex2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            z = s23Var.c;
            mutex = s23Var.b;
            e33Var = s23Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            if (z) {
                e33Var.i = false;
            } else {
                e33Var.j = false;
            }
            if (!e33Var.i && !e33Var.j && !e33Var.g.isCompleted()) {
                long jM4395minusLRDsOJo = Duration.m4395minusLRDsOJo(e33Var.g(), e33Var.l);
                e33Var.n = Duration.m4396plusLRDsOJo(e33Var.n, jM4395minusLRDsOJo);
                e33Var.m = Duration.m4396plusLRDsOJo(e33Var.m, jM4395minusLRDsOJo);
                e33Var.g.complete();
            }
            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
            mutex.unlock(null);
            return unit;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object d(boolean z, Continuation continuation) {
        j23 j23Var;
        e33 e33Var;
        Mutex mutex;
        if (continuation instanceof j23) {
            j23Var = (j23) continuation;
            int i = j23Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                j23Var.f = i - Integer.MIN_VALUE;
            } else {
                j23Var = new j23(this, continuation);
            }
        } else {
            j23Var = new j23(this, continuation);
        }
        Object obj = j23Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = j23Var.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Mutex mutex2 = this.e;
            j23Var.a = this;
            j23Var.b = mutex2;
            j23Var.c = z;
            j23Var.f = 1;
            if (mutex2.lock(null, j23Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            e33Var = this;
            mutex = mutex2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            z = j23Var.c;
            mutex = j23Var.b;
            e33Var = j23Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            long jG = e33Var.g();
            ex0 ex0Var = e33Var.c;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:proactive_banner_refresh:enabled", C3510b4.i.W);
            if (!((Boolean) ex0Var.a("gads:proactive_banner_refresh:enabled", Boolean.FALSE, yr.b)).booleanValue() || Duration.m4366compareToLRDsOJo(e33Var.p, Duration.INSTANCE.m4458getZEROUwyO8pc()) <= 0) {
                long jM4396plusLRDsOJo = Duration.m4396plusLRDsOJo(jG, e33Var.o);
                e33Var.n = jM4396plusLRDsOJo;
                e33Var.m = jM4396plusLRDsOJo;
            } else {
                if (z) {
                    e33Var.m = Duration.m4396plusLRDsOJo(jG, e33Var.p);
                } else {
                    long jM4395minusLRDsOJo = Duration.m4395minusLRDsOJo(jG, e33Var.n);
                    if (Duration.m4366compareToLRDsOJo(jM4395minusLRDsOJo, e33Var.p) < 0) {
                        jG = Duration.m4395minusLRDsOJo(Duration.m4396plusLRDsOJo(jG, e33Var.p), jM4395minusLRDsOJo);
                    }
                    e33Var.m = jG;
                }
                e33Var.n = Duration.m4395minusLRDsOJo(Duration.m4396plusLRDsOJo(e33Var.m, e33Var.o), e33Var.p);
            }
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    public final long g() {
        Duration.Companion companion = Duration.INSTANCE;
        this.b.getClass();
        return DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object s(Continuation continuation) {
        i23 i23Var;
        e33 e33Var;
        Mutex mutex;
        if (continuation instanceof i23) {
            i23Var = (i23) continuation;
            int i = i23Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                i23Var.e = i - Integer.MIN_VALUE;
            } else {
                i23Var = new i23(this, continuation);
            }
        } else {
            i23Var = new i23(this, continuation);
        }
        Object obj = i23Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = i23Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Mutex mutex2 = this.e;
            i23Var.a = this;
            i23Var.b = mutex2;
            i23Var.e = 1;
            if (mutex2.lock(null, i23Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            e33Var = this;
            mutex = mutex2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = i23Var.b;
            e33Var = i23Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            Job job = e33Var.f;
            if (job != null) {
                Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
            }
            e33Var.j = true;
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x007c  */
    /* JADX WARN: Code duplicated, block: B:38:0x0082  */
    /* JADX WARN: Code duplicated, block: B:40:0x0086  */
    /* JADX WARN: Code duplicated, block: B:44:0x0099 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:45:0x009a  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object t(Continuation continuation) {
        z23 z23Var;
        Mutex mutex;
        e33 e33Var;
        Mutex mutex2;
        e33 e33Var2;
        wy2 wy2Var;
        Object objE;
        if (continuation instanceof z23) {
            z23Var = (z23) continuation;
            int i = z23Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                z23Var.e = i - Integer.MIN_VALUE;
            } else {
                z23Var = new z23(this, continuation);
            }
        } else {
            z23Var = new z23(this, continuation);
        }
        Object obj = z23Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = z23Var.e;
        boolean z = true;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                mutex = this.e;
                z23Var.a = this;
                z23Var.b = mutex;
                z23Var.e = 1;
                if (mutex.lock(null, z23Var) != coroutine_suspended) {
                    e33Var = this;
                }
                return coroutine_suspended;
            }
            if (i2 == 1) {
                mutex = z23Var.b;
                e33Var = z23Var.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
            } else {
                if (i2 != 2) {
                    if (i2 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    return obj;
                }
                mutex2 = z23Var.b;
                e33Var2 = z23Var.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
            }
            try {
                z = e33Var2.i && !e33Var2.j;
                mutex2.unlock(null);
                if (!z) {
                    z = false;
                    return Boxing.boxBoolean(z);
                }
                wy2Var = e33Var2.d;
                if (wy2Var == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adLoader");
                    wy2Var = null;
                }
                z23Var.a = null;
                z23Var.b = null;
                z23Var.e = 3;
                objE = wy2Var.e(z23Var);
                if (objE != coroutine_suspended) {
                    return coroutine_suspended;
                }
                return objE;
            } catch (Throwable th) {
                mutex2.unlock(null);
                throw th;
            }
            boolean z2 = e33Var.k;
            mutex.unlock(null);
            if (!z2) {
                mutex2 = e33Var.e;
                z23Var.a = e33Var;
                z23Var.b = mutex2;
                z23Var.e = 2;
                if (mutex2.lock(null, z23Var) != coroutine_suspended) {
                    e33Var2 = e33Var;
                    if (e33Var2.i) {
                    }
                    mutex2.unlock(null);
                    if (!z) {
                        wy2Var = e33Var2.d;
                        if (wy2Var == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("adLoader");
                            wy2Var = null;
                        }
                        z23Var.a = null;
                        z23Var.b = null;
                        z23Var.e = 3;
                        objE = wy2Var.e(z23Var);
                        if (objE != coroutine_suspended) {
                            return objE;
                        }
                    } else {
                        z = false;
                    }
                }
                return coroutine_suspended;
            }
            return Boxing.boxBoolean(z);
        } catch (Throwable th2) {
            mutex.unlock(null);
            throw th2;
        }
    }
}

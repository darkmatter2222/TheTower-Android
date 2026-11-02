package kotlin;

import android.os.Bundle;
import android.os.SystemClock;
import com.google.android.libraries.ads.mobile.sdk.common.AdSourceResponseInfo;
import com.google.android.libraries.ads.mobile.sdk.common.MediationAdError;
import com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo;
import com.ironsource.C3510b4;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.collections.ArraysKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.ranges.IntRange;
import p005kotlin.text.StringsKt;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class v33 {
    public final CoroutineScope a;
    public final tx b;
    public final c63 c;
    public final du1 d;
    public final ji1 e;
    public final pb f;
    public final int g;
    public long h;
    public ec3 i;
    public final Mutex j;
    public n33[] k;

    public v33(CoroutineScope backgroundScope, tx clock, c63 retryingUrlPinger, du1 macroExpander, ji1 internalAdLoadEventEmitter, pb adSourceResponseInfoCollector, int i) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(retryingUrlPinger, "retryingUrlPinger");
        Intrinsics.checkNotNullParameter(macroExpander, "macroExpander");
        Intrinsics.checkNotNullParameter(internalAdLoadEventEmitter, "internalAdLoadEventEmitter");
        Intrinsics.checkNotNullParameter(adSourceResponseInfoCollector, "adSourceResponseInfoCollector");
        this.a = backgroundScope;
        this.b = clock;
        this.c = retryingUrlPinger;
        this.d = macroExpander;
        this.e = internalAdLoadEventEmitter;
        this.f = adSourceResponseInfoCollector;
        this.g = i;
        this.h = Duration.INSTANCE.m4458getZEROUwyO8pc();
        this.j = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object a(v33 v33Var, Continuation continuation) {
        o33 o33Var;
        Mutex mutex;
        v33Var.getClass();
        if (continuation instanceof o33) {
            o33Var = (o33) continuation;
            int i = o33Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                o33Var.e = i - Integer.MIN_VALUE;
            } else {
                o33Var = new o33(v33Var, continuation);
            }
        } else {
            o33Var = new o33(v33Var, continuation);
        }
        Object obj = o33Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = o33Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = v33Var.j;
            o33Var.a = v33Var;
            o33Var.b = mutex;
            o33Var.e = 1;
            if (mutex.lock(null, o33Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = o33Var.b;
            v33 v33Var2 = o33Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            v33Var = v33Var2;
        }
        try {
            n33[] n33VarArr = v33Var.k;
            if (n33VarArr == null) {
                Intrinsics.throwUninitializedPropertyAccessException("results");
                n33VarArr = null;
            }
            return CollectionsKt.joinToString$default(ArraysKt.filterNotNull(n33VarArr), "_", null, null, 0, null, null, 62, null);
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(long j, i2 i2Var, Continuation continuation) {
        u33 u33Var;
        Mutex mutex;
        v33 v33Var;
        if (continuation instanceof u33) {
            u33Var = (u33) continuation;
            int i = u33Var.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                u33Var.g = i - Integer.MIN_VALUE;
            } else {
                u33Var = new u33(this, continuation);
            }
        } else {
            u33Var = new u33(this, continuation);
        }
        Object obj = u33Var.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = u33Var.g;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = this.j;
            u33Var.a = this;
            u33Var.b = i2Var;
            u33Var.c = mutex;
            u33Var.d = j;
            u33Var.g = 1;
            if (mutex.lock(null, u33Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            v33Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            j = u33Var.d;
            Mutex mutex2 = u33Var.c;
            i2 i2Var2 = u33Var.b;
            v33Var = u33Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            i2Var = i2Var2;
        }
        try {
            n33[] n33VarArr = v33Var.k;
            if (n33VarArr == null) {
                Intrinsics.throwUninitializedPropertyAccessException("results");
                n33VarArr = null;
            }
            int length = n33VarArr.length;
            for (int i3 = i2Var.w + 1; i3 < length; i3++) {
                n33[] n33VarArr2 = v33Var.k;
                if (n33VarArr2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("results");
                    n33VarArr2 = null;
                }
                n33 n33Var = n33VarArr2[i3];
                if ((n33Var != null ? n33Var.b : null) == bs0.FILL) {
                    n33Var.b = bs0.RENDERED_BUT_LOST;
                    i2 i2Var3 = n33Var.a;
                    v33Var.a(i2Var3.S, i2Var3, j);
                }
            }
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:23:0x007d  */
    /* JADX WARN: Code duplicated, block: B:25:0x0089  */
    /* JADX WARN: Code duplicated, block: B:28:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ec3 transaction, Continuation continuation) {
        q33 q33Var;
        String str;
        ex0 ex0Var;
        Mutex mutex;
        v33 v33Var;
        if (continuation instanceof q33) {
            q33Var = (q33) continuation;
            int i = q33Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                q33Var.f = i - Integer.MIN_VALUE;
            } else {
                q33Var = new q33(this, continuation);
            }
        } else {
            q33Var = new q33(this, continuation);
        }
        Object obj = q33Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = q33Var.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            this.i = transaction;
            Duration.Companion companion = Duration.INSTANCE;
            this.b.getClass();
            this.h = DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS);
            pb pbVar = this.f;
            pbVar.getClass();
            Intrinsics.checkNotNullParameter(transaction, "transaction");
            ac3 ac3Var = transaction.b;
            pbVar.c = ac3Var.b;
            i2 i2Var = (i2) CollectionsKt.firstOrNull(ac3Var.a);
            if (i2Var == null || (str = i2Var.f0) == null) {
                str = transaction.b.b.w;
                if (StringsKt.isBlank(str)) {
                    str = null;
                } else {
                    ex0Var = pbVar.a;
                    ex0Var.getClass();
                    Intrinsics.checkNotNullParameter("gads:nofill_response_id_fix:enabled", C3510b4.i.W);
                    if (!((Boolean) ex0Var.a("gads:nofill_response_id_fix:enabled", Boolean.TRUE, yr.b)).booleanValue()) {
                        str = null;
                    }
                }
            } else {
                if (StringsKt.isBlank(str)) {
                    str = null;
                }
                if (str == null) {
                    str = transaction.b.b.w;
                    if (StringsKt.isBlank(str)) {
                        ex0Var = pbVar.a;
                        ex0Var.getClass();
                        Intrinsics.checkNotNullParameter("gads:nofill_response_id_fix:enabled", C3510b4.i.W);
                        if (!((Boolean) ex0Var.a("gads:nofill_response_id_fix:enabled", Boolean.TRUE, yr.b)).booleanValue()) {
                            str = null;
                        }
                    } else {
                        str = null;
                    }
                }
            }
            ex0 ex0Var2 = pbVar.a;
            ex0Var2.getClass();
            Intrinsics.checkNotNullParameter("gads:multicall_response_id_fix:enabled", C3510b4.i.W);
            if (!((Boolean) ex0Var2.a("gads:multicall_response_id_fix:enabled", Boolean.TRUE, yr.b)).booleanValue() || pbVar.b == null) {
                pbVar.b = str;
            }
            String replacementKey = transaction.b.b.a;
            if (StringsKt.isBlank(replacementKey)) {
                Iterator it = transaction.b.a.iterator();
                while (it.hasNext()) {
                    pbVar.a((i2) it.next(), pbVar.f.size());
                }
            } else {
                Intrinsics.checkNotNullParameter(replacementKey, "replacementKey");
                Intrinsics.checkNotNullParameter(transaction, "transaction");
                if (pbVar.g.containsKey(replacementKey)) {
                    int iIndexOf = pbVar.f.indexOf((AdSourceResponseInfo) pbVar.g.get(replacementKey));
                    pbVar.f.remove(iIndexOf);
                    pbVar.g.remove(replacementKey);
                    Iterator it2 = transaction.b.a.iterator();
                    while (it2.hasNext()) {
                        pbVar.a((i2) it2.next(), iIndexOf);
                        iIndexOf++;
                    }
                }
            }
            mutex = this.j;
            q33Var.a = this;
            q33Var.b = transaction;
            q33Var.c = mutex;
            q33Var.f = 1;
            if (mutex.lock(null, q33Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            v33Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = q33Var.c;
            ec3 ec3Var = q33Var.b;
            v33Var = q33Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            transaction = ec3Var;
        }
        try {
            v33Var.k = new n33[transaction.b.a.size()];
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(i2 i2Var, Continuation continuation) {
        t33 t33Var;
        v33 v33Var;
        i2 i2Var2;
        Mutex mutex;
        if (continuation instanceof t33) {
            t33Var = (t33) continuation;
            int i = t33Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                t33Var.f = i - Integer.MIN_VALUE;
            } else {
                t33Var = new t33(this, continuation);
            }
        } else {
            t33Var = new t33(this, continuation);
        }
        Object obj = t33Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = t33Var.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Mutex mutex2 = this.j;
            t33Var.a = this;
            t33Var.b = i2Var;
            t33Var.c = mutex2;
            t33Var.f = 1;
            if (mutex2.lock(null, t33Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            v33Var = this;
            i2Var2 = i2Var;
            mutex = mutex2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = t33Var.c;
            i2 i2Var3 = t33Var.b;
            v33Var = t33Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            i2Var2 = i2Var3;
        }
        try {
            n33[] n33VarArr = v33Var.k;
            if (n33VarArr == null) {
                Intrinsics.throwUninitializedPropertyAccessException("results");
                n33VarArr = null;
            }
            int i3 = i2Var2.w;
            as0 as0Var = bs0.b;
            n33VarArr[i3] = new n33(i2Var2, bs0.INFLIGHT, Duration.INSTANCE.m4458getZEROUwyO8pc(), null);
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001d  */
    public final Object a(v01 v01Var, i2 adConfiguration, long j, Continuation continuation) {
        s33 s33Var;
        Mutex mutex;
        bs0 bs0Var;
        long j2;
        i2 i2Var;
        Integer num;
        v33 v33Var;
        MediationAdError mediationAdError;
        n33[] n33VarArr;
        v01 renderResult = v01Var;
        if (continuation instanceof s33) {
            s33Var = (s33) continuation;
            int i = s33Var.j;
            if ((i & Integer.MIN_VALUE) != 0) {
                s33Var.j = i - Integer.MIN_VALUE;
            } else {
                s33Var = new s33(this, continuation);
            }
        } else {
            s33Var = new s33(this, continuation);
        }
        Object obj = s33Var.h;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = s33Var.j;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            pb pbVar = this.f;
            pbVar.getClass();
            Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
            Intrinsics.checkNotNullParameter(renderResult, "renderResult");
            if (renderResult instanceof q01) {
                pbVar.a(adConfiguration, j, null);
            } else if (renderResult instanceof l01) {
                pbVar.a(adConfiguration, j, ((l01) renderResult).c);
            } else if (renderResult instanceof i01) {
                int value = ((i01) renderResult).a().d().getValue();
                ir0 ir0Var = ir0.b;
                pbVar.a(adConfiguration, j, new MediationAdError(value, "Internal error.", "com.google.android.libraries.ads.mobile.sdk"));
            }
            bs0.b.getClass();
            bs0 bs0VarA = as0.a(renderResult);
            l01 l01Var = renderResult instanceof l01 ? (l01) renderResult : null;
            Integer code = (l01Var == null || (mediationAdError = l01Var.c) == null) ? null : mediationAdError.getCode();
            mutex = this.j;
            s33Var.a = this;
            s33Var.b = renderResult;
            s33Var.c = adConfiguration;
            s33Var.d = bs0VarA;
            s33Var.e = code;
            s33Var.f = mutex;
            s33Var.g = j;
            s33Var.j = 1;
            if (mutex.lock(null, s33Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            bs0Var = bs0VarA;
            j2 = j;
            i2Var = adConfiguration;
            num = code;
            v33Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            long j3 = s33Var.g;
            Mutex mutex2 = s33Var.f;
            Integer num2 = s33Var.e;
            bs0 bs0Var2 = s33Var.d;
            i2 i2Var2 = s33Var.c;
            v01 v01Var2 = s33Var.b;
            v33 v33Var2 = s33Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            v33Var = v33Var2;
            j2 = j3;
            i2Var = i2Var2;
            num = num2;
            bs0Var = bs0Var2;
            mutex = mutex2;
            renderResult = v01Var2;
        }
        try {
            n33[] n33VarArr2 = v33Var.k;
            if (n33VarArr2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("results");
                n33VarArr = null;
            } else {
                n33VarArr = n33VarArr2;
            }
            n33VarArr[i2Var.w] = new n33(i2Var, bs0Var, j2, num);
            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
            mutex.unlock(null);
            if (renderResult instanceof i01) {
                Duration.Companion companion = Duration.INSTANCE;
                v33Var.b.getClass();
                v33Var.a(i2Var.S, i2Var, Duration.m4395minusLRDsOJo(DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS), v33Var.h));
            }
            return unit;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00b6 A[Catch: all -> 0x01b3, TryCatch #0 {all -> 0x01b3, blocks: (B:29:0x00b2, B:31:0x00b6, B:32:0x00bc, B:34:0x00c0, B:36:0x00c4, B:38:0x00c8, B:44:0x00d3, B:41:0x00cd), top: B:86:0x00b2 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x00c0 A[Catch: all -> 0x01b3, TryCatch #0 {all -> 0x01b3, blocks: (B:29:0x00b2, B:31:0x00b6, B:32:0x00bc, B:34:0x00c0, B:36:0x00c4, B:38:0x00c8, B:44:0x00d3, B:41:0x00cd), top: B:86:0x00b2 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x00c4 A[Catch: all -> 0x01b3, TryCatch #0 {all -> 0x01b3, blocks: (B:29:0x00b2, B:31:0x00b6, B:32:0x00bc, B:34:0x00c0, B:36:0x00c4, B:38:0x00c8, B:44:0x00d3, B:41:0x00cd), top: B:86:0x00b2 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:41:0x00cd A[Catch: all -> 0x01b3, LOOP:0: B:33:0x00be->B:41:0x00cd, LOOP_END, TryCatch #0 {all -> 0x01b3, blocks: (B:29:0x00b2, B:31:0x00b6, B:32:0x00bc, B:34:0x00c0, B:36:0x00c4, B:38:0x00c8, B:44:0x00d3, B:41:0x00cd), top: B:86:0x00b2 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00d3 A[Catch: all -> 0x01b3, TRY_LEAVE, TryCatch #0 {all -> 0x01b3, blocks: (B:29:0x00b2, B:31:0x00b6, B:32:0x00bc, B:34:0x00c0, B:36:0x00c4, B:38:0x00c8, B:44:0x00d3, B:41:0x00cd), top: B:86:0x00b2 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:49:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:52:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:61:0x0152  */
    /* JADX WARN: Code duplicated, block: B:64:0x015a  */
    /* JADX WARN: Code duplicated, block: B:67:0x0166  */
    /* JADX WARN: Code duplicated, block: B:68:0x016b  */
    /* JADX WARN: Code duplicated, block: B:72:0x0190  */
    /* JADX WARN: Code duplicated, block: B:74:0x019f  */
    /* JADX WARN: Code duplicated, block: B:76:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:90:0x00d0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:91:0x00cc A[SYNTHETIC] */
    public final Object a(Continuation continuation) {
        p33 p33Var;
        Mutex mutex;
        v33 v33Var;
        Mutex mutex2;
        long j;
        n33[] n33VarArr;
        int length;
        int i;
        n33 n33Var;
        i2 winningAdConfiguration;
        ec3 ec3Var;
        pb pbVar;
        long j2;
        v33 v33Var2;
        ex0 ex0Var;
        bs0 bs0Var;
        ji1 ji1Var;
        ec3 ec3Var2;
        ResponseInfo responseInfo;
        AdSourceResponseInfo adSourceResponseInfo;
        String adapterClassName;
        i2 i2Var;
        long j3;
        v33 v33Var3;
        if (continuation instanceof p33) {
            p33Var = (p33) continuation;
            int i2 = p33Var.f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                p33Var.f = i2 - Integer.MIN_VALUE;
            } else {
                p33Var = new p33(this, continuation);
            }
        } else {
            p33Var = new p33(this, continuation);
        }
        Object obj = p33Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = p33Var.f;
        try {
            if (i3 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                mutex = this.j;
                p33Var.a = this;
                p33Var.b = mutex;
                p33Var.f = 1;
                if (mutex.lock(null, p33Var) != coroutine_suspended) {
                    v33Var = this;
                }
                return coroutine_suspended;
            }
            if (i3 == 1) {
                mutex = (Mutex) p33Var.b;
                v33 v33Var4 = p33Var.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
                v33Var = v33Var4;
            } else {
                if (i3 == 2) {
                    j = p33Var.c;
                    mutex2 = (Mutex) p33Var.b;
                    v33Var = p33Var.a;
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    try {
                        n33VarArr = v33Var.k;
                        if (n33VarArr == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("results");
                            n33VarArr = null;
                        }
                        length = n33VarArr.length;
                        i = 0;
                        while (true) {
                            if (i >= length) {
                                n33Var = null;
                                break;
                            }
                            n33Var = n33VarArr[i];
                            if (n33Var != null) {
                                bs0Var = n33Var.b;
                            } else {
                                bs0Var = null;
                            }
                            if (bs0Var == bs0.FILL) {
                                break;
                            }
                            i++;
                        }
                        if (n33Var != null) {
                            winningAdConfiguration = n33Var.a;
                        } else {
                            winningAdConfiguration = null;
                        }
                        mutex2.unlock(null);
                        if (winningAdConfiguration != null) {
                            pbVar = v33Var.f;
                            pbVar.getClass();
                            Intrinsics.checkNotNullParameter(winningAdConfiguration, "winningAdConfiguration");
                            if (((AdSourceResponseInfo) pbVar.g.get(winningAdConfiguration.d)) != null) {
                                AdSourceResponseInfo adSourceResponseInfo2 = (AdSourceResponseInfo) pbVar.g.get(winningAdConfiguration.d);
                                pbVar.e = adSourceResponseInfo2;
                                int iIndexOf = pbVar.f.indexOf(adSourceResponseInfo2);
                                List adapterResponses = pbVar.f;
                                Intrinsics.checkNotNullExpressionValue(adapterResponses, "adapterResponses");
                                pbVar.f = CollectionsKt.slice(adapterResponses, new IntRange(0, iIndexOf));
                                ex0Var = pbVar.a;
                                ex0Var.getClass();
                                Intrinsics.checkNotNullParameter("gads:multicall_response_id_fix:enabled", C3510b4.i.W);
                                if (((Boolean) ex0Var.a("gads:multicall_response_id_fix:enabled", Boolean.TRUE, yr.b)).booleanValue() && !StringsKt.isBlank(winningAdConfiguration.f0)) {
                                    pbVar.b = winningAdConfiguration.f0;
                                }
                                pbVar.d = winningAdConfiguration.G0;
                            }
                            p33Var.a = v33Var;
                            p33Var.b = winningAdConfiguration;
                            p33Var.c = j;
                            p33Var.f = 3;
                            if (v33Var.a(j, winningAdConfiguration, p33Var) != coroutine_suspended) {
                                j2 = j;
                                v33Var2 = v33Var;
                                ji1Var = v33Var2.e;
                                ec3Var2 = v33Var2.i;
                                if (ec3Var2 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("serverTransaction");
                                    ec3Var2 = null;
                                }
                                pb pbVar2 = v33Var2.f;
                                adSourceResponseInfo = pbVar2.e;
                                if (adSourceResponseInfo != null) {
                                    adapterClassName = adSourceResponseInfo.getAdapterClassName();
                                } else {
                                    adapterClassName = null;
                                }
                                String str = pbVar2.b;
                                Bundle bundleA = pbVar2.a(null);
                                AdSourceResponseInfo adSourceResponseInfo3 = pbVar2.e;
                                List adapterResponses2 = pbVar2.f;
                                Intrinsics.checkNotNullExpressionValue(adapterResponses2, "adapterResponses");
                                responseInfo = new ResponseInfo(adapterClassName, str, bundleA, adSourceResponseInfo3, adapterResponses2);
                                p33Var.a = v33Var2;
                                p33Var.b = winningAdConfiguration;
                                p33Var.c = j2;
                                p33Var.f = 4;
                                if (ji1Var.a(ec3Var2, winningAdConfiguration, responseInfo, p33Var) != coroutine_suspended) {
                                    i2Var = winningAdConfiguration;
                                    j3 = j2;
                                    v33Var3 = v33Var2;
                                }
                            }
                            return coroutine_suspended;
                        }
                        ec3Var = v33Var.i;
                        if (ec3Var == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("serverTransaction");
                            ec3Var = null;
                        }
                        v33Var.a(ec3Var.b.b.m, (i2) null, j);
                        return p005kotlin.Unit.INSTANCE;
                    } catch (Throwable th) {
                        mutex2.unlock(null);
                        throw th;
                    }
                }
                if (i3 == 3) {
                    j2 = p33Var.c;
                    i2 i2Var2 = (i2) p33Var.b;
                    v33Var2 = p33Var.a;
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    winningAdConfiguration = i2Var2;
                    ji1Var = v33Var2.e;
                    ec3Var2 = v33Var2.i;
                    if (ec3Var2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("serverTransaction");
                        ec3Var2 = null;
                    }
                    pb pbVar3 = v33Var2.f;
                    adSourceResponseInfo = pbVar3.e;
                    if (adSourceResponseInfo != null) {
                        adapterClassName = adSourceResponseInfo.getAdapterClassName();
                    } else {
                        adapterClassName = null;
                    }
                    String str2 = pbVar3.b;
                    Bundle bundleA2 = pbVar3.a(null);
                    AdSourceResponseInfo adSourceResponseInfo4 = pbVar3.e;
                    List adapterResponses3 = pbVar3.f;
                    Intrinsics.checkNotNullExpressionValue(adapterResponses3, "adapterResponses");
                    responseInfo = new ResponseInfo(adapterClassName, str2, bundleA2, adSourceResponseInfo4, adapterResponses3);
                    p33Var.a = v33Var2;
                    p33Var.b = winningAdConfiguration;
                    p33Var.c = j2;
                    p33Var.f = 4;
                    if (ji1Var.a(ec3Var2, winningAdConfiguration, responseInfo, p33Var) != coroutine_suspended) {
                        i2Var = winningAdConfiguration;
                        j3 = j2;
                        v33Var3 = v33Var2;
                    }
                    return coroutine_suspended;
                }
                if (i3 != 4) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                j3 = p33Var.c;
                i2Var = (i2) p33Var.b;
                v33Var3 = p33Var.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
            }
            v33Var3.a(CollectionsKt.plus((Collection) i2Var.D, (Iterable) i2Var.e), i2Var, j3);
            return p005kotlin.Unit.INSTANCE;
            Duration.Companion companion = Duration.INSTANCE;
            v33Var.b.getClass();
            long jM4395minusLRDsOJo = Duration.m4395minusLRDsOJo(DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS), v33Var.h);
            mutex.unlock(null);
            mutex2 = v33Var.j;
            p33Var.a = v33Var;
            p33Var.b = mutex2;
            p33Var.c = jM4395minusLRDsOJo;
            p33Var.f = 2;
            if (mutex2.lock(null, p33Var) != coroutine_suspended) {
                j = jM4395minusLRDsOJo;
                n33VarArr = v33Var.k;
                if (n33VarArr == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("results");
                    n33VarArr = null;
                }
                length = n33VarArr.length;
                i = 0;
                while (true) {
                    if (i >= length) {
                        n33Var = null;
                        break;
                    }
                    n33Var = n33VarArr[i];
                    if (n33Var != null) {
                        bs0Var = n33Var.b;
                    } else {
                        bs0Var = null;
                    }
                    if (bs0Var == bs0.FILL) {
                        break;
                        break;
                    }
                    i++;
                }
                if (n33Var != null) {
                    winningAdConfiguration = n33Var.a;
                } else {
                    winningAdConfiguration = null;
                }
                mutex2.unlock(null);
                if (winningAdConfiguration != null) {
                    pbVar = v33Var.f;
                    pbVar.getClass();
                    Intrinsics.checkNotNullParameter(winningAdConfiguration, "winningAdConfiguration");
                    if (((AdSourceResponseInfo) pbVar.g.get(winningAdConfiguration.d)) != null) {
                        AdSourceResponseInfo adSourceResponseInfo5 = (AdSourceResponseInfo) pbVar.g.get(winningAdConfiguration.d);
                        pbVar.e = adSourceResponseInfo5;
                        int iIndexOf2 = pbVar.f.indexOf(adSourceResponseInfo5);
                        List adapterResponses4 = pbVar.f;
                        Intrinsics.checkNotNullExpressionValue(adapterResponses4, "adapterResponses");
                        pbVar.f = CollectionsKt.slice(adapterResponses4, new IntRange(0, iIndexOf2));
                        ex0Var = pbVar.a;
                        ex0Var.getClass();
                        Intrinsics.checkNotNullParameter("gads:multicall_response_id_fix:enabled", C3510b4.i.W);
                        if (((Boolean) ex0Var.a("gads:multicall_response_id_fix:enabled", Boolean.TRUE, yr.b)).booleanValue()) {
                            pbVar.b = winningAdConfiguration.f0;
                        }
                        pbVar.d = winningAdConfiguration.G0;
                    }
                    p33Var.a = v33Var;
                    p33Var.b = winningAdConfiguration;
                    p33Var.c = j;
                    p33Var.f = 3;
                    if (v33Var.a(j, winningAdConfiguration, p33Var) != coroutine_suspended) {
                        j2 = j;
                        v33Var2 = v33Var;
                        ji1Var = v33Var2.e;
                        ec3Var2 = v33Var2.i;
                        if (ec3Var2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("serverTransaction");
                            ec3Var2 = null;
                        }
                        pb pbVar4 = v33Var2.f;
                        adSourceResponseInfo = pbVar4.e;
                        if (adSourceResponseInfo != null) {
                            adapterClassName = adSourceResponseInfo.getAdapterClassName();
                        } else {
                            adapterClassName = null;
                        }
                        String str3 = pbVar4.b;
                        Bundle bundleA3 = pbVar4.a(null);
                        AdSourceResponseInfo adSourceResponseInfo6 = pbVar4.e;
                        List adapterResponses5 = pbVar4.f;
                        Intrinsics.checkNotNullExpressionValue(adapterResponses5, "adapterResponses");
                        responseInfo = new ResponseInfo(adapterClassName, str3, bundleA3, adSourceResponseInfo6, adapterResponses5);
                        p33Var.a = v33Var2;
                        p33Var.b = winningAdConfiguration;
                        p33Var.c = j2;
                        p33Var.f = 4;
                        if (ji1Var.a(ec3Var2, winningAdConfiguration, responseInfo, p33Var) != coroutine_suspended) {
                            i2Var = winningAdConfiguration;
                            j3 = j2;
                            v33Var3 = v33Var2;
                            v33Var3.a(CollectionsKt.plus((Collection) i2Var.D, (Iterable) i2Var.e), i2Var, j3);
                        }
                    }
                } else {
                    ec3Var = v33Var.i;
                    if (ec3Var == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("serverTransaction");
                        ec3Var = null;
                    }
                    v33Var.a(ec3Var.b.b.m, (i2) null, j);
                }
                return p005kotlin.Unit.INSTANCE;
            }
            return coroutine_suspended;
        } catch (Throwable th2) {
            mutex.unlock(null);
            throw th2;
        }
    }

    public final void a(List list, i2 i2Var, long j) {
        ec3 ec3Var = this.i;
        if (ec3Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("serverTransaction");
            ec3Var = null;
        }
        if (ec3Var.c) {
            return;
        }
        CoroutineScope coroutineScope = this.a;
        r33 block = new r33(this, list, i2Var, j, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }
}

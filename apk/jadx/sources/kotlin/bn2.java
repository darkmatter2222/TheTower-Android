package kotlin;

import com.ironsource.C3510b4;
import java.lang.ref.ReferenceQueue;
import java.util.LinkedHashMap;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class bn2 extends nc1 {
    public final CoroutineScope c;
    public final ex0 d;
    public boolean e;
    public final Mutex f;
    public final LinkedHashMap g;
    public final ReferenceQueue h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bn2(CoroutineScope backgroundScope, ex0 flags) {
        super((s11) null, 3);
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.c = backgroundScope;
        this.d = flags;
        this.f = MutexKt.Mutex$default(false, 1, null);
        this.g = new LinkedHashMap();
        this.h = new ReferenceQueue();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object a(bn2 bn2Var, Object obj, vm2 vm2Var, Continuation continuation) {
        zm2 zm2Var;
        Mutex mutex;
        if (continuation instanceof zm2) {
            zm2Var = (zm2) continuation;
            int i = zm2Var.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                zm2Var.g = i - Integer.MIN_VALUE;
            } else {
                zm2Var = new zm2(bn2Var, continuation);
            }
        } else {
            zm2Var = new zm2(bn2Var, continuation);
        }
        Object obj2 = zm2Var.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zm2Var.g;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj2);
            if (!bn2Var.e) {
                return p005kotlin.Unit.INSTANCE;
            }
            mutex = bn2Var.f;
            zm2Var.a = bn2Var;
            zm2Var.b = obj;
            zm2Var.c = vm2Var;
            zm2Var.d = mutex;
            zm2Var.g = 1;
            if (mutex.lock(null, zm2Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = zm2Var.d;
            vm2Var = zm2Var.c;
            obj = zm2Var.b;
            bn2 bn2Var2 = zm2Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj2);
            mutex = mutex2;
            bn2Var = bn2Var2;
        }
        try {
            bn2Var.g.put(new g01(vm2Var, obj, bn2Var.h), Boxing.boxBoolean(true));
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0057  */
    /* JADX WARN: Code duplicated, block: B:34:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0065, code lost:
    
        if (r14.lock(null, r0) == r1) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00d4, code lost:
    
        if (kotlinx.coroutines.DelayKt.m4512delayVtjQ1oo(r6, r0) == r1) goto L36;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00a0 -> B:21:0x0054). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a3 -> B:22:0x0055). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00d4 -> B:17:0x0046). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(kotlin.bn2 r13, p005kotlin.coroutines.Continuation r14) {
        /*
            Method dump skipped, instruction units count: 215
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.bn2.a(ads_mobile_sdk.bn2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlin.nc1
    public final Object u(Continuation continuation) {
        ex0 ex0Var = this.d;
        ex0Var.getClass();
        boolean z = Duration.m4366compareToLRDsOJo(((Duration) ex0Var.a("gads:phantom_reference_interval:seconds", wm2.a(2, DurationUnit.MINUTES, "gads:phantom_reference_interval:seconds", C3510b4.i.W), yr.l)).getRawValue(), Duration.INSTANCE.m4458getZEROUwyO8pc()) > 0;
        this.e = z;
        if (z) {
            CoroutineScope coroutineScope = this.c;
            an2 block = new an2(this, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
        return new q01(p005kotlin.Unit.INSTANCE);
    }
}

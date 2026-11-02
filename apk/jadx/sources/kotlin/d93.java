package kotlin;

import java.util.concurrent.atomic.AtomicBoolean;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class d93 implements xd {
    public final v3 a;
    public final i2 b;
    public final AtomicBoolean c;

    public d93(v3 adEventEmitter, i2 adConfiguration) {
        Intrinsics.checkNotNullParameter(adEventEmitter, "adEventEmitter");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        this.a = adEventEmitter;
        this.b = adConfiguration;
        this.c = new AtomicBoolean(false);
    }

    @Override // kotlin.xd
    public final Object b(boolean z, Continuation continuation) {
        if (!z || !this.c.compareAndSet(false, true)) {
            return p005kotlin.Unit.INSTANCE;
        }
        if (this.b.q0 == h2.THIRD_PARTY_SDK_CALLBACK) {
            Object objK = this.a.k(continuation);
            return objK == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objK : p005kotlin.Unit.INSTANCE;
        }
        Object objR = this.a.r(continuation);
        return objR == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objR : p005kotlin.Unit.INSTANCE;
    }
}

package kotlin;

import android.os.SystemClock;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.rtb.SignalCallbacks;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class g93 implements SignalCallbacks {
    public final long a;
    public final tx b;
    public final CancellableContinuation c;
    public final m83 d;
    public final AtomicBoolean e;

    public g93(String adapterName, u83 adapterProxy, long j, tx clock, CancellableContinuationImpl continuation) {
        Intrinsics.checkNotNullParameter(adapterName, "adapterName");
        Intrinsics.checkNotNullParameter(adapterProxy, "adapterProxy");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(continuation, "continuation");
        this.a = j;
        this.b = clock;
        this.c = continuation;
        this.d = new m83(adapterName, adapterProxy.b().toString(), adapterProxy.a().toString(), null, null, 120);
        this.e = new AtomicBoolean(false);
    }

    public final void a(String str) {
        if (this.e.getAndSet(true)) {
            return;
        }
        m83 m83Var = this.d;
        m83Var.signalErrorCode = 2;
        Duration.Companion companion = Duration.INSTANCE;
        this.b.getClass();
        m83Var.latency = Long.valueOf(Duration.m4378getInWholeMillisecondsimpl(Duration.m4395minusLRDsOJo(DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS), this.a)));
        m83Var.signalErrorMessage = str;
        CancellableContinuation cancellableContinuation = this.c;
        p005kotlin.Result.Companion companion2 = p005kotlin.Result.INSTANCE;
        cancellableContinuation.resumeWith(p005kotlin.Result.m3022constructorimpl(this.d));
    }

    @Override // com.google.android.gms.ads.mediation.rtb.SignalCallbacks
    public final void onFailure(AdError adError) {
        Intrinsics.checkNotNullParameter(adError, "adError");
        a(adError.getCom.tapjoy.TJAdUnitConstants.String.MESSAGE java.lang.String());
    }

    @Override // com.google.android.gms.ads.mediation.rtb.SignalCallbacks
    public final void onFailure(String failure) {
        Intrinsics.checkNotNullParameter(failure, "failure");
        a(failure);
    }

    @Override // com.google.android.gms.ads.mediation.rtb.SignalCallbacks
    public final void onSuccess(String signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        if (this.e.getAndSet(true)) {
            return;
        }
        m83 m83Var = this.d;
        m83Var.signals = signals;
        m83Var.signalErrorCode = 0;
        Duration.Companion companion = Duration.INSTANCE;
        this.b.getClass();
        m83Var.latency = Long.valueOf(Duration.m4378getInWholeMillisecondsimpl(Duration.m4395minusLRDsOJo(DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS), this.a)));
        CancellableContinuation cancellableContinuation = this.c;
        p005kotlin.Result.Companion companion2 = p005kotlin.Result.INSTANCE;
        cancellableContinuation.resumeWith(p005kotlin.Result.m3022constructorimpl(this.d));
    }
}

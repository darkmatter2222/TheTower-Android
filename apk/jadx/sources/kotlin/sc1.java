package kotlin;

import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.InitializationCompleteCallback;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class sc1 implements InitializationCompleteCallback {
    public final /* synthetic */ AtomicBoolean a;
    public final /* synthetic */ CancellableContinuation b;

    public sc1(AtomicBoolean atomicBoolean, CancellableContinuationImpl cancellableContinuationImpl) {
        this.a = atomicBoolean;
        this.b = cancellableContinuationImpl;
    }

    @Override // com.google.android.gms.ads.mediation.InitializationCompleteCallback
    public final void onInitializationFailed(AdError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        if (this.a.getAndSet(true)) {
            return;
        }
        CancellableContinuation cancellableContinuation = this.b;
        p005kotlin.Result.Companion companion = p005kotlin.Result.INSTANCE;
        cancellableContinuation.resumeWith(p005kotlin.Result.m3022constructorimpl(new m01(error.toString(), kk1.ADAPTER_INITIALIZATION_ERROR)));
    }

    @Override // com.google.android.gms.ads.mediation.InitializationCompleteCallback
    public final void onInitializationFailed(String error) {
        Intrinsics.checkNotNullParameter(error, "error");
        if (this.a.getAndSet(true)) {
            return;
        }
        CancellableContinuation cancellableContinuation = this.b;
        p005kotlin.Result.Companion companion = p005kotlin.Result.INSTANCE;
        cancellableContinuation.resumeWith(p005kotlin.Result.m3022constructorimpl(new m01(error, kk1.ADAPTER_INITIALIZATION_ERROR)));
    }

    @Override // com.google.android.gms.ads.mediation.InitializationCompleteCallback
    public final void onInitializationSucceeded() {
        if (this.a.getAndSet(true)) {
            return;
        }
        CancellableContinuation cancellableContinuation = this.b;
        p005kotlin.Result.Companion companion = p005kotlin.Result.INSTANCE;
        cancellableContinuation.resumeWith(p005kotlin.Result.m3022constructorimpl(new q01(p005kotlin.Unit.INSTANCE)));
    }
}

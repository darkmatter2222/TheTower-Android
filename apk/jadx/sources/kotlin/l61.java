package kotlin;

import android.os.Bundle;
import com.google.android.play.core.hsdp.service.HsdpDeepLinkService;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class l61 implements HsdpDeepLinkService.HsdpDeepLinkServiceListener {
    public final /* synthetic */ CancellableContinuation a;
    public final /* synthetic */ AtomicBoolean b;

    public l61(AtomicBoolean atomicBoolean, CancellableContinuationImpl cancellableContinuationImpl) {
        this.a = cancellableContinuationImpl;
        this.b = atomicBoolean;
    }

    @Override // com.google.android.play.core.hsdp.service.HsdpDeepLinkService.HsdpDeepLinkServiceListener
    public final void onAffordanceEnded() {
    }

    @Override // com.google.android.play.core.hsdp.service.HsdpDeepLinkService.HsdpDeepLinkServiceListener
    public final void onAffordanceStarted() {
    }

    @Override // com.google.android.play.core.hsdp.service.HsdpDeepLinkService.HsdpDeepLinkServiceListener
    public final void onDeepLinkStarted() {
    }

    @Override // com.google.android.play.core.hsdp.service.HsdpDeepLinkService.HsdpDeepLinkServiceListener
    public final void onDismissed(Bundle event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.a.isActive() && this.b.compareAndSet(false, true)) {
            CancellableContinuation cancellableContinuation = this.a;
            p005kotlin.Result.Companion companion = p005kotlin.Result.INSTANCE;
            cancellableContinuation.resumeWith(p005kotlin.Result.m3022constructorimpl(p005kotlin.Unit.INSTANCE));
        }
    }

    @Override // com.google.android.play.core.hsdp.service.HsdpDeepLinkService.HsdpDeepLinkServiceListener
    public final void onError(Bundle event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.a.isActive() && this.b.compareAndSet(false, true)) {
            CancellableContinuation cancellableContinuation = this.a;
            p005kotlin.Result.Companion companion = p005kotlin.Result.INSTANCE;
            cancellableContinuation.resumeWith(p005kotlin.Result.m3022constructorimpl(p005kotlin.ResultKt.createFailure(new Exception("HSDP open failed: " + event))));
        }
    }

    @Override // com.google.android.play.core.hsdp.service.HsdpDeepLinkService.HsdpDeepLinkServiceListener
    public final void onShown(Bundle event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.a.isActive() && this.b.compareAndSet(false, true)) {
            CancellableContinuation cancellableContinuation = this.a;
            p005kotlin.Result.Companion companion = p005kotlin.Result.INSTANCE;
            cancellableContinuation.resumeWith(p005kotlin.Result.m3022constructorimpl(p005kotlin.Unit.INSTANCE));
        }
    }
}

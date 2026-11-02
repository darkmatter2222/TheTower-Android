package kotlin;

import com.google.android.gms.ads.AdError;
import com.google.android.libraries.ads.mobile.sdk.common.MediationAdError;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.coroutines.CancellableContinuation;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class do3 implements bv1 {
    public final /* synthetic */ AtomicBoolean a;
    public final /* synthetic */ CancellableContinuation b;
    public final /* synthetic */ io3 c;

    public do3(io3 io3Var, AtomicBoolean atomicBoolean, CancellableContinuation cancellableContinuation) {
        this.a = atomicBoolean;
        this.b = cancellableContinuation;
        this.c = io3Var;
    }

    public final void a(AdError adError) {
        Intrinsics.checkNotNullParameter(adError, "adError");
        if (this.a.getAndSet(true)) {
            return;
        }
        CancellableContinuation cancellableContinuation = this.b;
        p005kotlin.Result.Companion companion = p005kotlin.Result.INSTANCE;
        cancellableContinuation.resumeWith(p005kotlin.Result.m3022constructorimpl(new l01(new MediationAdError(adError.getCode(), adError.getCom.tapjoy.TJAdUnitConstants.String.MESSAGE java.lang.String(), adError.getCom.ironsource.b4.j.D java.lang.String()))));
    }

    public final void f() {
        if (this.a.getAndSet(true)) {
            return;
        }
        CancellableContinuation cancellableContinuation = this.b;
        p005kotlin.Result.Companion companion = p005kotlin.Result.INSTANCE;
        cancellableContinuation.resumeWith(p005kotlin.Result.m3022constructorimpl(new q01(p005kotlin.Unit.INSTANCE)));
    }
}

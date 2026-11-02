package kotlin;

import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;
import p005kotlin.coroutines.Continuation;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ga3 implements rh3 {
    public final SignalRequest a;

    public ga3(SignalRequest signalRequest) {
        Intrinsics.checkNotNullParameter(signalRequest, "signalRequest");
        this.a = signalRequest;
    }

    @Override // kotlin.rh3
    public final y11 f() {
        return y11.SCAR_SIGNAL_TYPE;
    }

    @Override // kotlin.rh3
    public final Object s(Continuation continuation) {
        return new q01(new fa3(this.a.getSignalType()));
    }
}

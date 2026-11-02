package kotlin;

import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;
import java.util.List;
import p005kotlin.coroutines.Continuation;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class fg3 implements rh3 {
    public final p70 a;
    public final SignalRequest b;
    public final List c;
    public final boolean d;
    public final List e;

    public fg3(ex0 flags, p70 cryptoUtil, SignalRequest signalRequest) {
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(cryptoUtil, "cryptoUtil");
        Intrinsics.checkNotNullParameter(signalRequest, "signalRequest");
        this.a = cryptoUtil;
        this.b = signalRequest;
        this.c = flags.U();
        this.d = flags.D0();
        this.e = flags.P();
    }

    @Override // kotlin.rh3
    public final y11 f() {
        return y11.AD_RESPONSE_ENCRYPTION_KEY;
    }

    @Override // kotlin.rh3
    public final Object s(Continuation continuation) {
        if (!(this.d ? this.e : this.c).contains(String.valueOf(this.b.getN().getNumber()))) {
            return new q01(new eg3(null));
        }
        v01 v01VarG = this.a.g();
        if (v01VarG instanceof i01) {
            return (i01) v01VarG;
        }
        Intrinsics.checkNotNull(v01VarG, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
        return new q01(new eg3((String) ((q01) v01VarG).b));
    }
}

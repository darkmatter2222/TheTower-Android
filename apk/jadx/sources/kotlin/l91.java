package kotlin;

import com.google.android.libraries.ads.mobile.sdk.iconad.IconRequest;
import p005kotlin.coroutines.Continuation;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class l91 implements rh3 {
    public final IconRequest a;

    public l91(IconRequest iconRequest) {
        Intrinsics.checkNotNullParameter(iconRequest, "iconRequest");
        this.a = iconRequest;
    }

    @Override // kotlin.rh3
    public final y11 f() {
        return y11.ICON_AD;
    }

    @Override // kotlin.rh3
    public final Object s(Continuation continuation) {
        return new q01(new k91(this.a));
    }
}

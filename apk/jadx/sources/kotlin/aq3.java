package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.VideoController;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class aq3 implements jr0 {
    public final dw2 a;

    public aq3(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        br3 listener = (br3) this.a.get();
        Intrinsics.checkNotNullParameter(listener, "listener");
        return (VideoController.VideoLifecycleCallbacks) kq2.b(listener);
    }
}

package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAdRequest;
import p005kotlin.coroutines.Continuation;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class on2 implements rh3 {
    public final BaseRequest a;

    public on2(BaseRequest baseRequest) {
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        this.a = baseRequest;
    }

    @Override // kotlin.rh3
    public final y11 f() {
        return y11.PICTURE_IN_PICTURE_AD_REQUEST;
    }

    @Override // kotlin.rh3
    public final Object s(Continuation continuation) {
        return new q01(new nn2(this.a instanceof PictureInPictureAdRequest));
    }
}

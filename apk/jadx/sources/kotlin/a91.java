package kotlin;

import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.FunctionReferenceImpl;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a91 extends FunctionReferenceImpl implements Function1 {
    public a91() {
        super(1, mk1.b, lk1.class, "processMultiFormatAd", "processMultiFormatAd(Lcom/google/android/libraries/ads/mobile/sdk/internal/ad/MultiFormatAd;)Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult;", 0);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        xz1 p0 = (xz1) obj;
        Intrinsics.checkNotNullParameter(p0, "p0");
        ((lk1) this.receiver).getClass();
        return lk1.a(p0);
    }
}

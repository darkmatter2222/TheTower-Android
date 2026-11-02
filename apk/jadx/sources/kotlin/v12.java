package kotlin;

import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import java.util.Optional;
import java.util.Set;
import p005kotlin.collections.SetsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class v12 implements jr0 {
    public final dw2 a;

    public v12(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        Optional nativeRequest = (Optional) this.a.get();
        Intrinsics.checkNotNullParameter(nativeRequest, "nativeRequest");
        return (Set) kq2.b((!nativeRequest.isPresent() || ((NativeRequest) nativeRequest.get()).getCom.ironsource.b4.i.O java.lang.String() == null) ? SetsKt.emptySet() : SetsKt.setOf(j53.f));
    }
}

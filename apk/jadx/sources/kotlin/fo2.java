package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;

/* JADX INFO: loaded from: classes.dex */
public final class fo2 implements jr0 {
    public final dw2 a;

    public fo2(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        return new eo2((BaseRequest) this.a.get());
    }
}

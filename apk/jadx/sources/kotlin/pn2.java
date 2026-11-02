package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;

/* JADX INFO: loaded from: classes.dex */
public final class pn2 implements jr0 {
    public final dw2 a;

    public pn2(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        return new on2((BaseRequest) this.a.get());
    }
}

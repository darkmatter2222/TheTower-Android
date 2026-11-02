package kotlin;

import android.content.Context;
import android.util.DisplayMetrics;

/* JADX INFO: loaded from: classes.dex */
public final class oh3 implements jr0 {
    public final dw2 a;

    public oh3(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        return (DisplayMetrics) kq2.b(((Context) this.a.get()).getResources().getDisplayMetrics());
    }
}

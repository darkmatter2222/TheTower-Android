package kotlin;

import android.content.Context;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes.dex */
public final class kg2 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;

    public kg2(vh1 vh1Var, dw2 dw2Var, ol0 ol0Var, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4) {
        this.a = vh1Var;
        this.b = dw2Var;
        this.c = ol0Var;
        this.d = dw2Var2;
        this.e = dw2Var3;
        this.f = dw2Var4;
    }

    @Override // kotlin.cw2
    public final Object get() {
        return new kd2((Context) this.a.get(), (CoroutineContext) this.b.get(), (CoroutineScope) this.c.get(), (ur3) this.d.get(), (g83) this.e.get(), (String) this.f.get());
    }
}

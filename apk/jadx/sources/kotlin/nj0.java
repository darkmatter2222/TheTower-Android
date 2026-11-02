package kotlin;

import android.content.Context;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class nj0 {
    public vh1 a;
    public vh1 b;
    public vh1 c;
    public dw2 d;
    public vh1 e;
    public dw2 f;
    public dw2 g;

    public nj0(Context context, Integer num, Long l, zw3 zw3Var, e01 e01Var, CoroutineScope coroutineScope) {
        a(context, num, l, zw3Var, e01Var, coroutineScope);
    }

    public final void a(Context context, Integer num, Long l, zw3 zw3Var, e01 e01Var, CoroutineScope coroutineScope) {
        this.a = vh1.a(context);
        this.b = vh1.a(coroutineScope);
        this.c = vh1.a(num);
        dw2 do0Var = zx.a;
        Object obj = do0.c;
        if (!(do0Var instanceof do0)) {
            do0Var = new do0(do0Var);
        }
        this.d = do0Var;
        this.e = vh1.a(l);
        dw2 mc2Var = new mc2(this.a, this.c, this.e, vh1.a(zw3Var));
        if (!(mc2Var instanceof do0)) {
            mc2Var = new do0(mc2Var);
        }
        this.f = mc2Var;
        ww3 ww3Var = new ww3(this.b, vh1.a(e01Var));
        dw2 bc2Var = new bc2(this.a, this.b, this.c, this.d, this.f, ww3Var instanceof do0 ? ww3Var : new do0(ww3Var));
        if (!(bc2Var instanceof do0)) {
            bc2Var = new do0(bc2Var);
        }
        this.g = bc2Var;
    }
}

package kotlin;

import android.content.Context;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class ei2 extends Lambda implements Function0 {
    public final /* synthetic */ fi2 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ei2(fi2 fi2Var) {
        super(0);
        this.a = fi2Var;
    }

    @Override // p005kotlin.jvm.functions.Function0
    public final Object invoke() {
        ki2 ki2Var;
        Context context = this.a.b;
        ki2 ki2Var2 = ki2.h;
        synchronized (ki2.class) {
            if (ki2.h == null) {
                ki2.h = new ki2(context);
            }
            ki2Var = ki2.h;
        }
        return ki2Var;
    }
}

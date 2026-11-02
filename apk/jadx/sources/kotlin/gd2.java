package kotlin;

import android.view.View;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class gd2 extends Lambda implements Function0 {
    public final /* synthetic */ k9 a;
    public final /* synthetic */ View b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gd2(k9 k9Var, View view) {
        super(0);
        this.a = k9Var;
        this.b = view;
    }

    @Override // p005kotlin.jvm.functions.Function0
    public final Object invoke() {
        this.a.a(this.b);
        return p005kotlin.Unit.INSTANCE;
    }
}

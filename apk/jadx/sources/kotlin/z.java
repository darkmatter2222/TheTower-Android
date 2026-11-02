package kotlin;

import android.app.Activity;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class z extends Lambda implements Function1 {
    public final /* synthetic */ Activity a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z(Activity activity) {
        super(1);
        this.a = activity;
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        n it = (n) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        it.onActivityPaused(this.a);
        return p005kotlin.Unit.INSTANCE;
    }
}

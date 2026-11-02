package kotlin;

import android.app.Activity;
import android.os.Bundle;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class x extends Lambda implements Function1 {
    public final /* synthetic */ Activity a;
    public final /* synthetic */ Bundle b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(Activity activity, Bundle bundle) {
        super(1);
        this.a = activity;
        this.b = bundle;
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        n it = (n) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        it.onActivityCreated(this.a, this.b);
        return p005kotlin.Unit.INSTANCE;
    }
}

package kotlin;

import android.os.Build;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class tm0 extends Lambda implements Function0 {
    public final /* synthetic */ an0 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tm0(an0 an0Var) {
        super(0);
        this.a = an0Var;
    }

    @Override // p005kotlin.jvm.functions.Function0
    public final Object invoke() {
        return Boolean.valueOf(Build.VERSION.SDK_INT >= 30 && this.a.c.getPackageManager().hasSystemFeature("com.google.android.play.feature.HPE_EXPERIENCE"));
    }
}

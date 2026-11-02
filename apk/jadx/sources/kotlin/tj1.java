package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback;
import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import p005kotlin.coroutines.Continuation;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class tj1 extends ei1 {
    public final AdLoadCallback a;
    public final Function1 b;

    public tj1(AdLoadCallback loadCallback, Function1 wrap) {
        Intrinsics.checkNotNullParameter(loadCallback, "loadCallback");
        Intrinsics.checkNotNullParameter(wrap, "wrap");
        this.a = loadCallback;
        this.b = wrap;
    }

    @Override // kotlin.ei1
    public final Object a(zh1 zh1Var, Continuation continuation) {
        this.a.onAdLoaded(this.b.invoke((sj1) zh1Var));
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.ei1
    public final void a() {
    }

    @Override // kotlin.ei1
    public final void a(LoadAdError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.a.onAdFailedToLoad(error);
    }
}

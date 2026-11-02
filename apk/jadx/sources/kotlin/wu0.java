package kotlin;

import android.view.View;
import com.google.android.libraries.ads.mobile.sdk.nativead.DisplayOpenMeasurement;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class wu0 implements DisplayOpenMeasurement {
    public final /* synthetic */ bv0 a;

    public wu0(bv0 bv0Var) {
        this.a = bv0Var;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.DisplayOpenMeasurement
    public final void setView(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        BuildersKt__Builders_commonKt.launch$default(this.a.h, null, null, new uu0(this.a, view, null), 3, null);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.DisplayOpenMeasurement
    public final void start() {
        BuildersKt__Builders_commonKt.launch$default(this.a.h, null, null, new vu0(this.a, null), 3, null);
    }
}

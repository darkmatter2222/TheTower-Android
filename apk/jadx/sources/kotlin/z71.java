package kotlin;

import android.os.Bundle;
import com.google.android.libraries.ads.mobile.sdk.initialization.InitializationConfig;
import com.ironsource.C3510b4;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class z71 extends Lambda implements Function0 {
    public final /* synthetic */ a81 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z71(a81 a81Var) {
        super(0);
        this.a = a81Var;
    }

    @Override // p005kotlin.jvm.functions.Function0
    public final Object invoke() {
        Bundle bundle;
        InitializationConfig initializationConfigA = this.a.d.a();
        boolean z = true;
        if (initializationConfigA == null || (bundle = initializationConfigA.getCom.unity3d.ads.core.domain.HandleInvocationsFromAdViewer.KEY_EXTRAS java.lang.String()) == null || !bundle.getBoolean(InitializationConfig.FORCE_CRONET_KEY)) {
            ex0 ex0Var = this.a.a;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:use_cronet_for_http_client:enabled", C3510b4.i.W);
            if (!((Boolean) ex0Var.a("gads:use_cronet_for_http_client:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
                z = false;
            }
        }
        return Boolean.valueOf(z);
    }
}

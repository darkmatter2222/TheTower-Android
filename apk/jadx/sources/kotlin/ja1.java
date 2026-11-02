package kotlin;

import com.google.android.libraries.ads.mobile.sdk.initialization.InitializationConfig;
import com.google.common.base.Splitter;
import com.tapjoy.TJAdUnitConstants;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ja1 {
    public volatile InitializationConfig a;

    public final InitializationConfig a() {
        ur3 ur3Var;
        InitializationConfig initializationConfig = this.a;
        if (initializationConfig == null) {
            Intrinsics.checkNotNullParameter("InitializationConfig is requested but null. MobileAds.initialize() must be called first.", TJAdUnitConstants.String.MESSAGE);
            Splitter splitter = f01.a;
            f01.b("InitializationConfig is requested but null. MobileAds.initialize() must be called first.", null);
            IllegalStateException illegalStateException = new IllegalStateException("InitializationConfig is requested but null. MobileAds.initialize() must be called first.");
            illegalStateException.printStackTrace();
            bu buVar = au.a;
            if (buVar == bu.DEVELOPMENT || buVar == bu.INTEGRATION_TEST) {
                throw illegalStateException;
            }
            if (buVar == bu.PRODUCTION && (ur3Var = sr3.a) != null) {
                ((as3) ur3Var).a("InitializationConfig is requested but null. MobileAds.initialize() must be called first.", (Throwable) illegalStateException);
                return initializationConfig;
            }
        }
        return initializationConfig;
    }
}

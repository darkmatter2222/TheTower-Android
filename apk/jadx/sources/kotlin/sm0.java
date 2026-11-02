package kotlin;

import android.os.Build;
import android.os.ext.SdkExtensions;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.Lambda;
import p005kotlin.time.DurationKt;

/* JADX INFO: loaded from: classes.dex */
public final class sm0 extends Lambda implements Function0 {
    public final /* synthetic */ an0 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sm0(an0 an0Var) {
        super(0);
        this.a = an0Var;
    }

    @Override // p005kotlin.jvm.functions.Function0
    public final Object invoke() {
        try {
            int i = Build.VERSION.SDK_INT;
            if (i >= 33 && SdkExtensions.getExtensionVersion(33) >= 5) {
                return Integer.valueOf(SdkExtensions.getExtensionVersion(DurationKt.NANOS_IN_MILLIS));
            }
            if (i >= 31 && SdkExtensions.getExtensionVersion(31) >= 9) {
                return Integer.valueOf(SdkExtensions.getExtensionVersion(31));
            }
            return 0;
        } catch (Exception e) {
            ((as3) this.a.d).a("DeviceProperties.adServicesExtensionVersion", (Throwable) e);
        }
    }
}

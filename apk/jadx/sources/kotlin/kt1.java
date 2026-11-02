package kotlin;

import android.os.Bundle;
import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class kt1 implements r41 {
    public final ls0 a;
    public final i2 b;

    public kt1(ls0 firebaseAnalyticsAdapter, i2 adConfiguration) {
        Intrinsics.checkNotNullParameter(firebaseAnalyticsAdapter, "firebaseAnalyticsAdapter");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        this.a = firebaseAnalyticsAdapter;
        this.b = adConfiguration;
    }

    @Override // kotlin.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        String str;
        String str2 = (String) map.get("eventName");
        if (str2 != null && (str = (String) map.get("eventId")) != null) {
            is0 is0Var = is0.b;
            if (!Intrinsics.areEqual(str2, "_ac")) {
                is0Var = is0.c;
                if (!Intrinsics.areEqual(str2, "_ai")) {
                    return p005kotlin.Unit.INSTANCE;
                }
            }
            ls0 ls0Var = this.a;
            Bundle bundle = this.b.q;
            ls0Var.getClass();
            p005kotlin.Unit unitA = ls0.a(ls0Var, is0Var, bundle, str);
            return unitA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? unitA : p005kotlin.Unit.INSTANCE;
        }
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.r41
    public final u11 g() {
        return u11.GMSG_LOG_SCION_EVENT;
    }
}

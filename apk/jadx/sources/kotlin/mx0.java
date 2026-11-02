package kotlin;

import android.util.Log;
import java.util.Map;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class mx0 implements r41 {
    public final CoroutineScope a;

    public mx0(CoroutineScope uiScope) {
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        this.a = uiScope;
    }

    @Override // kotlin.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        String str = (String) map.get("height");
        Integer intOrNull = str != null ? StringsKt.toIntOrNull(str) : null;
        if (intOrNull != null && r31Var.a() != intOrNull.intValue()) {
            r31Var.a(intOrNull.intValue());
            Log.v("GoogleMobileAds", "New fluid height: " + intOrNull);
            xs3.a(this.a, new lx0(r31Var, null));
        }
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.r41
    public final u11 g() {
        return u11.GMSG_FLUID_HEIGHT;
    }
}

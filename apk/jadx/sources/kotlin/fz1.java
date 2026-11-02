package kotlin;

import java.util.Locale;
import java.util.Map;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class fz1 {
    public final ix1 a;
    public final CoroutineScope b;

    public fz1(ix1 mraidAfmaDispatcher, CoroutineScope uiScope) {
        Intrinsics.checkNotNullParameter(mraidAfmaDispatcher, "mraidAfmaDispatcher");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        this.a = mraidAfmaDispatcher;
        this.b = uiScope;
    }

    public final p005kotlin.Unit a(Map map, r31 r31Var) {
        String lowerCase;
        int i;
        Boolean booleanStrictOrNull;
        ay0 ay0Var = r31Var.p;
        if (ay0Var == null) {
            BuildersKt__Builders_commonKt.launch$default(this.b, null, null, new dz1(this, r31Var, null), 3, null);
            return p005kotlin.Unit.INSTANCE;
        }
        String str = (String) map.get("forceOrientation");
        String str2 = (String) map.get("allowOrientationChange");
        boolean zBooleanValue = (str2 == null || (booleanStrictOrNull = StringsKt.toBooleanStrictOrNull(str2)) == null) ? true : booleanStrictOrNull.booleanValue();
        if (str != null) {
            lowerCase = str.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        } else {
            lowerCase = null;
        }
        if (Intrinsics.areEqual(lowerCase, "landscape")) {
            i = 6;
        } else if (Intrinsics.areEqual(lowerCase, "portrait")) {
            i = 7;
        } else {
            i = zBooleanValue ? -1 : 14;
        }
        BuildersKt__Builders_commonKt.launch$default(this.b, null, null, new ez1(ay0Var, i, null), 3, null);
        return p005kotlin.Unit.INSTANCE;
    }
}

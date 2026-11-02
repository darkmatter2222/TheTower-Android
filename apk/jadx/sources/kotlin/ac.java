package kotlin;

import java.util.Locale;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ac {
    public static bc a(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        String lowerCase = value.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        return Intrinsics.areEqual(lowerCase, "app_open_ad") ? bc.APP_OPEN : (bc) Enum.valueOf(bc.class, value);
    }
}

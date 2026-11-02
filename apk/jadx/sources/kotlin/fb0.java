package kotlin;

import android.os.Build;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class fb0 {
    public static String b() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        Intrinsics.checkNotNull(str2);
        Intrinsics.checkNotNull(str);
        return StringsKt.startsWith$default(str2, str, false, 2, (Object) null) ? str2 : str + " " + str2;
    }
}

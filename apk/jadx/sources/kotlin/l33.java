package kotlin;

import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class l33 {
    public static String a(i2 i2Var, bs0 fillStatus, long j, Integer num) {
        Intrinsics.checkNotNullParameter(fillStatus, "fillStatus");
        if (i2Var == null) {
            return "";
        }
        String str = i2Var.n + "." + fillStatus.d() + "." + Duration.m4378getInWholeMillisecondsimpl(j);
        if (i2Var.n0.length() <= 0) {
            return str;
        }
        String str2 = str + "." + i2Var.n0;
        return num != null ? str2 + "." + num : str2;
    }
}

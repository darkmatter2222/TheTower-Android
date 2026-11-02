package kotlin;

import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class dq1 {
    public static void a(String message, int i, String source, cq1 level) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(level, "level");
        String str = StringsKt.take(message, 1000) + " -- From line " + i + " of " + source;
        int iOrdinal = level.ordinal();
        if (iOrdinal == 0) {
            f01.a(str, (Throwable) null);
            return;
        }
        if (iOrdinal == 1) {
            f01.c(str, null);
        } else if (iOrdinal == 2) {
            f01.b(str, null);
        } else {
            if (iOrdinal != 3) {
                return;
            }
            f01.a(str, null, null, 6);
        }
    }
}

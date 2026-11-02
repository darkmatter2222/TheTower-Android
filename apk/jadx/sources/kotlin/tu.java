package kotlin;

import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class tu {
    public static Object a(String str, Function1 block) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        if (StringsKt.isBlank(str)) {
            return null;
        }
        return block.invoke(str);
    }
}

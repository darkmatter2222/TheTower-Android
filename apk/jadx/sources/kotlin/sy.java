package kotlin;

import java.util.UUID;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class sy implements jr0 {
    @Override // kotlin.cw2
    public final Object get() {
        String string = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return (String) kq2.b(string);
    }
}

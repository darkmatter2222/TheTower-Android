package kotlin;

import com.google.gson.JsonElement;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class uq extends Lambda implements Function1 {
    public static final uq a = new uq();

    public uq() {
        super(1);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        JsonElement it = (JsonElement) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        return Boolean.valueOf(it.getAsBoolean());
    }
}

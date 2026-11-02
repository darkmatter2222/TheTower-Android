package kotlin;

import com.google.gson.JsonElement;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Lambda;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class vr extends Lambda implements Function1 {
    public static final vr a = new vr();

    public vr() {
        super(1);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        JsonElement it = (JsonElement) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        String asString = it.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "getAsString(...)");
        return StringsKt.split$default((CharSequence) asString, new String[]{";"}, false, 0, 6, (Object) null);
    }
}

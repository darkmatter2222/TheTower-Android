package kotlin;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class xq extends Lambda implements Function1 {
    public static final xq a = new xq();

    public xq() {
        super(1);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        JsonElement it = (JsonElement) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        return (JsonObject) new Gson().fromJson(it.getAsString(), JsonObject.class);
    }
}

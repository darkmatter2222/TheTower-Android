package kotlin;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.ironsource.adapters.facebook.FacebookConstants;
import java.util.List;
import java.util.Map;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Lambda;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class ng3 extends Lambda implements Function0 {
    public final /* synthetic */ JsonObject a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ng3(JsonObject jsonObject) {
        super(0);
        this.a = jsonObject;
    }

    @Override // p005kotlin.jvm.functions.Function0
    public final Object invoke() {
        String asString = "";
        List listSplit$default = null;
        for (Map.Entry<String, JsonElement> entry : this.a.entrySet()) {
            Intrinsics.checkNotNull(entry);
            String key = entry.getKey();
            JsonElement value = entry.getValue();
            if (Intrinsics.areEqual(key, "params")) {
                asString = value.getAsString();
                Intrinsics.checkNotNullExpressionValue(asString, "getAsString(...)");
            } else if (Intrinsics.areEqual(key, "csrb_errors")) {
                String asString2 = value.getAsString();
                Intrinsics.checkNotNullExpressionValue(asString2, "getAsString(...)");
                listSplit$default = StringsKt.split$default((CharSequence) asString2, new String[]{FacebookConstants.PLACEMENT_IDS_SEPARATOR}, false, 0, 6, (Object) null);
            }
        }
        return new pg3(asString, listSplit$default);
    }
}

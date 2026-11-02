package kotlin;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class xb3 {
    public static yb3 a(JsonObject json) {
        Intrinsics.checkNotNullParameter(json, "json");
        try {
            ds1 ds1Var = ds1.a;
            String strA = ds1.a(json, "name");
            JsonElement jsonElement = json.get(TJAdUnitConstants.String.VIDEO_INFO);
            return new yb3(jsonElement != null ? jsonElement.getAsJsonObject() : null, strA);
        } catch (Exception e) {
            List list = a2.a(e, "t", e).s;
            String message = e.getMessage();
            if (message == null) {
                message = e.getClass().getName();
            }
            Intrinsics.checkNotNull(message);
            list.add(message);
            return null;
        }
    }
}

package kotlin;

import android.util.Base64;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.ironsource.C3510b4;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.RequestBody;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.Charsets;

/* JADX INFO: loaded from: classes.dex */
public final class y61 {
    public static final JsonObject a(Request request) {
        JsonObject jsonObject = new JsonObject();
        JsonObject jsonObject2 = new JsonObject();
        jsonObject2.addProperty("uri", request.url().getUrl());
        jsonObject2.addProperty("verb", request.method());
        p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
        jsonObject.add("firstline", jsonObject2);
        Headers headers = request.headers();
        if (headers.size() > 0) {
            JsonArray jsonArray = new JsonArray();
            for (p005kotlin.Pair<? extends String, ? extends String> pair : headers) {
                JsonObject jsonObject3 = new JsonObject();
                jsonObject3.addProperty("name", pair.getFirst());
                jsonObject3.addProperty("value", pair.getSecond());
                jsonArray.add(jsonObject3);
            }
            p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
            jsonObject.add("headers", jsonArray);
        }
        RequestBody requestBodyBody = request.body();
        if (requestBodyBody != null) {
            byte[] bytes = requestBodyBody.toString().getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            jsonObject.addProperty(C3510b4.i.E0, Base64.encodeToString(bytes, 0));
        }
        return jsonObject;
    }
}

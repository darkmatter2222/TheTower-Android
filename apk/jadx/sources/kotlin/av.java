package kotlin;

import android.content.Context;
import android.content.Intent;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class av implements r41 {
    public final Context a;
    public final ur3 b;

    public av(Context context, ur3 traceLogger) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        this.a = context;
        this.b = traceLogger;
    }

    @Override // kotlin.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        Object objResolveActivity;
        String str = (String) map.get("data");
        if (str == null) {
            xs3.a("Missing data argument for canOpenIntents gmsg", null, 6);
            Object objA = r31Var.a(new JsonObject(), "openableIntents", continuation);
            return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : p005kotlin.Unit.INSTANCE;
        }
        try {
            JsonArray jsonArrayE = ds1.e((JsonObject) new Gson().fromJson(str, JsonObject.class), "intents");
            if (jsonArrayE == null) {
                xs3.a("Missing intents parameter for canOpenIntents gmsg", null, 6);
                Object objA2 = r31Var.a(new JsonObject(), "openableIntents", continuation);
                return objA2 == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA2 : p005kotlin.Unit.INSTANCE;
            }
            JsonObject jsonObject = new JsonObject();
            int size = jsonArrayE.size();
            for (int i = 0; i < size; i++) {
                JsonObject jsonObjectA = ds1.a(jsonArrayE, i);
                if (jsonObjectA != null) {
                    String strA = ds1.a(jsonObjectA, "id", "");
                    Intent intent = (Intent) tu.a(ds1.a(jsonObjectA, "intent_url", ""), new zu(this));
                    if (intent == null) {
                        intent = new Intent();
                        tu.a(ds1.a(jsonObjectA, "u", ""), new uu(intent));
                        tu.a(ds1.a(jsonObjectA, "i", ""), new vu(intent));
                        tu.a(ds1.a(jsonObjectA, "m", ""), new wu(intent));
                        tu.a(ds1.a(jsonObjectA, "p", ""), new xu(intent));
                        tu.a(ds1.a(jsonObjectA, "c", ""), new yu(intent));
                    }
                    try {
                        objResolveActivity = this.a.getPackageManager().resolveActivity(intent, 65536);
                    } catch (Exception e) {
                        ((as3) this.b).a("Failed resolving intent: " + intent, (Throwable) e);
                        objResolveActivity = p005kotlin.Unit.INSTANCE;
                    }
                    jsonObject.addProperty(strA, Boxing.boxBoolean(objResolveActivity != null));
                }
            }
            String str2 = (String) map.get("ad_mid");
            if (str2 != null && !StringsKt.isBlank(str2)) {
                jsonObject.addProperty("ad_mid", str2);
            }
            Object objA3 = r31Var.a(jsonObject, "openableIntents", continuation);
            return objA3 == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA3 : p005kotlin.Unit.INSTANCE;
        } catch (Exception e2) {
            xs3.a("Invalid JSON data for canOpenIntents gmsg", e2, 4);
            ((as3) this.b).a("Invalid JSON data for canOpenIntents gmsg", (Throwable) e2);
            Object objA4 = r31Var.a(new JsonObject(), "openableIntents", continuation);
            return objA4 == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA4 : p005kotlin.Unit.INSTANCE;
        }
    }

    @Override // kotlin.r41
    public final u11 g() {
        return u11.GMSG_CAN_OPEN_INTENTS;
    }
}

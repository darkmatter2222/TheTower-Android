package kotlin;

import com.google.gson.JsonObject;
import java.util.List;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class nb2 {
    public static qb2 a(JsonObject json) {
        pb2 pb2Var;
        pb2 pb2Var2;
        Intrinsics.checkNotNullParameter(json, "json");
        ds1 ds1Var = ds1.a;
        try {
            ob2 ob2Var = pb2.a;
            ds1 ds1Var2 = ds1.a;
            int iA = ds1.a(json, "impression_prerequisite", 0);
            ob2Var.getClass();
            if (iA == 0) {
                pb2Var = pb2.UNDEFINED;
            } else if (iA != 1) {
                pb2Var = iA != 2 ? pb2.UNDEFINED : pb2.NOTIFICATION_CLICK;
            } else {
                pb2Var = pb2.CLICK;
            }
            int iA2 = ds1.a(json, "click_prerequisite", 0);
            if (iA2 == 0) {
                pb2Var2 = pb2.UNDEFINED;
            } else if (iA2 != 1) {
                pb2Var2 = iA2 != 2 ? pb2.UNDEFINED : pb2.NOTIFICATION_CLICK;
            } else {
                pb2Var2 = pb2.CLICK;
            }
            return new qb2(pb2Var, pb2Var2, ds1.a(json, "notification_flow_enabled", false));
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

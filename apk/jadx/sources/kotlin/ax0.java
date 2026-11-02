package kotlin;

import com.google.gson.JsonObject;
import p005kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class ax0 {
    public static long a() {
        return ex0.A;
    }

    public static final void a(ax0 ax0Var, JsonObject jsonObject, y11 y11Var, kj3 kj3Var) {
        jsonObject.addProperty(String.valueOf(y11Var.getNumber()), Long.valueOf(Duration.m4378getInWholeMillisecondsimpl(kj3Var.a)));
    }
}

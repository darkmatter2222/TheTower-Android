package kotlin;

import com.google.gson.JsonObject;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class e43 extends Lambda implements Function0 {
    public final /* synthetic */ j43 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e43(j43 j43Var) {
        super(0);
        this.a = j43Var;
    }

    @Override // p005kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final String invoke() {
        JsonObject jsonObject = this.a.u;
        if (jsonObject == null) {
            Intrinsics.throwUninitializedPropertyAccessException("signalJson");
            jsonObject = null;
        }
        return "Ad Request Signals: " + jsonObject;
    }
}

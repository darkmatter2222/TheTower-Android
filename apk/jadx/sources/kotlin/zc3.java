package kotlin;

import com.google.gson.JsonObject;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class zc3 implements m {
    public final g30 a;

    public zc3(g30 consentManager) {
        Intrinsics.checkNotNullParameter(consentManager, "consentManager");
        this.a = consentManager;
    }

    @Override // kotlin.m
    public final Object a(JsonObject jsonObject, j jVar) {
        Object objB;
        ds1 ds1Var = ds1.a;
        if (ds1.a(jsonObject, "clear", "").length() > 0) {
            Object objB2 = this.a.B(jVar);
            return objB2 == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objB2 : p005kotlin.Unit.INSTANCE;
        }
        String strA = ds1.a(jsonObject, "cookie", "");
        return (strA.length() <= 0 || (objB = this.a.b(strA, jVar)) != IntrinsicsKt.getCOROUTINE_SUSPENDED()) ? p005kotlin.Unit.INSTANCE : objB;
    }
}

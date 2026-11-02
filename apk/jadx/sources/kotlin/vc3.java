package kotlin;

import com.google.gson.JsonObject;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class vc3 implements m {
    public final zd3 a;

    public vc3(zd3 sharedSettingsDataStore) {
        Intrinsics.checkNotNullParameter(sharedSettingsDataStore, "sharedSettingsDataStore");
        this.a = sharedSettingsDataStore;
    }

    @Override // kotlin.m
    public final Object a(JsonObject jsonObject, j jVar) {
        if (!jsonObject.has("sga")) {
            return p005kotlin.Unit.INSTANCE;
        }
        ds1 ds1Var = ds1.a;
        boolean zA = ds1.a(jsonObject, "sga", false);
        zd3 zd3Var = this.a;
        zd3Var.getClass();
        Object objA = zd3.a(zd3Var, new vd3(zA), jVar);
        if (objA != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            objA = p005kotlin.Unit.INSTANCE;
        }
        return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : p005kotlin.Unit.INSTANCE;
    }
}

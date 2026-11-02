package kotlin;

import com.google.gson.JsonObject;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class ao3 implements m {
    public final if1 a;

    public ao3(if1 inspectorManager) {
        Intrinsics.checkNotNullParameter(inspectorManager, "inspectorManager");
        this.a = inspectorManager;
    }

    @Override // kotlin.m
    public final Object a(JsonObject jsonObject, j jVar) throws Throwable {
        ds1 ds1Var = ds1.a;
        String strA = ds1.a(jsonObject, "test_mode_enabled", "");
        if (StringsKt.isBlank(strA)) {
            return p005kotlin.Unit.INSTANCE;
        }
        if1 if1Var = this.a;
        boolean z = Boolean.parseBoolean(strA);
        if1Var.getClass();
        Object objB = if1.b(if1Var, z, jVar);
        return objB == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objB : p005kotlin.Unit.INSTANCE;
    }
}

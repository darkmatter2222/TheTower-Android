package kotlin;

import com.google.gson.JsonObject;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ig1 implements m {
    public final if1 a;

    public ig1(if1 inspectorManager) {
        Intrinsics.checkNotNullParameter(inspectorManager, "inspectorManager");
        this.a = inspectorManager;
    }

    @Override // kotlin.m
    public final Object a(JsonObject jsonObject, j jVar) throws Throwable {
        if1 if1Var = this.a;
        if1Var.getClass();
        Object objA = if1.a(if1Var, jsonObject, jVar);
        return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : p005kotlin.Unit.INSTANCE;
    }
}

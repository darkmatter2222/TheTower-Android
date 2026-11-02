package kotlin;

import p005kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: loaded from: classes.dex */
public final class st0 implements zr1 {
    public static final st0 a = new st0();

    @Override // kotlin.zr1
    public final Object a(Object obj, or1 or1Var) {
        Object objA = ((a04) obj).a(new rt0(null), or1Var);
        return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : p005kotlin.Unit.INSTANCE;
    }
}

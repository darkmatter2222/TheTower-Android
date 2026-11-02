package kotlin;

import p005kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: loaded from: classes.dex */
public final class qt0 implements zr1 {
    public final /* synthetic */ zy a;

    public qt0(zy zyVar) {
        this.a = zyVar;
    }

    @Override // kotlin.zr1
    public final Object a(Object obj, or1 or1Var) {
        Object objA = ((a04) obj).a(new pt0(this.a, null), or1Var);
        return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : p005kotlin.Unit.INSTANCE;
    }
}

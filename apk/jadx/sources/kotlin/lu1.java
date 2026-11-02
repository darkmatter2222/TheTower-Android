package kotlin;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class lu1 implements ku1 {
    private static <K, V> int b(int i, Object obj, Object obj2) {
        ju1 ju1Var = (ju1) obj;
        gu1 gu1Var = (gu1) obj2;
        int iA = 0;
        if (ju1Var.isEmpty()) {
            return 0;
        }
        for (Map.Entry<K, V> entry : ju1Var.entrySet()) {
            iA += gu1Var.a(i, entry.getKey(), entry.getValue());
        }
        return iA;
    }

    private static <K, V> ju1<K, V> b(Object obj, Object obj2) {
        ju1<K, V> ju1VarF = (ju1) obj;
        ju1<K, V> ju1Var = (ju1) obj2;
        if (!ju1Var.isEmpty()) {
            if (!ju1VarF.d()) {
                ju1VarF = ju1VarF.f();
            }
            ju1VarF.a((ju1) ju1Var);
        }
        return ju1VarF;
    }

    @Override // kotlin.ku1
    public int a(int i, Object obj, Object obj2) {
        return b(i, obj, obj2);
    }

    @Override // kotlin.ku1
    public Object a(Object obj, Object obj2) {
        return b(obj, obj2);
    }

    @Override // kotlin.ku1
    public Map<?, ?> a(Object obj) {
        return (ju1) obj;
    }

    @Override // kotlin.ku1
    public Object b(Object obj) {
        return ju1.b().f();
    }

    @Override // kotlin.ku1
    public Map<?, ?> c(Object obj) {
        return (ju1) obj;
    }

    @Override // kotlin.ku1
    public boolean d(Object obj) {
        return !((ju1) obj).d();
    }

    @Override // kotlin.ku1
    public Object e(Object obj) {
        ((ju1) obj).e();
        return obj;
    }

    @Override // kotlin.ku1
    public gu1.a<?, ?> f(Object obj) {
        return ((gu1) obj).a();
    }
}

package kotlin;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class os1 implements ns1 {
    public static <E> yh1.f<E> c(Object obj, long j) {
        return (yh1.f) hw3.j(obj, j);
    }

    @Override // kotlin.ns1
    public void a(Object obj, long j) {
        c(obj, j).a();
    }

    @Override // kotlin.ns1
    public <E> void a(Object obj, Object obj2, long j) {
        yh1.f fVarC = c(obj, j);
        yh1.f fVarC2 = c(obj2, j);
        int size = fVarC.size();
        int size2 = fVarC2.size();
        if (size > 0 && size2 > 0) {
            if (!fVarC.b()) {
                fVarC = fVarC.a2(size2 + size);
            }
            fVarC.addAll(fVarC2);
        }
        if (size > 0) {
            fVarC2 = fVarC;
        }
        hw3.a(obj, j, fVarC2);
    }

    @Override // kotlin.ns1
    public <L> List<L> b(Object obj, long j) {
        yh1.f fVarC = c(obj, j);
        if (fVarC.b()) {
            return fVarC;
        }
        int size = fVarC.size();
        yh1.f fVarA2 = fVarC.a2(size == 0 ? 10 : size * 2);
        hw3.a(obj, j, fVarA2);
        return fVarA2;
    }
}

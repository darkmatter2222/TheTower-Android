package kotlin;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
class aw3 extends yv3<zv3, zv3> {
    @Override // kotlin.yv3
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int c(zv3 zv3Var) {
        return zv3Var.c();
    }

    @Override // kotlin.yv3
    public zv3 a(zv3 zv3Var, zv3 zv3Var2) {
        if (zv3.b().equals(zv3Var2)) {
            return zv3Var;
        }
        return zv3.b().equals(zv3Var) ? zv3.a(zv3Var, zv3Var2) : zv3Var.a(zv3Var2);
    }

    @Override // kotlin.yv3
    public void a(zv3 zv3Var, int i, int i2) {
        zv3Var.a(u24.a(i, 5), Integer.valueOf(i2));
    }

    @Override // kotlin.yv3
    public void a(zv3 zv3Var, int i, long j) {
        zv3Var.a(u24.a(i, 1), Long.valueOf(j));
    }

    @Override // kotlin.yv3
    public void a(zv3 zv3Var, int i, du duVar) {
        zv3Var.a(u24.a(i, 2), duVar);
    }

    @Override // kotlin.yv3
    public void a(zv3 zv3Var, int i, zv3 zv3Var2) {
        zv3Var.a(u24.a(i, 3), zv3Var2);
    }

    @Override // kotlin.yv3
    public void a(zv3 zv3Var, py pyVar) throws IOException {
        zv3Var.a(pyVar);
    }

    @Override // kotlin.yv3
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void b(Object obj, zv3 zv3Var) {
        c(obj, zv3Var);
    }

    @Override // kotlin.yv3
    public boolean a(ny nyVar) {
        return false;
    }

    @Override // kotlin.yv3
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public int d(zv3 zv3Var) {
        return zv3Var.d();
    }

    @Override // kotlin.yv3
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public zv3 a() {
        return zv3.f();
    }

    @Override // kotlin.yv3
    public void b(zv3 zv3Var, int i, long j) {
        zv3Var.a(u24.a(i, 0), Long.valueOf(j));
    }

    @Override // kotlin.yv3
    public void b(zv3 zv3Var, py pyVar) throws IOException {
        zv3Var.b(pyVar);
    }

    @Override // kotlin.yv3
    /* JADX INFO: renamed from: b, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public void c(Object obj, zv3 zv3Var) {
        ((vz0) obj).b = zv3Var;
    }

    @Override // kotlin.yv3
    /* JADX INFO: renamed from: c, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public zv3 f(zv3 zv3Var) {
        zv3Var.e();
        return zv3Var;
    }

    @Override // kotlin.yv3
    public void e(Object obj) {
        b(obj).e();
    }

    @Override // kotlin.yv3
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public zv3 a(Object obj) {
        zv3 zv3VarB = b(obj);
        if (zv3VarB != zv3.b()) {
            return zv3VarB;
        }
        zv3 zv3VarF = zv3.f();
        c(obj, zv3VarF);
        return zv3VarF;
    }

    @Override // kotlin.yv3
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public zv3 b(Object obj) {
        return ((vz0) obj).b;
    }
}

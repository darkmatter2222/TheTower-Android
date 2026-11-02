package kotlin;

import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class ny {
    private final my a;
    private int b;
    private int c;
    private int d = 0;

    public static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[u24.a.values().length];
            a = iArr;
            try {
                iArr[u24.a.j.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[u24.a.n.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[u24.a.c.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[u24.a.p.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[u24.a.i.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[u24.a.h.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[u24.a.d.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[u24.a.g.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[u24.a.e.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                a[u24.a.m.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                a[u24.a.q.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                a[u24.a.r.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                a[u24.a.s.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                a[u24.a.t.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                a[u24.a.k.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                a[u24.a.o.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                a[u24.a.f.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    private ny(my myVar) {
        my myVar2 = (my) yh1.a(myVar, "input");
        this.a = myVar2;
        myVar2.e = this;
    }

    public static ny a(my myVar) {
        Object obj = myVar.e;
        return obj != null ? (ny) obj : new ny(myVar);
    }

    private <T> T a(la3<T> la3Var, er0 er0Var) throws IOException {
        T tA = la3Var.a();
        b(tA, la3Var, er0Var);
        la3Var.c(tA);
        return tA;
    }

    private Object a(u24.a aVar, Class<?> cls, er0 er0Var) throws IOException {
        switch (a.a[aVar.ordinal()]) {
            case 1:
                return Boolean.valueOf(d());
            case 2:
                return e();
            case 3:
                return Double.valueOf(f());
            case 4:
                return Integer.valueOf(g());
            case 5:
                return Integer.valueOf(h());
            case 6:
                return Long.valueOf(i());
            case 7:
                return Float.valueOf(j());
            case 8:
                return Integer.valueOf(k());
            case 9:
                return Long.valueOf(l());
            case 10:
                return a(cls, er0Var);
            case 11:
                return Integer.valueOf(m());
            case 12:
                return Long.valueOf(n());
            case 13:
                return Integer.valueOf(o());
            case 14:
                return Long.valueOf(p());
            case 15:
                return r();
            case 16:
                return Integer.valueOf(s());
            case 17:
                return Long.valueOf(t());
            default:
                throw new IllegalArgumentException("unsupported field type.");
        }
    }

    private void a(int i) throws IOException {
        if (this.a.e() != i) {
            throw np1.l();
        }
    }

    private <T> T b(la3<T> la3Var, er0 er0Var) throws IOException {
        T tA = la3Var.a();
        d(tA, la3Var, er0Var);
        la3Var.c(tA);
        return tA;
    }

    private void b(int i) throws IOException {
        if (u24.b(this.b) != i) {
            throw np1.e();
        }
    }

    private <T> void b(T t, la3<T> la3Var, er0 er0Var) throws IOException {
        this.a.a();
        int i = this.c;
        this.c = u24.a(u24.a(this.b), 4);
        this.a.b++;
        try {
            la3Var.a(t, this, er0Var);
            if (this.b != this.c) {
                throw np1.h();
            }
            this.a.b--;
            this.c = i;
        } catch (Throwable th) {
            this.a.b--;
            this.c = i;
            throw th;
        }
    }

    private void c(int i) throws IOException {
        if ((i & 3) != 0) {
            throw np1.h();
        }
    }

    private void d(int i) throws IOException {
        if ((i & 7) != 0) {
            throw np1.h();
        }
    }

    private <T> void d(T t, la3<T> la3Var, er0 er0Var) throws IOException {
        int iG = this.a.g();
        la3Var.a(t, this, er0Var);
        this.a.d(iG);
    }

    public int a() throws IOException {
        int i = this.d;
        if (i != 0) {
            this.b = i;
            this.d = 0;
        } else {
            this.b = this.a.x();
        }
        int i2 = this.b;
        if (i2 == 0 || i2 == this.c) {
            return Integer.MAX_VALUE;
        }
        return u24.a(i2);
    }

    public <T> T a(Class<T> cls, er0 er0Var) throws IOException {
        b(2);
        return (T) b(aw2.a().b(cls), er0Var);
    }

    public <T> void a(T t, la3<T> la3Var, er0 er0Var) throws IOException {
        b(3);
        b(t, la3Var, er0Var);
    }

    public void a(List<Boolean> list) throws IOException {
        int iX;
        int iX2;
        if (!(list instanceof ct)) {
            int iB = u24.b(this.b);
            if (iB == 0) {
                do {
                    list.add(Boolean.valueOf(this.a.h()));
                    if (this.a.f()) {
                        return;
                    } else {
                        iX = this.a.x();
                    }
                } while (iX == this.b);
                this.d = iX;
                return;
            }
            if (iB != 2) {
                throw np1.e();
            }
            int iE = this.a.e() + this.a.y();
            while (this.a.e() < iE) {
                list.add(Boolean.valueOf(this.a.h()));
            }
            a(iE);
            return;
        }
        ct ctVar = (ct) list;
        int iB2 = u24.b(this.b);
        if (iB2 == 0) {
            do {
                ctVar.a(this.a.h());
                if (this.a.f()) {
                    return;
                } else {
                    iX2 = this.a.x();
                }
            } while (iX2 == this.b);
            this.d = iX2;
            return;
        }
        if (iB2 != 2) {
            throw np1.e();
        }
        int iE2 = this.a.e() + this.a.y();
        while (this.a.e() < iE2) {
            ctVar.a(this.a.h());
        }
        a(iE2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @java.lang.Deprecated
    public <T> void a(List<T> list, la3<T> la3Var, er0 er0Var) throws IOException {
        int iX;
        if (u24.b(this.b) != 3) {
            throw np1.e();
        }
        int i = this.b;
        do {
            list.add(a(la3Var, er0Var));
            if (this.a.f() || this.d != 0) {
                return;
            } else {
                iX = this.a.x();
            }
        } while (iX == i);
        this.d = iX;
    }

    public void a(List<String> list, boolean z) throws IOException {
        int iX;
        if (u24.b(this.b) != 2) {
            throw np1.e();
        }
        do {
            list.add(z ? r() : q());
            if (this.a.f()) {
                return;
            } else {
                iX = this.a.x();
            }
        } while (iX == this.b);
        this.d = iX;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <K, V> void a(Map<K, V> map, gu1.a<K, V> aVar, er0 er0Var) throws IOException {
        b(2);
        int iE = this.a.e(this.a.y());
        Object objA = aVar.b;
        Object objA2 = aVar.d;
        while (true) {
            try {
                int iA = a();
                if (iA == Integer.MAX_VALUE || this.a.f()) {
                    break;
                }
                if (iA == 1) {
                    objA = a(aVar.a, (Class<?>) null, (er0) null);
                } else if (iA != 2) {
                    try {
                        if (!u()) {
                            throw new np1("Unable to parse map entry.");
                        }
                    } catch (np1.a e) {
                        if (!u()) {
                            throw new np1("Unable to parse map entry.", e);
                        }
                    }
                } else {
                    objA2 = a(aVar.c, aVar.d.getClass(), er0Var);
                }
            } catch (Throwable th) {
                this.a.c(iE);
                throw th;
            }
        }
        map.put(objA, objA2);
        if (this.a.c() != 0) {
            throw np1.l();
        }
        this.a.c(iE);
    }

    public int b() {
        return this.a.d();
    }

    public void b(List<du> list) throws IOException {
        int iX;
        if (u24.b(this.b) != 2) {
            throw np1.e();
        }
        do {
            list.add(e());
            if (this.a.f()) {
                return;
            } else {
                iX = this.a.x();
            }
        } while (iX == this.b);
        this.d = iX;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> void b(List<T> list, la3<T> la3Var, er0 er0Var) throws IOException {
        int iX;
        if (u24.b(this.b) != 2) {
            throw np1.e();
        }
        int i = this.b;
        do {
            list.add(b(la3Var, er0Var));
            if (this.a.f() || this.d != 0) {
                return;
            } else {
                iX = this.a.x();
            }
        } while (iX == i);
        this.d = iX;
    }

    public int c() {
        return this.b;
    }

    public <T> void c(T t, la3<T> la3Var, er0 er0Var) throws IOException {
        b(2);
        d(t, la3Var, er0Var);
    }

    public void c(List<Double> list) throws IOException {
        int iX;
        int iX2;
        if (!(list instanceof co0)) {
            int iB = u24.b(this.b);
            if (iB == 1) {
                do {
                    list.add(Double.valueOf(this.a.j()));
                    if (this.a.f()) {
                        return;
                    } else {
                        iX = this.a.x();
                    }
                } while (iX == this.b);
                this.d = iX;
                return;
            }
            if (iB != 2) {
                throw np1.e();
            }
            int iY = this.a.y();
            d(iY);
            int iE = this.a.e() + iY;
            while (this.a.e() < iE) {
                list.add(Double.valueOf(this.a.j()));
            }
            a(iE);
            return;
        }
        co0 co0Var = (co0) list;
        int iB2 = u24.b(this.b);
        if (iB2 == 1) {
            do {
                co0Var.a(this.a.j());
                if (this.a.f()) {
                    return;
                } else {
                    iX2 = this.a.x();
                }
            } while (iX2 == this.b);
            this.d = iX2;
            return;
        }
        if (iB2 != 2) {
            throw np1.e();
        }
        int iY2 = this.a.y();
        d(iY2);
        int iE2 = this.a.e() + iY2;
        while (this.a.e() < iE2) {
            co0Var.a(this.a.j());
        }
        a(iE2);
    }

    public void d(List<Integer> list) throws IOException {
        int iX;
        int iX2;
        if (!(list instanceof xh1)) {
            int iB = u24.b(this.b);
            if (iB == 0) {
                do {
                    list.add(Integer.valueOf(this.a.k()));
                    if (this.a.f()) {
                        return;
                    } else {
                        iX = this.a.x();
                    }
                } while (iX == this.b);
                this.d = iX;
                return;
            }
            if (iB != 2) {
                throw np1.e();
            }
            int iE = this.a.e() + this.a.y();
            while (this.a.e() < iE) {
                list.add(Integer.valueOf(this.a.k()));
            }
            a(iE);
            return;
        }
        xh1 xh1Var = (xh1) list;
        int iB2 = u24.b(this.b);
        if (iB2 == 0) {
            do {
                xh1Var.b(this.a.k());
                if (this.a.f()) {
                    return;
                } else {
                    iX2 = this.a.x();
                }
            } while (iX2 == this.b);
            this.d = iX2;
            return;
        }
        if (iB2 != 2) {
            throw np1.e();
        }
        int iE2 = this.a.e() + this.a.y();
        while (this.a.e() < iE2) {
            xh1Var.b(this.a.k());
        }
        a(iE2);
    }

    public boolean d() throws IOException {
        b(0);
        return this.a.h();
    }

    public du e() throws IOException {
        b(2);
        return this.a.i();
    }

    public void e(List<Integer> list) throws IOException {
        int iX;
        int iX2;
        if (!(list instanceof xh1)) {
            int iB = u24.b(this.b);
            if (iB == 2) {
                int iY = this.a.y();
                c(iY);
                int iE = this.a.e() + iY;
                while (this.a.e() < iE) {
                    list.add(Integer.valueOf(this.a.l()));
                }
                a(iE);
                return;
            }
            if (iB != 5) {
                throw np1.e();
            }
            do {
                list.add(Integer.valueOf(this.a.l()));
                if (this.a.f()) {
                    return;
                } else {
                    iX = this.a.x();
                }
            } while (iX == this.b);
            this.d = iX;
            return;
        }
        xh1 xh1Var = (xh1) list;
        int iB2 = u24.b(this.b);
        if (iB2 == 2) {
            int iY2 = this.a.y();
            c(iY2);
            int iE2 = this.a.e() + iY2;
            while (this.a.e() < iE2) {
                xh1Var.b(this.a.l());
            }
            a(iE2);
            return;
        }
        if (iB2 != 5) {
            throw np1.e();
        }
        do {
            xh1Var.b(this.a.l());
            if (this.a.f()) {
                return;
            } else {
                iX2 = this.a.x();
            }
        } while (iX2 == this.b);
        this.d = iX2;
    }

    public double f() throws IOException {
        b(1);
        return this.a.j();
    }

    public void f(List<Long> list) throws IOException {
        int iX;
        int iX2;
        if (!(list instanceof au1)) {
            int iB = u24.b(this.b);
            if (iB == 1) {
                do {
                    list.add(Long.valueOf(this.a.m()));
                    if (this.a.f()) {
                        return;
                    } else {
                        iX = this.a.x();
                    }
                } while (iX == this.b);
                this.d = iX;
                return;
            }
            if (iB != 2) {
                throw np1.e();
            }
            int iY = this.a.y();
            d(iY);
            int iE = this.a.e() + iY;
            while (this.a.e() < iE) {
                list.add(Long.valueOf(this.a.m()));
            }
            a(iE);
            return;
        }
        au1 au1Var = (au1) list;
        int iB2 = u24.b(this.b);
        if (iB2 == 1) {
            do {
                au1Var.a(this.a.m());
                if (this.a.f()) {
                    return;
                } else {
                    iX2 = this.a.x();
                }
            } while (iX2 == this.b);
            this.d = iX2;
            return;
        }
        if (iB2 != 2) {
            throw np1.e();
        }
        int iY2 = this.a.y();
        d(iY2);
        int iE2 = this.a.e() + iY2;
        while (this.a.e() < iE2) {
            au1Var.a(this.a.m());
        }
        a(iE2);
    }

    public int g() throws IOException {
        b(0);
        return this.a.k();
    }

    public void g(List<Float> list) throws IOException {
        int iX;
        int iX2;
        if (!(list instanceof kx0)) {
            int iB = u24.b(this.b);
            if (iB == 2) {
                int iY = this.a.y();
                c(iY);
                int iE = this.a.e() + iY;
                while (this.a.e() < iE) {
                    list.add(Float.valueOf(this.a.n()));
                }
                a(iE);
                return;
            }
            if (iB != 5) {
                throw np1.e();
            }
            do {
                list.add(Float.valueOf(this.a.n()));
                if (this.a.f()) {
                    return;
                } else {
                    iX = this.a.x();
                }
            } while (iX == this.b);
            this.d = iX;
            return;
        }
        kx0 kx0Var = (kx0) list;
        int iB2 = u24.b(this.b);
        if (iB2 == 2) {
            int iY2 = this.a.y();
            c(iY2);
            int iE2 = this.a.e() + iY2;
            while (this.a.e() < iE2) {
                kx0Var.a(this.a.n());
            }
            a(iE2);
            return;
        }
        if (iB2 != 5) {
            throw np1.e();
        }
        do {
            kx0Var.a(this.a.n());
            if (this.a.f()) {
                return;
            } else {
                iX2 = this.a.x();
            }
        } while (iX2 == this.b);
        this.d = iX2;
    }

    public int h() throws IOException {
        b(5);
        return this.a.l();
    }

    public void h(List<Integer> list) throws IOException {
        int iX;
        int iX2;
        if (!(list instanceof xh1)) {
            int iB = u24.b(this.b);
            if (iB == 0) {
                do {
                    list.add(Integer.valueOf(this.a.o()));
                    if (this.a.f()) {
                        return;
                    } else {
                        iX = this.a.x();
                    }
                } while (iX == this.b);
                this.d = iX;
                return;
            }
            if (iB != 2) {
                throw np1.e();
            }
            int iE = this.a.e() + this.a.y();
            while (this.a.e() < iE) {
                list.add(Integer.valueOf(this.a.o()));
            }
            a(iE);
            return;
        }
        xh1 xh1Var = (xh1) list;
        int iB2 = u24.b(this.b);
        if (iB2 == 0) {
            do {
                xh1Var.b(this.a.o());
                if (this.a.f()) {
                    return;
                } else {
                    iX2 = this.a.x();
                }
            } while (iX2 == this.b);
            this.d = iX2;
            return;
        }
        if (iB2 != 2) {
            throw np1.e();
        }
        int iE2 = this.a.e() + this.a.y();
        while (this.a.e() < iE2) {
            xh1Var.b(this.a.o());
        }
        a(iE2);
    }

    public long i() throws IOException {
        b(1);
        return this.a.m();
    }

    public void i(List<Long> list) throws IOException {
        int iX;
        int iX2;
        if (!(list instanceof au1)) {
            int iB = u24.b(this.b);
            if (iB == 0) {
                do {
                    list.add(Long.valueOf(this.a.p()));
                    if (this.a.f()) {
                        return;
                    } else {
                        iX = this.a.x();
                    }
                } while (iX == this.b);
                this.d = iX;
                return;
            }
            if (iB != 2) {
                throw np1.e();
            }
            int iE = this.a.e() + this.a.y();
            while (this.a.e() < iE) {
                list.add(Long.valueOf(this.a.p()));
            }
            a(iE);
            return;
        }
        au1 au1Var = (au1) list;
        int iB2 = u24.b(this.b);
        if (iB2 == 0) {
            do {
                au1Var.a(this.a.p());
                if (this.a.f()) {
                    return;
                } else {
                    iX2 = this.a.x();
                }
            } while (iX2 == this.b);
            this.d = iX2;
            return;
        }
        if (iB2 != 2) {
            throw np1.e();
        }
        int iE2 = this.a.e() + this.a.y();
        while (this.a.e() < iE2) {
            au1Var.a(this.a.p());
        }
        a(iE2);
    }

    public float j() throws IOException {
        b(5);
        return this.a.n();
    }

    public void j(List<Integer> list) throws IOException {
        int iX;
        int iX2;
        if (!(list instanceof xh1)) {
            int iB = u24.b(this.b);
            if (iB == 2) {
                int iY = this.a.y();
                c(iY);
                int iE = this.a.e() + iY;
                while (this.a.e() < iE) {
                    list.add(Integer.valueOf(this.a.r()));
                }
                a(iE);
                return;
            }
            if (iB != 5) {
                throw np1.e();
            }
            do {
                list.add(Integer.valueOf(this.a.r()));
                if (this.a.f()) {
                    return;
                } else {
                    iX = this.a.x();
                }
            } while (iX == this.b);
            this.d = iX;
            return;
        }
        xh1 xh1Var = (xh1) list;
        int iB2 = u24.b(this.b);
        if (iB2 == 2) {
            int iY2 = this.a.y();
            c(iY2);
            int iE2 = this.a.e() + iY2;
            while (this.a.e() < iE2) {
                xh1Var.b(this.a.r());
            }
            a(iE2);
            return;
        }
        if (iB2 != 5) {
            throw np1.e();
        }
        do {
            xh1Var.b(this.a.r());
            if (this.a.f()) {
                return;
            } else {
                iX2 = this.a.x();
            }
        } while (iX2 == this.b);
        this.d = iX2;
    }

    public int k() throws IOException {
        b(0);
        return this.a.o();
    }

    public void k(List<Long> list) throws IOException {
        int iX;
        int iX2;
        if (!(list instanceof au1)) {
            int iB = u24.b(this.b);
            if (iB == 1) {
                do {
                    list.add(Long.valueOf(this.a.s()));
                    if (this.a.f()) {
                        return;
                    } else {
                        iX = this.a.x();
                    }
                } while (iX == this.b);
                this.d = iX;
                return;
            }
            if (iB != 2) {
                throw np1.e();
            }
            int iY = this.a.y();
            d(iY);
            int iE = this.a.e() + iY;
            while (this.a.e() < iE) {
                list.add(Long.valueOf(this.a.s()));
            }
            a(iE);
            return;
        }
        au1 au1Var = (au1) list;
        int iB2 = u24.b(this.b);
        if (iB2 == 1) {
            do {
                au1Var.a(this.a.s());
                if (this.a.f()) {
                    return;
                } else {
                    iX2 = this.a.x();
                }
            } while (iX2 == this.b);
            this.d = iX2;
            return;
        }
        if (iB2 != 2) {
            throw np1.e();
        }
        int iY2 = this.a.y();
        d(iY2);
        int iE2 = this.a.e() + iY2;
        while (this.a.e() < iE2) {
            au1Var.a(this.a.s());
        }
        a(iE2);
    }

    public long l() throws IOException {
        b(0);
        return this.a.p();
    }

    public void l(List<Integer> list) throws IOException {
        int iX;
        int iX2;
        if (!(list instanceof xh1)) {
            int iB = u24.b(this.b);
            if (iB == 0) {
                do {
                    list.add(Integer.valueOf(this.a.t()));
                    if (this.a.f()) {
                        return;
                    } else {
                        iX = this.a.x();
                    }
                } while (iX == this.b);
                this.d = iX;
                return;
            }
            if (iB != 2) {
                throw np1.e();
            }
            int iE = this.a.e() + this.a.y();
            while (this.a.e() < iE) {
                list.add(Integer.valueOf(this.a.t()));
            }
            a(iE);
            return;
        }
        xh1 xh1Var = (xh1) list;
        int iB2 = u24.b(this.b);
        if (iB2 == 0) {
            do {
                xh1Var.b(this.a.t());
                if (this.a.f()) {
                    return;
                } else {
                    iX2 = this.a.x();
                }
            } while (iX2 == this.b);
            this.d = iX2;
            return;
        }
        if (iB2 != 2) {
            throw np1.e();
        }
        int iE2 = this.a.e() + this.a.y();
        while (this.a.e() < iE2) {
            xh1Var.b(this.a.t());
        }
        a(iE2);
    }

    public int m() throws IOException {
        b(5);
        return this.a.r();
    }

    public void m(List<Long> list) throws IOException {
        int iX;
        int iX2;
        if (!(list instanceof au1)) {
            int iB = u24.b(this.b);
            if (iB == 0) {
                do {
                    list.add(Long.valueOf(this.a.u()));
                    if (this.a.f()) {
                        return;
                    } else {
                        iX = this.a.x();
                    }
                } while (iX == this.b);
                this.d = iX;
                return;
            }
            if (iB != 2) {
                throw np1.e();
            }
            int iE = this.a.e() + this.a.y();
            while (this.a.e() < iE) {
                list.add(Long.valueOf(this.a.u()));
            }
            a(iE);
            return;
        }
        au1 au1Var = (au1) list;
        int iB2 = u24.b(this.b);
        if (iB2 == 0) {
            do {
                au1Var.a(this.a.u());
                if (this.a.f()) {
                    return;
                } else {
                    iX2 = this.a.x();
                }
            } while (iX2 == this.b);
            this.d = iX2;
            return;
        }
        if (iB2 != 2) {
            throw np1.e();
        }
        int iE2 = this.a.e() + this.a.y();
        while (this.a.e() < iE2) {
            au1Var.a(this.a.u());
        }
        a(iE2);
    }

    public long n() throws IOException {
        b(1);
        return this.a.s();
    }

    public void n(List<String> list) throws IOException {
        a(list, false);
    }

    public int o() throws IOException {
        b(0);
        return this.a.t();
    }

    public void o(List<String> list) throws IOException {
        a(list, true);
    }

    public long p() throws IOException {
        b(0);
        return this.a.u();
    }

    public void p(List<Integer> list) throws IOException {
        int iX;
        int iX2;
        if (!(list instanceof xh1)) {
            int iB = u24.b(this.b);
            if (iB == 0) {
                do {
                    list.add(Integer.valueOf(this.a.y()));
                    if (this.a.f()) {
                        return;
                    } else {
                        iX = this.a.x();
                    }
                } while (iX == this.b);
                this.d = iX;
                return;
            }
            if (iB != 2) {
                throw np1.e();
            }
            int iE = this.a.e() + this.a.y();
            while (this.a.e() < iE) {
                list.add(Integer.valueOf(this.a.y()));
            }
            a(iE);
            return;
        }
        xh1 xh1Var = (xh1) list;
        int iB2 = u24.b(this.b);
        if (iB2 == 0) {
            do {
                xh1Var.b(this.a.y());
                if (this.a.f()) {
                    return;
                } else {
                    iX2 = this.a.x();
                }
            } while (iX2 == this.b);
            this.d = iX2;
            return;
        }
        if (iB2 != 2) {
            throw np1.e();
        }
        int iE2 = this.a.e() + this.a.y();
        while (this.a.e() < iE2) {
            xh1Var.b(this.a.y());
        }
        a(iE2);
    }

    public String q() throws IOException {
        b(2);
        return this.a.v();
    }

    public void q(List<Long> list) throws IOException {
        int iX;
        int iX2;
        if (!(list instanceof au1)) {
            int iB = u24.b(this.b);
            if (iB == 0) {
                do {
                    list.add(Long.valueOf(this.a.z()));
                    if (this.a.f()) {
                        return;
                    } else {
                        iX = this.a.x();
                    }
                } while (iX == this.b);
                this.d = iX;
                return;
            }
            if (iB != 2) {
                throw np1.e();
            }
            int iE = this.a.e() + this.a.y();
            while (this.a.e() < iE) {
                list.add(Long.valueOf(this.a.z()));
            }
            a(iE);
            return;
        }
        au1 au1Var = (au1) list;
        int iB2 = u24.b(this.b);
        if (iB2 == 0) {
            do {
                au1Var.a(this.a.z());
                if (this.a.f()) {
                    return;
                } else {
                    iX2 = this.a.x();
                }
            } while (iX2 == this.b);
            this.d = iX2;
            return;
        }
        if (iB2 != 2) {
            throw np1.e();
        }
        int iE2 = this.a.e() + this.a.y();
        while (this.a.e() < iE2) {
            au1Var.a(this.a.z());
        }
        a(iE2);
    }

    public String r() throws IOException {
        b(2);
        return this.a.w();
    }

    public int s() throws IOException {
        b(0);
        return this.a.y();
    }

    public long t() throws IOException {
        b(0);
        return this.a.z();
    }

    public boolean u() throws IOException {
        int i;
        if (this.a.f() || (i = this.b) == this.c) {
            return false;
        }
        return this.a.g(i);
    }
}

package kotlin;

import android.app.Application;
import android.content.Context;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.lang.ref.WeakReference;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class vf0 implements a01 {
    public dw2 A;
    public ol0 A0;
    public dw2 A1;
    public pb1 A2;
    public dw2 A3;
    public dw2 A4;
    public dw2 B;
    public qe0 B0;
    public dw2 B1;
    public sc3 B2;
    public dw2 B3;
    public dw2 B4;
    public ol0 C;
    public dw2 C0;
    public dw2 C1;
    public jc1 C2;
    public dw2 C3;
    public dw2 C4;
    public vh1 D;
    public dw2 D0;
    public dw2 D1;
    public dw2 D2;
    public dw2 D3;
    public dw2 D4;
    public dw2 E;
    public dw2 E0;
    public dw2 E1;
    public fc1 E2;
    public dw2 E3;
    public gf0 E4;
    public ol0 F;
    public dw2 F0;
    public dw2 F1;
    public ec1 F2;
    public dw2 F3;
    public hf0 F4;
    public dw2 G;
    public dw2 G0;
    public dw2 G1;
    public gc1 G2;
    public dw2 G3;
    public if0 G4;
    public dw2 H;
    public dw2 H0;
    public dw2 H1;
    public lc1 H2;
    public dw2 H3;
    public jf0 H4;
    public dw2 I;
    public vh1 I0;
    public d81 I1;
    public ic1 I2;
    public dw2 I3;
    public kf0 I4;
    public dw2 J;
    public dw2 J0;
    public g8 J1;
    public hc1 J2;
    public dw2 J3;
    public lf0 J4;
    public dw2 K;
    public uf1 K0;
    public dw2 K1;
    public kc1 K2;
    public dw2 K3;
    public nf0 K4;
    public dw2 L;
    public dw2 L0;
    public dw2 L1;
    public sc3 L2;
    public dw2 L3;
    public of0 L4;
    public dw2 M;
    public pf1 M0;
    public dw2 M1;
    public dw2 M2;
    public dw2 M3;
    public dw2 M4;
    public dw2 N;
    public dw2 N0;
    public dw2 N1;
    public db1 N2;
    public dw2 N3;
    public dw2 N4;
    public dw2 O;
    public of1 O0;
    public cb1 O1;
    public dc1 O2;
    public dw2 O3;
    public dw2 O4;
    public dw2 P;
    public ol0 P0;
    public xa1 P1;
    public dw2 P2;
    public dw2 P3;
    public dw2 P4;
    public ol0 Q;
    public qf1 Q0;
    public bb1 Q1;
    public ab1 Q2;
    public dw2 Q3;
    public dw2 Q4;
    public dw2 R;
    public sf1 R0;
    public eb1 R1;
    public jb1 R2;
    public dw2 R3;
    public dw2 R4;
    public dw2 S;
    public tf1 S0;
    public dw2 S1;
    public dw2 S2;
    public dw2 S3;
    public dw2 S4;
    public vh1 T;
    public dw2 T0;
    public kb1 T1;
    public bc1 T2;
    public dw2 T3;
    public dw2 T4;
    public dw2 U;
    public rf1 U0;
    public lb1 U1;
    public ya1 U2;
    public dw2 U3;
    public dw2 V;
    public bf0 V0;
    public dw2 V1;
    public dw2 V2;
    public dw2 V3;
    public dw2 W;
    public mf0 W0;
    public mb1 W1;
    public hb1 W2;
    public ie0 W3;
    public vh1 X;
    public pf0 X0;
    public ob1 X1;
    public dw2 X2;
    public je0 X3;
    public ol0 Y;
    public qf0 Y0;
    public dw2 Y1;
    public ib1 Y2;
    public dw2 Y3;
    public dw2 Z;
    public rf0 Z0;
    public dw2 Z1;
    public yb1 Z2;
    public ke0 Z3;
    public ol0 a0;
    public dw2 a1;
    public qb1 a2;
    public sc3 a3;
    public le0 a4;
    public final Context b;
    public dw2 b0;
    public dw2 b1;
    public rb1 b2;
    public dw2 b3;
    public dw2 b4;
    public final vf0 c = this;
    public dw2 c0;
    public ru2 c1;
    public sb1 c2;
    public dw2 c3;
    public dw2 c4;
    public dw2 d;
    public ol0 d0;
    public xf1 d1;
    public vb1 d2;
    public dw2 d3;
    public me0 d4;
    public dw2 e;
    public dw2 e0;
    public dw2 e1;
    public wb1 e2;
    public dw2 e3;
    public ne0 e4;
    public vh1 f;
    public dw2 f0;
    public ol0 f1;
    public xb1 f2;
    public dw2 f3;
    public oe0 f4;
    public dw2 g;
    public dw2 g0;
    public od1 g1;
    public cc1 g2;
    public dw2 g3;
    public dw2 g4;
    public dw2 h;
    public dw2 h0;
    public dw2 h1;
    public dw2 h2;
    public dw2 h3;
    public pe0 h4;
    public dw2 i;
    public dw2 i0;
    public sf0 i1;
    public za1 i2;
    public dw2 i3;
    public dw2 i4;
    public dw2 j;
    public dw2 j0;
    public dw2 j1;
    public dw2 j2;
    public dw2 j3;
    public re0 j4;
    public dw2 k;
    public dw2 k0;
    public tf0 k1;
    public gb1 k2;
    public dw2 k3;
    public se0 k4;
    public dw2 l;
    public dw2 l0;
    public dw2 l1;
    public dw2 l2;
    public dw2 l3;
    public te0 l4;
    public dw2 m;
    public dw2 m0;
    public nu1 m1;
    public tb1 m2;
    public dw2 m3;
    public ue0 m4;
    public dw2 n;
    public dw2 n0;
    public dw2 n1;
    public dw2 n2;
    public tk3 n3;
    public ve0 n4;
    public dw2 o;
    public dw2 o0;
    public dw2 o1;
    public zb1 o2;
    public zk3 o3;
    public we0 o4;
    public dw2 p;
    public dw2 p0;
    public ec2 p1;
    public dw2 p2;
    public dw2 p3;
    public xe0 p4;
    public dw2 q;
    public dw2 q0;
    public dw2 q1;
    public ac1 q2;
    public dw2 q3;
    public ye0 q4;
    public dw2 r;
    public dw2 r0;
    public dw2 r1;
    public dw2 r2;
    public dw2 r3;
    public dw2 r4;
    public dw2 s;
    public dw2 s0;
    public dw2 s1;
    public dw2 s2;
    public dw2 s3;
    public ze0 s4;
    public dw2 t;
    public dw2 t0;
    public dw2 t1;
    public nb1 t2;
    public dw2 t3;
    public dw2 t4;
    public ol0 u;
    public dw2 u0;
    public f63 u1;
    public dw2 u2;
    public dw2 u3;
    public af0 u4;
    public ol0 v;
    public dw2 v0;
    public uf0 v1;
    public dw2 v2;
    public om v3;
    public cf0 v4;
    public dw2 w;
    public dw2 w0;
    public dw2 w1;
    public dw2 w2;
    public dw2 w3;
    public df0 w4;
    public dw2 x;
    public xt3 x0;
    public dw2 x1;
    public fb1 x2;
    public dw2 x3;
    public ef0 x4;
    public dw2 y;
    public dw2 y0;
    public dw2 y1;
    public dw2 y2;
    public dw2 y3;
    public ff0 y4;
    public dw2 z;
    public dw2 z0;
    public ol0 z1;
    public ub1 z2;
    public dw2 z3;
    public dw2 z4;

    public vf0(Context context, Application application, WeakReference weakReference, Class cls) {
        this.b = context;
        a(context);
        a(application, weakReference, cls);
        i();
        j();
        k();
        l();
        m();
        n();
        o();
        c();
        d();
        e();
        f();
        g();
        h();
    }

    public final km a() {
        return (km) this.T0.get();
    }

    public final void a(Application application, WeakReference weakReference, Class cls) {
        dw2 do0Var = x30.a;
        Object obj = do0.c;
        if (!(do0Var instanceof do0)) {
            do0Var = new do0(do0Var);
        }
        this.y = do0Var;
        dw2 t30Var = new t30(do0Var);
        if (!(t30Var instanceof do0)) {
            t30Var = new do0(t30Var);
        }
        this.z = t30Var;
        dw2 ex3Var = new ex3(this.f, t30Var, this.i);
        if (!(ex3Var instanceof do0)) {
            ex3Var = new do0(ex3Var);
        }
        this.A = ex3Var;
        dw2 c81Var = new c81(this.t, this.e, ex3Var, this.k);
        if (!(c81Var instanceof do0)) {
            c81Var = new do0(c81Var);
        }
        this.B = c81Var;
        this.C = new ol0();
        this.D = vh1.a(application);
        dw2 g0Var = new g0(this.f, this.D, vh1.a(weakReference), this.u, this.t, this.h);
        if (!(g0Var instanceof do0)) {
            g0Var = new do0(g0Var);
        }
        this.E = g0Var;
        ol0 ol0Var = new ol0();
        this.F = ol0Var;
        dw2 h83Var = new h83(g0Var, ol0Var, this.h);
        if (!(h83Var instanceof do0)) {
            h83Var = new do0(h83Var);
        }
        this.G = h83Var;
        dn0 dn0Var = new dn0(this.f, this.t);
        dw2 do0Var2 = dn0Var instanceof do0 ? dn0Var : new do0(dn0Var);
        this.H = do0Var2;
        dw2 l70Var = new l70(this.u, this.C, this.t, this.e, this.A, this.f, this.G, this.d, do0Var2);
        if (!(l70Var instanceof do0)) {
            l70Var = new do0(l70Var);
        }
        dw2 b81Var = new b81(this.t, this.B, l70Var, this.d);
        if (!(b81Var instanceof do0)) {
            b81Var = new do0(b81Var);
        }
        dw2 t71Var = new t71(this.t, b81Var);
        if (!(t71Var instanceof do0)) {
            t71Var = new do0(t71Var);
        }
        this.I = t71Var;
        dw2 do0Var3 = v30.a;
        if (!(do0Var3 instanceof do0)) {
            do0Var3 = new do0(do0Var3);
        }
        this.J = do0Var3;
        dw2 u30Var = new u30(this.f);
        if (!(u30Var instanceof do0)) {
            u30Var = new do0(u30Var);
        }
        this.K = u30Var;
        dw2 do0Var4 = z30.a;
        if (!(do0Var4 instanceof do0)) {
            do0Var4 = new do0(do0Var4);
        }
        this.L = do0Var4;
        dw2 do0Var5 = b40.a;
        if (!(do0Var5 instanceof do0)) {
            do0Var5 = new do0(do0Var5);
        }
        this.M = do0Var5;
        dw2 bn0Var = new bn0(this.f, this.F);
        if (!(bn0Var instanceof do0)) {
            bn0Var = new do0(bn0Var);
        }
        this.N = bn0Var;
        kg2 kg2Var = new kg2(this.f, this.w, this.u, this.F, this.G, this.y);
        dw2 do0Var6 = kg2Var instanceof do0 ? kg2Var : new do0(kg2Var);
        this.O = do0Var6;
        sw0 sw0Var = new sw0(this.f, this.J, this.z, this.y, this.K, this.d, this.L, this.M, this.N, do0Var6, this.H);
        dw2 do0Var7 = sw0Var instanceof do0 ? sw0Var : new do0(sw0Var);
        this.P = do0Var7;
        ol0 ol0Var2 = new ol0();
        this.Q = ol0Var2;
        dw2 vw0Var = new vw0(do0Var7, this.n, this.G, this.i, this.j, ol0Var2);
        if (!(vw0Var instanceof do0)) {
            vw0Var = new do0(vw0Var);
        }
        this.R = vw0Var;
        dw2 l0Var = new l0(this.u, this.t);
        if (!(l0Var instanceof do0)) {
            l0Var = new do0(l0Var);
        }
        this.S = l0Var;
        this.T = vh1.a(cls);
    }

    public final void a(Context context) {
        dw2 do0Var = ka1.a;
        Object obj = do0.c;
        if (!(do0Var instanceof do0)) {
            do0Var = new do0(do0Var);
        }
        this.d = do0Var;
        dw2 tzVar = new tz(do0Var);
        if (!(tzVar instanceof do0)) {
            tzVar = new do0(tzVar);
        }
        this.e = tzVar;
        vh1 vh1VarA = vh1.a(context);
        this.f = vh1VarA;
        dw2 pw0Var = new pw0(vh1VarA, this.e);
        if (!(pw0Var instanceof do0)) {
            pw0Var = new do0(pw0Var);
        }
        this.g = pw0Var;
        dw2 do0Var2 = zx.a;
        if (!(do0Var2 instanceof do0)) {
            do0Var2 = new do0(do0Var2);
        }
        this.h = do0Var2;
        dw2 kw0Var = new kw0(this.g, do0Var2);
        if (!(kw0Var instanceof do0)) {
            kw0Var = new do0(kw0Var);
        }
        this.i = kw0Var;
        dw2 ow0Var = new ow0(this.f, this.e);
        if (!(ow0Var instanceof do0)) {
            ow0Var = new do0(ow0Var);
        }
        dw2 yb0Var = new yb0(ow0Var);
        if (!(yb0Var instanceof do0)) {
            yb0Var = new do0(yb0Var);
        }
        this.j = yb0Var;
        dw2 gzVar = new gz(this.e);
        if (!(gzVar instanceof do0)) {
            gzVar = new do0(gzVar);
        }
        dw2 izVar = new iz(gzVar);
        if (!(izVar instanceof do0)) {
            izVar = new do0(izVar);
        }
        this.k = izVar;
        dw2 qw0Var = new qw0(this.f, this.e);
        if (!(qw0Var instanceof do0)) {
            qw0Var = new do0(qw0Var);
        }
        dw2 db3Var = new db3(this.k, qw0Var, this.h);
        if (!(db3Var instanceof do0)) {
            db3Var = new do0(db3Var);
        }
        this.l = db3Var;
        dw2 pmVar = new pm(this.f, this.e);
        if (!(pmVar instanceof do0)) {
            pmVar = new do0(pmVar);
        }
        qm qmVar = new qm(pmVar);
        dw2 do0Var3 = qmVar instanceof do0 ? qmVar : new do0(qmVar);
        this.m = do0Var3;
        dw2 zw0Var = new zw0(this.f, this.i, this.j, this.l, do0Var3);
        if (!(zw0Var instanceof do0)) {
            zw0Var = new do0(zw0Var);
        }
        this.n = zw0Var;
        dw2 y00Var = new y00(zw0Var);
        if (!(y00Var instanceof do0)) {
            y00Var = new do0(y00Var);
        }
        this.o = y00Var;
        dw2 fb3Var = new fb3(this.n);
        if (!(fb3Var instanceof do0)) {
            fb3Var = new do0(fb3Var);
        }
        this.p = fb3Var;
        dw2 m93Var = new m93(this.n);
        if (!(m93Var instanceof do0)) {
            m93Var = new do0(m93Var);
        }
        this.q = m93Var;
        dw2 taVar = new ta(this.n);
        if (!(taVar instanceof do0)) {
            taVar = new do0(taVar);
        }
        this.r = taVar;
        dl2 dl2Var = new dl2(this.n);
        dw2 do0Var4 = dl2Var instanceof do0 ? dl2Var : new do0(dl2Var);
        this.s = do0Var4;
        dw2 fx0Var = new fx0(this.o, this.p, this.q, this.r, do0Var4, this.n);
        if (!(fx0Var instanceof do0)) {
            fx0Var = new do0(fx0Var);
        }
        this.t = fx0Var;
        this.u = new ol0();
        ol0 ol0Var = new ol0();
        this.v = ol0Var;
        dw2 lzVar = new lz(this.e, ol0Var);
        if (!(lzVar instanceof do0)) {
            lzVar = new do0(lzVar);
        }
        this.w = lzVar;
        dw2 mzVar = new mz(lzVar);
        if (!(mzVar instanceof do0)) {
            mzVar = new do0(mzVar);
        }
        this.x = mzVar;
    }

    public final wf0 b() {
        return new wf0(this.c);
    }

    public final void c() {
        dw2 xiVar = new xi(this.f, this.e);
        Object obj = do0.c;
        if (!(xiVar instanceof do0)) {
            xiVar = new do0(xiVar);
        }
        yi yiVar = new yi(xiVar);
        dw2 tjVar = new tj(this.u, this.x, this.t, this.h, this.I, this.v2, yiVar instanceof do0 ? yiVar : new do0(yiVar), this.G);
        if (!(tjVar instanceof do0)) {
            tjVar = new do0(tjVar);
        }
        this.w2 = tjVar;
        this.x2 = new fb1(tjVar);
        dw2 hl2Var = new hl2(this.y0, this.z0, this.f, this.n, this.s);
        if (!(hl2Var instanceof do0)) {
            hl2Var = new do0(hl2Var);
        }
        this.y2 = hl2Var;
        this.z2 = new ub1(hl2Var);
        fh1 fh1Var = new fh1(this.f);
        dw2 uh1Var = new uh1(this.u, this.x, this.t, this.w1, this.G, fh1Var instanceof do0 ? fh1Var : new do0(fh1Var));
        if (!(uh1Var instanceof do0)) {
            uh1Var = new do0(uh1Var);
        }
        this.A2 = new pb1(uh1Var);
        int i = sc3.c;
        rc3 rc3Var = new rc3(25, 0);
        rc3Var.a(this.I1);
        rc3Var.a(this.O1);
        rc3Var.a(this.P1);
        rc3Var.a(this.Q1);
        rc3Var.a(this.R1);
        rc3Var.a(this.T1);
        rc3Var.a(this.U1);
        rc3Var.a(this.W1);
        rc3Var.a(this.X1);
        rc3Var.a(this.a2);
        rc3Var.a(this.b2);
        rc3Var.a(this.c2);
        rc3Var.a(this.d2);
        rc3Var.a(this.e2);
        rc3Var.a(this.f2);
        rc3Var.a(this.g2);
        rc3Var.a(this.i2);
        rc3Var.a(this.k2);
        rc3Var.a(this.m2);
        rc3Var.a(this.o2);
        rc3Var.a(this.q2);
        rc3Var.a(this.t2);
        rc3Var.a(this.x2);
        rc3Var.a(this.z2);
        rc3Var.a(this.A2);
        this.B2 = rc3Var.a();
        this.C2 = new jc1(this.y2, this.A0);
        dw2 wnVar = new wn(this.h, this.t);
        if (!(wnVar instanceof do0)) {
            wnVar = new do0(wnVar);
        }
        this.D2 = wnVar;
        rc3 rc3Var2 = new rc3(4, 0);
        rc3Var2.a(this.D2);
        rc3Var2.a(this.x1);
        rc3Var2.a(this.w2);
        rc3Var2.a(this.z1);
        this.E2 = new fc1(this.E, rc3Var2.a());
        ol0 ol0Var = this.d0;
        this.F2 = new ec1(ol0Var, this.Q);
        ol0 ol0Var2 = this.P0;
        dw2 dw2Var = this.I;
        this.G2 = new gc1(ol0Var2, dw2Var);
        this.H2 = new lc1(ol0Var2, this.g0);
        this.I2 = new ic1(ol0Var2, ol0Var);
        this.J2 = new hc1(this.t1, dw2Var);
        this.K2 = new kc1(this.A, this.u, this.Z, this.G, this.t);
        rc3 rc3Var3 = new rc3(8, 0);
        rc3Var3.a(this.C2);
        rc3Var3.a(this.E2);
        rc3Var3.a(this.F2);
        rc3Var3.a(this.G2);
        rc3Var3.a(this.H2);
        rc3Var3.a(this.I2);
        rc3Var3.a(this.J2);
        rc3Var3.a(this.K2);
        this.L2 = rc3Var3.a();
        dw2 o8Var = new o8(this.t, this.I, this.u);
        if (!(o8Var instanceof do0)) {
            o8Var = new do0(o8Var);
        }
        this.M2 = o8Var;
        this.N2 = new db1(o8Var);
        this.O2 = new dc1(this.a0);
        dw2 b4Var = new b4(this.u, this.Q, this.h, this.t, this.G, this.E);
        if (!(b4Var instanceof do0)) {
            b4Var = new do0(b4Var);
        }
        this.P2 = b4Var;
    }

    public final void d() {
        dw2 e4Var = new e4(this.P2, this.t);
        Object obj = do0.c;
        if (!(e4Var instanceof do0)) {
            e4Var = new do0(e4Var);
        }
        this.Q2 = new ab1(e4Var);
        this.R2 = new jb1(this.t1);
        dw2 cu3Var = new cu3(this.t, this.h, this.u, this.G, this.E, this.Q);
        if (!(cu3Var instanceof do0)) {
            cu3Var = new do0(cu3Var);
        }
        this.S2 = cu3Var;
        this.T2 = new bc1(cu3Var);
        this.U2 = new ya1(this.P2);
        dw2 joVar = new jo(this.f, this.t, this.T0, this.u, this.h, this.G, this.E);
        if (!(joVar instanceof do0)) {
            joVar = new do0(joVar);
        }
        this.V2 = joVar;
        this.W2 = new hb1(joVar);
        dw2 qsVar = new qs(this.t, this.f, this.u, this.h, this.G, this.E);
        if (!(qsVar instanceof do0)) {
            qsVar = new do0(qsVar);
        }
        this.X2 = qsVar;
        this.Y2 = new ib1(qsVar);
        this.Z2 = new yb1(new mb3(this.u, this.t, this.d0));
        int i = sc3.c;
        rc3 rc3Var = new rc3(9, 0);
        rc3Var.a(this.N2);
        rc3Var.a(this.O2);
        rc3Var.a(this.Q2);
        rc3Var.a(this.R2);
        rc3Var.a(this.T2);
        rc3Var.a(this.U2);
        rc3Var.a(this.W2);
        rc3Var.a(this.Y2);
        rc3Var.a(this.Z2);
        this.a3 = rc3Var.a();
        dw2 pk0Var = new pk0(this.w, this.u, this.G, this.F, this.E, this.t, this.U, this.e0, this.I, this.P0, this.z);
        if (!(pk0Var instanceof do0)) {
            pk0Var = new do0(pk0Var);
        }
        this.b3 = pk0Var;
        dw2 w52Var = new w52(this.G, this.U, this.u, this.t);
        if (!(w52Var instanceof do0)) {
            w52Var = new do0(w52Var);
        }
        this.c3 = w52Var;
        dw2 suVar = new su(this.f);
        if (!(suVar instanceof do0)) {
            suVar = new do0(suVar);
        }
        this.d3 = suVar;
        dw2 sk3Var = new sk3(suVar);
        if (!(sk3Var instanceof do0)) {
            sk3Var = new do0(sk3Var);
        }
        this.e3 = sk3Var;
        dw2 xk3Var = new xk3(this.l0);
        if (!(xk3Var instanceof do0)) {
            xk3Var = new do0(xk3Var);
        }
        this.f3 = xk3Var;
        dw2 vk3Var = new vk3(this.j0);
        if (!(vk3Var instanceof do0)) {
            vk3Var = new do0(vk3Var);
        }
        this.g3 = vk3Var;
        dw2 uc3Var = new uc3(this.u0);
        if (!(uc3Var instanceof do0)) {
            uc3Var = new do0(uc3Var);
        }
        this.h3 = uc3Var;
        dw2 yk3Var = new yk3(uc3Var);
        if (!(yk3Var instanceof do0)) {
            yk3Var = new do0(yk3Var);
        }
        this.i3 = yk3Var;
        dw2 m53Var = new m53(this.u0);
        if (!(m53Var instanceof do0)) {
            m53Var = new do0(m53Var);
        }
        this.j3 = m53Var;
        dw2 wk3Var = new wk3(m53Var);
        if (!(wk3Var instanceof do0)) {
            wk3Var = new do0(wk3Var);
        }
        this.k3 = wk3Var;
        dw2 l81Var = new l81(this.I);
        if (!(l81Var instanceof do0)) {
            l81Var = new do0(l81Var);
        }
        this.l3 = l81Var;
        dw2 uk3Var = new uk3(l81Var);
        if (!(uk3Var instanceof do0)) {
            uk3Var = new do0(uk3Var);
        }
        this.m3 = uk3Var;
    }

    public final void e() {
        vh1 vh1Var = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(6);
        dw2 dw2Var = this.e3;
        if (dw2Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("/canOpenApp", dw2Var);
        dw2 dw2Var2 = this.f3;
        if (dw2Var2 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("/result", dw2Var2);
        dw2 dw2Var3 = this.g3;
        if (dw2Var3 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("/log", dw2Var3);
        dw2 dw2Var4 = this.i3;
        if (dw2Var4 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("/setPAIDPersonalizationEnabled", dw2Var4);
        dw2 dw2Var5 = this.k3;
        if (dw2Var5 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("/resetPAID", dw2Var5);
        dw2 dw2Var6 = this.m3;
        if (dw2Var6 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        this.n3 = new tk3(wd0.a(linkedHashMapA, "/httpTrack", dw2Var6, linkedHashMapA));
        LinkedHashMap linkedHashMapA2 = ud0.a(1);
        tk3 tk3Var = this.n3;
        if (tk3Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA2.put("GmsgHandlerInstaller", tk3Var);
        zk3 zk3Var = new zk3(new iu1(linkedHashMapA2));
        this.o3 = zk3Var;
        dw2 al3Var = new al3(this.x, this.u, this.t, this.h0, this.c3, zk3Var, this.G);
        Object obj = do0.c;
        if (!(al3Var instanceof do0)) {
            al3Var = new do0(al3Var);
        }
        this.p3 = al3Var;
        dw2 em1Var = new em1(this.f, this.u, this.C, this.B2, this.L2, this.a3, this.G, this.e, this.f1, this.F, this.I, this.t, this.h, this.b3, this.E, this.J0, this.P0, this.l, this.d, this.d0, this.H0, al3Var, this.w2);
        if (!(em1Var instanceof do0)) {
            em1Var = new do0(em1Var);
        }
        this.q3 = em1Var;
        ol0 ol0Var = this.u;
        dw2 dw2Var7 = this.w;
        dw2 dw2Var8 = this.G;
        dw2 dw2Var9 = this.V;
        ol0 ol0Var2 = this.F;
        dw2 dw2Var10 = this.G1;
        dw2 b13Var = new b13(ol0Var, this.e0, dw2Var10, new vh1(new qw2(new rw2(ol0Var, dw2Var7, dw2Var8, dw2Var9, ol0Var2, dw2Var10, this.r1, this.U, this.t))));
        if (!(b13Var instanceof do0)) {
            b13Var = new do0(b13Var);
        }
        this.r3 = b13Var;
        dw2 rn2Var = new rn2(this.t);
        if (!(rn2Var instanceof do0)) {
            rn2Var = new do0(rn2Var);
        }
        this.s3 = rn2Var;
        dw2 b03Var = new b03(rn2Var, new he0(this));
        if (!(b03Var instanceof do0)) {
            b03Var = new do0(b03Var);
        }
        this.t3 = b03Var;
        dw2 k40Var = new k40(this.w0);
        if (!(k40Var instanceof do0)) {
            k40Var = new do0(k40Var);
        }
        this.u3 = k40Var;
        this.v3 = new om(this.S1);
        dw2 do0Var = uc.a;
        if (!(do0Var instanceof do0)) {
            do0Var = new do0(do0Var);
        }
        this.w3 = do0Var;
        dw2 b92Var = new b92(this.t, this.p3);
        if (!(b92Var instanceof do0)) {
            b92Var = new do0(b92Var);
        }
        this.x3 = b92Var;
        dw2 s04Var = new s04(this.a0, this.t);
        if (!(s04Var instanceof do0)) {
            s04Var = new do0(s04Var);
        }
        this.y3 = s04Var;
        dw2 o04Var = new o04(this.a0, this.t);
        if (!(o04Var instanceof do0)) {
            o04Var = new do0(o04Var);
        }
        this.z3 = o04Var;
        dw2 vb3Var = new vb3(this.u, this.F);
        if (!(vb3Var instanceof do0)) {
            vb3Var = new do0(vb3Var);
        }
        this.A3 = vb3Var;
        dw2 cyVar = new cy(this.h);
        if (!(cyVar instanceof do0)) {
            cyVar = new do0(cyVar);
        }
        this.B3 = cyVar;
        dw2 tlVar = new tl(this.E);
        if (!(tlVar instanceof do0)) {
            tlVar = new do0(tlVar);
        }
        this.C3 = tlVar;
        dw2 gmVar = new gm(this.Q);
        if (!(gmVar instanceof do0)) {
            gmVar = new do0(gmVar);
        }
        this.D3 = gmVar;
        dw2 yk0Var = new yk0(this.e0);
        if (!(yk0Var instanceof do0)) {
            yk0Var = new do0(yk0Var);
        }
        this.E3 = yk0Var;
        dw2 da1Var = new da1(this.e0);
        if (!(da1Var instanceof do0)) {
            da1Var = new do0(da1Var);
        }
        this.F3 = da1Var;
        dw2 gg2Var = new gg2(this.O, this.z, this.t, this.U);
        if (!(gg2Var instanceof do0)) {
            gg2Var = new do0(gg2Var);
        }
        this.G3 = gg2Var;
    }

    public final void f() {
        dw2 oj2Var = new oj2(this.Q);
        Object obj = do0.c;
        if (!(oj2Var instanceof do0)) {
            oj2Var = new do0(oj2Var);
        }
        this.H3 = oj2Var;
        dw2 tj2Var = new tj2(this.Q);
        if (!(tj2Var instanceof do0)) {
            tj2Var = new do0(tj2Var);
        }
        this.I3 = tj2Var;
        dw2 ld3Var = new ld3(this.Q);
        if (!(ld3Var instanceof do0)) {
            ld3Var = new do0(ld3Var);
        }
        this.J3 = ld3Var;
        dw2 qfVar = new qf(this.t, this.f1);
        if (!(qfVar instanceof do0)) {
            qfVar = new do0(qfVar);
        }
        this.K3 = qfVar;
        dw2 qc3Var = new qc3(this.Q);
        if (!(qc3Var instanceof do0)) {
            qc3Var = new do0(qc3Var);
        }
        this.L3 = qc3Var;
        dw2 ys0Var = new ys0(this.Q, this.v0);
        if (!(ys0Var instanceof do0)) {
            ys0Var = new do0(ys0Var);
        }
        this.M3 = ys0Var;
        dw2 fiVar = new fi(this.Q);
        if (!(fiVar instanceof do0)) {
            fiVar = new do0(fiVar);
        }
        this.N3 = fiVar;
        dw2 cc0Var = new cc0(this.Q);
        if (!(cc0Var instanceof do0)) {
            cc0Var = new do0(cc0Var);
        }
        this.O3 = cc0Var;
        dw2 xd1Var = new xd1(this.P0);
        if (!(xd1Var instanceof do0)) {
            xd1Var = new do0(xd1Var);
        }
        this.P3 = xd1Var;
        dw2 jg1Var = new jg1(this.P0);
        if (!(jg1Var instanceof do0)) {
            jg1Var = new do0(jg1Var);
        }
        this.Q3 = jg1Var;
        dw2 bo3Var = new bo3(this.P0);
        if (!(bo3Var instanceof do0)) {
            bo3Var = new do0(bo3Var);
        }
        this.R3 = bo3Var;
        dw2 btVar = new bt(this.t);
        if (!(btVar instanceof do0)) {
            btVar = new do0(btVar);
        }
        this.S3 = btVar;
        dw2 g53Var = new g53(this.t, this.h);
        if (!(g53Var instanceof do0)) {
            g53Var = new do0(g53Var);
        }
        this.T3 = g53Var;
        dw2 f53Var = new f53(this.h);
        if (!(f53Var instanceof do0)) {
            f53Var = new do0(f53Var);
        }
        this.U3 = f53Var;
        dw2 bl0Var = new bl0(this.t, this.e0, this.I, this.b3);
        if (!(bl0Var instanceof do0)) {
            bl0Var = new do0(bl0Var);
        }
        this.V3 = bl0Var;
        this.W3 = new ie0(this);
        je0 je0Var = new je0(this);
        this.X3 = je0Var;
        dw2 npVar = new np(je0Var);
        if (!(npVar instanceof do0)) {
            npVar = new do0(npVar);
        }
        this.Y3 = npVar;
        this.Z3 = new ke0(this);
        this.a4 = new le0(this);
        dw2 jzVar = new jz(this.e, this.v);
        if (!(jzVar instanceof do0)) {
            jzVar = new do0(jzVar);
        }
        this.b4 = jzVar;
        dw2 kzVar = new kz(jzVar);
        if (!(kzVar instanceof do0)) {
            kzVar = new do0(kzVar);
        }
        this.c4 = kzVar;
        this.d4 = new me0(this);
        this.e4 = new ne0(this);
        this.f4 = new oe0(this);
    }

    public final void g() {
        dw2 elVar = new el(this.k1);
        Object obj = do0.c;
        if (!(elVar instanceof do0)) {
            elVar = new do0(elVar);
        }
        this.g4 = elVar;
        this.h4 = new pe0(this);
        dw2 zf3Var = new zf3(this.G, this.h, this.t);
        if (!(zf3Var instanceof do0)) {
            zf3Var = new do0(zf3Var);
        }
        this.i4 = zf3Var;
        this.j4 = new re0(this);
        this.k4 = new se0(this);
        this.l4 = new te0(this);
        this.m4 = new ue0(this);
        this.n4 = new ve0(this);
        this.o4 = new we0(this);
        this.p4 = new xe0(this);
        this.q4 = new ye0(this);
        dw2 xo1Var = new xo1(this.d4);
        if (!(xo1Var instanceof do0)) {
            xo1Var = new do0(xo1Var);
        }
        this.r4 = xo1Var;
        this.s4 = new ze0(this);
        dw2 t73Var = new t73(this.e4);
        if (!(t73Var instanceof do0)) {
            t73Var = new do0(t73Var);
        }
        this.t4 = t73Var;
        this.u4 = new af0(this);
        this.v4 = new cf0(this);
        this.w4 = new df0(this);
        this.x4 = new ef0(this);
        this.y4 = new ff0(this);
        dw2 wx3Var = new wx3(this.F, this.x);
        if (!(wx3Var instanceof do0)) {
            wx3Var = new do0(wx3Var);
        }
        this.z4 = wx3Var;
        dw2 ux3Var = new ux3(this.C);
        if (!(ux3Var instanceof do0)) {
            ux3Var = new do0(ux3Var);
        }
        this.A4 = ux3Var;
        dw2 do0Var = ml0.a;
        if (!(do0Var instanceof do0)) {
            do0Var = new do0(do0Var);
        }
        this.B4 = do0Var;
        dw2 ay3Var = new ay3(this.f, this.E);
        if (!(ay3Var instanceof do0)) {
            ay3Var = new do0(ay3Var);
        }
        this.C4 = ay3Var;
        dw2 bvVar = new bv(this.f, this.F);
        if (!(bvVar instanceof do0)) {
            bvVar = new do0(bvVar);
        }
        this.D4 = bvVar;
        this.E4 = new gf0(this);
    }

    public final void h() {
        this.F4 = new hf0(this);
        this.G4 = new if0(this);
        this.H4 = new jf0(this);
        this.I4 = new kf0(this);
        this.J4 = new lf0(this);
        this.K4 = new nf0(this);
        this.L4 = new of0(this);
        dw2 jx1Var = new jx1(this.f, this.E, this.u2);
        Object obj = do0.c;
        if (!(jx1Var instanceof do0)) {
            jx1Var = new do0(jx1Var);
        }
        this.M4 = jx1Var;
        dw2 rs0Var = new rs0(this.v0, this.u, this.t);
        if (!(rs0Var instanceof do0)) {
            rs0Var = new do0(rs0Var);
        }
        this.N4 = rs0Var;
        dw2 so2Var = new so2(this.u, this.h, this.t, new fu2(this.f), this.G);
        if (!(so2Var instanceof do0)) {
            so2Var = new do0(so2Var);
        }
        this.O4 = so2Var;
        dw2 nx0Var = new nx0(this.x);
        if (!(nx0Var instanceof do0)) {
            nx0Var = new do0(nx0Var);
        }
        this.P4 = nx0Var;
        dw2 nx1Var = new nx1(this.N, this.M4, this.U, this.x, this.E);
        if (!(nx1Var instanceof do0)) {
            nx1Var = new do0(nx1Var);
        }
        this.Q4 = nx1Var;
        dw2 x24Var = new x24(this.f, this.F);
        if (!(x24Var instanceof do0)) {
            x24Var = new do0(x24Var);
        }
        this.R4 = x24Var;
        dw2 bwVar = new bw(this.f, this.F);
        if (!(bwVar instanceof do0)) {
            bwVar = new do0(bwVar);
        }
        this.S4 = bwVar;
        dw2 sy1Var = new sy1(this.t, this.A, this.I);
        if (!(sy1Var instanceof do0)) {
            sy1Var = new do0(sy1Var);
        }
        this.T4 = sy1Var;
    }

    public final void i() {
        q21 q21Var = new q21(this.f, this.E, this.t, this.S, this.T);
        Object obj = do0.c;
        dw2 do0Var = q21Var instanceof do0 ? q21Var : new do0(q21Var);
        this.U = do0Var;
        dw2 sbVar = new sb(this.f, this.t, do0Var, this.E, this.e, this.z, this.G);
        if (!(sbVar instanceof do0)) {
            sbVar = new do0(sbVar);
        }
        this.V = sbVar;
        dw2 x61Var = new x61(this.t, this.y);
        if (!(x61Var instanceof do0)) {
            x61Var = new do0(x61Var);
        }
        this.W = x61Var;
        this.X = new vh1(new wk1(new xk1(this.G, this.V, this.t)));
        this.Y = new ol0();
        dw2 nzVar = new nz(this.e, this.v);
        if (!(nzVar instanceof do0)) {
            nzVar = new do0(nzVar);
        }
        oz ozVar = new oz(nzVar);
        dw2 do0Var2 = ozVar instanceof do0 ? ozVar : new do0(ozVar);
        this.Z = do0Var2;
        ol0 ol0Var = new ol0();
        this.a0 = ol0Var;
        dw2 zz3Var = new zz3(this.Y, this.e, this.t, this.u, do0Var2, this.G, ol0Var, this.A);
        if (!(zz3Var instanceof do0)) {
            zz3Var = new do0(zz3Var);
        }
        this.b0 = zz3Var;
        dw2 do0Var3 = sz3.a;
        if (!(do0Var3 instanceof do0)) {
            do0Var3 = new do0(do0Var3);
        }
        this.c0 = do0Var3;
        v04 v04Var = u04.a;
        dw2 do0Var4 = v04Var instanceof do0 ? v04Var : new do0(v04Var);
        ol0 ol0Var2 = new ol0();
        this.d0 = ol0Var2;
        ol0 ol0Var3 = this.a0;
        dw2 s14Var = new s14(this.f, this.t, this.w, this.u, this.G, this.A, this.e, this.b0, this.c0, do0Var4, this.h, ol0Var2);
        if (!(s14Var instanceof do0)) {
            s14Var = new do0(s14Var);
        }
        ol0.a(ol0Var3, s14Var);
        ol0.a(this.Y, new ez3(this.f, this.a0, this.t));
        dw2 ss1Var = new ss1(this.t, this.f, this.H);
        if (!(ss1Var instanceof do0)) {
            ss1Var = new do0(ss1Var);
        }
        dw2 unVar = new un(this.i, ss1Var);
        if (!(unVar instanceof do0)) {
            unVar = new do0(unVar);
        }
        this.e0 = unVar;
        dw2 cn2Var = new cn2(this.u, this.t);
        if (!(cn2Var instanceof do0)) {
            cn2Var = new do0(cn2Var);
        }
        this.f0 = cn2Var;
        dw2 dw2VarA = jk3.a(new pz3(this.f, this.C, this.u, this.x, this.w, this.G, this.V, this.F, this.U, this.A, this.W, this.X, this.t, this.Y, this.I, this.b0, this.e0, cn2Var));
        this.g0 = dw2VarA;
        this.h0 = jk3.a(new qz3(dw2VarA));
        dw2 br1Var = new br1(this.G, this.U, this.u, this.t);
        if (!(br1Var instanceof do0)) {
            br1Var = new do0(br1Var);
        }
        this.i0 = br1Var;
        dw2 do0Var5 = it1.a;
        if (!(do0Var5 instanceof do0)) {
            do0Var5 = new do0(do0Var5);
        }
        this.j0 = do0Var5;
        dw2 ir1Var = new ir1(do0Var5);
        if (!(ir1Var instanceof do0)) {
            ir1Var = new do0(ir1Var);
        }
        this.k0 = ir1Var;
        dw2 do0Var6 = u53.a;
        if (!(do0Var6 instanceof do0)) {
            do0Var6 = new do0(do0Var6);
        }
        this.l0 = do0Var6;
        dw2 jr1Var = new jr1(do0Var6);
        if (!(jr1Var instanceof do0)) {
            jr1Var = new do0(jr1Var);
        }
        this.m0 = jr1Var;
    }

    public final void j() {
        dw2 um2Var = new um2(this.Q, this.t);
        Object obj = do0.c;
        if (!(um2Var instanceof do0)) {
            um2Var = new do0(um2Var);
        }
        this.n0 = um2Var;
        dw2 kr1Var = new kr1(um2Var);
        if (!(kr1Var instanceof do0)) {
            kr1Var = new do0(kr1Var);
        }
        this.o0 = kr1Var;
        dw2 z91Var = new z91(this.e0);
        if (!(z91Var instanceof do0)) {
            z91Var = new do0(z91Var);
        }
        dw2 lr1Var = new lr1(z91Var);
        if (!(lr1Var instanceof do0)) {
            lr1Var = new do0(lr1Var);
        }
        this.p0 = lr1Var;
        dw2 mw3Var = new mw3(this.Q, this.F);
        if (!(mw3Var instanceof do0)) {
            mw3Var = new do0(mw3Var);
        }
        dw2 gr1Var = new gr1(mw3Var);
        if (!(gr1Var instanceof do0)) {
            gr1Var = new do0(gr1Var);
        }
        this.q0 = gr1Var;
        vh1 vh1Var = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(5);
        dw2 dw2Var = this.k0;
        if (dw2Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("/log", dw2Var);
        dw2 dw2Var2 = this.m0;
        if (dw2Var2 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("/result", dw2Var2);
        dw2 dw2Var3 = this.o0;
        if (dw2Var3 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("/saveState", dw2Var3);
        dw2 dw2Var4 = this.p0;
        if (dw2Var4 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("/setPair", dw2Var4);
        dw2 dw2Var5 = this.q0;
        if (dw2Var5 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        dw2 hr1Var = new hr1(wd0.a(linkedHashMapA, "/updateConsentAllowlist", dw2Var5, linkedHashMapA));
        if (!(hr1Var instanceof do0)) {
            hr1Var = new do0(hr1Var);
        }
        this.r0 = hr1Var;
        LinkedHashMap linkedHashMapA2 = ud0.a(1);
        dw2 dw2Var6 = this.r0;
        if (dw2Var6 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        dw2 dw2VarA = jk3.a(new gq1(wd0.a(linkedHashMapA2, "GmsgHandlerInstaller", dw2Var6, linkedHashMapA2)));
        ol0 ol0Var = this.d0;
        dw2 zq1Var = new zq1(this.f, this.x, this.u, this.t, this.h, this.I, this.R, this.l, this.n, this.h0, this.G, this.i0, dw2VarA, this.U);
        if (!(zq1Var instanceof do0)) {
            zq1Var = new do0(zq1Var);
        }
        ol0.a(ol0Var, zq1Var);
        dw2 do0Var = uf.a;
        if (!(do0Var instanceof do0)) {
            do0Var = new do0(do0Var);
        }
        this.s0 = do0Var;
        dw2 cmVar = new cm(this.f, this.F, this.h);
        if (!(cmVar instanceof do0)) {
            cmVar = new do0(cmVar);
        }
        this.t0 = cmVar;
        dw2 gi2Var = new gi2(this.t, this.f);
        if (!(gi2Var instanceof do0)) {
            gi2Var = new do0(gi2Var);
        }
        this.u0 = gi2Var;
        dw2 ms0Var = new ms0(this.f, this.F, this.G, this.t);
        if (!(ms0Var instanceof do0)) {
            ms0Var = new do0(ms0Var);
        }
        this.v0 = ms0Var;
        dw2 do0Var2 = g13.a;
        if (!(do0Var2 instanceof do0)) {
            do0Var2 = new do0(do0Var2);
        }
        this.w0 = do0Var2;
        ol0 ol0Var2 = this.u;
        vh1 vh1Var2 = this.f;
        this.x0 = new xt3(ol0Var2, vh1Var2, this.F);
        dw2 t1Var = new t1(vh1Var2, ol0Var2);
        if (!(t1Var instanceof do0)) {
            t1Var = new do0(t1Var);
        }
        dw2 u1Var = new u1(t1Var);
        if (!(u1Var instanceof do0)) {
            u1Var = new do0(u1Var);
        }
        this.y0 = u1Var;
        dw2 f9Var = new f9(this.f);
        if (!(f9Var instanceof do0)) {
            f9Var = new do0(f9Var);
        }
        this.z0 = f9Var;
        this.A0 = new ol0();
        this.B0 = new qe0(this);
        dw2 fd3Var = new fd3(this.f, this.t, this.h, this.u);
        if (!(fd3Var instanceof do0)) {
            fd3Var = new do0(fd3Var);
        }
        this.C0 = fd3Var;
        dw2 jx0Var = new jx0(this.f, this.t, this.h, this.u);
        if (!(jx0Var instanceof do0)) {
            jx0Var = new do0(jx0Var);
        }
        this.D0 = jx0Var;
        dw2 tg1Var = new tg1(this.f, this.e);
        if (!(tg1Var instanceof do0)) {
            tg1Var = new do0(tg1Var);
        }
        this.E0 = tg1Var;
    }

    public final void k() {
        dw2 rg1Var = new rg1(this.E0);
        Object obj = do0.c;
        if (!(rg1Var instanceof do0)) {
            rg1Var = new do0(rg1Var);
        }
        this.F0 = rg1Var;
        dw2 jkVar = new jk(this.f, this.d);
        if (!(jkVar instanceof do0)) {
            jkVar = new do0(jkVar);
        }
        this.G0 = jkVar;
        dw2 tnVar = new tn(this.C, this.m, this.h, this.t);
        if (!(tnVar instanceof do0)) {
            tnVar = new do0(tnVar);
        }
        this.H0 = tnVar;
        this.I0 = new vh1(new gg1(new hg1(this.E, this.f, this.x, this.w, this.u, this.C, this.t, this.F, this.z, this.U)));
        dw2 do0Var = m43.a;
        if (!(do0Var instanceof do0)) {
            do0Var = new do0(do0Var);
        }
        this.J0 = do0Var;
        dw2 ud1Var = new ud1();
        if (!(ud1Var instanceof do0)) {
            ud1Var = new do0(ud1Var);
        }
        this.K0 = new uf1(ud1Var);
        dw2 kc0Var = new kc0(this.x);
        if (!(kc0Var instanceof do0)) {
            kc0Var = new do0(kc0Var);
        }
        this.L0 = kc0Var;
        this.M0 = new pf1(kc0Var);
        dw2 do0Var2 = iy.a;
        if (!(do0Var2 instanceof do0)) {
            do0Var2 = new do0(do0Var2);
        }
        this.N0 = do0Var2;
        this.O0 = new of1(do0Var2);
        ol0 ol0Var = new ol0();
        this.P0 = ol0Var;
        dw2 ik3Var = new ik3(ol0Var, this.t, this.F);
        if (!(ik3Var instanceof do0)) {
            ik3Var = new do0(ik3Var);
        }
        this.Q0 = new qf1(ik3Var);
        dw2 hd3Var = new hd3(this.U);
        if (!(hd3Var instanceof do0)) {
            hd3Var = new do0(hd3Var);
        }
        this.R0 = new sf1(hd3Var);
        dw2 ah1Var = new ah1(this.P0);
        if (!(ah1Var instanceof do0)) {
            ah1Var = new do0(ah1Var);
        }
        this.S0 = new tf1(ah1Var);
        dw2 umVar = new um(this.f, this.F);
        if (!(umVar instanceof do0)) {
            umVar = new do0(umVar);
        }
        this.T0 = umVar;
        dw2 lg1Var = new lg1(this.F, this.J0, umVar);
        if (!(lg1Var instanceof do0)) {
            lg1Var = new do0(lg1Var);
        }
        this.U0 = new rf1(lg1Var);
        this.V0 = new bf0(this);
        this.W0 = new mf0(this);
        this.X0 = new pf0(this);
    }

    public final void l() {
        qf0 qf0Var = new qf0(this);
        this.Y0 = qf0Var;
        rf0 rf0Var = new rf0(this);
        this.Z0 = rf0Var;
        dw2 th2Var = new th2(this.f, this.U, this.E, this.P0, this.V0, this.W0, this.X0, qf0Var, rf0Var);
        Object obj = do0.c;
        if (!(th2Var instanceof do0)) {
            th2Var = new do0(th2Var);
        }
        this.a1 = th2Var;
        l32 l32Var = new l32(this.f, this.t, this.F);
        dw2 do0Var = l32Var instanceof do0 ? l32Var : new do0(l32Var);
        this.b1 = do0Var;
        this.c1 = new ru2(new wh2(this.a1, this.F, this.t, do0Var, this.f));
        vh1 vh1Var = iu1.b;
        hu1 hu1Var = new hu1(8);
        hu1Var.a("/backButton", this.K0);
        hu1Var.a("/customClose", this.M0);
        hu1Var.a("/close", this.O0);
        hu1Var.a("/inspectorNetworkExtras", this.Q0);
        hu1Var.a("/shareSheet", this.R0);
        hu1Var.a("/inspectorStorage", this.S0);
        hu1Var.a("/inspectorSetApplicationState", this.U0);
        hu1Var.a("/inspectorOutOfContextTest", this.c1);
        this.d1 = new xf1(new iu1(hu1Var.a));
        LinkedHashMap linkedHashMapA = ud0.a(1);
        xf1 xf1Var = this.d1;
        if (xf1Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("GmsgHandlerInstaller", xf1Var);
        dw2 zd1Var = new zd1(new iu1(linkedHashMapA));
        if (!(zd1Var instanceof do0)) {
            zd1Var = new do0(zd1Var);
        }
        this.e1 = zd1Var;
        ol0 ol0Var = new ol0();
        this.f1 = ol0Var;
        sd1 sd1Var = new sd1(ol0Var, this.F);
        dw2 do0Var2 = sd1Var instanceof do0 ? sd1Var : new do0(sd1Var);
        ol0 ol0Var2 = this.P0;
        dw2 jf1Var = new jf1(this.f, this.u, this.z, this.C0, this.D0, this.t, this.h, this.I, this.F0, this.G0, this.H0, this.I0, this.h0, this.G, this.J0, this.e1, do0Var2, this.Q, this.T0, this.d);
        if (!(jf1Var instanceof do0)) {
            jf1Var = new do0(jf1Var);
        }
        ol0.a(ol0Var2, jf1Var);
        ol0 ol0Var3 = this.P0;
        dw2 dw2Var = this.h;
        dw2 dw2Var2 = this.t;
        od1 od1Var = new od1(ol0Var3, dw2Var, dw2Var2);
        this.g1 = od1Var;
        this.h1 = jk3.a(new p52(this.B0, od1Var, this.w0, dw2Var2));
        sf0 sf0Var = new sf0(this);
        this.i1 = sf0Var;
        this.j1 = jk3.a(new q91(sf0Var, this.g1, this.w0, this.t));
        tf0 tf0Var = new tf0(this);
        this.k1 = tf0Var;
        this.l1 = jk3.a(new al(tf0Var, this.g1, this.w0, this.t));
        LinkedHashMap linkedHashMapA2 = ud0.a(3);
        j53 j53Var = j53.i;
        dw2 dw2Var3 = this.h1;
        if (dw2Var3 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA2.put(j53Var, dw2Var3);
        j53 j53Var2 = j53.g;
        dw2 dw2Var4 = this.j1;
        if (dw2Var4 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA2.put(j53Var2, dw2Var4);
        j53 j53Var3 = j53.e;
        dw2 dw2Var5 = this.l1;
        if (dw2Var5 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA2.put(j53Var3, dw2Var5);
        this.m1 = new nu1(linkedHashMapA2);
        dw2 w8Var = new w8(this.s, this.J0);
        if (!(w8Var instanceof do0)) {
            w8Var = new do0(w8Var);
        }
        this.n1 = w8Var;
        dw2 eu1Var = new eu1(this.f, this.z, this.Q, this.U, this.t);
        if (!(eu1Var instanceof do0)) {
            eu1Var = new do0(eu1Var);
        }
        this.o1 = eu1Var;
        dw2 dw2Var6 = this.t;
        ec2 ec2Var = new ec2(dw2Var6);
        this.p1 = ec2Var;
        dw2 mc2Var = new mc2(this.f, ec2Var, new fc2(dw2Var6), this.A);
        if (!(mc2Var instanceof do0)) {
            mc2Var = new do0(mc2Var);
        }
        this.q1 = mc2Var;
    }

    public final void m() {
        ww3 ww3Var = new ww3(this.u, this.I);
        Object obj = do0.c;
        dw2 do0Var = ww3Var instanceof do0 ? ww3Var : new do0(ww3Var);
        this.r1 = do0Var;
        dw2 bc2Var = new bc2(this.f, this.u, this.p1, this.h, this.q1, do0Var);
        if (!(bc2Var instanceof do0)) {
            bc2Var = new do0(bc2Var);
        }
        this.s1 = bc2Var;
        vv vvVar = new vv(this.u, this.Y, this.G, this.t, this.U);
        dw2 do0Var2 = vvVar instanceof do0 ? vvVar : new do0(vvVar);
        this.t1 = do0Var2;
        this.u1 = new f63(this.t, this.s1, this.h, this.u, this.I, this.r1, do0Var2, this.G, this.F);
        this.v1 = new uf0(this);
        dw2 de3Var = new de3(this.f, this.e);
        if (!(de3Var instanceof do0)) {
            de3Var = new do0(de3Var);
        }
        dw2 ae3Var = new ae3(de3Var);
        if (!(ae3Var instanceof do0)) {
            ae3Var = new do0(ae3Var);
        }
        this.w1 = ae3Var;
        l6 l6Var = new l6(this.t, this.h, this.G);
        dw2 qt2Var = new qt2(this.u, this.F, this.G, this.h, this.t, this.w0, this.V0, this.W0, this.X0, this.Y0, this.Z0, this.v1, this.w1, l6Var instanceof do0 ? l6Var : new do0(l6Var));
        if (!(qt2Var instanceof do0)) {
            qt2Var = new do0(qt2Var);
        }
        this.x1 = qt2Var;
        int i = sc3.c;
        List listB = ud0.b(1);
        List listB2 = ud0.b(0);
        dw2 dw2Var = this.x1;
        boolean z = rc3.c;
        if (!z && dw2Var == null) {
            throw new AssertionError("Codegen error? Null provider");
        }
        listB.add(dw2Var);
        if (!z && ud0.a(listB)) {
            throw new AssertionError("Codegen error?  Duplicates in the provider list");
        }
        if (!z && ud0.a(listB2)) {
            throw new AssertionError("Codegen error?  Duplicates in the provider list");
        }
        fa2 fa2Var = new fa2(this.f, this.u, this.h, this.F, new sc3(listB, listB2));
        dw2 do0Var3 = fa2Var instanceof do0 ? fa2Var : new do0(fa2Var);
        this.y1 = do0Var3;
        ol0 ol0Var = new ol0();
        this.z1 = ol0Var;
        bl2 bl2Var = new bl2(this.u, this.A0, this.s, this.m1, this.n1, this.G, this.w0, this.o1, this.u1, do0Var3, this.F, ol0Var);
        dw2 do0Var4 = bl2Var instanceof do0 ? bl2Var : new do0(bl2Var);
        this.A1 = do0Var4;
        ol0 ol0Var2 = this.z1;
        dw2 fk2Var = new fk2(this.u, do0Var4, this.s, this.G, this.h);
        if (!(fk2Var instanceof do0)) {
            fk2Var = new do0(fk2Var);
        }
        ol0.a(ol0Var2, fk2Var);
        ol0 ol0Var3 = this.A0;
        dw2 jm2Var = new jm2(this.y0, this.z0, this.s, this.h, this.f, this.n, this.G, this.Q, this.z1);
        if (!(jm2Var instanceof do0)) {
            jm2Var = new do0(jm2Var);
        }
        ol0.a(ol0Var3, jm2Var);
        dw2 eq0Var = new eq0(this.w1, this.h, this.t, this.w0);
        if (!(eq0Var instanceof do0)) {
            eq0Var = new do0(eq0Var);
        }
        this.B1 = eq0Var;
        ol0 ol0Var4 = this.Q;
        dw2 h30Var = new h30(this.f, this.u, this.d0, this.F, this.t, this.U, this.s0, this.t0, this.u0, this.v0, this.h, this.G, this.w0, this.x0, this.n, this.P, this.i, this.j, this.A0, eq0Var);
        if (!(h30Var instanceof do0)) {
            h30Var = new do0(h30Var);
        }
        ol0.a(ol0Var4, h30Var);
        dw2 ns3Var = new ns3(this.Q, this.I, this.t, this.A, this.d);
        if (!(ns3Var instanceof do0)) {
            ns3Var = new do0(ns3Var);
        }
        this.C1 = ns3Var;
        sq0 sq0Var = new sq0(this.Q, this.I, this.t, this.A, this.d);
        dw2 do0Var5 = sq0Var instanceof do0 ? sq0Var : new do0(sq0Var);
        this.D1 = do0Var5;
        ol0 ol0Var5 = this.F;
        dw2 cs3Var = new cs3(this.f, this.t, this.h, this.C1, do0Var5, this.d, this.z, this.y, this.t1, this.H);
        if (!(cs3Var instanceof do0)) {
            cs3Var = new do0(cs3Var);
        }
        ol0.a(ol0Var5, cs3Var);
        ol0 ol0Var6 = this.v;
        dw2 d01Var = new d01(this.F);
        if (!(d01Var instanceof do0)) {
            d01Var = new do0(d01Var);
        }
        ol0.a(ol0Var6, d01Var);
        ol0 ol0Var7 = this.C;
        dw2 fzVar = new fz(this.e, this.v);
        if (!(fzVar instanceof do0)) {
            fzVar = new do0(fzVar);
        }
        ol0.a(ol0Var7, fzVar);
        ol0 ol0Var8 = this.u;
        dw2 hzVar = new hz(this.C);
        if (!(hzVar instanceof do0)) {
            hzVar = new do0(hzVar);
        }
        ol0.a(ol0Var8, hzVar);
        this.E1 = jk3.a(sv1.a);
        dw2 do0Var6 = lf.a;
        if (!(do0Var6 instanceof do0)) {
            do0Var6 = new do0(do0Var6);
        }
        this.F1 = do0Var6;
    }

    public final void n() {
        ol0 ol0Var = this.f1;
        dw2 cif = new Cif(this.u, this.w, this.f, this.E1, this.F1, this.E, this.H0, this.h, this.t, this.G, this.d);
        Object obj = do0.c;
        if (!(cif instanceof do0)) {
            cif = new do0(cif);
        }
        ol0.a(ol0Var, cif);
        dw2 bf3Var = new bf3(this.u, this.t, this.h, this.G, new ge0(this));
        if (!(bf3Var instanceof do0)) {
            bf3Var = new do0(bf3Var);
        }
        this.G1 = bf3Var;
        dw2 vc0Var = new vc0(this.u, this.h, this.t, bf3Var);
        if (!(vc0Var instanceof do0)) {
            vc0Var = new do0(vc0Var);
        }
        this.H1 = vc0Var;
        this.I1 = new d81(this.r1);
        g8 g8Var = new g8(this.u);
        this.J1 = g8Var;
        dw2 a8Var = new a8(this.f, g8Var);
        if (!(a8Var instanceof do0)) {
            a8Var = new do0(a8Var);
        }
        this.K1 = a8Var;
        dw2 x7Var = new x7(this.r1, this.t, this.G);
        if (!(x7Var instanceof do0)) {
            x7Var = new do0(x7Var);
        }
        this.L1 = x7Var;
        dw2 do0Var = wx.a;
        if (!(do0Var instanceof do0)) {
            do0Var = new do0(do0Var);
        }
        this.M1 = do0Var;
        f8 f8Var = new f8(this.t);
        dw2 r7Var = new r7(this.K1, this.J1, this.L1, this.M1, f8Var instanceof do0 ? f8Var : new do0(f8Var));
        if (!(r7Var instanceof do0)) {
            r7Var = new do0(r7Var);
        }
        this.N1 = r7Var;
        dw2 c8Var = new c8(r7Var, this.t);
        if (!(c8Var instanceof do0)) {
            c8Var = new do0(c8Var);
        }
        this.O1 = new cb1(c8Var);
        this.P1 = new xa1(this.E);
        ol0 ol0Var2 = this.P0;
        this.Q1 = new bb1(ol0Var2);
        this.R1 = new eb1(this.V);
        dw2 p00Var = new p00(this.C, this.u, this.f, this.d, this.z, this.d0, this.H0, this.f1, this.F, this.h, this.t, this.G, this.Q, this.I, this.U, ol0Var2);
        if (!(p00Var instanceof do0)) {
            p00Var = new do0(p00Var);
        }
        this.S1 = p00Var;
        this.T1 = new kb1(p00Var);
        this.U1 = new lb1(this.Q);
        dw2 q70Var = new q70(this.u, this.G, this.F, this.t);
        if (!(q70Var instanceof do0)) {
            q70Var = new do0(q70Var);
        }
        this.V1 = q70Var;
        this.W1 = new mb1(q70Var);
        this.X1 = new ob1(this.N);
        dw2 w22Var = new w22(this.f, this.e);
        if (!(w22Var instanceof do0)) {
            w22Var = new do0(w22Var);
        }
        this.Y1 = w22Var;
    }

    public final void o() {
        dw2 u22Var = new u22(this.Y1);
        Object obj = do0.c;
        if (!(u22Var instanceof do0)) {
            u22Var = new do0(u22Var);
        }
        this.Z1 = u22Var;
        this.a2 = new qb1(u22Var);
        dw2 ea2Var = new ea2(this.y1);
        if (!(ea2Var instanceof do0)) {
            ea2Var = new do0(ea2Var);
        }
        this.b2 = new rb1(ea2Var);
        this.c2 = new sb1(this.O);
        this.d2 = new vb1(this.f0);
        this.e2 = new wb1(this.x1);
        this.f2 = new xb1(new ib3(this.u, this.t, this.d0));
        this.g2 = new cc1(this.b0);
        dw2 i4Var = new i4(this.Q);
        if (!(i4Var instanceof do0)) {
            i4Var = new do0(i4Var);
        }
        this.h2 = i4Var;
        this.i2 = new za1(i4Var);
        dw2 wlVar = new wl(this.f);
        if (!(wlVar instanceof do0)) {
            wlVar = new do0(wlVar);
        }
        this.j2 = wlVar;
        this.k2 = new gb1(wlVar);
        dw2 ai2Var = new ai2(this.f, this.K, this.d);
        if (!(ai2Var instanceof do0)) {
            ai2Var = new do0(ai2Var);
        }
        this.l2 = ai2Var;
        this.m2 = new tb1(ai2Var);
        dw2 pb3Var = new pb3(this.z, this.t, this.f, this.U, this.y, this.d);
        if (!(pb3Var instanceof do0)) {
            pb3Var = new do0(pb3Var);
        }
        this.n2 = pb3Var;
        this.o2 = new zb1(pb3Var);
        dw2 ll3Var = new ll3(this.f, this.N, this.t, this.U);
        if (!(ll3Var instanceof do0)) {
            ll3Var = new do0(ll3Var);
        }
        this.p2 = ll3Var;
        this.q2 = new ac1(ll3Var);
        dw2 dd0Var = new dd0(this.f, this.u, this.G, this.F);
        if (!(dd0Var instanceof do0)) {
            dd0Var = new do0(dd0Var);
        }
        this.r2 = dd0Var;
        dw2 cd0Var = new cd0(dd0Var, this.u, this.t);
        if (!(cd0Var instanceof do0)) {
            cd0Var = new do0(cd0Var);
        }
        this.s2 = cd0Var;
        this.t2 = new nb1(cd0Var);
        bo0 bo0Var = new bo0(this.f, this.E, this.t);
        dw2 do0Var = bo0Var instanceof do0 ? bo0Var : new do0(bo0Var);
        this.u2 = do0Var;
        dw2 oiVar = new oi(this.f, this.d, this.z, this.y, this.h, this.Q, this.t1, this.t, do0Var, this.A, this.e0, this.H);
        if (!(oiVar instanceof do0)) {
            oiVar = new do0(oiVar);
        }
        this.v2 = oiVar;
    }
}

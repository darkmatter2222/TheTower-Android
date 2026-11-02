package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.internal.nativead.InternalNativeAd;
import com.google.android.libraries.ads.mobile.sdk.internal.webview.PerAdNativeJavscriptEngineJsContext;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import com.google.common.collect.ImmutableMap;
import com.google.gson.JsonObject;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.LinkedHashMap;
import java.util.List;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class lh0 implements cs {
    public dw2 A;
    public dw2 A0;
    public j72 B;
    public dw2 B0;
    public i72 C;
    public dw2 C0;
    public dw2 D;
    public dw2 D0;
    public d82 E;
    public dw2 E0;
    public ol0 F;
    public dw2 F0;
    public b82 G;
    public dw2 G0;
    public dw2 H;
    public dw2 H0;
    public qg2 I;
    public dw2 I0;
    public vh1 J;
    public dw2 J0;
    public av3 K;
    public dw2 K0;
    public dw2 L;
    public sh0 L0;
    public bv3 M;
    public w12 M0;
    public fv3 N;
    public dw2 N0;
    public hv3 O;
    public dw2 O0;
    public ol0 P;
    public dw2 P0;
    public iv3 Q;
    public dw2 Q0;
    public jv3 R;
    public dw2 R0;
    public lv3 S;
    public dw2 S0;
    public mv3 T;
    public dw2 T0;
    public cv3 U;
    public dw2 U0;
    public dv3 V;
    public dw2 V0;
    public ev3 W;
    public dw2 W0;
    public nv3 X;
    public dw2 X0;
    public kv3 Y;
    public dw2 Y0;
    public gv3 Z;
    public dw2 Z0;
    public final i2 a;
    public ou3 a0;
    public dw2 a1;
    public final vf0 b;
    public hc2 b0;
    public dw2 b1;
    public dw2 c;
    public vh1 c0;
    public vh1 d;
    public dw2 d0;
    public vh1 e;
    public dw2 e0;
    public sh0 f;
    public c82 f0;
    public sh0 g;
    public z72 g0;
    public sh0 h;
    public dw2 h0;
    public dw2 i;
    public vh1 i0;
    public vh1 j;
    public dw2 j0;
    public dw2 k;
    public a82 k0;
    public vh1 l;
    public vh1 l0;
    public ol0 m;
    public vh1 m0;
    public my1 n;
    public dw2 n0;
    public dw2 o;
    public dw2 o0;
    public ny1 p;
    public v12 p0;
    public dw2 q;
    public sc3 q0;
    public vh1 r;
    public dw2 r0;
    public vh1 s;
    public vh1 s0;
    public vh1 t;
    public e53 t0;
    public vh1 u;
    public dw2 u0;
    public vh1 v;
    public dw2 v0;
    public dw2 w;
    public dw2 w0;
    public dw2 x;
    public dw2 x0;
    public dw2 y;
    public dw2 y0;
    public e63 z;
    public dw2 z0;

    public lh0(vf0 vf0Var, BaseRequest baseRequest, j53 j53Var, Integer num, i2 i2Var, zy zyVar, ec3 ec3Var, n03 n03Var, tn1 tn1Var, m33 m33Var, zb zbVar, eo2 eo2Var, t91 t91Var, q52 q52Var, s02 s02Var, PerAdNativeJavscriptEngineJsContext perAdNativeJavscriptEngineJsContext, mb0 mb0Var, JsonObject jsonObject, NativeRequest nativeRequest) {
        this.b = vf0Var;
        this.a = i2Var;
        a(i2Var, zyVar, n03Var, tn1Var, m33Var, zbVar, s02Var, jsonObject);
        a(j53Var, q52Var, mb0Var, nativeRequest);
        a(ec3Var);
        a(baseRequest, num, eo2Var, t91Var);
        a(perAdNativeJavscriptEngineJsContext);
        g();
    }

    @Override // kotlin.x1
    public final zh1 a() {
        return (InternalNativeAd) this.N0.get();
    }

    public final void a(ec3 ec3Var) {
        vf0 vf0Var = this.b;
        this.O = new hv3(vf0Var.l3);
        ol0 ol0Var = new ol0();
        this.P = ol0Var;
        this.Q = new iv3(ol0Var);
        this.R = new jv3(vf0Var.l0);
        this.S = new lv3(vf0Var.A4);
        this.T = new mv3(vf0Var.z4);
        this.U = new cv3(vf0Var.N0);
        this.V = new dv3(vf0Var.L0);
        this.W = new ev3();
        dw2 i1Var = new i1(this.H);
        Object obj = do0.c;
        if (!(i1Var instanceof do0)) {
            i1Var = new do0(i1Var);
        }
        this.X = new nv3(i1Var);
        this.Y = new kv3(this.b.n0);
        vh1 vh1Var = iu1.b;
        hu1 hu1Var = new hu1(13);
        hu1Var.a("/appEvent", this.K);
        hu1Var.a("/click", this.M);
        hu1Var.a("/delayPageLoaded", this.N);
        hu1Var.a("/httpTrack", this.O);
        hu1Var.a("/open", this.Q);
        hu1Var.a("/result", this.R);
        hu1Var.a("/video", this.S);
        hu1Var.a("/videoMeta", this.T);
        hu1Var.a("/close", this.U);
        hu1Var.a("/customClose", this.V);
        hu1Var.a("/delayPageClosed", this.W);
        hu1Var.a("/backButton", this.X);
        hu1Var.a("/setPersistentPair", this.Y);
        this.Z = new gv3(new iu1(hu1Var.a));
        LinkedHashMap linkedHashMapA = ud0.a(3);
        gv3 gv3Var = this.Z;
        if (gv3Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("GmsgHandlerInstaller", gv3Var);
        linkedHashMapA.put("SetFollowUrls", pv3.a);
        linkedHashMapA.put("SetExpanded", rv3.a);
        ov3 ov3Var = new ov3(new iu1(linkedHashMapA));
        vf0 vf0Var2 = this.b;
        vh1 vh1Var2 = vf0Var2.f;
        dw2 dw2Var = vf0Var2.x;
        dw2 dw2Var2 = vf0Var2.w;
        ol0 ol0Var2 = vf0Var2.u;
        ol0 ol0Var3 = vf0Var2.C;
        dw2 dw2Var3 = vf0Var2.t;
        ol0 ol0Var4 = vf0Var2.F;
        dw2 dw2Var4 = vf0Var2.z;
        vh1 vh1Var3 = this.v;
        vh1 vh1Var4 = this.e;
        vh1 vh1Var5 = this.d;
        this.a0 = new ou3(vh1Var2, dw2Var, dw2Var2, ol0Var2, ol0Var3, dw2Var3, ol0Var4, dw2Var4, vh1Var3, vh1Var4, vh1Var5, vf0Var2.E, this.m, this.x, vf0Var2.U, this.J, this.i, vf0Var2.h0, ov3Var, this.H, vf0Var2.G);
        this.b0 = new hc2(vh1Var5, vh1Var4, vf0Var2.y1, vf0Var2.s1, dw2Var3);
        vh1 vh1VarA = vh1.a(ec3Var);
        this.c0 = vh1VarA;
        vh1 vh1Var6 = this.d;
        vf0 vf0Var3 = this.b;
        dw2 bp2Var = new bp2(vh1Var6, vf0Var3.h, this.e, vf0Var3.u, vf0Var3.G, this.z, vf0Var3.t, vf0Var3.o1, vh1VarA);
        if (!(bp2Var instanceof do0)) {
            bp2Var = new do0(bp2Var);
        }
        this.d0 = bp2Var;
        vf0 vf0Var4 = this.b;
        dw2 dw2VarA = jk3.a(new q61(vf0Var4.f, vf0Var4.t));
        this.e0 = dw2VarA;
        ol0 ol0Var5 = this.P;
        vf0 vf0Var5 = this.b;
        dw2 bh2Var = new bh2(vf0Var5.f, vf0Var5.t, vf0Var5.U, vf0Var5.V, this.m, vf0Var5.E, this.I, this.a0, this.o, this.v, vf0Var5.r2, vf0Var5.N4, this.d, this.w, this.b0, this.d0, dw2VarA, vf0Var5.F, this.e, vf0Var5.u);
        if (!(bh2Var instanceof do0)) {
            bh2Var = new do0(bh2Var);
        }
        ol0.a(ol0Var5, bh2Var);
        this.f0 = new c82(this.P);
        vh1 vh1Var7 = iu1.b;
        LinkedHashMap linkedHashMapA2 = ud0.a(3);
        d82 d82Var = this.E;
        if (d82Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA2.put("/sendMessageToSdk", d82Var);
        b82 b82Var = this.G;
        if (b82Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA2.put("/hideValidatorOverlay", b82Var);
        c82 c82Var = this.f0;
        if (c82Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA2.put("/open", c82Var);
        this.g0 = new z72(new iu1(linkedHashMapA2));
    }

    public final void a(i2 i2Var, zy zyVar, n03 n03Var, tn1 tn1Var, m33 m33Var, zb zbVar, s02 s02Var, JsonObject jsonObject) {
        dw2 do0Var = ry.a;
        Object obj = do0.c;
        if (!(do0Var instanceof do0)) {
            do0Var = new do0(do0Var);
        }
        this.c = do0Var;
        this.d = vh1.a(i2Var);
        this.e = vh1.a(zyVar);
        this.f = new sh0(vh1.a(n03Var));
        this.g = new sh0(vh1.a(tn1Var));
        this.h = new sh0(vh1.a(m33Var));
        dw2 uyVar = new uy(this.f, this.g, this.h, new sh0(vh1.a(zbVar)));
        if (!(uyVar instanceof do0)) {
            uyVar = new do0(uyVar);
        }
        this.i = uyVar;
        vh1 vh1Var = mj0.a;
        this.j = vh1Var;
        vf0 vf0Var = this.b;
        dw2 uz1Var = new uz1(vf0Var.M4, vh1Var, vf0Var.x);
        if (!(uz1Var instanceof do0)) {
            uz1Var = new do0(uz1Var);
        }
        this.k = uz1Var;
        this.l = vh1Var;
        ol0 ol0Var = new ol0();
        this.m = ol0Var;
        this.n = new my1(ol0Var);
        vh1 vh1Var2 = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(1);
        my1 my1Var = this.n;
        if (my1Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("AdEventListener", my1Var);
        iu1 iu1Var = new iu1(linkedHashMapA);
        vf0 vf0Var2 = this.b;
        ay1 ay1Var = new ay1(vf0Var2.u, iu1Var, vf0Var2.A3);
        dw2 do0Var2 = ay1Var instanceof do0 ? ay1Var : new do0(ay1Var);
        vf0 vf0Var3 = this.b;
        dw2 cz1Var = new cz1(vf0Var3.M4, vf0Var3.x, vf0Var3.u, this.k, this.l, vf0Var3.E, do0Var2);
        if (!(cz1Var instanceof do0)) {
            cz1Var = new do0(cz1Var);
        }
        this.o = cz1Var;
        dw2 hx1Var = new hx1(cz1Var);
        if (!(hx1Var instanceof do0)) {
            hx1Var = new do0(hx1Var);
        }
        this.p = new ny1(hx1Var);
        dw2 do0Var3 = g82.a;
        if (!(do0Var3 instanceof do0)) {
            do0Var3 = new do0(do0Var3);
        }
        this.q = do0Var3;
        this.r = vh1.a(jsonObject);
        this.s = vh1.a(s02Var);
    }

    public final void a(j53 j53Var, q52 q52Var, mb0 mb0Var, NativeRequest nativeRequest) {
        this.t = vh1.a(nativeRequest);
        this.u = vh1.a(q52Var);
        vh1 vh1VarA = vh1.a(j53Var);
        this.v = vh1VarA;
        vf0 vf0Var = this.b;
        t93 t93Var = new t93(vf0Var.z, this.d, vf0Var.U, vf0Var.I, vh1VarA, vf0Var.t);
        Object obj = do0.c;
        dw2 do0Var = t93Var instanceof do0 ? t93Var : new do0(t93Var);
        this.w = do0Var;
        vf0 vf0Var2 = this.b;
        dw2 wf2Var = new wf2(vf0Var2.w, vf0Var2.u, this.r, this.d, vf0Var2.O, this.s, vf0Var2.t, do0Var);
        if (!(wf2Var instanceof do0)) {
            wf2Var = new do0(wf2Var);
        }
        this.x = wf2Var;
        vf0 vf0Var3 = this.b;
        dw2 gm0Var = new gm0(vf0Var3.u, vf0Var3.t, this.i, vf0Var3.G);
        if (!(gm0Var instanceof do0)) {
            gm0Var = new do0(gm0Var);
        }
        this.y = gm0Var;
        this.z = new e63(this.d, this.e, this.b.u1);
        dw2 sb3Var = new sb3(this.u);
        if (!(sb3Var instanceof do0)) {
            sb3Var = new do0(sb3Var);
        }
        this.A = sb3Var;
        this.B = new j72(this.d, sb3Var);
        vh1 vh1Var = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(1);
        j72 j72Var = this.B;
        if (j72Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("/sendMessageToSdk", j72Var);
        this.C = new i72(new iu1(linkedHashMapA));
        LinkedHashMap linkedHashMapA2 = ud0.a(1);
        i72 i72Var = this.C;
        if (i72Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA2.put("GmsgHandlerInstaller", i72Var);
        k72 k72Var = new k72(new iu1(linkedHashMapA2));
        vf0 vf0Var4 = this.b;
        dw2 o72Var = new o72(vf0Var4.G, vf0Var4.h0, k72Var);
        if (!(o72Var instanceof do0)) {
            o72Var = new do0(o72Var);
        }
        this.D = o72Var;
        vh1 vh1Var2 = this.d;
        this.E = new d82(vh1Var2, this.A);
        ol0 ol0Var = new ol0();
        this.F = ol0Var;
        this.G = new b82(vh1Var2, ol0Var);
        dw2 do0Var2 = k1.a;
        if (!(do0Var2 instanceof do0)) {
            do0Var2 = new do0(do0Var2);
        }
        this.H = do0Var2;
        vf0 vf0Var5 = this.b;
        this.I = new qg2(vf0Var5.f, vf0Var5.x, vf0Var5.w, vf0Var5.u, vf0Var5.C, vf0Var5.t, vf0Var5.F, vf0Var5.z, this.l, this.v, this.e, this.d, vf0Var5.E, this.m, this.x, vf0Var5.U, do0Var2);
        this.J = vh1.a(mb0Var);
        dw2 dkVar = new dk(this.m);
        if (!(dkVar instanceof do0)) {
            dkVar = new do0(dkVar);
        }
        this.K = new av3(dkVar);
        vf0 vf0Var6 = this.b;
        dw2 ewVar = new ew(vf0Var6.V, this.m, this.z, vf0Var6.N4, this.d);
        if (!(ewVar instanceof do0)) {
            ewVar = new do0(ewVar);
        }
        this.L = ewVar;
        this.M = new bv3(ewVar);
        this.N = new fv3(this.b.B4);
    }

    public final void a(BaseRequest baseRequest, Integer num, eo2 eo2Var, t91 t91Var) {
        vh1 vh1Var = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(1);
        z72 z72Var = this.g0;
        if (z72Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("GmsgHandlerInstaller", z72Var);
        e82 e82Var = new e82(new iu1(linkedHashMapA));
        vf0 vf0Var = this.b;
        dw2 u72Var = new u72(vf0Var.G, vf0Var.h0, e82Var);
        Object obj = do0.c;
        if (!(u72Var instanceof do0)) {
            u72Var = new do0(u72Var);
        }
        this.h0 = u72Var;
        vh1 vh1VarA = vh1.a(eo2Var);
        this.i0 = vh1VarA;
        vh1 vh1Var2 = this.r;
        vf0 vf0Var2 = this.b;
        dw2 cv0Var = new cv0(vh1Var2, vf0Var2.x, vf0Var2.u, vf0Var2.V, this.s, vf0Var2.b1, this.t, vf0Var2.G, this.i, vf0Var2.h, this.u, this.x, this.y, this.z, this.m, this.D, this.h0, this.v, this.d, vf0Var2.d, vf0Var2.t, this.w, vf0Var2.F, vh1VarA);
        if (!(cv0Var instanceof do0)) {
            cv0Var = new do0(cv0Var);
        }
        this.j0 = cv0Var;
        ol0 ol0Var = this.F;
        dw2 i61Var = new i61(this.b.x, this.q, cv0Var);
        if (!(i61Var instanceof do0)) {
            i61Var = new do0(i61Var);
        }
        ol0.a(ol0Var, i61Var);
        this.k0 = new a82(this.F);
        vh1 vh1Var3 = mj0.a;
        this.l0 = vh1Var3;
        this.m0 = vh1.a(num);
        dw2 do0Var = cc3.a;
        if (!(do0Var instanceof do0)) {
            do0Var = new do0(do0Var);
        }
        this.n0 = do0Var;
        dw2 tyVar = new ty(this.v);
        if (!(tyVar instanceof do0)) {
            tyVar = new do0(tyVar);
        }
        this.o0 = tyVar;
        this.p0 = new v12(new sh0(this.t));
        int i = sc3.c;
        List listB = ud0.b(1);
        List listB2 = ud0.b(1);
        dw2 dw2Var = this.o0;
        boolean z = rc3.c;
        if (!z && dw2Var == null) {
            throw new AssertionError("Codegen error? Null provider");
        }
        listB.add(dw2Var);
        v12 v12Var = this.p0;
        if (!z && v12Var == null) {
            throw new AssertionError("Codegen error? Null provider");
        }
        listB2.add(v12Var);
        if (!z && ud0.a(listB)) {
            throw new AssertionError("Codegen error?  Duplicates in the provider list");
        }
        if (!z && ud0.a(listB2)) {
            throw new AssertionError("Codegen error?  Duplicates in the provider list");
        }
        this.q0 = new sc3(listB, listB2);
        vh1 vh1VarA2 = vh1.a(t91Var);
        vf0 vf0Var3 = this.b;
        dw2 mt3Var = new mt3(vf0Var3.G, vf0Var3.o1, vf0Var3.V, this.z, this.l0, this.c0, this.d, this.i, this.m0, vf0Var3.h, this.n0, vf0Var3.N4, this.i0, this.m, vf0Var3.D2, this.q0, vf0Var3.t, vh1VarA2);
        if (!(mt3Var instanceof do0)) {
            mt3Var = new do0(mt3Var);
        }
        this.r0 = mt3Var;
        vh1 vh1VarA3 = vh1.a(baseRequest);
        this.s0 = vh1VarA3;
        vf0 vf0Var4 = this.b;
        this.t0 = new e53(vf0Var4.U3, vh1VarA3, this.v);
        dw2 tcVar = new tc(vf0Var4.w3, vh1VarA3);
        if (!(tcVar instanceof do0)) {
            tcVar = new do0(tcVar);
        }
        this.u0 = tcVar;
        vf0 vf0Var5 = this.b;
        dw2 no2Var = new no2(vf0Var5.f, this.d, vf0Var5.O4, vf0Var5.t, vf0Var5.G, this.e0, vf0Var5.F, vf0Var5.u, vf0Var5.E);
        if (!(no2Var instanceof do0)) {
            no2Var = new do0(no2Var);
        }
        this.v0 = no2Var;
        vf0 vf0Var6 = this.b;
        dw2 l4Var = new l4(vf0Var6.e0, this.v, vf0Var6.f0);
        if (!(l4Var instanceof do0)) {
            l4Var = new do0(l4Var);
        }
        this.w0 = l4Var;
        vf0 vf0Var7 = this.b;
        dw2 sq2Var = new sq2(vf0Var7.x1, vf0Var7.u, this.v, vf0Var7.t, vf0Var7.G);
        if (!(sq2Var instanceof do0)) {
            sq2Var = new do0(sq2Var);
        }
        this.x0 = sq2Var;
        vh1 vh1Var4 = this.c0;
        vf0 vf0Var8 = this.b;
        dw2 yj2Var = new yj2(vh1Var4, vf0Var8.A0, vf0Var8.A1, this.s0, this.v, vh1Var3, vf0Var8.s, vf0Var8.F);
        if (!(yj2Var instanceof do0)) {
            yj2Var = new do0(yj2Var);
        }
        this.y0 = yj2Var;
        dw2 dw2Var2 = this.b.N1;
        vh1 vh1Var5 = this.c0;
        vh1 vh1Var6 = this.d;
        sc3 sc3Var = this.q0;
        vh1 vh1Var7 = this.v;
        vf0 vf0Var9 = this.b;
        dw2 q6Var = new q6(dw2Var2, vh1Var5, vh1Var6, sc3Var, vh1Var7, vf0Var9.t, vf0Var9.E, this.b.T);
        if (!(q6Var instanceof do0)) {
            q6Var = new do0(q6Var);
        }
        this.z0 = q6Var;
    }

    public final void a(PerAdNativeJavscriptEngineJsContext perAdNativeJavscriptEngineJsContext) {
        dw2 a10Var = new a10(this.d, this.b.D2);
        Object obj = do0.c;
        if (!(a10Var instanceof do0)) {
            a10Var = new do0(a10Var);
        }
        this.A0 = a10Var;
        dw2 y52Var = new y52(this.u);
        if (!(y52Var instanceof do0)) {
            y52Var = new do0(y52Var);
        }
        this.B0 = y52Var;
        dw2 q72Var = new q72(this.D);
        if (!(q72Var instanceof do0)) {
            q72Var = new do0(q72Var);
        }
        this.C0 = q72Var;
        vh1 vh1Var = iu1.b;
        hu1 hu1Var = new hu1(17);
        hu1Var.a("MraidAdEventListener", this.p);
        hu1Var.a("hideValidatorOverlayGmsgHandlerAsAdEventListener", this.k0);
        hu1Var.a("TrackingPingMonitorAsAdEventListener", this.r0);
        hu1Var.a("DelegatingAdEventListener", this.y);
        hu1Var.a("RequestThrottlerV2AdMonitor", this.t0);
        hu1Var.a("AdStatsTrackerListener", this.u0);
        hu1Var.a("CustomTabsConnectionInitializationTask", this.b.s2);
        hu1Var.a("PlayPrewarmListener", this.v0);
        hu1Var.a("AdLifecycleTrackerListener", this.w0);
        hu1Var.a("PreloadAdCloseListener", this.x0);
        hu1Var.a("PersistentCacheAdMonitor", this.y0);
        hu1Var.a("AdQualityDataHandler", this.z0);
        hu1Var.a("ConsentFormActionMonitor", this.A0);
        hu1Var.a("NativeJavascriptEngineLifeCycleMonitor", this.B0);
        hu1Var.a("NativeOnePointFiveOverlayMonitor", this.C0);
        hu1Var.a("SafeBrowsingLifecycleMonitor", this.w);
        hu1Var.a("OmidMonitorAsAdEventListener", this.x);
        iu1 iu1Var = new iu1(hu1Var.a);
        ol0 ol0Var = this.m;
        vf0 vf0Var = this.b;
        dw2 w3Var = new w3(vf0Var.u, iu1Var, this.d, vf0Var.A3);
        if (!(w3Var instanceof do0)) {
            w3Var = new do0(w3Var);
        }
        ol0.a(ol0Var, w3Var);
        il1 il1Var = new il1(this.s);
        dw2 do0Var = il1Var instanceof do0 ? il1Var : new do0(il1Var);
        this.D0 = do0Var;
        vf0 vf0Var2 = this.b;
        dw2 u32Var = new u32(vf0Var2.x, vf0Var2.u, this.s, vf0Var2.t, do0Var, vf0Var2.Z1, this.s0, this.r);
        if (!(u32Var instanceof do0)) {
            u32Var = new do0(u32Var);
        }
        this.E0 = u32Var;
        vh1 vh1Var2 = this.s0;
        vf0 vf0Var3 = this.b;
        dw2 hs0Var = new hs0(vh1Var2, vf0Var3.v0, this.d, vf0Var3.u);
        if (!(hs0Var instanceof do0)) {
            hs0Var = new do0(hs0Var);
        }
        this.F0 = hs0Var;
        dw2 y32Var = new y32(this.j0);
        if (!(y32Var instanceof do0)) {
            y32Var = new do0(y32Var);
        }
        this.G0 = y32Var;
        LinkedHashMap linkedHashMapA = ud0.a(2);
        dw2 dw2Var = this.F0;
        if (dw2Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("FirebaseAnalyticsAdEventListener", dw2Var);
        dw2 dw2Var2 = this.G0;
        if (dw2Var2 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        iu1 iu1VarA = wd0.a(linkedHashMapA, "NativeAdViewVisibilityChangedEventListener", dw2Var2, linkedHashMapA);
        vf0 vf0Var4 = this.b;
        dw2 wdVar = new wd(vf0Var4.x, iu1VarA, vf0Var4.A3);
        if (!(wdVar instanceof do0)) {
            wdVar = new do0(wdVar);
        }
        this.H0 = wdVar;
        dw2 m62Var = new m62(this.b.t, this.j0, this.v);
        if (!(m62Var instanceof do0)) {
            m62Var = new do0(m62Var);
        }
        this.I0 = m62Var;
        LinkedHashMap linkedHashMapA2 = ud0.a(1);
        dw2 dw2Var3 = this.I0;
        if (dw2Var3 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        iu1 iu1VarA2 = wd0.a(linkedHashMapA2, "NativeMediaViewFullyVisibleEventListener", dw2Var3, linkedHashMapA2);
        vf0 vf0Var5 = this.b;
        dw2 yu1Var = new yu1(vf0Var5.x, iu1VarA2, vf0Var5.A3);
        if (!(yu1Var instanceof do0)) {
            yu1Var = new do0(yu1Var);
        }
        this.J0 = yu1Var;
        LinkedHashMap linkedHashMapA3 = ud0.a(2);
        dw2 dw2Var4 = this.H0;
        if (dw2Var4 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA3.put("AdVisibilityChangedEventEmitter", dw2Var4);
        dw2 dw2Var5 = this.J0;
        if (dw2Var5 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        iu1 iu1VarA3 = wd0.a(linkedHashMapA3, "MediaViewFullyVisibleEventEmitter", dw2Var5, linkedHashMapA3);
        vf0 vf0Var6 = this.b;
        kd kdVar = new kd(vf0Var6.x, iu1VarA3, vf0Var6.A3);
        dw2 do0Var2 = kdVar instanceof do0 ? kdVar : new do0(kdVar);
        vf0 vf0Var7 = this.b;
        dw2 a42Var = new a42(vf0Var7.f, vf0Var7.x, do0Var2, vf0Var7.u2, vf0Var7.h, vf0Var7.t, vf0Var7.E, this.d);
        if (!(a42Var instanceof do0)) {
            a42Var = new do0(a42Var);
        }
        dw2 c42Var = new c42(a42Var, this.G0, this.I0);
        if (!(c42Var instanceof do0)) {
            c42Var = new do0(c42Var);
        }
        this.K0 = c42Var;
        this.L0 = new sh0(vh1.a(perAdNativeJavscriptEngineJsContext));
        vf0 vf0Var8 = this.b;
        dw2 uk0Var = new uk0(vf0Var8.f, vf0Var8.u, vf0Var8.b3, vf0Var8.t, this.s0, this.d, this.i);
        if (!(uk0Var instanceof do0)) {
            uk0Var = new do0(uk0Var);
        }
        this.M0 = new w12(this.b.t, uk0Var);
        dw2 dw2Var6 = this.b.x;
        dw2 dw2Var7 = this.c;
        vh1 vh1Var3 = this.d;
        vh1 vh1Var4 = this.e;
        dw2 dw2Var8 = this.i;
        vh1 vh1Var5 = this.j;
        ol0 ol0Var2 = this.m;
        dw2 dw2Var9 = this.y;
        vh1 vh1Var6 = this.s;
        dw2 dw2Var10 = this.j0;
        dw2 dw2Var11 = this.E0;
        dw2 dw2Var12 = this.K0;
        dw2 dw2Var13 = this.D0;
        sh0 sh0Var = this.L0;
        vf0 vf0Var9 = this.b;
        dw2 rm1Var = new rm1(dw2Var6, dw2Var7, vh1Var3, vh1Var4, dw2Var8, vh1Var5, ol0Var2, dw2Var9, vh1Var6, dw2Var10, dw2Var11, dw2Var12, dw2Var13, sh0Var, vf0Var9.f0, this.w, vf0Var9.F, this.i0, this.b.t, this.s0, this.M0);
        if (!(rm1Var instanceof do0)) {
            rm1Var = new do0(rm1Var);
        }
        this.N0 = rm1Var;
        ol0 ol0Var3 = this.b.u;
        vh1 vh1Var7 = iu1.b;
        dw2 g73Var = new g73(ol0Var3, vh1Var7, this.b.A3);
        if (!(g73Var instanceof do0)) {
            g73Var = new do0(g73Var);
        }
        this.O0 = g73Var;
        dw2 sq3Var = new sq3(this.b.u, vh1Var7, this.b.A3);
        if (!(sq3Var instanceof do0)) {
            sq3Var = new do0(sq3Var);
        }
        this.P0 = sq3Var;
    }

    @Override // kotlin.cs
    public final hp2 d() {
        ImmutableMap.Builder builderBuilderWithExpectedSize = ImmutableMap.builderWithExpectedSize(12);
        i2 adConfiguration = this.a;
        ah2 openGmsgHandler = (ah2) this.P.get();
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(openGmsgHandler, "openGmsgHandler");
        builderBuilderWithExpectedSize.put("/open", new kp2(adConfiguration, openGmsgHandler));
        i2 adConfiguration2 = this.a;
        dw clickGmsgHandler = (dw) this.L.get();
        Intrinsics.checkNotNullParameter(adConfiguration2, "adConfiguration");
        Intrinsics.checkNotNullParameter(clickGmsgHandler, "clickGmsgHandler");
        builderBuilderWithExpectedSize.put("/click", new kp2(adConfiguration2, clickGmsgHandler));
        i2 adConfiguration3 = this.a;
        gc0 customClickGmsgHandler = (gc0) this.R0.get();
        Intrinsics.checkNotNullParameter(adConfiguration3, "adConfiguration");
        Intrinsics.checkNotNullParameter(customClickGmsgHandler, "customClickGmsgHandler");
        builderBuilderWithExpectedSize.put("/nativeAdCustomClick", new kp2(adConfiguration3, customClickGmsgHandler));
        i2 adConfiguration4 = this.a;
        a52 nativeClickRecordedGmsgHandler = (a52) this.S0.get();
        Intrinsics.checkNotNullParameter(adConfiguration4, "adConfiguration");
        Intrinsics.checkNotNullParameter(nativeClickRecordedGmsgHandler, "nativeClickRecordedGmsgHandler");
        builderBuilderWithExpectedSize.put("/clickRecorded", new kp2(adConfiguration4, nativeClickRecordedGmsgHandler));
        i2 adConfiguration5 = this.a;
        j52 nativeImpressionEventGmsgHandler = (j52) this.T0.get();
        Intrinsics.checkNotNullParameter(adConfiguration5, "adConfiguration");
        Intrinsics.checkNotNullParameter(nativeImpressionEventGmsgHandler, "nativeImpressionEventGmsgHandler");
        builderBuilderWithExpectedSize.put("/nativeImpression", new kp2(adConfiguration5, nativeImpressionEventGmsgHandler));
        i2 adConfiguration6 = this.a;
        l52 nativeImpressionResponseGmsgHandler = (l52) this.U0.get();
        Intrinsics.checkNotNullParameter(adConfiguration6, "adConfiguration");
        Intrinsics.checkNotNullParameter(nativeImpressionResponseGmsgHandler, "nativeImpressionResponseGmsgHandler");
        builderBuilderWithExpectedSize.put("/nativeImpressionFlowControl", new kp2(adConfiguration6, nativeImpressionResponseGmsgHandler));
        i2 adConfiguration7 = this.a;
        us1 loadHtmlGmsgHandler = (us1) this.V0.get();
        Intrinsics.checkNotNullParameter(adConfiguration7, "adConfiguration");
        Intrinsics.checkNotNullParameter(loadHtmlGmsgHandler, "loadHtmlGmsgHandler");
        builderBuilderWithExpectedSize.put("/loadHtml", new kp2(adConfiguration7, loadHtmlGmsgHandler));
        i2 adConfiguration8 = this.a;
        ge3 showOverlayGmsgHandler = (ge3) this.X0.get();
        Intrinsics.checkNotNullParameter(adConfiguration8, "adConfiguration");
        Intrinsics.checkNotNullParameter(showOverlayGmsgHandler, "showOverlayGmsgHandler");
        builderBuilderWithExpectedSize.put("/showOverlay", new kp2(adConfiguration8, showOverlayGmsgHandler));
        i2 adConfiguration9 = this.a;
        e61 hideOverlayGmsgHandler = (e61) this.Y0.get();
        Intrinsics.checkNotNullParameter(adConfiguration9, "adConfiguration");
        Intrinsics.checkNotNullParameter(hideOverlayGmsgHandler, "hideOverlayGmsgHandler");
        builderBuilderWithExpectedSize.put("/hideOverlay", new kp2(adConfiguration9, hideOverlayGmsgHandler));
        i2 adConfiguration10 = this.a;
        kt1 logScionEventGmsgHandler = (kt1) this.Z0.get();
        Intrinsics.checkNotNullParameter(adConfiguration10, "adConfiguration");
        Intrinsics.checkNotNullParameter(logScionEventGmsgHandler, "logScionEventGmsgHandler");
        builderBuilderWithExpectedSize.put("/logScionEvent", new kp2(adConfiguration10, logScionEventGmsgHandler));
        i2 adConfiguration11 = this.a;
        at1 loadNativePolicyValidatorGmsgHandler = (at1) this.a1.get();
        Intrinsics.checkNotNullParameter(adConfiguration11, "adConfiguration");
        Intrinsics.checkNotNullParameter(loadNativePolicyValidatorGmsgHandler, "loadNativePolicyValidatorGmsgHandler");
        builderBuilderWithExpectedSize.put("/loadNativeAdPolicyViolations", new kp2(adConfiguration11, loadNativePolicyValidatorGmsgHandler));
        i2 adConfiguration12 = this.a;
        je3 showValidatorOverlayGmsgHandler = (je3) this.b1.get();
        Intrinsics.checkNotNullParameter(adConfiguration12, "adConfiguration");
        Intrinsics.checkNotNullParameter(showValidatorOverlayGmsgHandler, "showValidatorOverlayGmsgHandler");
        builderBuilderWithExpectedSize.put("/showValidatorOverlay", new kp2(adConfiguration12, showValidatorOverlayGmsgHandler));
        ImmutableMap gmsgHandlers = builderBuilderWithExpectedSize.build();
        Intrinsics.checkNotNullParameter(gmsgHandlers, "gmsgHandlers");
        ImmutableMap modifiers = ImmutableMap.of("GmsgHandlerInstaller", new jp2(gmsgHandlers));
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        return new hp2(modifiers);
    }

    @Override // kotlin.x1
    public final no3 f() {
        return (no3) this.Q0.get();
    }

    public final void g() {
        dw2 hp3Var = new hp3(this.b.u, this.d, this.m, this.O0, this.P0, mj0.a);
        Object obj = do0.c;
        if (!(hp3Var instanceof do0)) {
            hp3Var = new do0(hp3Var);
        }
        this.Q0 = hp3Var;
        vf0 vf0Var = this.b;
        af2 af2Var = new af2(vf0Var.O, this.d, vf0Var.t, vf0Var.w);
        if (!(af2Var instanceof do0)) {
            new do0(af2Var);
        }
        dw2 hc0Var = new hc0(this.m);
        if (!(hc0Var instanceof do0)) {
            hc0Var = new do0(hc0Var);
        }
        this.R0 = hc0Var;
        dw2 b52Var = new b52(this.m);
        if (!(b52Var instanceof do0)) {
            b52Var = new do0(b52Var);
        }
        this.S0 = b52Var;
        dw2 k52Var = new k52(this.m);
        if (!(k52Var instanceof do0)) {
            k52Var = new do0(k52Var);
        }
        this.T0 = k52Var;
        dw2 m52Var = new m52(this.m, this.z);
        if (!(m52Var instanceof do0)) {
            m52Var = new do0(m52Var);
        }
        this.U0 = m52Var;
        dw2 vs1Var = new vs1(this.j0, this.u);
        if (!(vs1Var instanceof do0)) {
            vs1Var = new do0(vs1Var);
        }
        this.V0 = vs1Var;
        vf0 vf0Var2 = this.b;
        dw2 k92Var = new k92(vf0Var2.f, vf0Var2.z, this.c, vf0Var2.T0, this.j, vf0Var2.h);
        if (!(k92Var instanceof do0)) {
            k92Var = new do0(k92Var);
        }
        this.W0 = k92Var;
        dw2 he3Var = new he3(this.b.w, this.j0, k92Var);
        if (!(he3Var instanceof do0)) {
            he3Var = new do0(he3Var);
        }
        this.X0 = he3Var;
        dw2 f61Var = new f61(this.b.x, this.j0, this.W0);
        if (!(f61Var instanceof do0)) {
            f61Var = new do0(f61Var);
        }
        this.Y0 = f61Var;
        dw2 lt1Var = new lt1(this.b.v0, this.d);
        if (!(lt1Var instanceof do0)) {
            lt1Var = new do0(lt1Var);
        }
        this.Z0 = lt1Var;
        vf0 vf0Var3 = this.b;
        dw2 bt1Var = new bt1(vf0Var3.t, this.j0, this.u, vf0Var3.b1, vf0Var3.x, this.q);
        if (!(bt1Var instanceof do0)) {
            bt1Var = new do0(bt1Var);
        }
        this.a1 = bt1Var;
        dw2 ke3Var = new ke3(this.b.w, this.j0);
        if (!(ke3Var instanceof do0)) {
            ke3Var = new do0(ke3Var);
        }
        this.b1 = ke3Var;
    }
}

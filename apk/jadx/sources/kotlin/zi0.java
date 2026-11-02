package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialRequest;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class zi0 {
    public final vf0 a;
    public vh1 b;
    public vh1 c;
    public e63 d;
    public vh1 e;
    public dw2 f;
    public sh0 g;
    public dw2 h;
    public vh1 i;
    public vh1 j;
    public vh1 k;
    public vh1 l;
    public dw2 m;
    public in3 n;
    public dw2 o;

    public zi0(vf0 vf0Var, zy zyVar, i2 i2Var, ec3 ec3Var, Long l, Integer num, BaseRequest baseRequest, j53 j53Var, n03 n03Var, tn1 tn1Var, SwipeableInterstitialRequest swipeableInterstitialRequest) {
        this.a = vf0Var;
        a(zyVar, i2Var, ec3Var, l, num, baseRequest, j53Var, n03Var, tn1Var, swipeableInterstitialRequest);
    }

    public final void a(zy zyVar, i2 i2Var, ec3 ec3Var, Long l, Integer num, BaseRequest baseRequest, j53 j53Var, n03 n03Var, tn1 tn1Var, SwipeableInterstitialRequest swipeableInterstitialRequest) {
        this.b = vh1.a(i2Var);
        vh1 vh1VarA = vh1.a(zyVar);
        this.c = vh1VarA;
        this.d = new e63(this.b, vh1VarA, this.a.u1);
        vh1 vh1VarA2 = vh1.a(j53Var);
        this.e = vh1VarA2;
        vf0 vf0Var = this.a;
        dw2 nb0Var = new nb0(vf0Var.u, vf0Var.f, vf0Var.t, vf0Var.h, this.d, vh1VarA2, vf0Var.N, this.c);
        Object obj = do0.c;
        if (!(nb0Var instanceof do0)) {
            nb0Var = new do0(nb0Var);
        }
        this.f = nb0Var;
        this.g = new sh0(vh1.a(n03Var));
        dw2 bzVar = new bz(this.g, new sh0(vh1.a(tn1Var)));
        if (!(bzVar instanceof do0)) {
            bzVar = new do0(bzVar);
        }
        this.h = bzVar;
        this.i = vh1.a(baseRequest);
        this.j = vh1.a(l);
        this.k = vh1.a(num);
        this.l = vh1.a(ec3Var);
        dw2 azVar = new az(this.a.w0);
        if (!(azVar instanceof do0)) {
            azVar = new do0(azVar);
        }
        this.m = azVar;
        vh1 vh1VarA3 = vh1.a(swipeableInterstitialRequest);
        vh1 vh1Var = this.i;
        fo2 fo2Var = new fo2(vh1Var);
        vf0 vf0Var2 = this.a;
        dw2 en3Var = new en3(vf0Var2.f, vf0Var2.L4, this.f, vf0Var2.h0, vf0Var2.x, vf0Var2.W, vf0Var2.T0, this.h, vh1Var, this.e, this.j, this.k, this.b, this.c, this.l, this.m, vh1VarA3, fo2Var);
        if (!(en3Var instanceof do0)) {
            en3Var = new do0(en3Var);
        }
        this.n = new in3(en3Var);
        vh1 vh1Var2 = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(1);
        in3 in3Var = this.n;
        if (in3Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("FirstPartyRendererSwipeableInterstitial", in3Var);
        dw2 j8Var = new j8(new iu1(linkedHashMapA));
        if (!(j8Var instanceof do0)) {
            j8Var = new do0(j8Var);
        }
        this.o = j8Var;
    }
}

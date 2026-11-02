package kotlin;

import com.google.android.libraries.ads.mobile.sdk.banner.BannerAdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAdRequest;
import kotlinx.coroutines.channels.Channel;

/* JADX INFO: loaded from: classes.dex */
public final class ji0 implements e03 {
    public final vf0 a;
    public dw2 b;
    public vh1 c;
    public dw2 d;
    public dw2 e;
    public vh1 f;
    public vh1 g;
    public sh0 h;
    public dw2 i;
    public dw2 j;
    public dw2 k;
    public vh1 l;
    public dw2 m;

    public ji0(vf0 vf0Var, BaseRequest baseRequest, j53 j53Var, Boolean bool, Boolean bool2, BannerAdRequest bannerAdRequest, PictureInPictureAdRequest pictureInPictureAdRequest) {
        this.a = vf0Var;
        a(baseRequest, j53Var, bool, bool2, bannerAdRequest, pictureInPictureAdRequest);
    }

    @Override // kotlin.g03
    public final px2 a() {
        return (zz2) this.m.get();
    }

    @Override // kotlin.cz2, kotlin.g03
    public final wy2 a() {
        return (zz2) this.m.get();
    }

    public final void a(BaseRequest baseRequest, j53 j53Var, Boolean bool, Boolean bool2, BannerAdRequest bannerAdRequest, PictureInPictureAdRequest pictureInPictureAdRequest) {
        vf0 vf0Var = this.a;
        dw2 f33Var = new f33(vf0Var.u, vf0Var.h, vf0Var.t);
        Object obj = do0.c;
        if (!(f33Var instanceof do0)) {
            f33Var = new do0(f33Var);
        }
        this.b = f33Var;
        this.c = vh1.a(bannerAdRequest);
        vh1 vh1Var = mj0.a;
        dw2 m03Var = new m03(vh1Var, vh1Var, vh1Var);
        if (!(m03Var instanceof do0)) {
            m03Var = new do0(m03Var);
        }
        this.d = m03Var;
        dw2 l03Var = new l03(this.a.w0);
        if (!(l03Var instanceof do0)) {
            l03Var = new do0(l03Var);
        }
        this.e = l03Var;
        this.f = vh1.a(j53Var);
        this.g = vh1.a(bool2);
        this.h = new sh0(vh1.a(baseRequest));
        vh1 vh1VarA = vh1.a(bool);
        vf0 vf0Var2 = this.a;
        dw2 pd1Var = new pd1(vf0Var2.P0, this.f, this.h, this.e, vh1VarA, vf0Var2.h, vf0Var2.t, vh1Var);
        if (!(pd1Var instanceof do0)) {
            pd1Var = new do0(pd1Var);
        }
        this.i = pd1Var;
        dw2 do0Var = i03.a;
        if (!(do0Var instanceof do0)) {
            do0Var = new do0(do0Var);
        }
        this.j = do0Var;
        dw2 k03Var = new k03(this.a.u, do0Var);
        if (!(k03Var instanceof do0)) {
            k03Var = new do0(k03Var);
        }
        this.k = k03Var;
        this.l = vh1.a(pictureInPictureAdRequest);
        vf0 vf0Var3 = this.a;
        bo2 bo2Var = new bo2(vf0Var3.E, vf0Var3.u2, vf0Var3.x, vf0Var3.F, vf0Var3.G, this.d, this.f, vf0Var3.s3);
        dw2 do0Var2 = bo2Var instanceof do0 ? bo2Var : new do0(bo2Var);
        vf0 vf0Var4 = this.a;
        dw2 c03Var = new c03(vf0Var4.f, vf0Var4.w, vf0Var4.b4, vf0Var4.c4, vf0Var4.u, vf0Var4.X3, this.b, vf0Var4.u2, this.c, this.d, vf0Var4.t, vf0Var4.G, this.e, this.f, vf0Var4.d, this.g, this.i, this.k, vf0Var4.e0, vf0Var4.E, this.l, do0Var2, vf0Var4.x, vf0Var4.s3);
        if (!(c03Var instanceof do0)) {
            c03Var = new do0(c03Var);
        }
        this.m = c03Var;
    }

    @Override // kotlin.g03
    public final md1 b() {
        return (md1) this.i.get();
    }

    @Override // kotlin.g03
    public final Channel c() {
        return (Channel) this.j.get();
    }
}

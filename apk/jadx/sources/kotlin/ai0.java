package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.iconad.IconAdRequest;
import com.google.android.libraries.ads.mobile.sdk.iconad.IconRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;

/* JADX INFO: loaded from: classes.dex */
public final class ai0 implements vz2 {
    public final vf0 a;
    public AdRequest b;
    public BaseRequest c;
    public j53 d;
    public Boolean e;
    public Boolean f;
    public NativeAdRequest g;
    public NativeRequest h;
    public Integer i;
    public IconAdRequest j;
    public IconRequest k;

    public ai0(vf0 vf0Var) {
        this.a = vf0Var;
    }

    @Override // kotlin.vz2
    public final vz2 a(int i) {
        this.i = Integer.valueOf(i);
        return this;
    }

    @Override // kotlin.vz2
    public final vz2 a(NativeAdRequest nativeAdRequest) {
        nativeAdRequest.getClass();
        this.g = nativeAdRequest;
        return this;
    }

    @Override // kotlin.vz2
    public final vz2 a(NativeRequest nativeRequest) {
        nativeRequest.getClass();
        this.h = nativeRequest;
        return this;
    }

    @Override // kotlin.vz2
    public final wz2 a() {
        kq2.a(this.b, AdRequest.class);
        kq2.a(this.c, BaseRequest.class);
        kq2.a(this.d, j53.class);
        kq2.a(this.e, Boolean.class);
        kq2.a(this.f, Boolean.class);
        kq2.a(this.g, NativeAdRequest.class);
        kq2.a(this.h, NativeRequest.class);
        kq2.a(this.i, Integer.class);
        kq2.a(this.j, IconAdRequest.class);
        kq2.a(this.k, IconRequest.class);
        return new bi0(this.a, this.c, this.d, this.e, this.f, this.g, this.i, this.j);
    }

    @Override // kotlin.f03
    public final Object a(j53 j53Var) {
        this.d = j53Var;
        return this;
    }

    @Override // kotlin.f03
    public final Object a(AdRequest adRequest) {
        adRequest.getClass();
        this.b = adRequest;
        return this;
    }

    @Override // kotlin.f03
    public final Object a(BaseRequest baseRequest) {
        baseRequest.getClass();
        this.c = baseRequest;
        return this;
    }

    @Override // kotlin.f03
    public final Object a(boolean z) {
        this.f = Boolean.valueOf(z);
        return this;
    }

    @Override // kotlin.f03
    public final Object b(boolean z) {
        this.e = Boolean.valueOf(z);
        return this;
    }
}

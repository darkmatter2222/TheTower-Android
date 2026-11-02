package kotlin;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.ads.nativead.NativeAd;

/* JADX INFO: loaded from: classes.dex */
public final class q12 implements s91 {
    public final Drawable a;
    public final Uri b;
    public final double c;
    public final int d;
    public final int e;

    public q12(NativeAd.Image image) {
        this.a = image.getDrawable();
        this.b = image.getUri();
        this.c = image.getScale();
        this.d = image.getWidth();
        this.e = image.getHeight();
    }

    @Override // kotlin.s91
    public final double a() {
        return this.c;
    }

    @Override // kotlin.s91
    public final int b() {
        return this.d;
    }

    @Override // kotlin.s91
    public final int c() {
        return this.e;
    }

    @Override // kotlin.s91
    public final Uri d() {
        return this.b;
    }

    @Override // kotlin.s91
    public final Drawable e() {
        return this.a;
    }
}

package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class rk2 {
    public final int a;
    public final BaseRequest b;
    public long c;
    public int d;

    public rk2(int i, BaseRequest adRequest, long j) {
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        this.a = i;
        this.b = adRequest;
        this.c = j;
    }

    public final BaseRequest a() {
        return this.b;
    }

    public final int b() {
        return this.d;
    }

    public final int c() {
        return this.a;
    }
}

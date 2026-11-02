package com.ironsource;

import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.model.NetworkSettings;
import java.util.List;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.gc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3609gc extends V {
    private final String s;
    private final List<NetworkSettings> t;
    private final Wb u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C3609gc(String str, List<? extends NetworkSettings> list, Wb configs) {
        super(IronSource.a.NATIVE_AD, str, list, configs.d(), configs.b(), (int) (configs.c() / ((long) 1000)), configs.a(), configs.f(), -1, new M0(M0.a.MANUAL, configs.d().j(), configs.d().b(), -1L), new I0(-1L), configs.h(), configs.i(), configs.k(), configs.j(), false, 32768, null);
        Intrinsics.checkNotNullParameter(configs, "configs");
        this.s = str;
        this.t = list;
        this.u = configs;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ C3609gc a(C3609gc c3609gc, String str, List list, Wb wb, int i, Object obj) {
        if ((i & 1) != 0) {
            str = c3609gc.s;
        }
        if ((i & 2) != 0) {
            list = c3609gc.t;
        }
        if ((i & 4) != 0) {
            wb = c3609gc.u;
        }
        return c3609gc.a(str, list, wb);
    }

    public final C3609gc a(String str, List<? extends NetworkSettings> list, Wb configs) {
        Intrinsics.checkNotNullParameter(configs, "configs");
        return new C3609gc(str, list, configs);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3609gc)) {
            return false;
        }
        C3609gc c3609gc = (C3609gc) obj;
        return Intrinsics.areEqual(this.s, c3609gc.s) && Intrinsics.areEqual(this.t, c3609gc.t) && Intrinsics.areEqual(this.u, c3609gc.u);
    }

    public int hashCode() {
        String str = this.s;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        List<NetworkSettings> list = this.t;
        return ((iHashCode + (list != null ? list.hashCode() : 0)) * 31) + this.u.hashCode();
    }

    @Override // com.ironsource.V
    public List<NetworkSettings> j() {
        return this.t;
    }

    @Override // com.ironsource.V
    public String o() {
        return this.s;
    }

    public final String s() {
        return this.s;
    }

    public final List<NetworkSettings> t() {
        return this.t;
    }

    public String toString() {
        return "NativeAdManagerData(userId=" + this.s + ", providerList=" + this.t + ", configs=" + this.u + ")";
    }

    public final Wb u() {
        return this.u;
    }

    public final Wb v() {
        return this.u;
    }
}

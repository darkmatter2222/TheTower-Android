package com.ironsource;

import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.lc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3698lc extends AbstractC3907x0 {
    public static final a z = new a(null);
    private final C3597g0 u;
    private final C3889w0 v;
    private final Wb w;
    private final String x;
    private final String y;

    /* JADX INFO: renamed from: com.ironsource.lc$a */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final C3698lc a(C3597g0 adProperties, C3456ab c3456ab) {
            List<Ec> listEmptyList;
            Ue ueD;
            Intrinsics.checkNotNullParameter(adProperties, "adProperties");
            AbstractC3907x0.a aVar = AbstractC3907x0.s;
            S3 s3C = (c3456ab == null || (ueD = c3456ab.d()) == null) ? null : ueD.c();
            Wb wbE = s3C != null ? s3C.e() : null;
            if (wbE == null) {
                throw new IllegalStateException("Error getting " + adProperties.a() + " configurations");
            }
            if (c3456ab == null || (listEmptyList = c3456ab.d(adProperties.e(), adProperties.c())) == null) {
                listEmptyList = CollectionsKt.emptyList();
            }
            String strF = IronSourceUtils.f();
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listEmptyList, 10));
            Iterator<T> it = listEmptyList.iterator();
            while (it.hasNext()) {
                arrayList.add(((Ec) it.next()).f());
            }
            C3845ta c3845taB = C3845ta.b();
            Intrinsics.checkNotNullExpressionValue(c3845taB, "getInstance(...)");
            return new C3698lc(adProperties, new C3889w0(strF, arrayList, c3845taB), wbE);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3698lc(C3597g0 adProperties, C3889w0 adUnitCommonData, Wb configs) {
        super(adProperties, true, adUnitCommonData.f(), adUnitCommonData.d(), adUnitCommonData.e(), configs.d(), configs.b(), (int) (configs.c() / ((long) 1000)), configs.a(), configs.f(), -1, new M0(M0.a.MANUAL, configs.d().j(), configs.d().b(), -1L), configs.h(), configs.i(), configs.k(), configs.j(), false, 65536, null);
        Intrinsics.checkNotNullParameter(adProperties, "adProperties");
        Intrinsics.checkNotNullParameter(adUnitCommonData, "adUnitCommonData");
        Intrinsics.checkNotNullParameter(configs, "configs");
        this.u = adProperties;
        this.v = adUnitCommonData;
        this.w = configs;
        this.x = "NA";
        this.y = C3517bb.e;
    }

    public static /* synthetic */ C3698lc a(C3698lc c3698lc, C3597g0 c3597g0, C3889w0 c3889w0, Wb wb, int i, Object obj) {
        if ((i & 1) != 0) {
            c3597g0 = c3698lc.u;
        }
        if ((i & 2) != 0) {
            c3889w0 = c3698lc.v;
        }
        if ((i & 4) != 0) {
            wb = c3698lc.w;
        }
        return c3698lc.a(c3597g0, c3889w0, wb);
    }

    public final C3889w0 A() {
        return this.v;
    }

    public final Wb B() {
        return this.w;
    }

    public final C3698lc a(C3597g0 adProperties, C3889w0 adUnitCommonData, Wb configs) {
        Intrinsics.checkNotNullParameter(adProperties, "adProperties");
        Intrinsics.checkNotNullParameter(adUnitCommonData, "adUnitCommonData");
        Intrinsics.checkNotNullParameter(configs, "configs");
        return new C3698lc(adProperties, adUnitCommonData, configs);
    }

    @Override // com.ironsource.AbstractC3907x0
    public C3597g0 b() {
        return this.u;
    }

    @Override // com.ironsource.AbstractC3907x0
    public JSONObject b(NetworkSettings providerSettings) {
        Intrinsics.checkNotNullParameter(providerSettings, "providerSettings");
        JSONObject nativeAdSettings = providerSettings.getNativeAdSettings();
        Intrinsics.checkNotNullExpressionValue(nativeAdSettings, "getNativeAdSettings(...)");
        return nativeAdSettings;
    }

    @Override // com.ironsource.AbstractC3907x0
    public String c() {
        return this.x;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3698lc)) {
            return false;
        }
        C3698lc c3698lc = (C3698lc) obj;
        return Intrinsics.areEqual(this.u, c3698lc.u) && Intrinsics.areEqual(this.v, c3698lc.v) && Intrinsics.areEqual(this.w, c3698lc.w);
    }

    public int hashCode() {
        return (((this.u.hashCode() * 31) + this.v.hashCode()) * 31) + this.w.hashCode();
    }

    @Override // com.ironsource.AbstractC3907x0
    public String k() {
        return this.y;
    }

    public String toString() {
        return "NativeAdUnitData(adProperties=" + this.u + ", adUnitCommonData=" + this.v + ", configs=" + this.w + ")";
    }

    public final C3597g0 x() {
        return this.u;
    }

    public final C3889w0 y() {
        return this.v;
    }

    public final Wb z() {
        return this.w;
    }
}

package com.ironsource;

import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.ge, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3611ge extends AbstractC3907x0 {
    public static final a A = new a(null);
    private final C3597g0 u;
    private final boolean v;
    private final C3889w0 w;
    private final C3647ie x;
    private final String y;
    private final String z;

    /* JADX INFO: renamed from: com.ironsource.ge$a */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final C3611ge a(C3597g0 adProperties, C3456ab c3456ab, boolean z) {
            List<Ec> listEmptyList;
            Ue ueD;
            Intrinsics.checkNotNullParameter(adProperties, "adProperties");
            AbstractC3907x0.a aVar = AbstractC3907x0.s;
            S3 s3C = (c3456ab == null || (ueD = c3456ab.d()) == null) ? null : ueD.c();
            C3647ie c3647ieF = s3C != null ? s3C.f() : null;
            if (c3647ieF == null) {
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
            return new C3611ge(adProperties, z, new C3889w0(strF, arrayList, c3845taB), c3647ieF);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public C3611ge(C3597g0 adProperties, boolean z, C3889w0 adUnitCommonData, C3647ie configs) {
        Intrinsics.checkNotNullParameter(adProperties, "adProperties");
        Intrinsics.checkNotNullParameter(adUnitCommonData, "adUnitCommonData");
        Intrinsics.checkNotNullParameter(configs, "configs");
        String strF = adUnitCommonData.f();
        List<NetworkSettings> listD = adUnitCommonData.d();
        C3845ta c3845taE = adUnitCommonData.e();
        A2 a2K = configs.k();
        Intrinsics.checkNotNullExpressionValue(a2K, "getRewardedVideoAuctionSettings(...)");
        super(adProperties, z, strF, listD, c3845taE, a2K, configs.g(), configs.h(), configs.j(), configs.b(), configs.c(), new M0(M0.a.MANUAL, configs.k().j(), configs.k().b(), -1L), configs.l(), configs.f(), configs.o(), configs.n(), false, 65536, null);
        this.u = adProperties;
        this.v = z;
        this.w = adUnitCommonData;
        this.x = configs;
        this.y = IronSourceConstants.REWARDED_VIDEO_EVENT_TYPE;
        this.z = C3517bb.b;
    }

    public static /* synthetic */ C3611ge a(C3611ge c3611ge, C3597g0 c3597g0, boolean z, C3889w0 c3889w0, C3647ie c3647ie, int i, Object obj) {
        if ((i & 1) != 0) {
            c3597g0 = c3611ge.u;
        }
        if ((i & 2) != 0) {
            z = c3611ge.v;
        }
        if ((i & 4) != 0) {
            c3889w0 = c3611ge.w;
        }
        if ((i & 8) != 0) {
            c3647ie = c3611ge.x;
        }
        return c3611ge.a(c3597g0, z, c3889w0, c3647ie);
    }

    public final C3647ie A() {
        return this.x;
    }

    public final C3889w0 B() {
        return this.w;
    }

    public final C3647ie C() {
        return this.x;
    }

    public final C3611ge a(C3597g0 adProperties, boolean z, C3889w0 adUnitCommonData, C3647ie configs) {
        Intrinsics.checkNotNullParameter(adProperties, "adProperties");
        Intrinsics.checkNotNullParameter(adUnitCommonData, "adUnitCommonData");
        Intrinsics.checkNotNullParameter(configs, "configs");
        return new C3611ge(adProperties, z, adUnitCommonData, configs);
    }

    @Override // com.ironsource.AbstractC3907x0
    public C3597g0 b() {
        return this.u;
    }

    @Override // com.ironsource.AbstractC3907x0
    public JSONObject b(NetworkSettings providerSettings) {
        Intrinsics.checkNotNullParameter(providerSettings, "providerSettings");
        JSONObject rewardedVideoSettings = providerSettings.getRewardedVideoSettings();
        Intrinsics.checkNotNullExpressionValue(rewardedVideoSettings, "getRewardedVideoSettings(...)");
        return rewardedVideoSettings;
    }

    @Override // com.ironsource.AbstractC3907x0
    public String c() {
        return this.y;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3611ge)) {
            return false;
        }
        C3611ge c3611ge = (C3611ge) obj;
        return Intrinsics.areEqual(this.u, c3611ge.u) && this.v == c3611ge.v && Intrinsics.areEqual(this.w, c3611ge.w) && Intrinsics.areEqual(this.x, c3611ge.x);
    }

    public int hashCode() {
        return (((((this.u.hashCode() * 31) + Boolean.hashCode(this.v)) * 31) + this.w.hashCode()) * 31) + this.x.hashCode();
    }

    @Override // com.ironsource.AbstractC3907x0
    public String k() {
        return this.z;
    }

    public String toString() {
        return "RewardedAdUnitData(adProperties=" + this.u + ", isPublisherLoad=" + this.v + ", adUnitCommonData=" + this.w + ", configs=" + this.x + ")";
    }

    @Override // com.ironsource.AbstractC3907x0
    public boolean v() {
        return this.v;
    }

    public final C3597g0 x() {
        return this.u;
    }

    public final boolean y() {
        return this.v;
    }

    public final C3889w0 z() {
        return this.w;
    }
}

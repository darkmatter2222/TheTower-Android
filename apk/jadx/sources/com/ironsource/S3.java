package com.ironsource;

import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class S3 {
    private final C3647ie a;
    private final L9 b;
    private final C3509b3 c;
    private final Wb d;
    private final K1 e;
    private final C3504ag f;
    private final com.ironsource.mediationsdk.adquality.a g;

    public static final class a {
        private C3647ie a;
        private L9 b;
        private C3509b3 c;
        private Wb d;
        private K1 e;
        private C3504ag f;
        private com.ironsource.mediationsdk.adquality.a g;

        public a() {
            this(null, null, null, null, null, null, null, 127, null);
        }

        public a(C3647ie c3647ie, L9 l9, C3509b3 c3509b3, Wb wb, K1 k1, C3504ag c3504ag, com.ironsource.mediationsdk.adquality.a aVar) {
            this.a = c3647ie;
            this.b = l9;
            this.c = c3509b3;
            this.d = wb;
            this.e = k1;
            this.f = c3504ag;
            this.g = aVar;
        }

        public /* synthetic */ a(C3647ie c3647ie, L9 l9, C3509b3 c3509b3, Wb wb, K1 k1, C3504ag c3504ag, com.ironsource.mediationsdk.adquality.a aVar, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : c3647ie, (i & 2) != 0 ? null : l9, (i & 4) != 0 ? null : c3509b3, (i & 8) != 0 ? null : wb, (i & 16) != 0 ? null : k1, (i & 32) != 0 ? null : c3504ag, (i & 64) != 0 ? null : aVar);
        }

        public static /* synthetic */ a a(a aVar, C3647ie c3647ie, L9 l9, C3509b3 c3509b3, Wb wb, K1 k1, C3504ag c3504ag, com.ironsource.mediationsdk.adquality.a aVar2, int i, Object obj) {
            if ((i & 1) != 0) {
                c3647ie = aVar.a;
            }
            if ((i & 2) != 0) {
                l9 = aVar.b;
            }
            if ((i & 4) != 0) {
                c3509b3 = aVar.c;
            }
            if ((i & 8) != 0) {
                wb = aVar.d;
            }
            if ((i & 16) != 0) {
                k1 = aVar.e;
            }
            if ((i & 32) != 0) {
                c3504ag = aVar.f;
            }
            if ((i & 64) != 0) {
                aVar2 = aVar.g;
            }
            C3504ag c3504ag2 = c3504ag;
            com.ironsource.mediationsdk.adquality.a aVar3 = aVar2;
            K1 k2 = k1;
            C3509b3 c3509b4 = c3509b3;
            return aVar.a(c3647ie, l9, c3509b4, wb, k2, c3504ag2, aVar3);
        }

        public final a a(K1 k1) {
            this.e = k1;
            return this;
        }

        public final a a(L9 l9) {
            this.b = l9;
            return this;
        }

        public final a a(Wb wb) {
            this.d = wb;
            return this;
        }

        public final a a(C3509b3 c3509b3) {
            this.c = c3509b3;
            return this;
        }

        public final a a(C3647ie c3647ie) {
            this.a = c3647ie;
            return this;
        }

        public final a a(C3647ie c3647ie, L9 l9, C3509b3 c3509b3, Wb wb, K1 k1, C3504ag c3504ag, com.ironsource.mediationsdk.adquality.a aVar) {
            return new a(c3647ie, l9, c3509b3, wb, k1, c3504ag, aVar);
        }

        public final a a(com.ironsource.mediationsdk.adquality.a aVar) {
            this.g = aVar;
            return this;
        }

        public final S3 a() {
            return new S3(this.a, this.b, this.c, this.d, this.e, this.f, this.g, null);
        }

        public final void a(C3504ag c3504ag) {
            this.f = c3504ag;
        }

        public final a b(C3504ag c3504ag) {
            this.f = c3504ag;
            return this;
        }

        public final C3647ie b() {
            return this.a;
        }

        public final void b(K1 k1) {
            this.e = k1;
        }

        public final void b(L9 l9) {
            this.b = l9;
        }

        public final void b(Wb wb) {
            this.d = wb;
        }

        public final void b(C3509b3 c3509b3) {
            this.c = c3509b3;
        }

        public final void b(C3647ie c3647ie) {
            this.a = c3647ie;
        }

        public final void b(com.ironsource.mediationsdk.adquality.a aVar) {
            this.g = aVar;
        }

        public final L9 c() {
            return this.b;
        }

        public final C3509b3 d() {
            return this.c;
        }

        public final Wb e() {
            return this.d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.areEqual(this.a, aVar.a) && Intrinsics.areEqual(this.b, aVar.b) && Intrinsics.areEqual(this.c, aVar.c) && Intrinsics.areEqual(this.d, aVar.d) && Intrinsics.areEqual(this.e, aVar.e) && Intrinsics.areEqual(this.f, aVar.f) && Intrinsics.areEqual(this.g, aVar.g);
        }

        public final K1 f() {
            return this.e;
        }

        public final C3504ag g() {
            return this.f;
        }

        public final com.ironsource.mediationsdk.adquality.a h() {
            return this.g;
        }

        public int hashCode() {
            C3647ie c3647ie = this.a;
            int iHashCode = (c3647ie == null ? 0 : c3647ie.hashCode()) * 31;
            L9 l9 = this.b;
            int iHashCode2 = (iHashCode + (l9 == null ? 0 : l9.hashCode())) * 31;
            C3509b3 c3509b3 = this.c;
            int iHashCode3 = (iHashCode2 + (c3509b3 == null ? 0 : c3509b3.hashCode())) * 31;
            Wb wb = this.d;
            int iHashCode4 = (iHashCode3 + (wb == null ? 0 : wb.hashCode())) * 31;
            K1 k1 = this.e;
            int iHashCode5 = (iHashCode4 + (k1 == null ? 0 : k1.hashCode())) * 31;
            C3504ag c3504ag = this.f;
            int iHashCode6 = (iHashCode5 + (c3504ag == null ? 0 : c3504ag.hashCode())) * 31;
            com.ironsource.mediationsdk.adquality.a aVar = this.g;
            return iHashCode6 + (aVar != null ? aVar.hashCode() : 0);
        }

        public final com.ironsource.mediationsdk.adquality.a i() {
            return this.g;
        }

        public final K1 j() {
            return this.e;
        }

        public final C3509b3 k() {
            return this.c;
        }

        public final L9 l() {
            return this.b;
        }

        public final Wb m() {
            return this.d;
        }

        public final C3647ie n() {
            return this.a;
        }

        public final C3504ag o() {
            return this.f;
        }

        public String toString() {
            return "Builder(rewardedVideoConfigurations=" + this.a + ", interstitialConfigurations=" + this.b + ", bannerConfigurations=" + this.c + ", nativeAdConfigurations=" + this.d + ", applicationConfigurations=" + this.e + ", testSuiteSettings=" + this.f + ", adQualityConfigurations=" + this.g + ")";
        }
    }

    private S3(C3647ie c3647ie, L9 l9, C3509b3 c3509b3, Wb wb, K1 k1, C3504ag c3504ag, com.ironsource.mediationsdk.adquality.a aVar) {
        this.a = c3647ie;
        this.b = l9;
        this.c = c3509b3;
        this.d = wb;
        this.e = k1;
        this.f = c3504ag;
        this.g = aVar;
    }

    public /* synthetic */ S3(C3647ie c3647ie, L9 l9, C3509b3 c3509b3, Wb wb, K1 k1, C3504ag c3504ag, com.ironsource.mediationsdk.adquality.a aVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(c3647ie, l9, c3509b3, wb, k1, c3504ag, aVar);
    }

    public final com.ironsource.mediationsdk.adquality.a a() {
        return this.g;
    }

    public final K1 b() {
        return this.e;
    }

    public final C3509b3 c() {
        return this.c;
    }

    public final L9 d() {
        return this.b;
    }

    public final Wb e() {
        return this.d;
    }

    public final C3647ie f() {
        return this.a;
    }

    public final C3504ag g() {
        return this.f;
    }

    public String toString() {
        return "configurations(\n" + this.a + "\n" + this.b + "\n" + this.c + "\n" + this.d + ")";
    }
}

package com.ironsource.adqualitysdk.sdk.i;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.л, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractC0294 extends AbstractC1031 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Object f1495;

    public AbstractC0294(Object obj) {
        this.f1495 = obj;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        Object obj2 = this.f1495;
        Object obj3 = ((AbstractC0294) obj).f1495;
        if (obj2 != null) {
            return obj2.equals(obj3);
        }
        return obj3 == null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    public final int hashCode() {
        Object obj = this.f1495;
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "" + this.f1495;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    /* JADX INFO: renamed from: ﾒ */
    public final C0248 mo1873(C0983 c0983, C0116 c0116) {
        return new C0248(this.f1495);
    }
}

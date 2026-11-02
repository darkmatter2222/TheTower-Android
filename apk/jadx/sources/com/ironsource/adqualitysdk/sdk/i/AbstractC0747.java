package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᵋ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractC0747 {
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass();
    }

    public int hashCode() {
        return getClass().hashCode();
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0248 m2261(C0983 c0983, C0116 c0116) {
        try {
            c0983.f3492.add(this);
            C0248 c0248Mo1874 = mo1874(c0983, c0116);
            c0983.m2383(this);
            return c0248Mo1874;
        } catch (AbstractC0760 e) {
            throw e;
        } catch (Throwable th) {
            throw new C0548(c0116, c0983, StringFog.decrypt("3DAygKvbh3z8ITWbsJWFJOo2IZu8lodq7WI=\n", "mUJA79n74gQ=\n") + this + "\n" + th, th);
        }
    }

    /* JADX INFO: renamed from: ﾒ */
    public int mo1891() {
        return 1;
    }

    /* JADX INFO: renamed from: ﾒ */
    public int mo1892(C0983 c0983) {
        return 1;
    }

    /* JADX INFO: renamed from: ﾒ */
    public abstract C0248 mo1874(C0983 c0983, C0116 c0116);
}

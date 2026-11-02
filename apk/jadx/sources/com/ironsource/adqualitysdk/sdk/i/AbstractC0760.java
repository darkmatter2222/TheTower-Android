package com.ironsource.adqualitysdk.sdk.i;

import android.util.Log;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᵘ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractC0760 extends RuntimeException {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final Throwable f2817;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final AbstractC0324 f2818;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String f2819;

    public AbstractC0760(String str, AbstractC0324 abstractC0324, Throwable th) {
        this.f2819 = str;
        this.f2818 = abstractC0324;
        this.f2817 = th;
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return mo1870() + StringFog.decrypt("I4A=\n", "GaA+KRAbn/E=\n") + this.f2819 + '\n' + this.f2818 + (this.f2817 != null ? StringFog.decrypt("80EzyFQIVhCbe2id\n", "+QJSvSdtMjA=\n") + Log.getStackTraceString(this.f2817) : "");
    }

    /* JADX INFO: renamed from: ﾒ */
    public abstract String mo1870();

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m2264(String str) {
        AbstractC0991.m2386(str, this.f2819, null, this);
    }
}

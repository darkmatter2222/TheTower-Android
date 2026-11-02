package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import com.ironsource.adqualitysdk.sdk.IronSourceAdQuality;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ก, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0470 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public final /* synthetic */ C0392 f2130;

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC0276 f2131;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final /* synthetic */ String f2132;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final /* synthetic */ C0543 f2133;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ boolean f2134;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ String f2135;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC0316 f2136;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C1005 f2137;

    public C0470(C0392 c0392, C1005 c1005, AbstractC0316 abstractC0316, String str, boolean z, C0543 c0543, String str2, AbstractC0276 abstractC0276, Context context) {
        this.f2130 = c0392;
        this.f2137 = c1005;
        this.f2136 = abstractC0316;
        this.f2135 = str;
        this.f2134 = z;
        this.f2133 = c0543;
        this.f2132 = str2;
        this.f2131 = abstractC0276;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        C0303 c0303;
        boolean zMo1918;
        String str;
        String str2;
        C0543 c0543;
        C0543 c0544;
        if (this.f2130.f1908.get() || this.f2137 == null || C0392.m2068(this.f2130).contains(this.f2136) || (c0303 = this.f2130.f1899) == null) {
            return;
        }
        AbstractC0340.m2053(new C0332(c0303, this.f2135, this.f2137, this.f2134));
        C1005 c1005 = this.f2137;
        synchronized (c1005) {
            zMo1918 = c1005.f3542.mo1918();
        }
        if (!zMo1918 && (c0544 = this.f2133) != null) {
            AbstractC0340.m2057(c0544);
        }
        C0392 c0392 = this.f2130;
        C1005 c1006 = this.f2137;
        c0392.getClass();
        String strM2395 = c1006.m2395();
        if (strM2395 != null && AbstractC0679.m2217(IronSourceAdQuality.getSDKVersion(), strM2395) < 0) {
            AbstractC0340.m2053(new C0508(this));
            return;
        }
        String strDecrypt = StringFog.decrypt("Cg5eq9u3J+I7LFGr37M2/w==\n", "SWEwxb7UU40=\n");
        StringBuilder sbAppend = new StringBuilder().append(StringFog.decrypt("jGkscaNO6kC/biti6g==\n", "xQdFBcovhik=\n")).append(this.f2132).append(StringFog.decrypt("B2MwYPA6XJ5Efjtj+i1N0VUx\n", "JxFVDZ9OOb4=\n"));
        if (this.f2134) {
            str = "QHNyBHaak4w=\n";
            str2 = "aBATZx7/96U=\n";
        } else {
            str = "MKsVZgv5W4gx\n";
            str2 = "GM1wEmiRPuw=\n";
        }
        String string = sbAppend.append(StringFog.decrypt(str, str2)).toString();
        int i = AbstractC0991.f3513;
        String strM2002 = AbstractC0270.m2002("5Iyi+A==\n", "t97u2HRbwRc=\n", new StringBuilder(), strDecrypt);
        AbstractC0250.m2000(strM2002, strM2002, string, false);
        AbstractC0276 abstractC0276 = this.f2131;
        HashMap mapMo1848 = abstractC0276.mo1848();
        abstractC0276.f1386 = mapMo1848;
        mapMo1848.put(AbstractC0276.f1382, new C0287(abstractC0276));
        abstractC0276.f1386.put(AbstractC0276.f1381, new C0281(abstractC0276));
        abstractC0276.f1386.put(AbstractC0276.f1380, new C0280(abstractC0276));
        if (this.f2137.m2394() && (c0543 = this.f2133) != null) {
            AbstractC0340.m2057(c0543);
        }
        if (C0272.m2008().m2017()) {
            return;
        }
        C0392 c0393 = this.f2130;
        C1005 c1007 = this.f2137;
        String str3 = this.f2132;
        if (!c0393.f1908.get()) {
            String str4 = c1007.f3545.f2382;
            C0303 c0304 = c0393.f1899;
            if (c0304 != null) {
                AbstractC0340.m2053(new C0333(c0304, str4, EnumC0367.f1679));
                AbstractC0340.m2053(new C0553(c0393, c1007, str4, str3));
            }
        }
        if (this.f2130.m2084(this.f2137.f3545.f2382)) {
            return;
        }
        C0392.m2068(this.f2130).add(this.f2136);
    }
}

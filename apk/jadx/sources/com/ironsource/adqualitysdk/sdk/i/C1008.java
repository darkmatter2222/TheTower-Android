package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﺛ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1008 implements InterfaceC0517 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0116 f3550;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ ArrayList f3551;

    public C1008(C0116 c0116, ArrayList arrayList) {
        this.f3550 = c0116;
        this.f3551 = arrayList;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0517
    /* JADX INFO: renamed from: ﾇ */
    public final void mo2113(Activity activity) {
        String strDecrypt = StringFog.decrypt("TOEdtWUGdslG/C+1dBZh\n", "I49b2gZzBZs=\n");
        if (C0116.m1901(this.f3550, activity, this.f3551)) {
            String strM2002 = AbstractC0270.m2002("CkZw53b1x54HX3PVfPjXn2U=\n", "SzYAoRmWsu0=\n", new StringBuilder(), strDecrypt);
            C0116.m1900(this.f3550, strM2002, true, false, Collections.singletonList(activity));
            AbstractC0340.m2054(new C1013(this, strM2002, activity));
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0517
    /* JADX INFO: renamed from: ﾒ */
    public final void mo2114(Activity activity) {
        String strDecrypt = StringFog.decrypt("bmEdXAHr0PlufC8=\n", "AQ9bM2Keo7U=\n");
        if (C0116.m1901(this.f3550, activity, this.f3551)) {
            String strM2002 = AbstractC0270.m2002("CkZw53b1x54HX3PVfPjXn2U=\n", "SzYAoRmWsu0=\n", new StringBuilder(), strDecrypt);
            C0116.m1900(this.f3550, strM2002, true, false, Collections.singletonList(activity));
            AbstractC0340.m2054(new C1013(this, strM2002, activity));
        }
    }
}

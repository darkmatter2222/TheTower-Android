package com.ironsource.adqualitysdk.sdk.i;

import android.os.SystemClock;
import android.view.MotionEvent;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.Calendar;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ἳ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0821 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0820 f3074;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ MotionEvent f3075;

    public C0821(C0820 c0820, MotionEvent motionEvent) {
        this.f3074 = c0820;
        this.f3075 = motionEvent;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        try {
            int iRound = Math.round(this.f3075.getRawX());
            int iRound2 = Math.round(this.f3075.getRawY());
            String str = AbstractC0145.f851;
            if (iRound < 0 || iRound2 < 0 || iRound > AbstractC1030.m2416(AbstractC0145.m1926(), false).optInt(AbstractC0145.f844) || iRound2 > AbstractC1030.m2416(AbstractC0145.m1926(), false).optInt(AbstractC0145.f843)) {
                AbstractC0250.m1990(StringFog.decrypt("k7z2RDu968Chs/FqM6LLyrq163U/o8nGt7U=\n", "1NCZJlrRv68=\n"), StringFog.decrypt("PtBU9xw6LvMP0VW0Bn8o4APJRPBUdT7xStBHtBZ1PusOzAH3G3U54QPRQOARaXGlEQ==\n", "ar8hlHQaS4U=\n") + iRound + StringFog.decrypt("9pc=\n", "2rfedQkiiw0=\n") + iRound2 + StringFog.decrypt("aA==\n", "FbavRLfPlo0=\n"));
                return;
            }
            String str2 = AbstractC0129.f814;
            C0231 c0231 = new C0231(iRound, iRound2, Calendar.getInstance().getTimeInMillis(), SystemClock.elapsedRealtime());
            C0820 c0820 = this.f3074;
            synchronized (c0820) {
                c0820.f3071 = c0231;
            }
        } catch (Throwable th) {
            AbstractC1071.m2435(StringFog.decrypt("n+nQhbbNRHit5tervtJkcrbgzbSy02Z+u+A=\n", "2IW/59ehEBc=\n"), StringFog.decrypt("S79vVEZT5+AuonNvWwbt5g==\n", "Ds0dOzRzjo4=\n"), th, false);
        }
    }
}

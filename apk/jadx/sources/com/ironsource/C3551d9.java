package com.ironsource;

import com.ironsource.mediationsdk.logger.IronLog;
import com.unity3d.mediation.LevelPlayAdInfo;
import com.unity3d.mediation.impression.LevelPlayImpressionData;
import com.unity3d.mediation.impression.LevelPlayImpressionDataListener;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.d9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3551d9 {
    private static final a c = new a(null);

    @Deprecated
    public static final String d = "pub";

    @Deprecated
    public static final String e = "sdk";
    private final C3758p0 a;
    private LevelPlayImpressionDataListener b;

    /* JADX INFO: renamed from: com.ironsource.d9$a */
    private static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public C3551d9(C3758p0 adTools) {
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        this.a = adTools;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3551d9 c3551d9, LevelPlayImpressionData levelPlayImpressionData) {
        LevelPlayImpressionDataListener levelPlayImpressionDataListener = c3551d9.b;
        if (levelPlayImpressionDataListener != null) {
            levelPlayImpressionDataListener.onImpressionSuccess(levelPlayImpressionData);
        }
    }

    private final void a(LevelPlayImpressionDataListener levelPlayImpressionDataListener, String str) {
        boolean z = this.b != null;
        this.b = levelPlayImpressionDataListener;
        C3778pg c3778pgH = this.a.f().h();
        if (levelPlayImpressionDataListener == null) {
            c3778pgH.a(str, z);
        } else {
            c3778pgH.a(z);
        }
    }

    public final LevelPlayImpressionDataListener a() {
        return this.b;
    }

    public final void a(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        if (this.b == null || adInfo.getAuctionId().length() == 0) {
            return;
        }
        final LevelPlayImpressionData levelPlayImpressionData = new LevelPlayImpressionData(adInfo.impressionData$mediationsdk_release());
        IronLog ironLog = IronLog.CALLBACK;
        C3758p0 c3758p0 = this.a;
        LevelPlayImpressionDataListener levelPlayImpressionDataListener = this.b;
        ironLog.verbose(C3758p0.a(c3758p0, "onImpressionSuccess " + (levelPlayImpressionDataListener != null ? levelPlayImpressionDataListener.getClass().getSimpleName() : null), (String) null, 2, (Object) null));
        this.a.b(new Runnable() { // from class: com.ironsource.d9$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3551d9.a(this.f$0, levelPlayImpressionData);
            }
        });
        this.a.f().h().a(levelPlayImpressionData);
    }

    public final void a(LevelPlayImpressionDataListener levelPlayImpressionDataListener) {
        a(levelPlayImpressionDataListener, d);
    }

    public final void b() {
        a((LevelPlayImpressionDataListener) null, "sdk");
    }
}

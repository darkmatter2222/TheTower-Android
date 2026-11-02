package com.ironsource;

import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.logger.IronLog;
import com.unity3d.mediation.LevelPlay;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p005kotlin.ExceptionsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class Ad implements Bd {
    private final LevelPlay.AdFormat a;

    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[LevelPlay.AdFormat.values().length];
            try {
                iArr[LevelPlay.AdFormat.INTERSTITIAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LevelPlay.AdFormat.REWARDED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public Ad(LevelPlay.AdFormat adFormat) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        this.a = adFormat;
    }

    private final AbstractC3907x0 a(C3597g0 c3597g0, C3456ab c3456ab) {
        try {
            int i = a.a[this.a.ordinal()];
            if (i == 1) {
                return J9.A.a(c3597g0, c3456ab, false);
            }
            if (i == 2) {
                return C3611ge.A.a(c3597g0, c3456ab, false);
            }
            throw new IllegalArgumentException("Unsupported ad format for preload: " + this.a);
        } catch (Exception e) {
            IronLog.INTERNAL.error("Failed to create AdUnitData for ad format " + this.a + ": " + e.getMessage() + "\n" + ExceptionsKt.stackTraceToString(e));
            return null;
        }
    }

    private final C3938yd a(Kd.c cVar, int i, C3456ab c3456ab) {
        String strC = cVar.c();
        if (strC == null) {
            IronLog.INTERNAL.warning("invalid adUnitId");
            return null;
        }
        List<String> listD = cVar.d();
        if (listD == null) {
            IronLog.INTERNAL.warning("invalid instances");
            return null;
        }
        C3597g0 c3597g0 = new C3597g0(com.unity3d.mediation.a.a(this.a), C3950z7.a.a(), strC, null, null, null, 56, null);
        AbstractC3907x0 abstractC3907x0A = a(c3597g0, c3456ab);
        if (abstractC3907x0A == null) {
            IronLog.INTERNAL.warning("adunit data is null");
            return null;
        }
        IronSource.a aVarA = com.unity3d.mediation.a.a(this.a);
        E0.b bVar = E0.b.MEDIATION;
        T0 t0 = new T0(new C3758p0(aVarA, bVar), abstractC3907x0A, bVar);
        t0.f().a(new C0(t0, c3597g0, null, 4, null));
        return new C3938yd(strC, listD, i, new Ed(t0, abstractC3907x0A, null, 4, null), t0);
    }

    @Override // com.ironsource.Bd
    public List<InterfaceC3956zd> a(List<Kd.c> config, int i, C3456ab levelPlayConfig) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(levelPlayConfig, "levelPlayConfig");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = config.iterator();
        while (it.hasNext()) {
            C3938yd c3938ydA = a((Kd.c) it.next(), i, levelPlayConfig);
            if (c3938ydA != null) {
                arrayList.add(c3938ydA);
            }
        }
        return arrayList;
    }
}

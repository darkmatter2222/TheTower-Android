package com.ironsource;

import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import com.unity3d.ironsourceads.IronSourceAds;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;
import p005kotlin.NoWhenBranchMatchedException;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.r9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3806r9 {

    /* JADX INFO: renamed from: com.ironsource.r9$a */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[IronSourceAds.AdFormat.values().length];
            try {
                iArr[IronSourceAds.AdFormat.BANNER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[IronSourceAds.AdFormat.INTERSTITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[IronSourceAds.AdFormat.REWARDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public final IronSourceError a(C3829se error) {
        Intrinsics.checkNotNullParameter(error, "error");
        if (error.c() == 2070 || error.c() == 2110) {
            return C3948z5.a.b();
        }
        if (error.c() == 2080 || error.c() == 2100) {
            return C3948z5.a.c();
        }
        return error.c() == 2090 ? C3948z5.a.a() : new IronSourceError(510, error.d());
    }

    public final void a(long j, long j2, long j3, long j4, long j5) {
        JSONObject jSONObjectB = IronSourceUtils.b(true);
        try {
            jSONObjectB.put(IronSourceConstants.EVENTS_EXT1, "parsingDurationMs=" + j + ";javaHeapKb=" + j2 + ";nativeHeapKb=" + j3 + ";sharedOtherKb=" + j4 + ";initResponseJsonSizeKb=" + j5);
        } catch (Exception e) {
            C3801r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
        Pb.w.d().q().a(new C5(D5.TROUBLESHOOTING_INIT_SUCCESS, jSONObjectB));
    }

    public final void a(long j, Ue.a responseOrigin) {
        Intrinsics.checkNotNullParameter(responseOrigin, "responseOrigin");
        JSONObject jSONObjectB = IronSourceUtils.b(true);
        try {
            jSONObjectB.put("isMultipleAdObjects", 1);
            jSONObjectB.put("duration", j);
            jSONObjectB.put(IronSourceConstants.EVENTS_EXT1, responseOrigin.b());
        } catch (Exception e) {
            C3801r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
        Pb.w.d().q().a(new C5(D5.SDK_INIT_SUCCESS, jSONObjectB));
    }

    public final void a(C3829se error, long j) {
        Intrinsics.checkNotNullParameter(error, "error");
        JSONObject jSONObjectB = IronSourceUtils.b(true);
        try {
            jSONObjectB.put("errorCode", error.c());
            jSONObjectB.put("reason", error.d());
            jSONObjectB.put("duration", j);
            jSONObjectB.put("isMultipleAdObjects", 1);
        } catch (Exception e) {
            C3801r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
        Pb.w.d().q().a(new C5(D5.SDK_INIT_FAILED, jSONObjectB));
    }

    public final void a(Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        V7.a(V7.a, runnable, 0L, 2, (Object) null);
    }

    public final IronSource.a[] a(List<? extends IronSourceAds.AdFormat> adFormats) {
        Intrinsics.checkNotNullParameter(adFormats, "adFormats");
        ArrayList arrayList = new ArrayList();
        Iterator<? extends IronSourceAds.AdFormat> it = adFormats.iterator();
        while (it.hasNext()) {
            int i = a.a[it.next().ordinal()];
            if (i == 1) {
                arrayList.add(IronSource.a.BANNER);
            } else if (i == 2) {
                arrayList.add(IronSource.a.INTERSTITIAL);
            } else {
                if (i != 3) {
                    throw new NoWhenBranchMatchedException();
                }
                arrayList.add(IronSource.a.REWARDED_VIDEO);
            }
        }
        return (IronSource.a[]) arrayList.toArray(new IronSource.a[0]);
    }

    public final C3829se b(C3829se error) {
        Intrinsics.checkNotNullParameter(error, "error");
        return error.c() == 2080 ? new C3829se(error.c(), "serverResponseIsNotValid") : error;
    }

    public final void b(Runnable callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        V7.a.a(callback);
    }
}

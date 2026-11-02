package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import p005kotlin.coroutines.Continuation;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class sc implements ai1 {
    public final pc a;
    public final BaseRequest b;

    public sc(pc adUnitStatsTracker, BaseRequest baseRequest) {
        Intrinsics.checkNotNullParameter(adUnitStatsTracker, "adUnitStatsTracker");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        this.a = adUnitStatsTracker;
        this.b = baseRequest;
    }

    @Override // kotlin.ai1
    public final Object o(Continuation continuation) {
        pc pcVar = this.a;
        String adUnitId = this.b.getAdUnitId();
        if (adUnitId != null) {
            synchronized (pcVar.a) {
                Integer num = (Integer) pcVar.b.get(adUnitId);
                if (num == null) {
                    num = 0;
                }
                Intrinsics.checkNotNull(num);
                pcVar.b.put(adUnitId, Integer.valueOf(num.intValue() + 1));
                p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
            }
        } else {
            pcVar.getClass();
        }
        return p005kotlin.Unit.INSTANCE;
    }
}

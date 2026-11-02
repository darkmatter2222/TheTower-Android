package kotlin;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.AdapterVersionData;
import java.util.LinkedHashMap;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class kf {
    public static void a(LinkedHashMap adapterStatusMap, String adapterName, AdapterVersionData adapterVersionData, ke adapterStatus, long j) {
        Intrinsics.checkNotNullParameter(adapterStatusMap, "adapterStatusMap");
        Intrinsics.checkNotNullParameter(adapterName, "adapterName");
        Intrinsics.checkNotNullParameter(adapterStatus, "adapterStatus");
        Duration.Companion companion = Duration.INSTANCE;
        adapterStatusMap.put(adapterName, new yd(adapterStatus, adapterVersionData, DurationKt.toDuration(j, DurationUnit.MILLISECONDS)));
    }
}

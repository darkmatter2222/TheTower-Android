package com.ironsource;

import com.ironsource.mediationsdk.model.NetworkSettings;
import java.util.HashMap;
import java.util.List;
import p005kotlin.enums.EnumEntries;
import p005kotlin.enums.EnumEntriesKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.r0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3797r0 {
    private final HashMap<String, Q0> a = new HashMap<>();

    /* JADX INFO: renamed from: com.ironsource.r0$a */
    public enum a {
        DidntAttemptToLoad,
        FailedToLoad,
        LoadedSuccessfully,
        FailedToShow,
        ShowedSuccessfully,
        NotPartOfWaterfall;

        private static final /* synthetic */ EnumEntries h = EnumEntriesKt.enumEntries(a());

        public static EnumEntries<a> b() {
            return h;
        }
    }

    public final Q0 a(String adUnitId, List<? extends NetworkSettings> providers, int i) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(providers, "providers");
        Q0 q0 = this.a.get(adUnitId);
        if (q0 != null) {
            return q0;
        }
        Q0 q1 = new Q0(providers, i);
        this.a.put(adUnitId, q1);
        return q1;
    }
}

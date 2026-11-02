package kotlin;

import kotlinx.coroutines.Job;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class yt2 {
    public final xt2 a;
    public final long b;
    public Job c;

    public yt2(xt2 preloadedAd, long j) {
        Intrinsics.checkNotNullParameter(preloadedAd, "preloadedAd");
        this.a = preloadedAd;
        this.b = j;
    }
}

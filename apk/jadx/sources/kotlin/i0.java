package kotlin;

import kotlinx.coroutines.Job;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class i0 {
    public final h0 a;
    public final Job b;

    public i0(h0 delegate, Job cleanupJob) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(cleanupJob, "cleanupJob");
        this.a = delegate;
        this.b = cleanupJob;
    }
}

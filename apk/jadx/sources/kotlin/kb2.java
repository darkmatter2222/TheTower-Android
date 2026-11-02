package kotlin;

import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes.dex */
public final class kb2 implements xu2 {
    @Override // kotlin.xu2
    public final ListenableFuture a() {
        return Futures.immediateFuture((pr0) pr0.z().a(ul3.STATUS_NO_UPDATE).b());
    }
}

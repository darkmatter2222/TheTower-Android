package kotlin;

import java.util.concurrent.CancellationException;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class i21 extends CancellationException implements v24 {
    public final TimeoutCancellationException a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i21(TimeoutCancellationException timeoutException) {
        super(timeoutException.getMessage());
        Intrinsics.checkNotNullParameter(timeoutException, "timeoutException");
        this.a = timeoutException;
    }

    @Override // kotlin.v24
    public final Throwable a() {
        return this.a;
    }
}

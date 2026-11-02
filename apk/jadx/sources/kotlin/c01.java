package kotlin;

import com.google.common.base.Splitter;
import kotlinx.coroutines.CoroutineExceptionHandler;
import p005kotlin.coroutines.AbstractCoroutineContextElement;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class c01 extends AbstractCoroutineContextElement implements CoroutineExceptionHandler {
    public final ur3 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c01(ur3 traceLogger) {
        super(CoroutineExceptionHandler.INSTANCE);
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        this.a = traceLogger;
    }

    @Override // kotlinx.coroutines.CoroutineExceptionHandler
    public final void handleException(CoroutineContext context, Throwable exception) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(exception, "exception");
        Splitter splitter = f01.a;
        f01.c("Uncaught exception on context " + context + ": " + exception, null);
        exception.printStackTrace();
        try {
            ((as3) this.a).b(exception);
        } catch (Throwable th) {
            Splitter splitter2 = f01.a;
            f01.c("Failed to report untrapped exception: " + th, null);
        }
    }
}

package kotlinx.coroutines;

import com.google.android.gms.ads.RequestConfiguration;
import kotlinx.coroutines.internal.StackTraceRecoveryKt;
import p005kotlin.Metadata;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.CoroutineStackFrame;

/* JADX INFO: compiled from: CompletionState.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001f\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u0000¢\u0006\u0002\u0010\u0004\u001a+\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0006H\u0000¢\u0006\u0002\u0010\u0007\u001a1\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0003\"\u0004\b\u0000\u0010\u00022\b\u0010\t\u001a\u0004\u0018\u00010\u00012\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00020\u000bH\u0000¢\u0006\u0002\u0010\f¨\u0006\r"}, d2 = {"toState", "", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lkotlin/Result;", "(Ljava/lang/Object;)Ljava/lang/Object;", "caller", "Lkotlinx/coroutines/CancellableContinuation;", "(Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)Ljava/lang/Object;", "recoverResult", "state", "uCont", "Lkotlin/coroutines/Continuation;", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class CompletionStateKt {
    public static final <T> Object recoverResult(Object obj, Continuation<? super T> continuation) {
        if (!(obj instanceof CompletedExceptionally)) {
            Result.Companion companion = Result.INSTANCE;
            return Result.m3022constructorimpl(obj);
        }
        Result.Companion companion2 = Result.INSTANCE;
        Throwable thRecoverFromStackFrame = ((CompletedExceptionally) obj).cause;
        if (DebugKt.getRECOVER_STACK_TRACES() && (continuation instanceof CoroutineStackFrame)) {
            thRecoverFromStackFrame = StackTraceRecoveryKt.recoverFromStackFrame(thRecoverFromStackFrame, (CoroutineStackFrame) continuation);
        }
        return Result.m3022constructorimpl(ResultKt.createFailure(thRecoverFromStackFrame));
    }

    public static final <T> Object toState(Object obj) {
        Throwable thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(obj);
        return thM3025exceptionOrNullimpl == null ? obj : new CompletedExceptionally(thM3025exceptionOrNullimpl, false, 2, null);
    }

    public static final <T> Object toState(Object obj, CancellableContinuation<?> cancellableContinuation) {
        Throwable thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(obj);
        if (thM3025exceptionOrNullimpl == null) {
            return obj;
        }
        if (DebugKt.getRECOVER_STACK_TRACES()) {
            CancellableContinuation<?> cancellableContinuation2 = cancellableContinuation;
            if (cancellableContinuation2 instanceof CoroutineStackFrame) {
                thM3025exceptionOrNullimpl = StackTraceRecoveryKt.recoverFromStackFrame(thM3025exceptionOrNullimpl, (CoroutineStackFrame) cancellableContinuation2);
            }
        }
        return new CompletedExceptionally(thM3025exceptionOrNullimpl, false, 2, null);
    }
}

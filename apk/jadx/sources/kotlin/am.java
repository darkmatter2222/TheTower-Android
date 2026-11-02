package kotlin;

import android.os.SystemClock;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class am implements OnCompleteListener {
    public final /* synthetic */ bm a;
    public final /* synthetic */ CancellableContinuation b;

    public am(bm bmVar, CancellableContinuationImpl cancellableContinuationImpl) {
        this.a = bmVar;
        this.b = cancellableContinuationImpl;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(Task appSetIdInfoTask) {
        Intrinsics.checkNotNullParameter(appSetIdInfoTask, "appSetIdInfoTask");
        if (appSetIdInfoTask.isSuccessful()) {
            AppSetIdInfo appSetIdInfo = (AppSetIdInfo) appSetIdInfoTask.getResult();
            Duration.Companion companion = Duration.INSTANCE;
            this.a.c.getClass();
            fu fuVar = new fu(appSetIdInfo, DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS));
            CancellableContinuation cancellableContinuation = this.b;
            p005kotlin.Result.Companion companion2 = p005kotlin.Result.INSTANCE;
            cancellableContinuation.resumeWith(p005kotlin.Result.m3022constructorimpl(new q01(fuVar)));
            return;
        }
        if (appSetIdInfoTask.isCanceled()) {
            ((as3) this.a.b).a("AppSet Id task was cancelled", (Throwable) new CancellationException("AppSet Id task was cancelled"));
            CancellableContinuation cancellableContinuation2 = this.b;
            p005kotlin.Result.Companion companion3 = p005kotlin.Result.INSTANCE;
            cancellableContinuation2.resumeWith(p005kotlin.Result.m3022constructorimpl(new m01("Gms Task for getting AppSetId was cancelled", kk1.INTERNAL_ERROR)));
            return;
        }
        Exception exception = appSetIdInfoTask.getException();
        if (exception == null) {
            exception = new Exception("AppSet Id task wasn't successful or cancelled, but had no exception.");
        }
        ((as3) this.a.b).a("Task failed while getting AppSet Id", (Throwable) exception);
        CancellableContinuation cancellableContinuation3 = this.b;
        p005kotlin.Result.Companion companion4 = p005kotlin.Result.INSTANCE;
        cancellableContinuation3.resumeWith(p005kotlin.Result.m3022constructorimpl(new j01(exception, null, null, 6)));
    }
}

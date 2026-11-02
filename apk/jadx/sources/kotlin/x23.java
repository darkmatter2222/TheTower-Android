package kotlin;

import java.util.concurrent.CancellationException;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.FlowCollector;
import p005kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes.dex */
public final class x23 implements FlowCollector {
    public final /* synthetic */ Job a;

    public x23(Job job) {
        this.a = job;
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object emit(Object obj, Continuation continuation) {
        this.a.cancel((CancellationException) new dz2(new CancellationException("Ad request cancelled by publisher action.")));
        return p005kotlin.Unit.INSTANCE;
    }
}

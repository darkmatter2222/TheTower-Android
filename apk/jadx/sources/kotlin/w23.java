package kotlin;

import java.util.concurrent.CancellationException;
import kotlinx.coroutines.Job;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class w23 extends Lambda implements Function1 {
    public final /* synthetic */ Job a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w23(Job job) {
        super(1);
        this.a = job;
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Job.DefaultImpls.cancel$default(this.a, (CancellationException) null, 1, (Object) null);
        return p005kotlin.Unit.INSTANCE;
    }
}

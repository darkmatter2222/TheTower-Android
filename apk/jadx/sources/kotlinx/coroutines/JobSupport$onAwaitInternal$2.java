package kotlinx.coroutines;

import p005kotlin.Metadata;
import p005kotlin.jvm.functions.Function3;
import p005kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: compiled from: JobSupport.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
/* synthetic */ class JobSupport$onAwaitInternal$2 extends FunctionReferenceImpl implements Function3<JobSupport, Object, Object, Object> {
    public static final JobSupport$onAwaitInternal$2 INSTANCE = new JobSupport$onAwaitInternal$2();

    JobSupport$onAwaitInternal$2() {
        super(3, JobSupport.class, "onAwaitInternalProcessResFunc", "onAwaitInternalProcessResFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", 0);
    }

    @Override // p005kotlin.jvm.functions.Function3
    public final Object invoke(JobSupport jobSupport, Object obj, Object obj2) {
        return jobSupport.onAwaitInternalProcessResFunc(obj, obj2);
    }
}

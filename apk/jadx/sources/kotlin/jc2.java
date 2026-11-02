package kotlin;

import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.WorkManager;
import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class jc2 extends ContinuationImpl {
    public lc2 a;
    public Mutex b;
    public WorkManager c;
    public Class d;
    public Constraints e;
    public String f;
    public Data.Builder g;
    public /* synthetic */ Object h;
    public final /* synthetic */ lc2 i;
    public int j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jc2(lc2 lc2Var, Continuation continuation) {
        super(continuation);
        this.i = lc2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.h = obj;
        this.j |= Integer.MIN_VALUE;
        return lc2.a(this.i, this);
    }
}

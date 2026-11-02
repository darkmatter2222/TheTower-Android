package kotlin;

import android.view.View;
import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class qe2 extends ContinuationImpl {
    public Object a;
    public View b;
    public tx0 c;
    public String d;
    public Mutex e;
    public /* synthetic */ Object f;
    public final /* synthetic */ ze2 g;
    public int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qe2(ze2 ze2Var, Continuation continuation) {
        super(continuation);
        this.g = ze2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.h |= Integer.MIN_VALUE;
        return ze2.a(this.g, null, null, null, this);
    }
}

package kotlin;

import android.net.Uri;
import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
public final class qr1 extends ContinuationImpl {
    public yr1 a;
    public r31 b;
    public Uri c;
    public String d;
    public String e;
    public Ref.ObjectRef f;
    public Mutex g;
    public /* synthetic */ Object h;
    public final /* synthetic */ yr1 i;
    public int j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qr1(yr1 yr1Var, Continuation continuation) {
        super(continuation);
        this.i = yr1Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.h = obj;
        this.j |= Integer.MIN_VALUE;
        return yr1.a(this.i, (r31) null, (Uri) null, this);
    }
}

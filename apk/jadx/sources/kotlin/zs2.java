package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.PreloadCallback;
import com.google.android.libraries.ads.mobile.sdk.common.PreloadConfiguration;
import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class zs2 extends ContinuationImpl {
    public pt2 a;
    public String b;
    public PreloadConfiguration c;
    public PreloadCallback d;
    public Mutex e;
    public pt2 f;
    public String g;
    public /* synthetic */ Object h;
    public final /* synthetic */ pt2 i;
    public int j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zs2(pt2 pt2Var, Continuation continuation) {
        super(continuation);
        this.i = pt2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.h = obj;
        this.j |= Integer.MIN_VALUE;
        return pt2.c(this.i, null, null, null, this);
    }
}

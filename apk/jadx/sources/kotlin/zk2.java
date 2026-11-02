package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import java.io.Serializable;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class zk2 extends SuspendLambda implements Function2 {
    public Serializable a;
    public p005kotlin.Pair b;
    public int c;
    public final /* synthetic */ al2 d;
    public final /* synthetic */ j53 e;
    public final /* synthetic */ om2 f;
    public final /* synthetic */ AdRequest g;
    public final /* synthetic */ int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zk2(al2 al2Var, j53 j53Var, om2 om2Var, AdRequest adRequest, int i, Continuation continuation) {
        super(2, continuation);
        this.d = al2Var;
        this.e = j53Var;
        this.f = om2Var;
        this.g = adRequest;
        this.h = i;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zk2(this.d, this.e, this.f, this.g, this.h, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((zk2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:80:0x0143  */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x015a, code lost:
    
        if (kotlinx.coroutines.BuildersKt.withContext(r2, r3, r16) == r7) goto L85;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [java.io.Serializable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v34 */
    /* JADX WARN: Type inference failed for: r0v35 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v9 */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r17) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 427
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.zk2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

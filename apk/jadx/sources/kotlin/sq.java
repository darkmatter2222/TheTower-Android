package kotlin;

import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class sq extends SuspendLambda implements Function2 {
    public Object a;
    public int b;
    public final /* synthetic */ hr c;
    public final /* synthetic */ CoroutineScope d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sq(hr hrVar, CoroutineScope coroutineScope, Continuation continuation) {
        super(2, continuation);
        this.c = hrVar;
        this.d = coroutineScope;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new sq(this.c, this.d, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new sq(this.c, this.d, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:55:0x0123  */
    /* JADX WARN: Code duplicated, block: B:82:0x01fe A[Catch: all -> 0x026b, TryCatch #5 {all -> 0x026b, blocks: (B:91:0x0233, B:85:0x021c, B:87:0x0220, B:50:0x0107, B:52:0x0112, B:56:0x0124, B:57:0x0128, B:65:0x0164, B:68:0x0196, B:70:0x01c1, B:72:0x01c5, B:78:0x01e9, B:79:0x01ee, B:82:0x01fe, B:60:0x013b, B:62:0x0153, B:63:0x015b, B:47:0x00f4, B:74:0x01dc), top: B:112:0x00f4, inners: #2, #3 }] */
    /* JADX WARN: Code duplicated, block: B:84:0x021a  */
    /* JADX WARN: Code duplicated, block: B:85:0x021c A[Catch: all -> 0x026b, PHI: r0 r5
  0x021c: PHI (r0v24 java.lang.Object) = (r0v8 java.lang.Object), (r0v42 java.lang.Object) binds: [B:19:0x0044, B:83:0x0218] A[DONT_GENERATE, DONT_INLINE]
  0x021c: PHI (r5v5 ads_mobile_sdk.vv0) = (r5v1 ads_mobile_sdk.vv0), (r5v8 ads_mobile_sdk.vv0) binds: [B:19:0x0044, B:83:0x0218] A[DONT_GENERATE, DONT_INLINE], TryCatch #5 {all -> 0x026b, blocks: (B:91:0x0233, B:85:0x021c, B:87:0x0220, B:50:0x0107, B:52:0x0112, B:56:0x0124, B:57:0x0128, B:65:0x0164, B:68:0x0196, B:70:0x01c1, B:72:0x01c5, B:78:0x01e9, B:79:0x01ee, B:82:0x01fe, B:60:0x013b, B:62:0x0153, B:63:0x015b, B:47:0x00f4, B:74:0x01dc), top: B:112:0x00f4, inners: #2, #3 }] */
    /* JADX WARN: Code duplicated, block: B:87:0x0220 A[Catch: all -> 0x026b, TryCatch #5 {all -> 0x026b, blocks: (B:91:0x0233, B:85:0x021c, B:87:0x0220, B:50:0x0107, B:52:0x0112, B:56:0x0124, B:57:0x0128, B:65:0x0164, B:68:0x0196, B:70:0x01c1, B:72:0x01c5, B:78:0x01e9, B:79:0x01ee, B:82:0x01fe, B:60:0x013b, B:62:0x0153, B:63:0x015b, B:47:0x00f4, B:74:0x01dc), top: B:112:0x00f4, inners: #2, #3 }] */
    /* JADX WARN: Code duplicated, block: B:89:0x0231  */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x029d, code lost:
    
        if (r0.b(r25) == r2) goto L96;
     */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r26) {
        /*
            Method dump skipped, instruction units count: 730
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.sq.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

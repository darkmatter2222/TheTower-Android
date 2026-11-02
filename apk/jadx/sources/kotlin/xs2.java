package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.PreloadCallback;
import com.google.android.libraries.ads.mobile.sdk.common.PreloadConfiguration;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class xs2 extends SuspendLambda implements Function2 {
    public Object a;
    public Object b;
    public Object c;
    public Object d;
    public j53 e;
    public int f;
    public int g;
    public final /* synthetic */ pt2 h;
    public final /* synthetic */ String i;
    public final /* synthetic */ j53 j;
    public final /* synthetic */ PreloadConfiguration k;
    public final /* synthetic */ PreloadCallback l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xs2(pt2 pt2Var, String str, j53 j53Var, PreloadConfiguration preloadConfiguration, PreloadCallback preloadCallback, Continuation continuation) {
        super(2, continuation);
        this.h = pt2Var;
        this.i = str;
        this.j = j53Var;
        this.k = preloadConfiguration;
        this.l = preloadCallback;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new xs2(this.h, this.i, this.j, this.k, this.l, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((xs2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:33:0x00e9 A[Catch: all -> 0x0152, TryCatch #0 {all -> 0x0152, blocks: (B:30:0x00d6, B:31:0x00e3, B:33:0x00e9, B:35:0x00fa, B:38:0x0101, B:39:0x0105, B:40:0x010a, B:42:0x0110), top: B:94:0x00d6 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x0110 A[Catch: all -> 0x0152, TRY_LEAVE, TryCatch #0 {all -> 0x0152, blocks: (B:30:0x00d6, B:31:0x00e3, B:33:0x00e9, B:35:0x00fa, B:38:0x0101, B:39:0x0105, B:40:0x010a, B:42:0x0110), top: B:94:0x00d6 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x0141  */
    /* JADX WARN: Code duplicated, block: B:54:0x0161  */
    /* JADX WARN: Code duplicated, block: B:55:0x0194  */
    /* JADX WARN: Code duplicated, block: B:57:0x019e  */
    /* JADX WARN: Code duplicated, block: B:61:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:62:0x01cf  */
    /* JADX WARN: Code duplicated, block: B:66:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:70:0x0218  */
    /* JADX WARN: Code duplicated, block: B:72:0x0223  */
    /* JADX WARN: Code duplicated, block: B:76:0x024b  */
    /* JADX WARN: Code duplicated, block: B:77:0x0252  */
    /* JADX WARN: Code duplicated, block: B:81:0x0275  */
    /* JADX WARN: Code duplicated, block: B:83:0x0281  */
    /* JADX WARN: Code duplicated, block: B:87:0x02a4  */
    /* JADX WARN: Code duplicated, block: B:88:0x02aa  */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x01bb, code lost:
    
        if (r12 == r0) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x01e8, code lost:
    
        if (r12 == r0) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x020c, code lost:
    
        if (r12 == r0) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x023f, code lost:
    
        if (r12 == r0) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x026b, code lost:
    
        if (r12 == r0) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x029a, code lost:
    
        if (r12 == r0) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x02c3, code lost:
    
        if (r12 == r0) goto L90;
     */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 766
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.xs2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

package kotlin;

import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class sr2 extends SuspendLambda implements Function2 {
    public Object a;
    public Object b;
    public Object c;
    public Object d;
    public Object e;
    public pt2 f;
    public int g;
    public boolean h;
    public int i;
    public final /* synthetic */ pt2 j;
    public final /* synthetic */ h6 k;
    public final /* synthetic */ int l;
    public final /* synthetic */ boolean m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sr2(pt2 pt2Var, h6 h6Var, int i, boolean z, Continuation continuation) {
        super(2, continuation);
        this.j = pt2Var;
        this.k = h6Var;
        this.l = i;
        this.m = z;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new sr2(this.j, this.k, this.l, this.m, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((sr2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:105:0x0276  */
    /* JADX WARN: Code duplicated, block: B:109:0x02a9  */
    /* JADX WARN: Code duplicated, block: B:112:0x02b5 A[Catch: all -> 0x005a, TRY_LEAVE, TryCatch #11 {all -> 0x005a, blocks: (B:16:0x0052, B:110:0x02ab, B:112:0x02b5), top: B:199:0x0052 }] */
    /* JADX WARN: Code duplicated, block: B:117:0x02d3 A[PHI: r0
  0x02d3: PHI (r0v54 java.lang.Object) = (r0v46 java.lang.Object), (r0v59 java.lang.Object) binds: [B:115:0x02cf, B:14:0x003f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:119:0x02db  */
    /* JADX WARN: Code duplicated, block: B:122:0x02eb A[PHI: r0
  0x02eb: PHI (r0v60 java.lang.Object) = (r0v58 java.lang.Object), (r0v65 java.lang.Object) binds: [B:120:0x02e8, B:13:0x0038] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:124:0x02f3  */
    /* JADX WARN: Code duplicated, block: B:127:0x030a  */
    /* JADX WARN: Code duplicated, block: B:130:0x0313 A[Catch: all -> 0x0327, TRY_LEAVE, TryCatch #4 {all -> 0x0327, blocks: (B:128:0x030f, B:130:0x0313), top: B:186:0x030f }] */
    /* JADX WARN: Code duplicated, block: B:141:0x0335  */
    /* JADX WARN: Code duplicated, block: B:156:0x0360 A[Catch: all -> 0x038f, TryCatch #6 {all -> 0x038f, blocks: (B:154:0x0359, B:156:0x0360, B:158:0x0364, B:160:0x0368, B:161:0x036b, B:163:0x036f, B:165:0x0373, B:167:0x0377, B:168:0x0378, B:169:0x037d, B:170:0x037e, B:171:0x0385, B:172:0x0386, B:173:0x038d, B:174:0x038e), top: B:190:0x0359 }] */
    /* JADX WARN: Code duplicated, block: B:158:0x0364 A[Catch: all -> 0x038f, TryCatch #6 {all -> 0x038f, blocks: (B:154:0x0359, B:156:0x0360, B:158:0x0364, B:160:0x0368, B:161:0x036b, B:163:0x036f, B:165:0x0373, B:167:0x0377, B:168:0x0378, B:169:0x037d, B:170:0x037e, B:171:0x0385, B:172:0x0386, B:173:0x038d, B:174:0x038e), top: B:190:0x0359 }] */
    /* JADX WARN: Code duplicated, block: B:163:0x036f A[Catch: all -> 0x038f, TryCatch #6 {all -> 0x038f, blocks: (B:154:0x0359, B:156:0x0360, B:158:0x0364, B:160:0x0368, B:161:0x036b, B:163:0x036f, B:165:0x0373, B:167:0x0377, B:168:0x0378, B:169:0x037d, B:170:0x037e, B:171:0x0385, B:172:0x0386, B:173:0x038d, B:174:0x038e), top: B:190:0x0359 }] */
    /* JADX WARN: Code duplicated, block: B:165:0x0373 A[Catch: all -> 0x038f, TryCatch #6 {all -> 0x038f, blocks: (B:154:0x0359, B:156:0x0360, B:158:0x0364, B:160:0x0368, B:161:0x036b, B:163:0x036f, B:165:0x0373, B:167:0x0377, B:168:0x0378, B:169:0x037d, B:170:0x037e, B:171:0x0385, B:172:0x0386, B:173:0x038d, B:174:0x038e), top: B:190:0x0359 }] */
    /* JADX WARN: Code duplicated, block: B:167:0x0377 A[Catch: all -> 0x038f, TryCatch #6 {all -> 0x038f, blocks: (B:154:0x0359, B:156:0x0360, B:158:0x0364, B:160:0x0368, B:161:0x036b, B:163:0x036f, B:165:0x0373, B:167:0x0377, B:168:0x0378, B:169:0x037d, B:170:0x037e, B:171:0x0385, B:172:0x0386, B:173:0x038d, B:174:0x038e), top: B:190:0x0359 }] */
    /* JADX WARN: Code duplicated, block: B:168:0x0378 A[Catch: all -> 0x038f, TryCatch #6 {all -> 0x038f, blocks: (B:154:0x0359, B:156:0x0360, B:158:0x0364, B:160:0x0368, B:161:0x036b, B:163:0x036f, B:165:0x0373, B:167:0x0377, B:168:0x0378, B:169:0x037d, B:170:0x037e, B:171:0x0385, B:172:0x0386, B:173:0x038d, B:174:0x038e), top: B:190:0x0359 }] */
    /* JADX WARN: Code duplicated, block: B:170:0x037e A[Catch: all -> 0x038f, TryCatch #6 {all -> 0x038f, blocks: (B:154:0x0359, B:156:0x0360, B:158:0x0364, B:160:0x0368, B:161:0x036b, B:163:0x036f, B:165:0x0373, B:167:0x0377, B:168:0x0378, B:169:0x037d, B:170:0x037e, B:171:0x0385, B:172:0x0386, B:173:0x038d, B:174:0x038e), top: B:190:0x0359 }] */
    /* JADX WARN: Code duplicated, block: B:172:0x0386 A[Catch: all -> 0x038f, TryCatch #6 {all -> 0x038f, blocks: (B:154:0x0359, B:156:0x0360, B:158:0x0364, B:160:0x0368, B:161:0x036b, B:163:0x036f, B:165:0x0373, B:167:0x0377, B:168:0x0378, B:169:0x037d, B:170:0x037e, B:171:0x0385, B:172:0x0386, B:173:0x038d, B:174:0x038e), top: B:190:0x0359 }] */
    /* JADX WARN: Code duplicated, block: B:174:0x038e A[Catch: all -> 0x038f, TRY_LEAVE, TryCatch #6 {all -> 0x038f, blocks: (B:154:0x0359, B:156:0x0360, B:158:0x0364, B:160:0x0368, B:161:0x036b, B:163:0x036f, B:165:0x0373, B:167:0x0377, B:168:0x0378, B:169:0x037d, B:170:0x037e, B:171:0x0385, B:172:0x0386, B:173:0x038d, B:174:0x038e), top: B:190:0x0359 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x018e  */
    /* JADX WARN: Code duplicated, block: B:56:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:59:0x01cd A[Catch: all -> 0x00bd, TRY_LEAVE, TryCatch #13 {all -> 0x00bd, blocks: (B:29:0x00b5, B:57:0x01c3, B:59:0x01cd), top: B:202:0x00b5 }] */
    /* JADX WARN: Code duplicated, block: B:71:0x01ec A[Catch: all -> 0x021b, TryCatch #12 {all -> 0x021b, blocks: (B:69:0x01e5, B:71:0x01ec, B:73:0x01f0, B:75:0x01f4, B:76:0x01f7, B:78:0x01fb, B:80:0x01ff, B:82:0x0203, B:83:0x0204, B:84:0x0209, B:85:0x020a, B:86:0x0211, B:87:0x0212, B:88:0x0219, B:89:0x021a), top: B:201:0x01e5 }] */
    /* JADX WARN: Code duplicated, block: B:73:0x01f0 A[Catch: all -> 0x021b, TryCatch #12 {all -> 0x021b, blocks: (B:69:0x01e5, B:71:0x01ec, B:73:0x01f0, B:75:0x01f4, B:76:0x01f7, B:78:0x01fb, B:80:0x01ff, B:82:0x0203, B:83:0x0204, B:84:0x0209, B:85:0x020a, B:86:0x0211, B:87:0x0212, B:88:0x0219, B:89:0x021a), top: B:201:0x01e5 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x01fb A[Catch: all -> 0x021b, TryCatch #12 {all -> 0x021b, blocks: (B:69:0x01e5, B:71:0x01ec, B:73:0x01f0, B:75:0x01f4, B:76:0x01f7, B:78:0x01fb, B:80:0x01ff, B:82:0x0203, B:83:0x0204, B:84:0x0209, B:85:0x020a, B:86:0x0211, B:87:0x0212, B:88:0x0219, B:89:0x021a), top: B:201:0x01e5 }] */
    /* JADX WARN: Code duplicated, block: B:80:0x01ff A[Catch: all -> 0x021b, TryCatch #12 {all -> 0x021b, blocks: (B:69:0x01e5, B:71:0x01ec, B:73:0x01f0, B:75:0x01f4, B:76:0x01f7, B:78:0x01fb, B:80:0x01ff, B:82:0x0203, B:83:0x0204, B:84:0x0209, B:85:0x020a, B:86:0x0211, B:87:0x0212, B:88:0x0219, B:89:0x021a), top: B:201:0x01e5 }] */
    /* JADX WARN: Code duplicated, block: B:82:0x0203 A[Catch: all -> 0x021b, TryCatch #12 {all -> 0x021b, blocks: (B:69:0x01e5, B:71:0x01ec, B:73:0x01f0, B:75:0x01f4, B:76:0x01f7, B:78:0x01fb, B:80:0x01ff, B:82:0x0203, B:83:0x0204, B:84:0x0209, B:85:0x020a, B:86:0x0211, B:87:0x0212, B:88:0x0219, B:89:0x021a), top: B:201:0x01e5 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x0204 A[Catch: all -> 0x021b, TryCatch #12 {all -> 0x021b, blocks: (B:69:0x01e5, B:71:0x01ec, B:73:0x01f0, B:75:0x01f4, B:76:0x01f7, B:78:0x01fb, B:80:0x01ff, B:82:0x0203, B:83:0x0204, B:84:0x0209, B:85:0x020a, B:86:0x0211, B:87:0x0212, B:88:0x0219, B:89:0x021a), top: B:201:0x01e5 }] */
    /* JADX WARN: Code duplicated, block: B:85:0x020a A[Catch: all -> 0x021b, TryCatch #12 {all -> 0x021b, blocks: (B:69:0x01e5, B:71:0x01ec, B:73:0x01f0, B:75:0x01f4, B:76:0x01f7, B:78:0x01fb, B:80:0x01ff, B:82:0x0203, B:83:0x0204, B:84:0x0209, B:85:0x020a, B:86:0x0211, B:87:0x0212, B:88:0x0219, B:89:0x021a), top: B:201:0x01e5 }] */
    /* JADX WARN: Code duplicated, block: B:87:0x0212 A[Catch: all -> 0x021b, TryCatch #12 {all -> 0x021b, blocks: (B:69:0x01e5, B:71:0x01ec, B:73:0x01f0, B:75:0x01f4, B:76:0x01f7, B:78:0x01fb, B:80:0x01ff, B:82:0x0203, B:83:0x0204, B:84:0x0209, B:85:0x020a, B:86:0x0211, B:87:0x0212, B:88:0x0219, B:89:0x021a), top: B:201:0x01e5 }] */
    /* JADX WARN: Code duplicated, block: B:89:0x021a A[Catch: all -> 0x021b, TRY_LEAVE, TryCatch #12 {all -> 0x021b, blocks: (B:69:0x01e5, B:71:0x01ec, B:73:0x01f0, B:75:0x01f4, B:76:0x01f7, B:78:0x01fb, B:80:0x01ff, B:82:0x0203, B:83:0x0204, B:84:0x0209, B:85:0x020a, B:86:0x0211, B:87:0x0212, B:88:0x0219, B:89:0x021a), top: B:201:0x01e5 }] */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0324, code lost:
    
        if (kotlin.h6.c(r0, r17) == r7) goto L143;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x0345, code lost:
    
        if (r0.x(r17) == r7) goto L143;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v14 */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v19, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v2, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r11v24 */
    /* JADX WARN: Type inference failed for: r11v28 */
    /* JADX WARN: Type inference failed for: r11v29 */
    /* JADX WARN: Type inference failed for: r11v3, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r11v30 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r11v9, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v16, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v28, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v36 */
    /* JADX WARN: Type inference failed for: r2v37 */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r18) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 948
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.sr2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

package kotlin;

import com.google.gson.JsonArray;
import java.io.Closeable;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.ProducerScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class y12 extends SuspendLambda implements Function2 {
    public int a;
    public Object b;
    public Object c;
    public Object d;
    public rr3 e;
    public Closeable f;
    public Object g;
    public Object h;
    public int i;
    public final /* synthetic */ c22 j;
    public final /* synthetic */ int k;
    public final /* synthetic */ int l;
    public final /* synthetic */ JsonArray m;
    public final /* synthetic */ ProducerScope n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y12(c22 c22Var, int i, int i2, JsonArray jsonArray, ProducerScope producerScope, Continuation continuation) {
        super(2, continuation);
        this.j = c22Var;
        this.k = i;
        this.l = i2;
        this.m = jsonArray;
        this.n = producerScope;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new y12(this.j, this.k, this.l, this.m, this.n, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((y12) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x027b A[Catch: all -> 0x02a6, TryCatch #4 {all -> 0x02a6, blocks: (B:97:0x0270, B:99:0x0277, B:101:0x027b, B:103:0x027f, B:104:0x0282, B:106:0x0286, B:108:0x028a, B:110:0x028e, B:111:0x028f, B:112:0x0294, B:113:0x0295, B:114:0x029c, B:115:0x029d, B:116:0x02a4, B:117:0x02a5), top: B:207:0x0270 }] */
    /* JADX WARN: Code duplicated, block: B:106:0x0286 A[Catch: all -> 0x02a6, TryCatch #4 {all -> 0x02a6, blocks: (B:97:0x0270, B:99:0x0277, B:101:0x027b, B:103:0x027f, B:104:0x0282, B:106:0x0286, B:108:0x028a, B:110:0x028e, B:111:0x028f, B:112:0x0294, B:113:0x0295, B:114:0x029c, B:115:0x029d, B:116:0x02a4, B:117:0x02a5), top: B:207:0x0270 }] */
    /* JADX WARN: Code duplicated, block: B:108:0x028a A[Catch: all -> 0x02a6, TryCatch #4 {all -> 0x02a6, blocks: (B:97:0x0270, B:99:0x0277, B:101:0x027b, B:103:0x027f, B:104:0x0282, B:106:0x0286, B:108:0x028a, B:110:0x028e, B:111:0x028f, B:112:0x0294, B:113:0x0295, B:114:0x029c, B:115:0x029d, B:116:0x02a4, B:117:0x02a5), top: B:207:0x0270 }] */
    /* JADX WARN: Code duplicated, block: B:110:0x028e A[Catch: all -> 0x02a6, TryCatch #4 {all -> 0x02a6, blocks: (B:97:0x0270, B:99:0x0277, B:101:0x027b, B:103:0x027f, B:104:0x0282, B:106:0x0286, B:108:0x028a, B:110:0x028e, B:111:0x028f, B:112:0x0294, B:113:0x0295, B:114:0x029c, B:115:0x029d, B:116:0x02a4, B:117:0x02a5), top: B:207:0x0270 }] */
    /* JADX WARN: Code duplicated, block: B:111:0x028f A[Catch: all -> 0x02a6, TryCatch #4 {all -> 0x02a6, blocks: (B:97:0x0270, B:99:0x0277, B:101:0x027b, B:103:0x027f, B:104:0x0282, B:106:0x0286, B:108:0x028a, B:110:0x028e, B:111:0x028f, B:112:0x0294, B:113:0x0295, B:114:0x029c, B:115:0x029d, B:116:0x02a4, B:117:0x02a5), top: B:207:0x0270 }] */
    /* JADX WARN: Code duplicated, block: B:113:0x0295 A[Catch: all -> 0x02a6, TryCatch #4 {all -> 0x02a6, blocks: (B:97:0x0270, B:99:0x0277, B:101:0x027b, B:103:0x027f, B:104:0x0282, B:106:0x0286, B:108:0x028a, B:110:0x028e, B:111:0x028f, B:112:0x0294, B:113:0x0295, B:114:0x029c, B:115:0x029d, B:116:0x02a4, B:117:0x02a5), top: B:207:0x0270 }] */
    /* JADX WARN: Code duplicated, block: B:115:0x029d A[Catch: all -> 0x02a6, TryCatch #4 {all -> 0x02a6, blocks: (B:97:0x0270, B:99:0x0277, B:101:0x027b, B:103:0x027f, B:104:0x0282, B:106:0x0286, B:108:0x028a, B:110:0x028e, B:111:0x028f, B:112:0x0294, B:113:0x0295, B:114:0x029c, B:115:0x029d, B:116:0x02a4, B:117:0x02a5), top: B:207:0x0270 }] */
    /* JADX WARN: Code duplicated, block: B:117:0x02a5 A[Catch: all -> 0x02a6, TRY_LEAVE, TryCatch #4 {all -> 0x02a6, blocks: (B:97:0x0270, B:99:0x0277, B:101:0x027b, B:103:0x027f, B:104:0x0282, B:106:0x0286, B:108:0x028a, B:110:0x028e, B:111:0x028f, B:112:0x0294, B:113:0x0295, B:114:0x029c, B:115:0x029d, B:116:0x02a4, B:117:0x02a5), top: B:207:0x0270 }] */
    /* JADX WARN: Code duplicated, block: B:136:0x02f1 A[Catch: all -> 0x0393, TRY_LEAVE, TryCatch #10 {all -> 0x0393, blocks: (B:134:0x02eb, B:136:0x02f1), top: B:216:0x02eb }] */
    /* JADX WARN: Code duplicated, block: B:144:0x034f  */
    /* JADX WARN: Code duplicated, block: B:148:0x0372  */
    /* JADX WARN: Code duplicated, block: B:152:0x0387  */
    /* JADX WARN: Code duplicated, block: B:167:0x03b3 A[Catch: all -> 0x0041, TRY_LEAVE, TryCatch #1 {all -> 0x0041, blocks: (B:9:0x0028, B:165:0x03ad, B:167:0x03b3, B:12:0x0039), top: B:201:0x000a }] */
    /* JADX WARN: Code duplicated, block: B:175:0x03c9 A[Catch: all -> 0x03f8, TryCatch #13 {all -> 0x03f8, blocks: (B:173:0x03c2, B:175:0x03c9, B:177:0x03cd, B:179:0x03d1, B:180:0x03d4, B:182:0x03d8, B:184:0x03dc, B:186:0x03e0, B:187:0x03e1, B:188:0x03e6, B:189:0x03e7, B:190:0x03ee, B:191:0x03ef, B:192:0x03f6, B:193:0x03f7), top: B:221:0x03c2 }] */
    /* JADX WARN: Code duplicated, block: B:177:0x03cd A[Catch: all -> 0x03f8, TryCatch #13 {all -> 0x03f8, blocks: (B:173:0x03c2, B:175:0x03c9, B:177:0x03cd, B:179:0x03d1, B:180:0x03d4, B:182:0x03d8, B:184:0x03dc, B:186:0x03e0, B:187:0x03e1, B:188:0x03e6, B:189:0x03e7, B:190:0x03ee, B:191:0x03ef, B:192:0x03f6, B:193:0x03f7), top: B:221:0x03c2 }] */
    /* JADX WARN: Code duplicated, block: B:182:0x03d8 A[Catch: all -> 0x03f8, TryCatch #13 {all -> 0x03f8, blocks: (B:173:0x03c2, B:175:0x03c9, B:177:0x03cd, B:179:0x03d1, B:180:0x03d4, B:182:0x03d8, B:184:0x03dc, B:186:0x03e0, B:187:0x03e1, B:188:0x03e6, B:189:0x03e7, B:190:0x03ee, B:191:0x03ef, B:192:0x03f6, B:193:0x03f7), top: B:221:0x03c2 }] */
    /* JADX WARN: Code duplicated, block: B:184:0x03dc A[Catch: all -> 0x03f8, TryCatch #13 {all -> 0x03f8, blocks: (B:173:0x03c2, B:175:0x03c9, B:177:0x03cd, B:179:0x03d1, B:180:0x03d4, B:182:0x03d8, B:184:0x03dc, B:186:0x03e0, B:187:0x03e1, B:188:0x03e6, B:189:0x03e7, B:190:0x03ee, B:191:0x03ef, B:192:0x03f6, B:193:0x03f7), top: B:221:0x03c2 }] */
    /* JADX WARN: Code duplicated, block: B:186:0x03e0 A[Catch: all -> 0x03f8, TryCatch #13 {all -> 0x03f8, blocks: (B:173:0x03c2, B:175:0x03c9, B:177:0x03cd, B:179:0x03d1, B:180:0x03d4, B:182:0x03d8, B:184:0x03dc, B:186:0x03e0, B:187:0x03e1, B:188:0x03e6, B:189:0x03e7, B:190:0x03ee, B:191:0x03ef, B:192:0x03f6, B:193:0x03f7), top: B:221:0x03c2 }] */
    /* JADX WARN: Code duplicated, block: B:187:0x03e1 A[Catch: all -> 0x03f8, TryCatch #13 {all -> 0x03f8, blocks: (B:173:0x03c2, B:175:0x03c9, B:177:0x03cd, B:179:0x03d1, B:180:0x03d4, B:182:0x03d8, B:184:0x03dc, B:186:0x03e0, B:187:0x03e1, B:188:0x03e6, B:189:0x03e7, B:190:0x03ee, B:191:0x03ef, B:192:0x03f6, B:193:0x03f7), top: B:221:0x03c2 }] */
    /* JADX WARN: Code duplicated, block: B:189:0x03e7 A[Catch: all -> 0x03f8, TryCatch #13 {all -> 0x03f8, blocks: (B:173:0x03c2, B:175:0x03c9, B:177:0x03cd, B:179:0x03d1, B:180:0x03d4, B:182:0x03d8, B:184:0x03dc, B:186:0x03e0, B:187:0x03e1, B:188:0x03e6, B:189:0x03e7, B:190:0x03ee, B:191:0x03ef, B:192:0x03f6, B:193:0x03f7), top: B:221:0x03c2 }] */
    /* JADX WARN: Code duplicated, block: B:191:0x03ef A[Catch: all -> 0x03f8, TryCatch #13 {all -> 0x03f8, blocks: (B:173:0x03c2, B:175:0x03c9, B:177:0x03cd, B:179:0x03d1, B:180:0x03d4, B:182:0x03d8, B:184:0x03dc, B:186:0x03e0, B:187:0x03e1, B:188:0x03e6, B:189:0x03e7, B:190:0x03ee, B:191:0x03ef, B:192:0x03f6, B:193:0x03f7), top: B:221:0x03c2 }] */
    /* JADX WARN: Code duplicated, block: B:193:0x03f7 A[Catch: all -> 0x03f8, TRY_LEAVE, TryCatch #13 {all -> 0x03f8, blocks: (B:173:0x03c2, B:175:0x03c9, B:177:0x03cd, B:179:0x03d1, B:180:0x03d4, B:182:0x03d8, B:184:0x03dc, B:186:0x03e0, B:187:0x03e1, B:188:0x03e6, B:189:0x03e7, B:190:0x03ee, B:191:0x03ef, B:192:0x03f6, B:193:0x03f7), top: B:221:0x03c2 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x01aa A[Catch: all -> 0x0243, TRY_LEAVE, TryCatch #2 {all -> 0x0243, blocks: (B:60:0x01a3, B:62:0x01aa), top: B:203:0x01a3 }] */
    /* JADX WARN: Code duplicated, block: B:70:0x01ff  */
    /* JADX WARN: Code duplicated, block: B:74:0x0221  */
    /* JADX WARN: Code duplicated, block: B:78:0x0236  */
    /* JADX WARN: Code duplicated, block: B:93:0x0262 A[Catch: all -> 0x00d5, TRY_LEAVE, TryCatch #11 {all -> 0x00d5, blocks: (B:28:0x00bc, B:91:0x025c, B:93:0x0262, B:31:0x00cd), top: B:201:0x000a }] */
    /* JADX WARN: Code duplicated, block: B:99:0x0277 A[Catch: all -> 0x02a6, TryCatch #4 {all -> 0x02a6, blocks: (B:97:0x0270, B:99:0x0277, B:101:0x027b, B:103:0x027f, B:104:0x0282, B:106:0x0286, B:108:0x028a, B:110:0x028e, B:111:0x028f, B:112:0x0294, B:113:0x0295, B:114:0x029c, B:115:0x029d, B:116:0x02a4, B:117:0x02a5), top: B:207:0x0270 }] */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x030c, code lost:
    
        if (r10.send((kotlin.i01) r5, r17) == r0) goto L163;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x01c4, code lost:
    
        if (r11.send((kotlin.i01) r7, r17) == r0) goto L163;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10, types: [ads_mobile_sdk.rr3, ads_mobile_sdk.tu2, java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v11, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v29 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v35, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v37 */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v40, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v43 */
    /* JADX WARN: Type inference failed for: r2v44 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v52 */
    /* JADX WARN: Type inference failed for: r2v55 */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v61, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v63 */
    /* JADX WARN: Type inference failed for: r2v66 */
    /* JADX WARN: Type inference failed for: r2v67 */
    /* JADX WARN: Type inference failed for: r2v68 */
    /* JADX WARN: Type inference failed for: r2v69 */
    /* JADX WARN: Type inference failed for: r2v9, types: [ads_mobile_sdk.rr3, java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v31 */
    /* JADX WARN: Type inference failed for: r3v33, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r3v35 */
    /* JADX WARN: Type inference failed for: r3v36, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r3v38 */
    /* JADX WARN: Type inference failed for: r3v54 */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v24, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v27 */
    /* JADX WARN: Type inference failed for: r4v28 */
    /* JADX WARN: Type inference failed for: r4v29 */
    /* JADX WARN: Type inference failed for: r4v3, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r4v33 */
    /* JADX WARN: Type inference failed for: r4v36, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v39 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v40 */
    /* JADX WARN: Type inference failed for: r4v41 */
    /* JADX WARN: Type inference failed for: r4v42 */
    /* JADX WARN: Type inference failed for: r4v43 */
    /* JADX WARN: Type inference failed for: r4v44 */
    /* JADX WARN: Type inference failed for: r4v5, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r7v16 */
    /* JADX WARN: Type inference failed for: r7v19 */
    /* JADX WARN: Type inference failed for: r7v20, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v21, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r7v22, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v23 */
    /* JADX WARN: Type inference failed for: r7v30 */
    /* JADX WARN: Type inference failed for: r7v33, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v35, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v36 */
    /* JADX WARN: Type inference failed for: r7v37 */
    /* JADX WARN: Type inference failed for: r7v38 */
    /* JADX WARN: Type inference failed for: r7v39 */
    /* JADX WARN: Type inference failed for: r7v40 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v16, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v17, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r8v18, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v21 */
    /* JADX WARN: Type inference failed for: r8v22, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r8v23 */
    /* JADX WARN: Type inference failed for: r8v24, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r8v25, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v27 */
    /* JADX WARN: Type inference failed for: r8v28 */
    /* JADX WARN: Type inference failed for: r8v29 */
    /* JADX WARN: Type inference failed for: r8v30 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v15, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r9v16, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r9v19 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v20 */
    /* JADX WARN: Type inference failed for: r9v5, types: [java.io.Closeable] */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r18) {
        /*
            Method dump skipped, instruction units count: 1054
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.y12.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

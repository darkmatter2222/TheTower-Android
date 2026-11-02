package kotlin;

import java.io.Closeable;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class lw2 extends SuspendLambda implements Function2 {
    public Object a;
    public Object b;
    public rr3 c;
    public Closeable d;
    public long e;
    public int f;
    public final /* synthetic */ ow2 g;
    public final /* synthetic */ String h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lw2(ow2 ow2Var, String str, Continuation continuation) {
        super(2, continuation);
        this.g = ow2Var;
        this.h = str;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new lw2(this.g, this.h, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new lw2(this.g, this.h, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0276  */
    /* JADX WARN: Code duplicated, block: B:105:0x0282 A[Catch: all -> 0x0328, TryCatch #4 {all -> 0x0328, blocks: (B:7:0x0029, B:112:0x0314, B:114:0x031a, B:103:0x027c, B:105:0x0282, B:109:0x02f8, B:106:0x02bd, B:108:0x02c3, B:121:0x032a, B:122:0x032f), top: B:159:0x0014 }] */
    /* JADX WARN: Code duplicated, block: B:106:0x02bd A[Catch: all -> 0x0328, TryCatch #4 {all -> 0x0328, blocks: (B:7:0x0029, B:112:0x0314, B:114:0x031a, B:103:0x027c, B:105:0x0282, B:109:0x02f8, B:106:0x02bd, B:108:0x02c3, B:121:0x032a, B:122:0x032f), top: B:159:0x0014 }] */
    /* JADX WARN: Code duplicated, block: B:108:0x02c3 A[Catch: all -> 0x0328, TryCatch #4 {all -> 0x0328, blocks: (B:7:0x0029, B:112:0x0314, B:114:0x031a, B:103:0x027c, B:105:0x0282, B:109:0x02f8, B:106:0x02bd, B:108:0x02c3, B:121:0x032a, B:122:0x032f), top: B:159:0x0014 }] */
    /* JADX WARN: Code duplicated, block: B:121:0x032a A[Catch: all -> 0x0328, TRY_ENTER, TryCatch #4 {all -> 0x0328, blocks: (B:7:0x0029, B:112:0x0314, B:114:0x031a, B:103:0x027c, B:105:0x0282, B:109:0x02f8, B:106:0x02bd, B:108:0x02c3, B:121:0x032a, B:122:0x032f), top: B:159:0x0014 }] */
    /* JADX WARN: Code duplicated, block: B:129:0x033d A[Catch: all -> 0x036c, TryCatch #7 {all -> 0x036c, blocks: (B:127:0x0336, B:129:0x033d, B:131:0x0341, B:133:0x0345, B:134:0x0348, B:136:0x034c, B:138:0x0350, B:140:0x0354, B:141:0x0355, B:142:0x035a, B:143:0x035b, B:144:0x0362, B:145:0x0363, B:146:0x036a, B:147:0x036b), top: B:162:0x0336 }] */
    /* JADX WARN: Code duplicated, block: B:136:0x034c A[Catch: all -> 0x036c, TryCatch #7 {all -> 0x036c, blocks: (B:127:0x0336, B:129:0x033d, B:131:0x0341, B:133:0x0345, B:134:0x0348, B:136:0x034c, B:138:0x0350, B:140:0x0354, B:141:0x0355, B:142:0x035a, B:143:0x035b, B:144:0x0362, B:145:0x0363, B:146:0x036a, B:147:0x036b), top: B:162:0x0336 }] */
    /* JADX WARN: Code duplicated, block: B:138:0x0350 A[Catch: all -> 0x036c, TryCatch #7 {all -> 0x036c, blocks: (B:127:0x0336, B:129:0x033d, B:131:0x0341, B:133:0x0345, B:134:0x0348, B:136:0x034c, B:138:0x0350, B:140:0x0354, B:141:0x0355, B:142:0x035a, B:143:0x035b, B:144:0x0362, B:145:0x0363, B:146:0x036a, B:147:0x036b), top: B:162:0x0336 }] */
    /* JADX WARN: Code duplicated, block: B:140:0x0354 A[Catch: all -> 0x036c, TryCatch #7 {all -> 0x036c, blocks: (B:127:0x0336, B:129:0x033d, B:131:0x0341, B:133:0x0345, B:134:0x0348, B:136:0x034c, B:138:0x0350, B:140:0x0354, B:141:0x0355, B:142:0x035a, B:143:0x035b, B:144:0x0362, B:145:0x0363, B:146:0x036a, B:147:0x036b), top: B:162:0x0336 }] */
    /* JADX WARN: Code duplicated, block: B:141:0x0355 A[Catch: all -> 0x036c, TryCatch #7 {all -> 0x036c, blocks: (B:127:0x0336, B:129:0x033d, B:131:0x0341, B:133:0x0345, B:134:0x0348, B:136:0x034c, B:138:0x0350, B:140:0x0354, B:141:0x0355, B:142:0x035a, B:143:0x035b, B:144:0x0362, B:145:0x0363, B:146:0x036a, B:147:0x036b), top: B:162:0x0336 }] */
    /* JADX WARN: Code duplicated, block: B:143:0x035b A[Catch: all -> 0x036c, TryCatch #7 {all -> 0x036c, blocks: (B:127:0x0336, B:129:0x033d, B:131:0x0341, B:133:0x0345, B:134:0x0348, B:136:0x034c, B:138:0x0350, B:140:0x0354, B:141:0x0355, B:142:0x035a, B:143:0x035b, B:144:0x0362, B:145:0x0363, B:146:0x036a, B:147:0x036b), top: B:162:0x0336 }] */
    /* JADX WARN: Code duplicated, block: B:145:0x0363 A[Catch: all -> 0x036c, TryCatch #7 {all -> 0x036c, blocks: (B:127:0x0336, B:129:0x033d, B:131:0x0341, B:133:0x0345, B:134:0x0348, B:136:0x034c, B:138:0x0350, B:140:0x0354, B:141:0x0355, B:142:0x035a, B:143:0x035b, B:144:0x0362, B:145:0x0363, B:146:0x036a, B:147:0x036b), top: B:162:0x0336 }] */
    /* JADX WARN: Code duplicated, block: B:147:0x036b A[Catch: all -> 0x036c, TRY_LEAVE, TryCatch #7 {all -> 0x036c, blocks: (B:127:0x0336, B:129:0x033d, B:131:0x0341, B:133:0x0345, B:134:0x0348, B:136:0x034c, B:138:0x0350, B:140:0x0354, B:141:0x0355, B:142:0x035a, B:143:0x035b, B:144:0x0362, B:145:0x0363, B:146:0x036a, B:147:0x036b), top: B:162:0x0336 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00ef A[Catch: all -> 0x008a, TryCatch #5 {all -> 0x008a, blocks: (B:23:0x0080, B:44:0x011c, B:46:0x0122, B:50:0x0198, B:47:0x015d, B:49:0x0163, B:59:0x01c9, B:60:0x01ce, B:28:0x0099, B:37:0x00df, B:39:0x00ef, B:41:0x0103), top: B:159:0x0014 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:43:0x011a  */
    /* JADX WARN: Code duplicated, block: B:44:0x011c A[Catch: all -> 0x008a, PHI: r2 r5 r6 r12 r13 r14 r17
  0x011c: PHI (r2v10 ??) = (r2v34 ??), (r2v35 ??) binds: [B:42:0x0118, B:24:0x0083] A[DONT_GENERATE, DONT_INLINE]
  0x011c: PHI (r5v10 java.lang.Object) = (r5v8 java.lang.Object), (r5v20 java.lang.Object) binds: [B:42:0x0118, B:24:0x0083] A[DONT_GENERATE, DONT_INLINE]
  0x011c: PHI (r6v10 long) = (r6v7 long), (r6v15 long) binds: [B:42:0x0118, B:24:0x0083] A[DONT_GENERATE, DONT_INLINE]
  0x011c: PHI (r12v12 ??) = (r12v21 ??), (r12v22 ??) binds: [B:42:0x0118, B:24:0x0083] A[DONT_GENERATE, DONT_INLINE]
  0x011c: PHI (r13v6 java.lang.String) = (r13v3 java.lang.String), (r13v8 java.lang.String) binds: [B:42:0x0118, B:24:0x0083] A[DONT_GENERATE, DONT_INLINE]
  0x011c: PHI (r14v4 ads_mobile_sdk.ow2) = (r14v1 ads_mobile_sdk.ow2), (r14v6 ads_mobile_sdk.ow2) binds: [B:42:0x0118, B:24:0x0083] A[DONT_GENERATE, DONT_INLINE]
  0x011c: PHI (r17v3 java.lang.String) = (r7v0 java.lang.String), (r17v4 java.lang.String) binds: [B:42:0x0118, B:24:0x0083] A[DONT_GENERATE, DONT_INLINE], TryCatch #5 {all -> 0x008a, blocks: (B:23:0x0080, B:44:0x011c, B:46:0x0122, B:50:0x0198, B:47:0x015d, B:49:0x0163, B:59:0x01c9, B:60:0x01ce, B:28:0x0099, B:37:0x00df, B:39:0x00ef, B:41:0x0103), top: B:159:0x0014 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x0122 A[Catch: all -> 0x008a, TryCatch #5 {all -> 0x008a, blocks: (B:23:0x0080, B:44:0x011c, B:46:0x0122, B:50:0x0198, B:47:0x015d, B:49:0x0163, B:59:0x01c9, B:60:0x01ce, B:28:0x0099, B:37:0x00df, B:39:0x00ef, B:41:0x0103), top: B:159:0x0014 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x015d A[Catch: all -> 0x008a, TryCatch #5 {all -> 0x008a, blocks: (B:23:0x0080, B:44:0x011c, B:46:0x0122, B:50:0x0198, B:47:0x015d, B:49:0x0163, B:59:0x01c9, B:60:0x01ce, B:28:0x0099, B:37:0x00df, B:39:0x00ef, B:41:0x0103), top: B:159:0x0014 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x0163 A[Catch: all -> 0x008a, TryCatch #5 {all -> 0x008a, blocks: (B:23:0x0080, B:44:0x011c, B:46:0x0122, B:50:0x0198, B:47:0x015d, B:49:0x0163, B:59:0x01c9, B:60:0x01ce, B:28:0x0099, B:37:0x00df, B:39:0x00ef, B:41:0x0103), top: B:159:0x0014 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:56:0x01bc A[Catch: all -> 0x006f, TRY_LEAVE, TryCatch #9 {all -> 0x006f, blocks: (B:18:0x006a, B:54:0x01b6, B:56:0x01bc), top: B:165:0x006a }] */
    /* JADX WARN: Code duplicated, block: B:59:0x01c9 A[Catch: all -> 0x008a, TRY_ENTER, TryCatch #5 {all -> 0x008a, blocks: (B:23:0x0080, B:44:0x011c, B:46:0x0122, B:50:0x0198, B:47:0x015d, B:49:0x0163, B:59:0x01c9, B:60:0x01ce, B:28:0x0099, B:37:0x00df, B:39:0x00ef, B:41:0x0103), top: B:159:0x0014 }] */
    /* JADX WARN: Code duplicated, block: B:65:0x01d8 A[Catch: all -> 0x0207, TryCatch #2 {all -> 0x0207, blocks: (B:63:0x01d1, B:65:0x01d8, B:67:0x01dc, B:69:0x01e0, B:70:0x01e3, B:72:0x01e7, B:74:0x01eb, B:76:0x01ef, B:77:0x01f0, B:78:0x01f5, B:79:0x01f6, B:80:0x01fd, B:81:0x01fe, B:82:0x0205, B:83:0x0206), top: B:158:0x01d1 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x01e7 A[Catch: all -> 0x0207, TryCatch #2 {all -> 0x0207, blocks: (B:63:0x01d1, B:65:0x01d8, B:67:0x01dc, B:69:0x01e0, B:70:0x01e3, B:72:0x01e7, B:74:0x01eb, B:76:0x01ef, B:77:0x01f0, B:78:0x01f5, B:79:0x01f6, B:80:0x01fd, B:81:0x01fe, B:82:0x0205, B:83:0x0206), top: B:158:0x01d1 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x01eb A[Catch: all -> 0x0207, TryCatch #2 {all -> 0x0207, blocks: (B:63:0x01d1, B:65:0x01d8, B:67:0x01dc, B:69:0x01e0, B:70:0x01e3, B:72:0x01e7, B:74:0x01eb, B:76:0x01ef, B:77:0x01f0, B:78:0x01f5, B:79:0x01f6, B:80:0x01fd, B:81:0x01fe, B:82:0x0205, B:83:0x0206), top: B:158:0x01d1 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x01ef A[Catch: all -> 0x0207, TryCatch #2 {all -> 0x0207, blocks: (B:63:0x01d1, B:65:0x01d8, B:67:0x01dc, B:69:0x01e0, B:70:0x01e3, B:72:0x01e7, B:74:0x01eb, B:76:0x01ef, B:77:0x01f0, B:78:0x01f5, B:79:0x01f6, B:80:0x01fd, B:81:0x01fe, B:82:0x0205, B:83:0x0206), top: B:158:0x01d1 }] */
    /* JADX WARN: Code duplicated, block: B:77:0x01f0 A[Catch: all -> 0x0207, TryCatch #2 {all -> 0x0207, blocks: (B:63:0x01d1, B:65:0x01d8, B:67:0x01dc, B:69:0x01e0, B:70:0x01e3, B:72:0x01e7, B:74:0x01eb, B:76:0x01ef, B:77:0x01f0, B:78:0x01f5, B:79:0x01f6, B:80:0x01fd, B:81:0x01fe, B:82:0x0205, B:83:0x0206), top: B:158:0x01d1 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x01f6 A[Catch: all -> 0x0207, TryCatch #2 {all -> 0x0207, blocks: (B:63:0x01d1, B:65:0x01d8, B:67:0x01dc, B:69:0x01e0, B:70:0x01e3, B:72:0x01e7, B:74:0x01eb, B:76:0x01ef, B:77:0x01f0, B:78:0x01f5, B:79:0x01f6, B:80:0x01fd, B:81:0x01fe, B:82:0x0205, B:83:0x0206), top: B:158:0x01d1 }] */
    /* JADX WARN: Code duplicated, block: B:81:0x01fe A[Catch: all -> 0x0207, TryCatch #2 {all -> 0x0207, blocks: (B:63:0x01d1, B:65:0x01d8, B:67:0x01dc, B:69:0x01e0, B:70:0x01e3, B:72:0x01e7, B:74:0x01eb, B:76:0x01ef, B:77:0x01f0, B:78:0x01f5, B:79:0x01f6, B:80:0x01fd, B:81:0x01fe, B:82:0x0205, B:83:0x0206), top: B:158:0x01d1 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x0206 A[Catch: all -> 0x0207, TRY_LEAVE, TryCatch #2 {all -> 0x0207, blocks: (B:63:0x01d1, B:65:0x01d8, B:67:0x01dc, B:69:0x01e0, B:70:0x01e3, B:72:0x01e7, B:74:0x01eb, B:76:0x01ef, B:77:0x01f0, B:78:0x01f5, B:79:0x01f6, B:80:0x01fd, B:81:0x01fe, B:82:0x0205, B:83:0x0206), top: B:158:0x01d1 }] */
    /* JADX WARN: Code duplicated, block: B:97:0x0247 A[Catch: all -> 0x0330, TryCatch #0 {all -> 0x0330, blocks: (B:95:0x0237, B:97:0x0247, B:99:0x025d), top: B:154:0x0237 }] */
    /* JADX WARN: Code duplicated, block: B:98:0x0258  */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0311, code lost:
    
        if (kotlinx.coroutines.BuildersKt.withContext(r5, r6, r20) == r0) goto L111;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r12v10, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r12v12, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v14 */
    /* JADX WARN: Type inference failed for: r12v2, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r12v20 */
    /* JADX WARN: Type inference failed for: r12v21 */
    /* JADX WARN: Type inference failed for: r12v22 */
    /* JADX WARN: Type inference failed for: r12v23 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v15, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v33 */
    /* JADX WARN: Type inference failed for: r2v34 */
    /* JADX WARN: Type inference failed for: r2v35 */
    /* JADX WARN: Type inference failed for: r2v36 */
    /* JADX WARN: Type inference failed for: r2v37 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7, types: [ads_mobile_sdk.rr3, ads_mobile_sdk.tu2, java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v8, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v29 */
    /* JADX WARN: Type inference failed for: r3v35 */
    /* JADX WARN: Type inference failed for: r3v36 */
    /* JADX WARN: Type inference failed for: r3v38, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r3v44 */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r21) {
        /*
            Method dump skipped, instruction units count: 902
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.lw2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

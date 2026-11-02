package kotlin;

import java.io.Closeable;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class l00 extends SuspendLambda implements Function2 {
    public Object a;
    public Closeable b;
    public Closeable c;
    public int d;
    public final /* synthetic */ o00 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l00(o00 o00Var, Continuation continuation) {
        super(2, continuation);
        this.e = o00Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new l00(this.e, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new l00(this.e, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x022c A[Catch: all -> 0x0040, PHI: r2 r3 r11 r12
  0x022c: PHI (r2v18 ??) = (r2v29 ??), (r2v30 ??) binds: [B:98:0x0228, B:13:0x003c] A[DONT_GENERATE, DONT_INLINE]
  0x022c: PHI (r3v41 java.lang.Object) = (r3v40 java.lang.Object), (r3v50 java.lang.Object) binds: [B:98:0x0228, B:13:0x003c] A[DONT_GENERATE, DONT_INLINE]
  0x022c: PHI (r11v22 ??) = (r11v26 ??), (r11v27 ??) binds: [B:98:0x0228, B:13:0x003c] A[DONT_GENERATE, DONT_INLINE]
  0x022c: PHI (r12v14 ads_mobile_sdk.o00) = (r12v11 ads_mobile_sdk.o00), (r12v16 ads_mobile_sdk.o00) binds: [B:98:0x0228, B:13:0x003c] A[DONT_GENERATE, DONT_INLINE], TryCatch #1 {all -> 0x0040, blocks: (B:12:0x0039, B:100:0x022c, B:102:0x023b, B:103:0x0289, B:17:0x004d, B:97:0x0216), top: B:148:0x0013 }] */
    /* JADX WARN: Code duplicated, block: B:102:0x023b A[Catch: all -> 0x0040, TryCatch #1 {all -> 0x0040, blocks: (B:12:0x0039, B:100:0x022c, B:102:0x023b, B:103:0x0289, B:17:0x004d, B:97:0x0216), top: B:148:0x0013 }] */
    /* JADX WARN: Code duplicated, block: B:103:0x0289 A[Catch: all -> 0x0040, TRY_LEAVE, TryCatch #1 {all -> 0x0040, blocks: (B:12:0x0039, B:100:0x022c, B:102:0x023b, B:103:0x0289, B:17:0x004d, B:97:0x0216), top: B:148:0x0013 }] */
    /* JADX WARN: Code duplicated, block: B:106:0x02c0  */
    /* JADX WARN: Code duplicated, block: B:109:0x02c9 A[Catch: all -> 0x002c, TryCatch #9 {all -> 0x002c, blocks: (B:7:0x0025, B:107:0x02c1, B:109:0x02c9, B:110:0x02cd, B:112:0x02d3), top: B:159:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:112:0x02d3 A[Catch: all -> 0x002c, TRY_LEAVE, TryCatch #9 {all -> 0x002c, blocks: (B:7:0x0025, B:107:0x02c1, B:109:0x02c9, B:110:0x02cd, B:112:0x02d3), top: B:159:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:121:0x02ea A[Catch: all -> 0x0319, TryCatch #7 {all -> 0x0319, blocks: (B:119:0x02e3, B:121:0x02ea, B:123:0x02ee, B:125:0x02f2, B:126:0x02f5, B:128:0x02f9, B:130:0x02fd, B:132:0x0301, B:133:0x0302, B:134:0x0307, B:135:0x0308, B:136:0x030f, B:137:0x0310, B:138:0x0317, B:139:0x0318), top: B:156:0x02e3 }] */
    /* JADX WARN: Code duplicated, block: B:128:0x02f9 A[Catch: all -> 0x0319, TryCatch #7 {all -> 0x0319, blocks: (B:119:0x02e3, B:121:0x02ea, B:123:0x02ee, B:125:0x02f2, B:126:0x02f5, B:128:0x02f9, B:130:0x02fd, B:132:0x0301, B:133:0x0302, B:134:0x0307, B:135:0x0308, B:136:0x030f, B:137:0x0310, B:138:0x0317, B:139:0x0318), top: B:156:0x02e3 }] */
    /* JADX WARN: Code duplicated, block: B:130:0x02fd A[Catch: all -> 0x0319, TryCatch #7 {all -> 0x0319, blocks: (B:119:0x02e3, B:121:0x02ea, B:123:0x02ee, B:125:0x02f2, B:126:0x02f5, B:128:0x02f9, B:130:0x02fd, B:132:0x0301, B:133:0x0302, B:134:0x0307, B:135:0x0308, B:136:0x030f, B:137:0x0310, B:138:0x0317, B:139:0x0318), top: B:156:0x02e3 }] */
    /* JADX WARN: Code duplicated, block: B:132:0x0301 A[Catch: all -> 0x0319, TryCatch #7 {all -> 0x0319, blocks: (B:119:0x02e3, B:121:0x02ea, B:123:0x02ee, B:125:0x02f2, B:126:0x02f5, B:128:0x02f9, B:130:0x02fd, B:132:0x0301, B:133:0x0302, B:134:0x0307, B:135:0x0308, B:136:0x030f, B:137:0x0310, B:138:0x0317, B:139:0x0318), top: B:156:0x02e3 }] */
    /* JADX WARN: Code duplicated, block: B:133:0x0302 A[Catch: all -> 0x0319, TryCatch #7 {all -> 0x0319, blocks: (B:119:0x02e3, B:121:0x02ea, B:123:0x02ee, B:125:0x02f2, B:126:0x02f5, B:128:0x02f9, B:130:0x02fd, B:132:0x0301, B:133:0x0302, B:134:0x0307, B:135:0x0308, B:136:0x030f, B:137:0x0310, B:138:0x0317, B:139:0x0318), top: B:156:0x02e3 }] */
    /* JADX WARN: Code duplicated, block: B:135:0x0308 A[Catch: all -> 0x0319, TryCatch #7 {all -> 0x0319, blocks: (B:119:0x02e3, B:121:0x02ea, B:123:0x02ee, B:125:0x02f2, B:126:0x02f5, B:128:0x02f9, B:130:0x02fd, B:132:0x0301, B:133:0x0302, B:134:0x0307, B:135:0x0308, B:136:0x030f, B:137:0x0310, B:138:0x0317, B:139:0x0318), top: B:156:0x02e3 }] */
    /* JADX WARN: Code duplicated, block: B:137:0x0310 A[Catch: all -> 0x0319, TryCatch #7 {all -> 0x0319, blocks: (B:119:0x02e3, B:121:0x02ea, B:123:0x02ee, B:125:0x02f2, B:126:0x02f5, B:128:0x02f9, B:130:0x02fd, B:132:0x0301, B:133:0x0302, B:134:0x0307, B:135:0x0308, B:136:0x030f, B:137:0x0310, B:138:0x0317, B:139:0x0318), top: B:156:0x02e3 }] */
    /* JADX WARN: Code duplicated, block: B:139:0x0318 A[Catch: all -> 0x0319, TRY_LEAVE, TryCatch #7 {all -> 0x0319, blocks: (B:119:0x02e3, B:121:0x02ea, B:123:0x02ee, B:125:0x02f2, B:126:0x02f5, B:128:0x02f9, B:130:0x02fd, B:132:0x0301, B:133:0x0302, B:134:0x0307, B:135:0x0308, B:136:0x030f, B:137:0x0310, B:138:0x0317, B:139:0x0318), top: B:156:0x02e3 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:45:0x00f4 A[Catch: all -> 0x0074, PHI: r2 r3 r11 r12
  0x00f4: PHI (r2v10 ??) = (r2v38 ??), (r2v39 ??) binds: [B:43:0x00f0, B:26:0x0070] A[DONT_GENERATE, DONT_INLINE]
  0x00f4: PHI (r3v24 java.lang.Object) = (r3v23 java.lang.Object), (r3v33 java.lang.Object) binds: [B:43:0x00f0, B:26:0x0070] A[DONT_GENERATE, DONT_INLINE]
  0x00f4: PHI (r11v15 ??) = (r11v29 ??), (r11v30 ??) binds: [B:43:0x00f0, B:26:0x0070] A[DONT_GENERATE, DONT_INLINE]
  0x00f4: PHI (r12v8 ads_mobile_sdk.o00) = (r12v5 ads_mobile_sdk.o00), (r12v10 ads_mobile_sdk.o00) binds: [B:43:0x00f0, B:26:0x0070] A[DONT_GENERATE, DONT_INLINE], TryCatch #4 {all -> 0x0074, blocks: (B:25:0x006d, B:45:0x00f4, B:47:0x0103, B:48:0x0151, B:30:0x0081, B:42:0x00de), top: B:148:0x0013 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x0103 A[Catch: all -> 0x0074, TryCatch #4 {all -> 0x0074, blocks: (B:25:0x006d, B:45:0x00f4, B:47:0x0103, B:48:0x0151, B:30:0x0081, B:42:0x00de), top: B:148:0x0013 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x0151 A[Catch: all -> 0x0074, TRY_LEAVE, TryCatch #4 {all -> 0x0074, blocks: (B:25:0x006d, B:45:0x00f4, B:47:0x0103, B:48:0x0151, B:30:0x0081, B:42:0x00de), top: B:148:0x0013 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x0189  */
    /* JADX WARN: Code duplicated, block: B:54:0x0192 A[Catch: all -> 0x0060, TryCatch #0 {all -> 0x0060, blocks: (B:20:0x0059, B:52:0x018a, B:54:0x0192, B:55:0x0196, B:57:0x019c), top: B:146:0x0059 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x019c A[Catch: all -> 0x0060, TRY_LEAVE, TryCatch #0 {all -> 0x0060, blocks: (B:20:0x0059, B:52:0x018a, B:54:0x0192, B:55:0x0196, B:57:0x019c), top: B:146:0x0059 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x01b2 A[Catch: all -> 0x01e1, TryCatch #3 {all -> 0x01e1, blocks: (B:62:0x01ab, B:64:0x01b2, B:66:0x01b6, B:68:0x01ba, B:69:0x01bd, B:71:0x01c1, B:73:0x01c5, B:75:0x01c9, B:76:0x01ca, B:77:0x01cf, B:78:0x01d0, B:79:0x01d7, B:80:0x01d8, B:81:0x01df, B:82:0x01e0), top: B:151:0x01ab }] */
    /* JADX WARN: Code duplicated, block: B:71:0x01c1 A[Catch: all -> 0x01e1, TryCatch #3 {all -> 0x01e1, blocks: (B:62:0x01ab, B:64:0x01b2, B:66:0x01b6, B:68:0x01ba, B:69:0x01bd, B:71:0x01c1, B:73:0x01c5, B:75:0x01c9, B:76:0x01ca, B:77:0x01cf, B:78:0x01d0, B:79:0x01d7, B:80:0x01d8, B:81:0x01df, B:82:0x01e0), top: B:151:0x01ab }] */
    /* JADX WARN: Code duplicated, block: B:73:0x01c5 A[Catch: all -> 0x01e1, TryCatch #3 {all -> 0x01e1, blocks: (B:62:0x01ab, B:64:0x01b2, B:66:0x01b6, B:68:0x01ba, B:69:0x01bd, B:71:0x01c1, B:73:0x01c5, B:75:0x01c9, B:76:0x01ca, B:77:0x01cf, B:78:0x01d0, B:79:0x01d7, B:80:0x01d8, B:81:0x01df, B:82:0x01e0), top: B:151:0x01ab }] */
    /* JADX WARN: Code duplicated, block: B:75:0x01c9 A[Catch: all -> 0x01e1, TryCatch #3 {all -> 0x01e1, blocks: (B:62:0x01ab, B:64:0x01b2, B:66:0x01b6, B:68:0x01ba, B:69:0x01bd, B:71:0x01c1, B:73:0x01c5, B:75:0x01c9, B:76:0x01ca, B:77:0x01cf, B:78:0x01d0, B:79:0x01d7, B:80:0x01d8, B:81:0x01df, B:82:0x01e0), top: B:151:0x01ab }] */
    /* JADX WARN: Code duplicated, block: B:76:0x01ca A[Catch: all -> 0x01e1, TryCatch #3 {all -> 0x01e1, blocks: (B:62:0x01ab, B:64:0x01b2, B:66:0x01b6, B:68:0x01ba, B:69:0x01bd, B:71:0x01c1, B:73:0x01c5, B:75:0x01c9, B:76:0x01ca, B:77:0x01cf, B:78:0x01d0, B:79:0x01d7, B:80:0x01d8, B:81:0x01df, B:82:0x01e0), top: B:151:0x01ab }] */
    /* JADX WARN: Code duplicated, block: B:78:0x01d0 A[Catch: all -> 0x01e1, TryCatch #3 {all -> 0x01e1, blocks: (B:62:0x01ab, B:64:0x01b2, B:66:0x01b6, B:68:0x01ba, B:69:0x01bd, B:71:0x01c1, B:73:0x01c5, B:75:0x01c9, B:76:0x01ca, B:77:0x01cf, B:78:0x01d0, B:79:0x01d7, B:80:0x01d8, B:81:0x01df, B:82:0x01e0), top: B:151:0x01ab }] */
    /* JADX WARN: Code duplicated, block: B:80:0x01d8 A[Catch: all -> 0x01e1, TryCatch #3 {all -> 0x01e1, blocks: (B:62:0x01ab, B:64:0x01b2, B:66:0x01b6, B:68:0x01ba, B:69:0x01bd, B:71:0x01c1, B:73:0x01c5, B:75:0x01c9, B:76:0x01ca, B:77:0x01cf, B:78:0x01d0, B:79:0x01d7, B:80:0x01d8, B:81:0x01df, B:82:0x01e0), top: B:151:0x01ab }] */
    /* JADX WARN: Code duplicated, block: B:82:0x01e0 A[Catch: all -> 0x01e1, TRY_LEAVE, TryCatch #3 {all -> 0x01e1, blocks: (B:62:0x01ab, B:64:0x01b2, B:66:0x01b6, B:68:0x01ba, B:69:0x01bd, B:71:0x01c1, B:73:0x01c5, B:75:0x01c9, B:76:0x01ca, B:77:0x01cf, B:78:0x01d0, B:79:0x01d7, B:80:0x01d8, B:81:0x01df, B:82:0x01e0), top: B:151:0x01ab }] */
    /* JADX WARN: Code duplicated, block: B:99:0x022a  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r11v1, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v12, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r11v15, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v19, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r11v22, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v25 */
    /* JADX WARN: Type inference failed for: r11v26 */
    /* JADX WARN: Type inference failed for: r11v27 */
    /* JADX WARN: Type inference failed for: r11v28 */
    /* JADX WARN: Type inference failed for: r11v29 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v30 */
    /* JADX WARN: Type inference failed for: r11v31 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v10, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v16, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v18, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v23, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v29 */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r2v31 */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v33 */
    /* JADX WARN: Type inference failed for: r2v34 */
    /* JADX WARN: Type inference failed for: r2v35 */
    /* JADX WARN: Type inference failed for: r2v36 */
    /* JADX WARN: Type inference failed for: r2v37 */
    /* JADX WARN: Type inference failed for: r2v38 */
    /* JADX WARN: Type inference failed for: r2v39 */
    /* JADX WARN: Type inference failed for: r2v40 */
    /* JADX WARN: Type inference failed for: r2v41 */
    /* JADX WARN: Type inference failed for: r2v6, types: [ads_mobile_sdk.rr3, java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v7, types: [ads_mobile_sdk.tu2, java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v8, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v11, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v19 */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v22, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r5v23 */
    /* JADX WARN: Type inference failed for: r5v24 */
    /* JADX WARN: Type inference failed for: r5v25 */
    /* JADX WARN: Type inference failed for: r5v26 */
    /* JADX WARN: Type inference failed for: r5v27 */
    /* JADX WARN: Type inference failed for: r5v28 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ?? r11;
        ?? r12;
        ?? r13;
        o00 o00Var;
        ?? r14;
        o00 o00Var2;
        ?? r2;
        Object objA;
        ?? r15;
        ?? r3;
        String strB;
        Object objAwait;
        ?? r5;
        ?? r6;
        Object obj2;
        ?? r4;
        ?? r7;
        Object objA2;
        ?? r16;
        ?? r8;
        String strB2;
        Object objAwait2;
        ?? r9;
        ?? r10;
        Object obj3;
        ?? r17;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? A = this.d;
        try {
            try {
                switch (A) {
                    case 0:
                        p005kotlin.ResultKt.throwOnFailure(obj);
                        g83 g83Var = this.e.n;
                        s11 s11Var = s11.CUI_NAME_SDKINIT_INITIAL_CLD;
                        List listEmptyList = CollectionsKt.emptyList();
                        ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
                        o00 o00Var3 = this.e;
                        if (hs3.b().a == null) {
                            A = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                            try {
                                pn pnVar = o00Var3.i;
                                this.a = o00Var3;
                                this.b = A;
                                this.c = A;
                                this.d = 1;
                                Object objWithContext = BuildersKt.withContext(pnVar.a, new hn(pnVar, null), this);
                                if (objWithContext != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                    objWithContext = p005kotlin.Unit.INSTANCE;
                                    break;
                                }
                                if (objWithContext != coroutine_suspended) {
                                    r14 = A;
                                    o00Var2 = o00Var3;
                                    r2 = A;
                                    pn pnVar2 = o00Var2.i;
                                    this.a = o00Var2;
                                    this.b = r14;
                                    this.c = r2;
                                    this.d = 2;
                                    pnVar2.getClass();
                                    objA = pn.a(pnVar2, this);
                                    r3 = r2;
                                    r15 = r14;
                                    if (objA == coroutine_suspended) {
                                        strB = ((jm) objA).B();
                                        Intrinsics.checkNotNullExpressionValue(strB, "getAppSettingsJson(...)");
                                        if (strB.length() <= 0) {
                                            CoroutineScope coroutineScope = o00Var2.d;
                                            i00 block = new i00(o00Var2, null);
                                            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                                            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                                            Intrinsics.checkNotNullParameter(context, "context");
                                            Intrinsics.checkNotNullParameter(block, "block");
                                            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
                                            CoroutineScope coroutineScope2 = o00Var2.d;
                                            j00 block2 = new j00(o00Var2, null);
                                            Intrinsics.checkNotNullParameter(coroutineScope2, "<this>");
                                            Intrinsics.checkNotNullParameter(context, "context");
                                            Intrinsics.checkNotNullParameter(block2, "block");
                                            BuildersKt__Builders_commonKt.launch$default(coroutineScope2, context, null, new ws3(block2, null), 2, null);
                                            r6 = r15;
                                            A = r3;
                                        } else {
                                            CoroutineScope coroutineScope3 = o00Var2.d;
                                            k00 block3 = new k00(o00Var2, null);
                                            EmptyCoroutineContext context2 = EmptyCoroutineContext.INSTANCE;
                                            Intrinsics.checkNotNullParameter(coroutineScope3, "<this>");
                                            Intrinsics.checkNotNullParameter(context2, "context");
                                            Intrinsics.checkNotNullParameter(block3, "block");
                                            Deferred deferredAsync$default = BuildersKt__Builders_commonKt.async$default(coroutineScope3, context2, null, new vs3(block3, null), 2, null);
                                            this.a = r15;
                                            this.b = r3;
                                            this.c = null;
                                            this.d = 3;
                                            objAwait = deferredAsync$default.await(this);
                                            if (objAwait != coroutine_suspended) {
                                                r5 = r15;
                                                r4 = r3;
                                                A = r4;
                                                r6 = r5;
                                                if (!((Boolean) objAwait).booleanValue()) {
                                                    xs3.a("Failed to fetch CLD during initialization.", null, 6);
                                                    A = r4;
                                                    r6 = r5;
                                                }
                                            }
                                        }
                                        obj2 = p005kotlin.Unit.INSTANCE;
                                        if (obj2 instanceof i01) {
                                            xs3.a((i01) obj2, false);
                                            break;
                                        }
                                        CloseableKt.closeFinally(A, null);
                                        return p005kotlin.Unit.INSTANCE;
                                    }
                                }
                            } catch (Throwable th) {
                                th = th;
                                r11 = A;
                                try {
                                    r11.b(th);
                                    if (!(th instanceof v24)) {
                                        throw th;
                                    }
                                    if (!(th instanceof TimeoutCancellationException)) {
                                        r11.a(th);
                                    }
                                    if (!(th instanceof TimeoutCancellationException)) {
                                        throw new i21(th);
                                    }
                                    if (!(th instanceof CancellationException)) {
                                        throw new wz0(th);
                                    }
                                    if (th instanceof w01) {
                                        throw th;
                                    }
                                    throw new b01(th);
                                } catch (Throwable th2) {
                                    try {
                                        throw th2;
                                    } catch (Throwable th3) {
                                        CloseableKt.closeFinally(A, th2);
                                        throw th3;
                                    }
                                }
                            }
                        } else {
                            A = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                            try {
                                pn pnVar3 = o00Var3.i;
                                this.a = o00Var3;
                                this.b = A;
                                this.c = A;
                                this.d = 4;
                                Object objWithContext2 = BuildersKt.withContext(pnVar3.a, new hn(pnVar3, null), this);
                                if (objWithContext2 != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                    objWithContext2 = p005kotlin.Unit.INSTANCE;
                                    break;
                                }
                                if (objWithContext2 != coroutine_suspended) {
                                    r13 = A;
                                    o00Var = o00Var3;
                                    r7 = A;
                                    pn pnVar4 = o00Var.i;
                                    this.a = o00Var;
                                    this.b = r13;
                                    this.c = r7;
                                    this.d = 5;
                                    pnVar4.getClass();
                                    objA2 = pn.a(pnVar4, this);
                                    r8 = r7;
                                    r16 = r13;
                                    if (objA2 == coroutine_suspended) {
                                        strB2 = ((jm) objA2).B();
                                        Intrinsics.checkNotNullExpressionValue(strB2, "getAppSettingsJson(...)");
                                        if (strB2.length() <= 0) {
                                            CoroutineScope coroutineScope4 = o00Var.d;
                                            i00 block4 = new i00(o00Var, null);
                                            EmptyCoroutineContext context3 = EmptyCoroutineContext.INSTANCE;
                                            Intrinsics.checkNotNullParameter(coroutineScope4, "<this>");
                                            Intrinsics.checkNotNullParameter(context3, "context");
                                            Intrinsics.checkNotNullParameter(block4, "block");
                                            BuildersKt__Builders_commonKt.launch$default(coroutineScope4, context3, null, new ws3(block4, null), 2, null);
                                            CoroutineScope coroutineScope5 = o00Var.d;
                                            j00 block5 = new j00(o00Var, null);
                                            Intrinsics.checkNotNullParameter(coroutineScope5, "<this>");
                                            Intrinsics.checkNotNullParameter(context3, "context");
                                            Intrinsics.checkNotNullParameter(block5, "block");
                                            BuildersKt__Builders_commonKt.launch$default(coroutineScope5, context3, null, new ws3(block5, null), 2, null);
                                            r10 = r16;
                                            A = r8;
                                        } else {
                                            CoroutineScope coroutineScope6 = o00Var.d;
                                            k00 block6 = new k00(o00Var, null);
                                            EmptyCoroutineContext context4 = EmptyCoroutineContext.INSTANCE;
                                            Intrinsics.checkNotNullParameter(coroutineScope6, "<this>");
                                            Intrinsics.checkNotNullParameter(context4, "context");
                                            Intrinsics.checkNotNullParameter(block6, "block");
                                            Deferred deferredAsync$default2 = BuildersKt__Builders_commonKt.async$default(coroutineScope6, context4, null, new vs3(block6, null), 2, null);
                                            this.a = r16;
                                            this.b = r8;
                                            this.c = null;
                                            this.d = 6;
                                            objAwait2 = deferredAsync$default2.await(this);
                                            if (objAwait2 != coroutine_suspended) {
                                                r9 = r16;
                                                r17 = r8;
                                                A = r17;
                                                r10 = r9;
                                                if (!((Boolean) objAwait2).booleanValue()) {
                                                    xs3.a("Failed to fetch CLD during initialization.", null, 6);
                                                    A = r17;
                                                    r10 = r9;
                                                }
                                            }
                                        }
                                        obj3 = p005kotlin.Unit.INSTANCE;
                                        if (obj3 instanceof i01) {
                                            xs3.a((i01) obj3, false);
                                            break;
                                        }
                                        CloseableKt.closeFinally(A, null);
                                        return p005kotlin.Unit.INSTANCE;
                                    }
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                r12 = A;
                                try {
                                    r12.b(th);
                                    if (!(th instanceof v24)) {
                                        throw th;
                                    }
                                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                        r12.a(th);
                                    }
                                    if (!(th instanceof TimeoutCancellationException)) {
                                        throw new i21(th);
                                    }
                                    if (!(th instanceof CancellationException)) {
                                        throw new wz0(th);
                                    }
                                    if (th instanceof w01) {
                                        throw th;
                                    }
                                    throw new b01(th);
                                } catch (Throwable th5) {
                                    try {
                                        throw th5;
                                    } catch (Throwable th6) {
                                        CloseableKt.closeFinally(A, th5);
                                        throw th6;
                                    }
                                }
                            }
                        }
                        return coroutine_suspended;
                    case 1:
                        Closeable closeable = this.c;
                        rr3 rr3Var = (rr3) this.b;
                        o00Var2 = (o00) this.a;
                        p005kotlin.ResultKt.throwOnFailure(obj);
                        r2 = closeable;
                        r14 = rr3Var;
                        pn pnVar5 = o00Var2.i;
                        this.a = o00Var2;
                        this.b = r14;
                        this.c = r2;
                        this.d = 2;
                        pnVar5.getClass();
                        objA = pn.a(pnVar5, this);
                        r3 = r2;
                        r15 = r14;
                        if (objA == coroutine_suspended) {
                            strB = ((jm) objA).B();
                            Intrinsics.checkNotNullExpressionValue(strB, "getAppSettingsJson(...)");
                            if (strB.length() <= 0) {
                                CoroutineScope coroutineScope7 = o00Var2.d;
                                i00 block7 = new i00(o00Var2, null);
                                EmptyCoroutineContext context5 = EmptyCoroutineContext.INSTANCE;
                                Intrinsics.checkNotNullParameter(coroutineScope7, "<this>");
                                Intrinsics.checkNotNullParameter(context5, "context");
                                Intrinsics.checkNotNullParameter(block7, "block");
                                BuildersKt__Builders_commonKt.launch$default(coroutineScope7, context5, null, new ws3(block7, null), 2, null);
                                CoroutineScope coroutineScope8 = o00Var2.d;
                                j00 block8 = new j00(o00Var2, null);
                                Intrinsics.checkNotNullParameter(coroutineScope8, "<this>");
                                Intrinsics.checkNotNullParameter(context5, "context");
                                Intrinsics.checkNotNullParameter(block8, "block");
                                BuildersKt__Builders_commonKt.launch$default(coroutineScope8, context5, null, new ws3(block8, null), 2, null);
                                r6 = r15;
                                A = r3;
                            } else {
                                CoroutineScope coroutineScope9 = o00Var2.d;
                                k00 block9 = new k00(o00Var2, null);
                                EmptyCoroutineContext context6 = EmptyCoroutineContext.INSTANCE;
                                Intrinsics.checkNotNullParameter(coroutineScope9, "<this>");
                                Intrinsics.checkNotNullParameter(context6, "context");
                                Intrinsics.checkNotNullParameter(block9, "block");
                                Deferred deferredAsync$default3 = BuildersKt__Builders_commonKt.async$default(coroutineScope9, context6, null, new vs3(block9, null), 2, null);
                                this.a = r15;
                                this.b = r3;
                                this.c = null;
                                this.d = 3;
                                objAwait = deferredAsync$default3.await(this);
                                if (objAwait != coroutine_suspended) {
                                    r5 = r15;
                                    r4 = r3;
                                    A = r4;
                                    r6 = r5;
                                    if (!((Boolean) objAwait).booleanValue()) {
                                        xs3.a("Failed to fetch CLD during initialization.", null, 6);
                                        A = r4;
                                        r6 = r5;
                                    }
                                }
                            }
                            obj2 = p005kotlin.Unit.INSTANCE;
                            if (obj2 instanceof i01) {
                                xs3.a((i01) obj2, false);
                                break;
                            }
                            CloseableKt.closeFinally(A, null);
                            return p005kotlin.Unit.INSTANCE;
                        }
                        return coroutine_suspended;
                    case 2:
                        Closeable closeable2 = this.c;
                        rr3 rr3Var2 = (rr3) this.b;
                        o00Var2 = (o00) this.a;
                        p005kotlin.ResultKt.throwOnFailure(obj);
                        objA = obj;
                        r3 = closeable2;
                        r15 = rr3Var2;
                        strB = ((jm) objA).B();
                        Intrinsics.checkNotNullExpressionValue(strB, "getAppSettingsJson(...)");
                        if (strB.length() <= 0) {
                            CoroutineScope coroutineScope10 = o00Var2.d;
                            k00 block10 = new k00(o00Var2, null);
                            EmptyCoroutineContext context7 = EmptyCoroutineContext.INSTANCE;
                            Intrinsics.checkNotNullParameter(coroutineScope10, "<this>");
                            Intrinsics.checkNotNullParameter(context7, "context");
                            Intrinsics.checkNotNullParameter(block10, "block");
                            Deferred deferredAsync$default4 = BuildersKt__Builders_commonKt.async$default(coroutineScope10, context7, null, new vs3(block10, null), 2, null);
                            this.a = r15;
                            this.b = r3;
                            this.c = null;
                            this.d = 3;
                            objAwait = deferredAsync$default4.await(this);
                            if (objAwait != coroutine_suspended) {
                                r5 = r15;
                                r4 = r3;
                                A = r4;
                                r6 = r5;
                                if (!((Boolean) objAwait).booleanValue()) {
                                    xs3.a("Failed to fetch CLD during initialization.", null, 6);
                                    A = r4;
                                    r6 = r5;
                                }
                            }
                            return coroutine_suspended;
                        }
                        CoroutineScope coroutineScope11 = o00Var2.d;
                        i00 block11 = new i00(o00Var2, null);
                        EmptyCoroutineContext context8 = EmptyCoroutineContext.INSTANCE;
                        Intrinsics.checkNotNullParameter(coroutineScope11, "<this>");
                        Intrinsics.checkNotNullParameter(context8, "context");
                        Intrinsics.checkNotNullParameter(block11, "block");
                        BuildersKt__Builders_commonKt.launch$default(coroutineScope11, context8, null, new ws3(block11, null), 2, null);
                        CoroutineScope coroutineScope12 = o00Var2.d;
                        j00 block12 = new j00(o00Var2, null);
                        Intrinsics.checkNotNullParameter(coroutineScope12, "<this>");
                        Intrinsics.checkNotNullParameter(context8, "context");
                        Intrinsics.checkNotNullParameter(block12, "block");
                        BuildersKt__Builders_commonKt.launch$default(coroutineScope12, context8, null, new ws3(block12, null), 2, null);
                        r6 = r15;
                        A = r3;
                        obj2 = p005kotlin.Unit.INSTANCE;
                        if (obj2 instanceof i01) {
                            xs3.a((i01) obj2, false);
                            break;
                        }
                        CloseableKt.closeFinally(A, null);
                        return p005kotlin.Unit.INSTANCE;
                    case 3:
                        A = this.b;
                        r6 = (rr3) this.a;
                        try {
                            p005kotlin.ResultKt.throwOnFailure(obj);
                            objAwait = obj;
                            r4 = A;
                            r5 = r6;
                            A = r4;
                            r6 = r5;
                            if (!((Boolean) objAwait).booleanValue()) {
                                xs3.a("Failed to fetch CLD during initialization.", null, 6);
                                A = r4;
                                r6 = r5;
                            }
                            obj2 = p005kotlin.Unit.INSTANCE;
                            if (obj2 instanceof i01) {
                                xs3.a((i01) obj2, false);
                                break;
                            }
                            CloseableKt.closeFinally(A, null);
                            return p005kotlin.Unit.INSTANCE;
                        } catch (Throwable th7) {
                            th = th7;
                            r11 = r6;
                            r11.b(th);
                            if (!(th instanceof v24)) {
                                throw th;
                            }
                            if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                r11.a(th);
                            }
                            if (!(th instanceof TimeoutCancellationException)) {
                                throw new i21(th);
                            }
                            if (!(th instanceof CancellationException)) {
                                throw new wz0(th);
                            }
                            if (th instanceof w01) {
                                throw th;
                            }
                            throw new b01(th);
                        }
                    case 4:
                        Closeable closeable3 = this.c;
                        rr3 rr3Var3 = (rr3) this.b;
                        o00Var = (o00) this.a;
                        p005kotlin.ResultKt.throwOnFailure(obj);
                        r7 = closeable3;
                        r13 = rr3Var3;
                        pn pnVar6 = o00Var.i;
                        this.a = o00Var;
                        this.b = r13;
                        this.c = r7;
                        this.d = 5;
                        pnVar6.getClass();
                        objA2 = pn.a(pnVar6, this);
                        r8 = r7;
                        r16 = r13;
                        if (objA2 == coroutine_suspended) {
                            strB2 = ((jm) objA2).B();
                            Intrinsics.checkNotNullExpressionValue(strB2, "getAppSettingsJson(...)");
                            if (strB2.length() <= 0) {
                                CoroutineScope coroutineScope13 = o00Var.d;
                                i00 block13 = new i00(o00Var, null);
                                EmptyCoroutineContext context9 = EmptyCoroutineContext.INSTANCE;
                                Intrinsics.checkNotNullParameter(coroutineScope13, "<this>");
                                Intrinsics.checkNotNullParameter(context9, "context");
                                Intrinsics.checkNotNullParameter(block13, "block");
                                BuildersKt__Builders_commonKt.launch$default(coroutineScope13, context9, null, new ws3(block13, null), 2, null);
                                CoroutineScope coroutineScope14 = o00Var.d;
                                j00 block14 = new j00(o00Var, null);
                                Intrinsics.checkNotNullParameter(coroutineScope14, "<this>");
                                Intrinsics.checkNotNullParameter(context9, "context");
                                Intrinsics.checkNotNullParameter(block14, "block");
                                BuildersKt__Builders_commonKt.launch$default(coroutineScope14, context9, null, new ws3(block14, null), 2, null);
                                r10 = r16;
                                A = r8;
                            } else {
                                CoroutineScope coroutineScope15 = o00Var.d;
                                k00 block15 = new k00(o00Var, null);
                                EmptyCoroutineContext context10 = EmptyCoroutineContext.INSTANCE;
                                Intrinsics.checkNotNullParameter(coroutineScope15, "<this>");
                                Intrinsics.checkNotNullParameter(context10, "context");
                                Intrinsics.checkNotNullParameter(block15, "block");
                                Deferred deferredAsync$default5 = BuildersKt__Builders_commonKt.async$default(coroutineScope15, context10, null, new vs3(block15, null), 2, null);
                                this.a = r16;
                                this.b = r8;
                                this.c = null;
                                this.d = 6;
                                objAwait2 = deferredAsync$default5.await(this);
                                if (objAwait2 != coroutine_suspended) {
                                    r9 = r16;
                                    r17 = r8;
                                    A = r17;
                                    r10 = r9;
                                    if (!((Boolean) objAwait2).booleanValue()) {
                                        xs3.a("Failed to fetch CLD during initialization.", null, 6);
                                        A = r17;
                                        r10 = r9;
                                    }
                                }
                            }
                            obj3 = p005kotlin.Unit.INSTANCE;
                            if (obj3 instanceof i01) {
                                xs3.a((i01) obj3, false);
                                break;
                            }
                            CloseableKt.closeFinally(A, null);
                            return p005kotlin.Unit.INSTANCE;
                        }
                        return coroutine_suspended;
                    case 5:
                        Closeable closeable4 = this.c;
                        rr3 rr3Var4 = (rr3) this.b;
                        o00Var = (o00) this.a;
                        p005kotlin.ResultKt.throwOnFailure(obj);
                        objA2 = obj;
                        r8 = closeable4;
                        r16 = rr3Var4;
                        strB2 = ((jm) objA2).B();
                        Intrinsics.checkNotNullExpressionValue(strB2, "getAppSettingsJson(...)");
                        if (strB2.length() <= 0) {
                            CoroutineScope coroutineScope16 = o00Var.d;
                            k00 block16 = new k00(o00Var, null);
                            EmptyCoroutineContext context11 = EmptyCoroutineContext.INSTANCE;
                            Intrinsics.checkNotNullParameter(coroutineScope16, "<this>");
                            Intrinsics.checkNotNullParameter(context11, "context");
                            Intrinsics.checkNotNullParameter(block16, "block");
                            Deferred deferredAsync$default6 = BuildersKt__Builders_commonKt.async$default(coroutineScope16, context11, null, new vs3(block16, null), 2, null);
                            this.a = r16;
                            this.b = r8;
                            this.c = null;
                            this.d = 6;
                            objAwait2 = deferredAsync$default6.await(this);
                            if (objAwait2 != coroutine_suspended) {
                                r9 = r16;
                                r17 = r8;
                                A = r17;
                                r10 = r9;
                                if (!((Boolean) objAwait2).booleanValue()) {
                                    xs3.a("Failed to fetch CLD during initialization.", null, 6);
                                    A = r17;
                                    r10 = r9;
                                }
                            }
                            return coroutine_suspended;
                        }
                        CoroutineScope coroutineScope17 = o00Var.d;
                        i00 block17 = new i00(o00Var, null);
                        EmptyCoroutineContext context12 = EmptyCoroutineContext.INSTANCE;
                        Intrinsics.checkNotNullParameter(coroutineScope17, "<this>");
                        Intrinsics.checkNotNullParameter(context12, "context");
                        Intrinsics.checkNotNullParameter(block17, "block");
                        BuildersKt__Builders_commonKt.launch$default(coroutineScope17, context12, null, new ws3(block17, null), 2, null);
                        CoroutineScope coroutineScope18 = o00Var.d;
                        j00 block18 = new j00(o00Var, null);
                        Intrinsics.checkNotNullParameter(coroutineScope18, "<this>");
                        Intrinsics.checkNotNullParameter(context12, "context");
                        Intrinsics.checkNotNullParameter(block18, "block");
                        BuildersKt__Builders_commonKt.launch$default(coroutineScope18, context12, null, new ws3(block18, null), 2, null);
                        r10 = r16;
                        A = r8;
                        obj3 = p005kotlin.Unit.INSTANCE;
                        if (obj3 instanceof i01) {
                            xs3.a((i01) obj3, false);
                            break;
                        }
                        CloseableKt.closeFinally(A, null);
                        return p005kotlin.Unit.INSTANCE;
                    case 6:
                        A = this.b;
                        r10 = (rr3) this.a;
                        try {
                            p005kotlin.ResultKt.throwOnFailure(obj);
                            objAwait2 = obj;
                            r17 = A;
                            r9 = r10;
                            A = r17;
                            r10 = r9;
                            if (!((Boolean) objAwait2).booleanValue()) {
                                xs3.a("Failed to fetch CLD during initialization.", null, 6);
                                A = r17;
                                r10 = r9;
                            }
                            obj3 = p005kotlin.Unit.INSTANCE;
                            if (obj3 instanceof i01) {
                                xs3.a((i01) obj3, false);
                                break;
                            }
                            CloseableKt.closeFinally(A, null);
                            return p005kotlin.Unit.INSTANCE;
                        } catch (Throwable th8) {
                            th = th8;
                            r12 = r10;
                            r12.b(th);
                            if (!(th instanceof v24)) {
                                throw th;
                            }
                            if (!(th instanceof TimeoutCancellationException)) {
                                r12.a(th);
                            }
                            if (!(th instanceof TimeoutCancellationException)) {
                                throw new i21(th);
                            }
                            if (!(th instanceof CancellationException)) {
                                throw new wz0(th);
                            }
                            if (th instanceof w01) {
                                throw th;
                            }
                            throw new b01(th);
                        }
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } catch (Throwable th9) {
                th = th9;
            }
        } catch (Throwable th10) {
            th = th10;
        }
    }
}

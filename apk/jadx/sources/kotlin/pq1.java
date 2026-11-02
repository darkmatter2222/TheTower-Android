package kotlin;

import com.ironsource.C3510b4;
import java.io.Closeable;
import java.util.WeakHashMap;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.NonCancellable;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.TimeoutKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Ref;
import p005kotlin.text.StringsKt;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class pq1 extends SuspendLambda implements Function2 {
    public Object a;
    public Object b;
    public Object c;
    public Object d;
    public int e;
    public int f;
    public final /* synthetic */ String g;
    public final /* synthetic */ boolean h;
    public final /* synthetic */ yq1 i;
    public final /* synthetic */ boolean j;
    public final /* synthetic */ Ref.ObjectRef k;
    public final /* synthetic */ String l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pq1(String str, boolean z, yq1 yq1Var, boolean z2, Ref.ObjectRef objectRef, String str2, Continuation continuation) {
        super(2, continuation);
        this.g = str;
        this.h = z;
        this.i = yq1Var;
        this.j = z2;
        this.k = objectRef;
        this.l = str2;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new pq1(this.g, this.h, this.i, this.j, this.k, this.l, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((pq1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:102:0x02b9 A[Catch: all -> 0x02e8, TryCatch #6 {all -> 0x02e8, blocks: (B:100:0x02b2, B:102:0x02b9, B:104:0x02bd, B:106:0x02c1, B:107:0x02c4, B:109:0x02c8, B:111:0x02cc, B:113:0x02d0, B:114:0x02d1, B:115:0x02d6, B:116:0x02d7, B:117:0x02de, B:118:0x02df, B:119:0x02e6, B:120:0x02e7), top: B:227:0x02b2 }] */
    /* JADX WARN: Code duplicated, block: B:104:0x02bd A[Catch: all -> 0x02e8, TryCatch #6 {all -> 0x02e8, blocks: (B:100:0x02b2, B:102:0x02b9, B:104:0x02bd, B:106:0x02c1, B:107:0x02c4, B:109:0x02c8, B:111:0x02cc, B:113:0x02d0, B:114:0x02d1, B:115:0x02d6, B:116:0x02d7, B:117:0x02de, B:118:0x02df, B:119:0x02e6, B:120:0x02e7), top: B:227:0x02b2 }] */
    /* JADX WARN: Code duplicated, block: B:109:0x02c8 A[Catch: all -> 0x02e8, TryCatch #6 {all -> 0x02e8, blocks: (B:100:0x02b2, B:102:0x02b9, B:104:0x02bd, B:106:0x02c1, B:107:0x02c4, B:109:0x02c8, B:111:0x02cc, B:113:0x02d0, B:114:0x02d1, B:115:0x02d6, B:116:0x02d7, B:117:0x02de, B:118:0x02df, B:119:0x02e6, B:120:0x02e7), top: B:227:0x02b2 }] */
    /* JADX WARN: Code duplicated, block: B:111:0x02cc A[Catch: all -> 0x02e8, TryCatch #6 {all -> 0x02e8, blocks: (B:100:0x02b2, B:102:0x02b9, B:104:0x02bd, B:106:0x02c1, B:107:0x02c4, B:109:0x02c8, B:111:0x02cc, B:113:0x02d0, B:114:0x02d1, B:115:0x02d6, B:116:0x02d7, B:117:0x02de, B:118:0x02df, B:119:0x02e6, B:120:0x02e7), top: B:227:0x02b2 }] */
    /* JADX WARN: Code duplicated, block: B:113:0x02d0 A[Catch: all -> 0x02e8, TryCatch #6 {all -> 0x02e8, blocks: (B:100:0x02b2, B:102:0x02b9, B:104:0x02bd, B:106:0x02c1, B:107:0x02c4, B:109:0x02c8, B:111:0x02cc, B:113:0x02d0, B:114:0x02d1, B:115:0x02d6, B:116:0x02d7, B:117:0x02de, B:118:0x02df, B:119:0x02e6, B:120:0x02e7), top: B:227:0x02b2 }] */
    /* JADX WARN: Code duplicated, block: B:114:0x02d1 A[Catch: all -> 0x02e8, TryCatch #6 {all -> 0x02e8, blocks: (B:100:0x02b2, B:102:0x02b9, B:104:0x02bd, B:106:0x02c1, B:107:0x02c4, B:109:0x02c8, B:111:0x02cc, B:113:0x02d0, B:114:0x02d1, B:115:0x02d6, B:116:0x02d7, B:117:0x02de, B:118:0x02df, B:119:0x02e6, B:120:0x02e7), top: B:227:0x02b2 }] */
    /* JADX WARN: Code duplicated, block: B:116:0x02d7 A[Catch: all -> 0x02e8, TryCatch #6 {all -> 0x02e8, blocks: (B:100:0x02b2, B:102:0x02b9, B:104:0x02bd, B:106:0x02c1, B:107:0x02c4, B:109:0x02c8, B:111:0x02cc, B:113:0x02d0, B:114:0x02d1, B:115:0x02d6, B:116:0x02d7, B:117:0x02de, B:118:0x02df, B:119:0x02e6, B:120:0x02e7), top: B:227:0x02b2 }] */
    /* JADX WARN: Code duplicated, block: B:118:0x02df A[Catch: all -> 0x02e8, TryCatch #6 {all -> 0x02e8, blocks: (B:100:0x02b2, B:102:0x02b9, B:104:0x02bd, B:106:0x02c1, B:107:0x02c4, B:109:0x02c8, B:111:0x02cc, B:113:0x02d0, B:114:0x02d1, B:115:0x02d6, B:116:0x02d7, B:117:0x02de, B:118:0x02df, B:119:0x02e6, B:120:0x02e7), top: B:227:0x02b2 }] */
    /* JADX WARN: Code duplicated, block: B:120:0x02e7 A[Catch: all -> 0x02e8, TRY_LEAVE, TryCatch #6 {all -> 0x02e8, blocks: (B:100:0x02b2, B:102:0x02b9, B:104:0x02bd, B:106:0x02c1, B:107:0x02c4, B:109:0x02c8, B:111:0x02cc, B:113:0x02d0, B:114:0x02d1, B:115:0x02d6, B:116:0x02d7, B:117:0x02de, B:118:0x02df, B:119:0x02e6, B:120:0x02e7), top: B:227:0x02b2 }] */
    /* JADX WARN: Code duplicated, block: B:127:0x02f0  */
    /* JADX WARN: Code duplicated, block: B:131:0x0313  */
    /* JADX WARN: Code duplicated, block: B:134:0x031c A[Catch: all -> 0x0404, TRY_LEAVE, TryCatch #1 {all -> 0x0404, blocks: (B:132:0x0316, B:134:0x031c), top: B:217:0x0316 }] */
    /* JADX WARN: Code duplicated, block: B:138:0x032b  */
    /* JADX WARN: Code duplicated, block: B:140:0x033d  */
    /* JADX WARN: Code duplicated, block: B:144:0x038d  */
    /* JADX WARN: Code duplicated, block: B:147:0x0396 A[Catch: all -> 0x002a, TRY_LEAVE, TryCatch #7 {all -> 0x002a, blocks: (B:7:0x0024, B:145:0x0390, B:147:0x0396), top: B:228:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:150:0x03ae  */
    /* JADX WARN: Code duplicated, block: B:151:0x03b1  */
    /* JADX WARN: Code duplicated, block: B:159:0x03cd A[Catch: all -> 0x03fc, TryCatch #12 {all -> 0x03fc, blocks: (B:157:0x03c6, B:159:0x03cd, B:161:0x03d1, B:163:0x03d5, B:164:0x03d8, B:166:0x03dc, B:168:0x03e0, B:170:0x03e4, B:171:0x03e5, B:172:0x03ea, B:173:0x03eb, B:174:0x03f2, B:175:0x03f3, B:176:0x03fa, B:177:0x03fb), top: B:238:0x03c6 }] */
    /* JADX WARN: Code duplicated, block: B:166:0x03dc A[Catch: all -> 0x03fc, TryCatch #12 {all -> 0x03fc, blocks: (B:157:0x03c6, B:159:0x03cd, B:161:0x03d1, B:163:0x03d5, B:164:0x03d8, B:166:0x03dc, B:168:0x03e0, B:170:0x03e4, B:171:0x03e5, B:172:0x03ea, B:173:0x03eb, B:174:0x03f2, B:175:0x03f3, B:176:0x03fa, B:177:0x03fb), top: B:238:0x03c6 }] */
    /* JADX WARN: Code duplicated, block: B:168:0x03e0 A[Catch: all -> 0x03fc, TryCatch #12 {all -> 0x03fc, blocks: (B:157:0x03c6, B:159:0x03cd, B:161:0x03d1, B:163:0x03d5, B:164:0x03d8, B:166:0x03dc, B:168:0x03e0, B:170:0x03e4, B:171:0x03e5, B:172:0x03ea, B:173:0x03eb, B:174:0x03f2, B:175:0x03f3, B:176:0x03fa, B:177:0x03fb), top: B:238:0x03c6 }] */
    /* JADX WARN: Code duplicated, block: B:170:0x03e4 A[Catch: all -> 0x03fc, TryCatch #12 {all -> 0x03fc, blocks: (B:157:0x03c6, B:159:0x03cd, B:161:0x03d1, B:163:0x03d5, B:164:0x03d8, B:166:0x03dc, B:168:0x03e0, B:170:0x03e4, B:171:0x03e5, B:172:0x03ea, B:173:0x03eb, B:174:0x03f2, B:175:0x03f3, B:176:0x03fa, B:177:0x03fb), top: B:238:0x03c6 }] */
    /* JADX WARN: Code duplicated, block: B:171:0x03e5 A[Catch: all -> 0x03fc, TryCatch #12 {all -> 0x03fc, blocks: (B:157:0x03c6, B:159:0x03cd, B:161:0x03d1, B:163:0x03d5, B:164:0x03d8, B:166:0x03dc, B:168:0x03e0, B:170:0x03e4, B:171:0x03e5, B:172:0x03ea, B:173:0x03eb, B:174:0x03f2, B:175:0x03f3, B:176:0x03fa, B:177:0x03fb), top: B:238:0x03c6 }] */
    /* JADX WARN: Code duplicated, block: B:173:0x03eb A[Catch: all -> 0x03fc, TryCatch #12 {all -> 0x03fc, blocks: (B:157:0x03c6, B:159:0x03cd, B:161:0x03d1, B:163:0x03d5, B:164:0x03d8, B:166:0x03dc, B:168:0x03e0, B:170:0x03e4, B:171:0x03e5, B:172:0x03ea, B:173:0x03eb, B:174:0x03f2, B:175:0x03f3, B:176:0x03fa, B:177:0x03fb), top: B:238:0x03c6 }] */
    /* JADX WARN: Code duplicated, block: B:175:0x03f3 A[Catch: all -> 0x03fc, TryCatch #12 {all -> 0x03fc, blocks: (B:157:0x03c6, B:159:0x03cd, B:161:0x03d1, B:163:0x03d5, B:164:0x03d8, B:166:0x03dc, B:168:0x03e0, B:170:0x03e4, B:171:0x03e5, B:172:0x03ea, B:173:0x03eb, B:174:0x03f2, B:175:0x03f3, B:176:0x03fa, B:177:0x03fb), top: B:238:0x03c6 }] */
    /* JADX WARN: Code duplicated, block: B:177:0x03fb A[Catch: all -> 0x03fc, TRY_LEAVE, TryCatch #12 {all -> 0x03fc, blocks: (B:157:0x03c6, B:159:0x03cd, B:161:0x03d1, B:163:0x03d5, B:164:0x03d8, B:166:0x03dc, B:168:0x03e0, B:170:0x03e4, B:171:0x03e5, B:172:0x03ea, B:173:0x03eb, B:174:0x03f2, B:175:0x03f3, B:176:0x03fa, B:177:0x03fb), top: B:238:0x03c6 }] */
    /* JADX WARN: Code duplicated, block: B:191:0x0415 A[Catch: all -> 0x0444, TryCatch #0 {all -> 0x0444, blocks: (B:189:0x040e, B:191:0x0415, B:193:0x0419, B:195:0x041d, B:196:0x0420, B:198:0x0424, B:200:0x0428, B:202:0x042c, B:203:0x042d, B:204:0x0432, B:205:0x0433, B:206:0x043a, B:207:0x043b, B:208:0x0442, B:209:0x0443), top: B:216:0x040e }] */
    /* JADX WARN: Code duplicated, block: B:193:0x0419 A[Catch: all -> 0x0444, TryCatch #0 {all -> 0x0444, blocks: (B:189:0x040e, B:191:0x0415, B:193:0x0419, B:195:0x041d, B:196:0x0420, B:198:0x0424, B:200:0x0428, B:202:0x042c, B:203:0x042d, B:204:0x0432, B:205:0x0433, B:206:0x043a, B:207:0x043b, B:208:0x0442, B:209:0x0443), top: B:216:0x040e }] */
    /* JADX WARN: Code duplicated, block: B:198:0x0424 A[Catch: all -> 0x0444, TryCatch #0 {all -> 0x0444, blocks: (B:189:0x040e, B:191:0x0415, B:193:0x0419, B:195:0x041d, B:196:0x0420, B:198:0x0424, B:200:0x0428, B:202:0x042c, B:203:0x042d, B:204:0x0432, B:205:0x0433, B:206:0x043a, B:207:0x043b, B:208:0x0442, B:209:0x0443), top: B:216:0x040e }] */
    /* JADX WARN: Code duplicated, block: B:200:0x0428 A[Catch: all -> 0x0444, TryCatch #0 {all -> 0x0444, blocks: (B:189:0x040e, B:191:0x0415, B:193:0x0419, B:195:0x041d, B:196:0x0420, B:198:0x0424, B:200:0x0428, B:202:0x042c, B:203:0x042d, B:204:0x0432, B:205:0x0433, B:206:0x043a, B:207:0x043b, B:208:0x0442, B:209:0x0443), top: B:216:0x040e }] */
    /* JADX WARN: Code duplicated, block: B:202:0x042c A[Catch: all -> 0x0444, TryCatch #0 {all -> 0x0444, blocks: (B:189:0x040e, B:191:0x0415, B:193:0x0419, B:195:0x041d, B:196:0x0420, B:198:0x0424, B:200:0x0428, B:202:0x042c, B:203:0x042d, B:204:0x0432, B:205:0x0433, B:206:0x043a, B:207:0x043b, B:208:0x0442, B:209:0x0443), top: B:216:0x040e }] */
    /* JADX WARN: Code duplicated, block: B:203:0x042d A[Catch: all -> 0x0444, TryCatch #0 {all -> 0x0444, blocks: (B:189:0x040e, B:191:0x0415, B:193:0x0419, B:195:0x041d, B:196:0x0420, B:198:0x0424, B:200:0x0428, B:202:0x042c, B:203:0x042d, B:204:0x0432, B:205:0x0433, B:206:0x043a, B:207:0x043b, B:208:0x0442, B:209:0x0443), top: B:216:0x040e }] */
    /* JADX WARN: Code duplicated, block: B:205:0x0433 A[Catch: all -> 0x0444, TryCatch #0 {all -> 0x0444, blocks: (B:189:0x040e, B:191:0x0415, B:193:0x0419, B:195:0x041d, B:196:0x0420, B:198:0x0424, B:200:0x0428, B:202:0x042c, B:203:0x042d, B:204:0x0432, B:205:0x0433, B:206:0x043a, B:207:0x043b, B:208:0x0442, B:209:0x0443), top: B:216:0x040e }] */
    /* JADX WARN: Code duplicated, block: B:207:0x043b A[Catch: all -> 0x0444, TryCatch #0 {all -> 0x0444, blocks: (B:189:0x040e, B:191:0x0415, B:193:0x0419, B:195:0x041d, B:196:0x0420, B:198:0x0424, B:200:0x0428, B:202:0x042c, B:203:0x042d, B:204:0x0432, B:205:0x0433, B:206:0x043a, B:207:0x043b, B:208:0x0442, B:209:0x0443), top: B:216:0x040e }] */
    /* JADX WARN: Code duplicated, block: B:209:0x0443 A[Catch: all -> 0x0444, TRY_LEAVE, TryCatch #0 {all -> 0x0444, blocks: (B:189:0x040e, B:191:0x0415, B:193:0x0419, B:195:0x041d, B:196:0x0420, B:198:0x0424, B:200:0x0428, B:202:0x042c, B:203:0x042d, B:204:0x0432, B:205:0x0433, B:206:0x043a, B:207:0x043b, B:208:0x0442, B:209:0x0443), top: B:216:0x040e }] */
    /* JADX WARN: Code duplicated, block: B:22:0x0079 A[PHI: r0 r1 r2 r3 r4
  0x0079: PHI (r0v33 int) = (r0v29 int), (r0v39 int) binds: [B:79:0x0259, B:21:0x0068] A[DONT_GENERATE, DONT_INLINE]
  0x0079: PHI (r1v26 kotlinx.coroutines.CompletableDeferred) = (r1v21 kotlinx.coroutines.CompletableDeferred), (r1v38 kotlinx.coroutines.CompletableDeferred) binds: [B:79:0x0259, B:21:0x0068] A[DONT_GENERATE, DONT_INLINE]
  0x0079: PHI (r2v47 ??) = (r2v98 ??), (r2v99 ??) binds: [B:79:0x0259, B:21:0x0068] A[DONT_GENERATE, DONT_INLINE]
  0x0079: PHI (r3v32 kotlin.jvm.internal.Ref$ObjectRef) = (r3v24 kotlin.jvm.internal.Ref$ObjectRef), (r3v41 kotlin.jvm.internal.Ref$ObjectRef) binds: [B:79:0x0259, B:21:0x0068] A[DONT_GENERATE, DONT_INLINE]
  0x0079: PHI (r4v8 ads_mobile_sdk.pq1) = (r4v5 ads_mobile_sdk.pq1), (r4v0 ads_mobile_sdk.pq1) binds: [B:79:0x0259, B:21:0x0068] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:37:0x0124  */
    /* JADX WARN: Code duplicated, block: B:40:0x013e  */
    /* JADX WARN: Code duplicated, block: B:42:0x014e  */
    /* JADX WARN: Code duplicated, block: B:45:0x0153  */
    /* JADX WARN: Code duplicated, block: B:50:0x0161  */
    /* JADX WARN: Code duplicated, block: B:56:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:59:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:61:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:64:0x020a  */
    /* JADX WARN: Code duplicated, block: B:67:0x0210  */
    /* JADX WARN: Code duplicated, block: B:83:0x0263  */
    /* JADX WARN: Code duplicated, block: B:93:0x02a0 A[Catch: all -> 0x02ac, TRY_LEAVE, TryCatch #10 {all -> 0x02ac, blocks: (B:91:0x029a, B:93:0x02a0), top: B:234:0x029a }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v22, types: [T, ads_mobile_sdk.r31, android.view.View, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v34, types: [ads_mobile_sdk.r31, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v5, types: [ads_mobile_sdk.r31] */
    /* JADX WARN: Type inference failed for: r2v0, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v100 */
    /* JADX WARN: Type inference failed for: r2v101 */
    /* JADX WARN: Type inference failed for: r2v102 */
    /* JADX WARN: Type inference failed for: r2v103 */
    /* JADX WARN: Type inference failed for: r2v104 */
    /* JADX WARN: Type inference failed for: r2v105 */
    /* JADX WARN: Type inference failed for: r2v35 */
    /* JADX WARN: Type inference failed for: r2v38, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v41 */
    /* JADX WARN: Type inference failed for: r2v42, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v43 */
    /* JADX WARN: Type inference failed for: r2v44 */
    /* JADX WARN: Type inference failed for: r2v47 */
    /* JADX WARN: Type inference failed for: r2v98 */
    /* JADX WARN: Type inference failed for: r2v99 */
    /* JADX WARN: Type inference failed for: r3v20 */
    /* JADX WARN: Type inference failed for: r3v25, types: [T] */
    /* JADX WARN: Type inference failed for: r3v49, types: [ads_mobile_sdk.r31, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v56 */
    /* JADX WARN: Type inference failed for: r3v62 */
    /* JADX WARN: Type inference failed for: r3v63 */
    /* JADX WARN: Type inference failed for: r3v64 */
    /* JADX WARN: Type inference failed for: r5v24 */
    /* JADX WARN: Type inference failed for: r5v28 */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r5v32 */
    /* JADX WARN: Type inference failed for: r5v38 */
    /* JADX WARN: Type inference failed for: r5v42 */
    /* JADX WARN: Type inference failed for: r5v43 */
    /* JADX WARN: Type inference failed for: r5v44 */
    /* JADX WARN: Type inference failed for: r5v45 */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Ref.ObjectRef objectRef;
        Ref.BooleanRef booleanRef;
        int i;
        Deferred deferred;
        Object objA;
        Ref.BooleanRef booleanRef2;
        int i2;
        Object objA2;
        Ref.ObjectRef objectRef2;
        Ref.BooleanRef booleanRef3;
        Ref.ObjectRef objectRef3;
        int i3;
        Ref.ObjectRef objectRef4;
        Object objA3;
        Ref.BooleanRef booleanRef4;
        Ref.ObjectRef objectRef5;
        Deferred deferred2;
        boolean z;
        CharSequence charSequence;
        v01 v01Var;
        ?? r0;
        fq1 fq1Var;
        ar1 ar1Var;
        ?? r2;
        int i4;
        Ref.ObjectRef objectRef6;
        Ref.ObjectRef objectRef7;
        ?? r3;
        Object objAwait;
        ?? r4;
        CompletableDeferred completableDeferredCompletableDeferred$default;
        ar1 ar1Var2;
        jq1 jq1Var;
        ?? r5;
        ?? r6;
        ?? r7;
        int i5;
        CompletableDeferred completableDeferred;
        ?? r1;
        CharSequence charSequence2;
        rr3 rr3VarA;
        Closeable closeable;
        Object objC;
        ?? r8;
        rr3 rr3Var;
        int i6;
        Closeable closeable2;
        Object objA4;
        ?? r9;
        CompletableDeferred completableDeferred2;
        rr3 rr3Var2;
        rr3 rr3Var3;
        rr3 rr3Var4;
        Closeable closeable3;
        v01 v01Var2;
        v01 v01Var3;
        rr3 rr3Var5;
        Closeable closeable4;
        ?? r10;
        ?? r11;
        rr3 rr3VarA2;
        Closeable closeable5;
        long rawValue;
        oq1 oq1Var;
        rr3 rr3Var6;
        Closeable closeable6;
        rr3 rr3Var7;
        Closeable closeable7;
        ?? r12;
        Object obj2;
        boolean z2;
        pq1 pq1Var = this;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (pq1Var.f) {
            case 0:
                p005kotlin.ResultKt.throwOnFailure(obj);
                Ref.BooleanRef booleanRef5 = new Ref.BooleanRef();
                objectRef = new Ref.ObjectRef();
                ?? r13 = pq1Var.g;
                objectRef.element = r13;
                if (!pq1Var.h || r13 != 0) {
                    booleanRef = booleanRef5;
                    i = 0;
                    deferred = null;
                    objectRef4 = objectRef;
                    iz3 iz3Var = pq1Var.i.k;
                    v14 v14Var = new v14(u14.DEFAULT, 0, 0, 14);
                    ar1 ar1Var3 = pq1Var.i.m;
                    pq1Var.a = booleanRef;
                    pq1Var.b = deferred;
                    pq1Var.c = objectRef4;
                    pq1Var.e = i;
                    pq1Var.f = 3;
                    objA3 = iz3.a(iz3Var, v14Var, ar1Var3, true, (eo2) null, true, (Continuation) this, 24);
                    pq1Var = this;
                    if (objA3 != coroutine_suspended) {
                        booleanRef4 = booleanRef;
                        objectRef5 = objectRef4;
                        deferred2 = deferred;
                        v01Var = (v01) objA3;
                        if (v01Var instanceof i01) {
                            return (i01) v01Var;
                        }
                        Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                        r0 = (r31) ((q01) v01Var).b;
                        r0.setWillNotDraw(true);
                        pq1Var.k.element = r0;
                        fq1Var = (fq1) pq1Var.i.n.get();
                        ar1Var = pq1Var.i.m;
                        pq1Var.a = booleanRef4;
                        pq1Var.b = deferred2;
                        pq1Var.c = objectRef5;
                        pq1Var.d = r0;
                        pq1Var.e = i;
                        pq1Var.f = 4;
                        if (fq1Var.a(ar1Var, pq1Var) != coroutine_suspended) {
                            r2 = r0;
                            i4 = i;
                            if (!pq1Var.h && booleanRef4.element) {
                                if (deferred2 != null) {
                                    pq1Var.a = objectRef5;
                                    pq1Var.b = r2;
                                    pq1Var.c = objectRef5;
                                    pq1Var.d = null;
                                    pq1Var.e = i4;
                                    pq1Var.f = 5;
                                    objAwait = deferred2.await(pq1Var);
                                    if (objAwait != coroutine_suspended) {
                                        objectRef7 = objectRef5;
                                        r6 = r2;
                                        r5 = r6;
                                        r3 = (String) objAwait;
                                        objectRef5.element = r3;
                                        objectRef6 = objectRef7;
                                        r4 = r5;
                                        completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
                                        ar1Var2 = pq1Var.i.m;
                                        jq1Var = new jq1(completableDeferredCompletableDeferred$default);
                                        pq1Var.a = objectRef6;
                                        pq1Var.b = r4;
                                        pq1Var.c = completableDeferredCompletableDeferred$default;
                                        pq1Var.d = null;
                                        pq1Var.e = i4;
                                        pq1Var.f = 6;
                                        ar1Var2.getClass();
                                        r7 = r4;
                                        if (yr1.a(ar1Var2, "/jsLoaded", jq1Var, pq1Var) != coroutine_suspended) {
                                            i5 = i4;
                                            completableDeferred = completableDeferredCompletableDeferred$default;
                                            r1 = r7;
                                            charSequence2 = (CharSequence) objectRef6.element;
                                            if (charSequence2 == null) {
                                                s11 s11Var = s11.CUI_NAME_SDKINIT_SDKCORE_LOAD_URL;
                                                String str = pq1Var.l;
                                                WeakHashMap weakHashMap = hs3.a;
                                                rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                                                pq1Var.a = r1;
                                                pq1Var.b = completableDeferred;
                                                pq1Var.c = rr3VarA;
                                                pq1Var.d = rr3VarA;
                                                pq1Var.e = i5;
                                                pq1Var.f = 7;
                                                objC = r1.c(str, pq1Var);
                                                if (objC != coroutine_suspended) {
                                                    r8 = r1;
                                                    rr3Var = rr3VarA;
                                                    i6 = i5;
                                                    closeable3 = rr3VarA;
                                                    v01Var2 = (v01) objC;
                                                    if (v01Var2 instanceof i01) {
                                                        xs3.a((i01) v01Var2, false);
                                                    }
                                                    CloseableKt.closeFinally(closeable3, null);
                                                    v01Var3 = v01Var2;
                                                    r10 = r8;
                                                    r11 = r10;
                                                    if (v01Var3 instanceof i01) {
                                                        BuildersKt__Builders_commonKt.launch$default(pq1Var.i.d, NonCancellable.INSTANCE, null, new nq1(r11, null), 2, null);
                                                        return v01Var3;
                                                    }
                                                    s11 s11Var2 = s11.CUI_NAME_SDKINIT_SDKCORE_JS_LOADED;
                                                    yq1 yq1Var = pq1Var.i;
                                                    WeakHashMap weakHashMap2 = hs3.a;
                                                    rr3VarA2 = hs3.a(s11Var2, CollectionsKt.emptyList(), true);
                                                    eb3 eb3Var = yq1Var.f.s;
                                                    eb3Var.getClass();
                                                    Duration.Companion companion = Duration.INSTANCE;
                                                    long duration = DurationKt.toDuration(10, DurationUnit.SECONDS);
                                                    Intrinsics.checkNotNullParameter("gads:js_eng_load_gmsg:timeout_millis", C3510b4.i.W);
                                                    rawValue = ((Duration) eb3Var.a("gads:js_eng_load_gmsg:timeout_millis", Duration.m4365boximpl(duration), yr.j)).getRawValue();
                                                    oq1Var = new oq1(completableDeferred, null);
                                                    pq1Var.a = r11;
                                                    pq1Var.b = rr3VarA2;
                                                    pq1Var.c = rr3VarA2;
                                                    pq1Var.d = null;
                                                    pq1Var.e = i6;
                                                    pq1Var.f = 9;
                                                    if (TimeoutKt.m4522withTimeoutKLykuaI(rawValue, oq1Var, pq1Var) != coroutine_suspended) {
                                                        rr3Var6 = rr3VarA2;
                                                        closeable7 = rr3VarA2;
                                                        r12 = r11;
                                                        ?? r14 = r12;
                                                        obj2 = p005kotlin.Unit.INSTANCE;
                                                        if (obj2 instanceof i01) {
                                                            xs3.a((i01) obj2, false);
                                                            break;
                                                        }
                                                        CloseableKt.closeFinally(closeable7, null);
                                                        yq1 yq1Var2 = pq1Var.i;
                                                        CoroutineScope coroutineScope = yq1Var2.d;
                                                        CoroutineScope coroutineScope2 = yq1Var2.e;
                                                        g83 g83Var = yq1Var2.l;
                                                        ex0 ex0Var = yq1Var2.f;
                                                        if (i6 != 0) {
                                                            z2 = true;
                                                        } else {
                                                            z2 = false;
                                                        }
                                                        return new q01(new fl1(r14, coroutineScope, coroutineScope2, g83Var, ex0Var, z2));
                                                    }
                                                }
                                            } else {
                                                s11 s11Var3 = s11.CUI_NAME_SDKINIT_SDKCORE_LOAD_URL;
                                                String str2 = pq1Var.l;
                                                WeakHashMap weakHashMap3 = hs3.a;
                                                rr3VarA = hs3.a(s11Var3, CollectionsKt.emptyList(), true);
                                                pq1Var.a = r1;
                                                pq1Var.b = completableDeferred;
                                                pq1Var.c = rr3VarA;
                                                pq1Var.d = rr3VarA;
                                                pq1Var.e = i5;
                                                pq1Var.f = 7;
                                                objC = r1.c(str2, pq1Var);
                                                if (objC != coroutine_suspended) {
                                                    r8 = r1;
                                                    rr3Var = rr3VarA;
                                                    i6 = i5;
                                                    closeable3 = rr3VarA;
                                                    v01Var2 = (v01) objC;
                                                    if (v01Var2 instanceof i01) {
                                                        xs3.a((i01) v01Var2, false);
                                                    }
                                                    CloseableKt.closeFinally(closeable3, null);
                                                    v01Var3 = v01Var2;
                                                    r10 = r8;
                                                    r11 = r10;
                                                    if (v01Var3 instanceof i01) {
                                                        BuildersKt__Builders_commonKt.launch$default(pq1Var.i.d, NonCancellable.INSTANCE, null, new nq1(r11, null), 2, null);
                                                        return v01Var3;
                                                    }
                                                    s11 s11Var4 = s11.CUI_NAME_SDKINIT_SDKCORE_JS_LOADED;
                                                    yq1 yq1Var3 = pq1Var.i;
                                                    WeakHashMap weakHashMap4 = hs3.a;
                                                    rr3VarA2 = hs3.a(s11Var4, CollectionsKt.emptyList(), true);
                                                    eb3 eb3Var2 = yq1Var3.f.s;
                                                    eb3Var2.getClass();
                                                    Duration.Companion companion2 = Duration.INSTANCE;
                                                    long duration2 = DurationKt.toDuration(10, DurationUnit.SECONDS);
                                                    Intrinsics.checkNotNullParameter("gads:js_eng_load_gmsg:timeout_millis", C3510b4.i.W);
                                                    rawValue = ((Duration) eb3Var2.a("gads:js_eng_load_gmsg:timeout_millis", Duration.m4365boximpl(duration2), yr.j)).getRawValue();
                                                    oq1Var = new oq1(completableDeferred, null);
                                                    pq1Var.a = r11;
                                                    pq1Var.b = rr3VarA2;
                                                    pq1Var.c = rr3VarA2;
                                                    pq1Var.d = null;
                                                    pq1Var.e = i6;
                                                    pq1Var.f = 9;
                                                    if (TimeoutKt.m4522withTimeoutKLykuaI(rawValue, oq1Var, pq1Var) != coroutine_suspended) {
                                                        rr3Var6 = rr3VarA2;
                                                        closeable7 = rr3VarA2;
                                                        r12 = r11;
                                                        ?? r15 = r12;
                                                        obj2 = p005kotlin.Unit.INSTANCE;
                                                        if (obj2 instanceof i01) {
                                                            xs3.a((i01) obj2, false);
                                                            break;
                                                        }
                                                        CloseableKt.closeFinally(closeable7, null);
                                                        yq1 yq1Var4 = pq1Var.i;
                                                        CoroutineScope coroutineScope3 = yq1Var4.d;
                                                        CoroutineScope coroutineScope4 = yq1Var4.e;
                                                        g83 g83Var2 = yq1Var4.l;
                                                        ex0 ex0Var2 = yq1Var4.f;
                                                        if (i6 != 0) {
                                                            z2 = true;
                                                        } else {
                                                            z2 = false;
                                                        }
                                                        return new q01(new fl1(r15, coroutineScope3, coroutineScope4, g83Var2, ex0Var2, z2));
                                                    }
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    objectRef7 = objectRef5;
                                    r3 = 0;
                                    r5 = r2;
                                    objectRef5.element = r3;
                                    objectRef6 = objectRef7;
                                    r4 = r5;
                                    completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
                                    ar1Var2 = pq1Var.i.m;
                                    jq1Var = new jq1(completableDeferredCompletableDeferred$default);
                                    pq1Var.a = objectRef6;
                                    pq1Var.b = r4;
                                    pq1Var.c = completableDeferredCompletableDeferred$default;
                                    pq1Var.d = null;
                                    pq1Var.e = i4;
                                    pq1Var.f = 6;
                                    ar1Var2.getClass();
                                    r7 = r4;
                                    if (yr1.a(ar1Var2, "/jsLoaded", jq1Var, pq1Var) != coroutine_suspended) {
                                        i5 = i4;
                                        completableDeferred = completableDeferredCompletableDeferred$default;
                                        r1 = r7;
                                        charSequence2 = (CharSequence) objectRef6.element;
                                        if (charSequence2 == null) {
                                            s11 s11Var5 = s11.CUI_NAME_SDKINIT_SDKCORE_LOAD_URL;
                                            String str3 = pq1Var.l;
                                            WeakHashMap weakHashMap5 = hs3.a;
                                            rr3VarA = hs3.a(s11Var5, CollectionsKt.emptyList(), true);
                                            pq1Var.a = r1;
                                            pq1Var.b = completableDeferred;
                                            pq1Var.c = rr3VarA;
                                            pq1Var.d = rr3VarA;
                                            pq1Var.e = i5;
                                            pq1Var.f = 7;
                                            objC = r1.c(str3, pq1Var);
                                            if (objC != coroutine_suspended) {
                                                r8 = r1;
                                                rr3Var = rr3VarA;
                                                i6 = i5;
                                                closeable3 = rr3VarA;
                                                v01Var2 = (v01) objC;
                                                if (v01Var2 instanceof i01) {
                                                    xs3.a((i01) v01Var2, false);
                                                }
                                                CloseableKt.closeFinally(closeable3, null);
                                                v01Var3 = v01Var2;
                                                r10 = r8;
                                                r11 = r10;
                                                if (v01Var3 instanceof i01) {
                                                    BuildersKt__Builders_commonKt.launch$default(pq1Var.i.d, NonCancellable.INSTANCE, null, new nq1(r11, null), 2, null);
                                                    return v01Var3;
                                                }
                                                s11 s11Var6 = s11.CUI_NAME_SDKINIT_SDKCORE_JS_LOADED;
                                                yq1 yq1Var5 = pq1Var.i;
                                                WeakHashMap weakHashMap6 = hs3.a;
                                                rr3VarA2 = hs3.a(s11Var6, CollectionsKt.emptyList(), true);
                                                eb3 eb3Var3 = yq1Var5.f.s;
                                                eb3Var3.getClass();
                                                Duration.Companion companion3 = Duration.INSTANCE;
                                                long duration3 = DurationKt.toDuration(10, DurationUnit.SECONDS);
                                                Intrinsics.checkNotNullParameter("gads:js_eng_load_gmsg:timeout_millis", C3510b4.i.W);
                                                rawValue = ((Duration) eb3Var3.a("gads:js_eng_load_gmsg:timeout_millis", Duration.m4365boximpl(duration3), yr.j)).getRawValue();
                                                oq1Var = new oq1(completableDeferred, null);
                                                pq1Var.a = r11;
                                                pq1Var.b = rr3VarA2;
                                                pq1Var.c = rr3VarA2;
                                                pq1Var.d = null;
                                                pq1Var.e = i6;
                                                pq1Var.f = 9;
                                                if (TimeoutKt.m4522withTimeoutKLykuaI(rawValue, oq1Var, pq1Var) != coroutine_suspended) {
                                                    rr3Var6 = rr3VarA2;
                                                    closeable7 = rr3VarA2;
                                                    r12 = r11;
                                                    ?? r16 = r12;
                                                    obj2 = p005kotlin.Unit.INSTANCE;
                                                    if (obj2 instanceof i01) {
                                                        xs3.a((i01) obj2, false);
                                                        break;
                                                    }
                                                    CloseableKt.closeFinally(closeable7, null);
                                                    yq1 yq1Var6 = pq1Var.i;
                                                    CoroutineScope coroutineScope5 = yq1Var6.d;
                                                    CoroutineScope coroutineScope6 = yq1Var6.e;
                                                    g83 g83Var3 = yq1Var6.l;
                                                    ex0 ex0Var3 = yq1Var6.f;
                                                    if (i6 != 0) {
                                                        z2 = true;
                                                    } else {
                                                        z2 = false;
                                                    }
                                                    return new q01(new fl1(r16, coroutineScope5, coroutineScope6, g83Var3, ex0Var3, z2));
                                                }
                                            }
                                        } else {
                                            s11 s11Var7 = s11.CUI_NAME_SDKINIT_SDKCORE_LOAD_URL;
                                            String str4 = pq1Var.l;
                                            WeakHashMap weakHashMap7 = hs3.a;
                                            rr3VarA = hs3.a(s11Var7, CollectionsKt.emptyList(), true);
                                            pq1Var.a = r1;
                                            pq1Var.b = completableDeferred;
                                            pq1Var.c = rr3VarA;
                                            pq1Var.d = rr3VarA;
                                            pq1Var.e = i5;
                                            pq1Var.f = 7;
                                            objC = r1.c(str4, pq1Var);
                                            if (objC != coroutine_suspended) {
                                                r8 = r1;
                                                rr3Var = rr3VarA;
                                                i6 = i5;
                                                closeable3 = rr3VarA;
                                                v01Var2 = (v01) objC;
                                                if (v01Var2 instanceof i01) {
                                                    xs3.a((i01) v01Var2, false);
                                                }
                                                CloseableKt.closeFinally(closeable3, null);
                                                v01Var3 = v01Var2;
                                                r10 = r8;
                                                r11 = r10;
                                                if (v01Var3 instanceof i01) {
                                                    BuildersKt__Builders_commonKt.launch$default(pq1Var.i.d, NonCancellable.INSTANCE, null, new nq1(r11, null), 2, null);
                                                    return v01Var3;
                                                }
                                                s11 s11Var8 = s11.CUI_NAME_SDKINIT_SDKCORE_JS_LOADED;
                                                yq1 yq1Var7 = pq1Var.i;
                                                WeakHashMap weakHashMap8 = hs3.a;
                                                rr3VarA2 = hs3.a(s11Var8, CollectionsKt.emptyList(), true);
                                                eb3 eb3Var4 = yq1Var7.f.s;
                                                eb3Var4.getClass();
                                                Duration.Companion companion4 = Duration.INSTANCE;
                                                long duration4 = DurationKt.toDuration(10, DurationUnit.SECONDS);
                                                Intrinsics.checkNotNullParameter("gads:js_eng_load_gmsg:timeout_millis", C3510b4.i.W);
                                                rawValue = ((Duration) eb3Var4.a("gads:js_eng_load_gmsg:timeout_millis", Duration.m4365boximpl(duration4), yr.j)).getRawValue();
                                                oq1Var = new oq1(completableDeferred, null);
                                                pq1Var.a = r11;
                                                pq1Var.b = rr3VarA2;
                                                pq1Var.c = rr3VarA2;
                                                pq1Var.d = null;
                                                pq1Var.e = i6;
                                                pq1Var.f = 9;
                                                if (TimeoutKt.m4522withTimeoutKLykuaI(rawValue, oq1Var, pq1Var) != coroutine_suspended) {
                                                    rr3Var6 = rr3VarA2;
                                                    closeable7 = rr3VarA2;
                                                    r12 = r11;
                                                    ?? r17 = r12;
                                                    obj2 = p005kotlin.Unit.INSTANCE;
                                                    if (obj2 instanceof i01) {
                                                        xs3.a((i01) obj2, false);
                                                        break;
                                                    }
                                                    CloseableKt.closeFinally(closeable7, null);
                                                    yq1 yq1Var8 = pq1Var.i;
                                                    CoroutineScope coroutineScope7 = yq1Var8.d;
                                                    CoroutineScope coroutineScope8 = yq1Var8.e;
                                                    g83 g83Var4 = yq1Var8.l;
                                                    ex0 ex0Var4 = yq1Var8.f;
                                                    if (i6 != 0) {
                                                        z2 = true;
                                                    } else {
                                                        z2 = false;
                                                    }
                                                    return new q01(new fl1(r17, coroutineScope7, coroutineScope8, g83Var4, ex0Var4, z2));
                                                }
                                            }
                                        }
                                    }
                                }
                                break;
                            } else {
                                objectRef6 = objectRef5;
                                r4 = r2;
                                completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
                                ar1Var2 = pq1Var.i.m;
                                jq1Var = new jq1(completableDeferredCompletableDeferred$default);
                                pq1Var.a = objectRef6;
                                pq1Var.b = r4;
                                pq1Var.c = completableDeferredCompletableDeferred$default;
                                pq1Var.d = null;
                                pq1Var.e = i4;
                                pq1Var.f = 6;
                                ar1Var2.getClass();
                                r7 = r4;
                                if (yr1.a(ar1Var2, "/jsLoaded", jq1Var, pq1Var) != coroutine_suspended) {
                                    i5 = i4;
                                    completableDeferred = completableDeferredCompletableDeferred$default;
                                    r1 = r7;
                                    charSequence2 = (CharSequence) objectRef6.element;
                                    if (charSequence2 == null || StringsKt.isBlank(charSequence2)) {
                                        s11 s11Var9 = s11.CUI_NAME_SDKINIT_SDKCORE_LOAD_URL;
                                        String str5 = pq1Var.l;
                                        WeakHashMap weakHashMap9 = hs3.a;
                                        rr3VarA = hs3.a(s11Var9, CollectionsKt.emptyList(), true);
                                        try {
                                            pq1Var.a = r1;
                                            pq1Var.b = completableDeferred;
                                            pq1Var.c = rr3VarA;
                                            pq1Var.d = rr3VarA;
                                            pq1Var.e = i5;
                                            pq1Var.f = 7;
                                            objC = r1.c(str5, pq1Var);
                                            if (objC != coroutine_suspended) {
                                                r8 = r1;
                                                rr3Var = rr3VarA;
                                                i6 = i5;
                                                closeable3 = rr3VarA;
                                                try {
                                                    v01Var2 = (v01) objC;
                                                    if (v01Var2 instanceof i01) {
                                                        xs3.a((i01) v01Var2, false);
                                                    }
                                                    CloseableKt.closeFinally(closeable3, null);
                                                    v01Var3 = v01Var2;
                                                    r10 = r8;
                                                    r11 = r10;
                                                    if (v01Var3 instanceof i01) {
                                                        BuildersKt__Builders_commonKt.launch$default(pq1Var.i.d, NonCancellable.INSTANCE, null, new nq1(r11, null), 2, null);
                                                        return v01Var3;
                                                    }
                                                    s11 s11Var10 = s11.CUI_NAME_SDKINIT_SDKCORE_JS_LOADED;
                                                    yq1 yq1Var9 = pq1Var.i;
                                                    WeakHashMap weakHashMap10 = hs3.a;
                                                    rr3VarA2 = hs3.a(s11Var10, CollectionsKt.emptyList(), true);
                                                    try {
                                                        eb3 eb3Var5 = yq1Var9.f.s;
                                                        eb3Var5.getClass();
                                                        Duration.Companion companion5 = Duration.INSTANCE;
                                                        long duration5 = DurationKt.toDuration(10, DurationUnit.SECONDS);
                                                        Intrinsics.checkNotNullParameter("gads:js_eng_load_gmsg:timeout_millis", C3510b4.i.W);
                                                        rawValue = ((Duration) eb3Var5.a("gads:js_eng_load_gmsg:timeout_millis", Duration.m4365boximpl(duration5), yr.j)).getRawValue();
                                                        oq1Var = new oq1(completableDeferred, null);
                                                        pq1Var.a = r11;
                                                        pq1Var.b = rr3VarA2;
                                                        pq1Var.c = rr3VarA2;
                                                        pq1Var.d = null;
                                                        pq1Var.e = i6;
                                                        pq1Var.f = 9;
                                                        if (TimeoutKt.m4522withTimeoutKLykuaI(rawValue, oq1Var, pq1Var) != coroutine_suspended) {
                                                            rr3Var6 = rr3VarA2;
                                                            closeable7 = rr3VarA2;
                                                            r12 = r11;
                                                            ?? r18 = r12;
                                                            obj2 = p005kotlin.Unit.INSTANCE;
                                                            if (obj2 instanceof i01) {
                                                                xs3.a((i01) obj2, false);
                                                                break;
                                                            }
                                                            CloseableKt.closeFinally(closeable7, null);
                                                            yq1 yq1Var10 = pq1Var.i;
                                                            CoroutineScope coroutineScope9 = yq1Var10.d;
                                                            CoroutineScope coroutineScope10 = yq1Var10.e;
                                                            g83 g83Var5 = yq1Var10.l;
                                                            ex0 ex0Var5 = yq1Var10.f;
                                                            if (i6 != 0) {
                                                                z2 = true;
                                                            } else {
                                                                z2 = false;
                                                            }
                                                            return new q01(new fl1(r18, coroutineScope9, coroutineScope10, g83Var5, ex0Var5, z2));
                                                        }
                                                    } catch (Throwable th) {
                                                        th = th;
                                                        closeable5 = rr3VarA2;
                                                        rr3Var7 = rr3VarA2;
                                                        try {
                                                            rr3Var7.b(th);
                                                            if (!(th instanceof v24)) {
                                                                throw th;
                                                            }
                                                            if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                                                rr3Var7.a(th);
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
                                                                CloseableKt.closeFinally(closeable5, th2);
                                                                throw th3;
                                                            }
                                                        }
                                                    }
                                                    break;
                                                } catch (Throwable th4) {
                                                    th = th4;
                                                    rr3Var4 = rr3Var;
                                                    rr3 rr3Var8 = rr3Var4;
                                                    closeable = closeable3;
                                                    rr3Var3 = rr3Var8;
                                                    try {
                                                        rr3Var3.b(th);
                                                        if (th instanceof v24) {
                                                            throw th;
                                                        }
                                                        if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                                            rr3Var3.a(th);
                                                        }
                                                        if (th instanceof TimeoutCancellationException) {
                                                            throw new i21(th);
                                                        }
                                                        if (th instanceof CancellationException) {
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
                                                            CloseableKt.closeFinally(closeable, th5);
                                                            throw th6;
                                                        }
                                                    }
                                                }
                                            }
                                        } catch (Throwable th7) {
                                            th = th7;
                                            closeable = rr3VarA;
                                            rr3Var3 = rr3VarA;
                                            rr3Var3.b(th);
                                            if (th instanceof v24) {
                                                throw th;
                                            }
                                            if (!(th instanceof TimeoutCancellationException)) {
                                                rr3Var3.a(th);
                                            }
                                            if (th instanceof TimeoutCancellationException) {
                                                throw new i21(th);
                                            }
                                            if (th instanceof CancellationException) {
                                                throw new wz0(th);
                                            }
                                            if (th instanceof w01) {
                                                throw th;
                                            }
                                            throw new b01(th);
                                        }
                                    } else {
                                        s11 s11Var11 = s11.CUI_NAME_SDKINIT_SDKCORE_LOAD_HTML;
                                        String str6 = pq1Var.l;
                                        WeakHashMap weakHashMap11 = hs3.a;
                                        rr3 rr3VarA3 = hs3.a(s11Var11, CollectionsKt.emptyList(), true);
                                        try {
                                            String str7 = (String) objectRef6.element;
                                            pq1Var.a = r1;
                                            pq1Var.b = completableDeferred;
                                            pq1Var.c = rr3VarA3;
                                            pq1Var.d = rr3VarA3;
                                            pq1Var.e = i5;
                                            pq1Var.f = 8;
                                            objA4 = r31.a((r31) r1, str7, str6, false, (Continuation) pq1Var, 12);
                                            if (objA4 != coroutine_suspended) {
                                                r9 = r1;
                                                i6 = i5;
                                                completableDeferred2 = completableDeferred;
                                                rr3Var2 = rr3VarA3;
                                                closeable6 = rr3VarA3;
                                                try {
                                                    v01Var3 = (v01) objA4;
                                                    if (v01Var3 instanceof i01) {
                                                        xs3.a((i01) v01Var3, false);
                                                    }
                                                    CloseableKt.closeFinally(closeable6, null);
                                                    completableDeferred = completableDeferred2;
                                                    r10 = r9;
                                                    r11 = r10;
                                                    if (v01Var3 instanceof i01) {
                                                        BuildersKt__Builders_commonKt.launch$default(pq1Var.i.d, NonCancellable.INSTANCE, null, new nq1(r11, null), 2, null);
                                                        return v01Var3;
                                                    }
                                                    s11 s11Var12 = s11.CUI_NAME_SDKINIT_SDKCORE_JS_LOADED;
                                                    yq1 yq1Var11 = pq1Var.i;
                                                    WeakHashMap weakHashMap12 = hs3.a;
                                                    rr3VarA2 = hs3.a(s11Var12, CollectionsKt.emptyList(), true);
                                                    eb3 eb3Var6 = yq1Var11.f.s;
                                                    eb3Var6.getClass();
                                                    Duration.Companion companion6 = Duration.INSTANCE;
                                                    long duration6 = DurationKt.toDuration(10, DurationUnit.SECONDS);
                                                    Intrinsics.checkNotNullParameter("gads:js_eng_load_gmsg:timeout_millis", C3510b4.i.W);
                                                    rawValue = ((Duration) eb3Var6.a("gads:js_eng_load_gmsg:timeout_millis", Duration.m4365boximpl(duration6), yr.j)).getRawValue();
                                                    oq1Var = new oq1(completableDeferred, null);
                                                    pq1Var.a = r11;
                                                    pq1Var.b = rr3VarA2;
                                                    pq1Var.c = rr3VarA2;
                                                    pq1Var.d = null;
                                                    pq1Var.e = i6;
                                                    pq1Var.f = 9;
                                                    if (TimeoutKt.m4522withTimeoutKLykuaI(rawValue, oq1Var, pq1Var) != coroutine_suspended) {
                                                        rr3Var6 = rr3VarA2;
                                                        closeable7 = rr3VarA2;
                                                        r12 = r11;
                                                        ?? r19 = r12;
                                                        obj2 = p005kotlin.Unit.INSTANCE;
                                                        if (obj2 instanceof i01) {
                                                            xs3.a((i01) obj2, false);
                                                            break;
                                                        }
                                                        CloseableKt.closeFinally(closeable7, null);
                                                        yq1 yq1Var12 = pq1Var.i;
                                                        CoroutineScope coroutineScope11 = yq1Var12.d;
                                                        CoroutineScope coroutineScope12 = yq1Var12.e;
                                                        g83 g83Var6 = yq1Var12.l;
                                                        ex0 ex0Var6 = yq1Var12.f;
                                                        if (i6 != 0) {
                                                            z2 = true;
                                                        } else {
                                                            z2 = false;
                                                        }
                                                        return new q01(new fl1(r19, coroutineScope11, coroutineScope12, g83Var6, ex0Var6, z2));
                                                    }
                                                    break;
                                                } catch (Throwable th8) {
                                                    th = th8;
                                                    closeable4 = closeable6;
                                                    rr3Var5 = rr3Var2;
                                                    closeable2 = closeable4;
                                                    try {
                                                        rr3Var5.b(th);
                                                        if (th instanceof v24) {
                                                            throw th;
                                                        }
                                                        if (!(th instanceof TimeoutCancellationException)) {
                                                            rr3Var5.a(th);
                                                        }
                                                        if (th instanceof TimeoutCancellationException) {
                                                            throw new i21(th);
                                                        }
                                                        if (th instanceof CancellationException) {
                                                            throw new wz0(th);
                                                        }
                                                        if (th instanceof w01) {
                                                            throw th;
                                                        }
                                                        throw new b01(th);
                                                    } catch (Throwable th9) {
                                                        try {
                                                            throw th9;
                                                        } catch (Throwable th10) {
                                                            CloseableKt.closeFinally(closeable2, th9);
                                                            throw th10;
                                                        }
                                                    }
                                                }
                                            }
                                        } catch (Throwable th11) {
                                            th = th11;
                                            closeable2 = rr3VarA3;
                                            rr3Var5 = rr3VarA3;
                                            rr3Var5.b(th);
                                            if (th instanceof v24) {
                                                throw th;
                                            }
                                            if (!(th instanceof TimeoutCancellationException)) {
                                                rr3Var5.a(th);
                                            }
                                            if (th instanceof TimeoutCancellationException) {
                                                throw new i21(th);
                                            }
                                            if (th instanceof CancellationException) {
                                                throw new wz0(th);
                                            }
                                            if (th instanceof w01) {
                                                throw th;
                                            }
                                            throw new b01(th);
                                        }
                                    }
                                }
                            }
                        }
                    }
                } else {
                    yq1 yq1Var13 = pq1Var.i;
                    pq1Var.a = booleanRef5;
                    pq1Var.b = objectRef;
                    pq1Var.e = 0;
                    pq1Var.f = 1;
                    objA = yq1.a(yq1Var13, (Continuation) pq1Var);
                    if (objA != coroutine_suspended) {
                        booleanRef2 = booleanRef5;
                        i2 = 0;
                        if (!((Boolean) objA).booleanValue()) {
                            cb3 cb3Var = pq1Var.i.j;
                            pq1Var.a = booleanRef2;
                            pq1Var.b = objectRef;
                            pq1Var.c = objectRef;
                            pq1Var.e = 1;
                            pq1Var.f = 2;
                            cb3Var.getClass();
                            objA2 = cb3.a(cb3Var, pq1Var);
                            if (objA2 != coroutine_suspended) {
                                objectRef2 = objectRef;
                                booleanRef3 = booleanRef2;
                                objectRef3 = objectRef2;
                                i3 = 1;
                                objectRef2.element = ((ua3) objA2).v();
                                i2 = i3;
                                objectRef = objectRef3;
                                booleanRef = booleanRef3;
                                if (pq1Var.j || !((charSequence = (CharSequence) objectRef.element) == null || StringsKt.isBlank(charSequence))) {
                                    z = false;
                                } else {
                                    z = true;
                                }
                                booleanRef.element = z;
                                yq1 yq1Var14 = pq1Var.i;
                                CoroutineScope coroutineScope13 = yq1Var14.e;
                                mq1 block = new mq1(booleanRef, yq1Var14, pq1Var.l, objectRef, null);
                                EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                                Intrinsics.checkNotNullParameter(coroutineScope13, "<this>");
                                Intrinsics.checkNotNullParameter(context, "context");
                                Intrinsics.checkNotNullParameter(block, "block");
                                Deferred deferredAsync$default = BuildersKt__Builders_commonKt.async$default(coroutineScope13, context, null, new vs3(block, null), 2, null);
                                i = i2;
                                deferred = deferredAsync$default;
                                objectRef4 = objectRef;
                                iz3 iz3Var2 = pq1Var.i.k;
                                v14 v14Var2 = new v14(u14.DEFAULT, 0, 0, 14);
                                ar1 ar1Var4 = pq1Var.i.m;
                                pq1Var.a = booleanRef;
                                pq1Var.b = deferred;
                                pq1Var.c = objectRef4;
                                pq1Var.e = i;
                                pq1Var.f = 3;
                                objA3 = iz3.a(iz3Var2, v14Var2, ar1Var4, true, (eo2) null, true, (Continuation) this, 24);
                                pq1Var = this;
                                if (objA3 != coroutine_suspended) {
                                    booleanRef4 = booleanRef;
                                    objectRef5 = objectRef4;
                                    deferred2 = deferred;
                                    v01Var = (v01) objA3;
                                    if (v01Var instanceof i01) {
                                        return (i01) v01Var;
                                    }
                                    Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                    r0 = (r31) ((q01) v01Var).b;
                                    r0.setWillNotDraw(true);
                                    pq1Var.k.element = r0;
                                    fq1Var = (fq1) pq1Var.i.n.get();
                                    ar1Var = pq1Var.i.m;
                                    pq1Var.a = booleanRef4;
                                    pq1Var.b = deferred2;
                                    pq1Var.c = objectRef5;
                                    pq1Var.d = r0;
                                    pq1Var.e = i;
                                    pq1Var.f = 4;
                                    if (fq1Var.a(ar1Var, pq1Var) != coroutine_suspended) {
                                        r2 = r0;
                                        i4 = i;
                                        if (!pq1Var.h) {
                                        }
                                        objectRef6 = objectRef5;
                                        r4 = r2;
                                        completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
                                        ar1Var2 = pq1Var.i.m;
                                        jq1Var = new jq1(completableDeferredCompletableDeferred$default);
                                        pq1Var.a = objectRef6;
                                        pq1Var.b = r4;
                                        pq1Var.c = completableDeferredCompletableDeferred$default;
                                        pq1Var.d = null;
                                        pq1Var.e = i4;
                                        pq1Var.f = 6;
                                        ar1Var2.getClass();
                                        r7 = r4;
                                        if (yr1.a(ar1Var2, "/jsLoaded", jq1Var, pq1Var) != coroutine_suspended) {
                                            i5 = i4;
                                            completableDeferred = completableDeferredCompletableDeferred$default;
                                            r1 = r7;
                                            charSequence2 = (CharSequence) objectRef6.element;
                                            if (charSequence2 == null) {
                                                s11 s11Var13 = s11.CUI_NAME_SDKINIT_SDKCORE_LOAD_URL;
                                                String str8 = pq1Var.l;
                                                WeakHashMap weakHashMap13 = hs3.a;
                                                rr3VarA = hs3.a(s11Var13, CollectionsKt.emptyList(), true);
                                                pq1Var.a = r1;
                                                pq1Var.b = completableDeferred;
                                                pq1Var.c = rr3VarA;
                                                pq1Var.d = rr3VarA;
                                                pq1Var.e = i5;
                                                pq1Var.f = 7;
                                                objC = r1.c(str8, pq1Var);
                                                if (objC != coroutine_suspended) {
                                                    r8 = r1;
                                                    rr3Var = rr3VarA;
                                                    i6 = i5;
                                                    closeable3 = rr3VarA;
                                                    v01Var2 = (v01) objC;
                                                    if (v01Var2 instanceof i01) {
                                                        xs3.a((i01) v01Var2, false);
                                                    }
                                                    CloseableKt.closeFinally(closeable3, null);
                                                    v01Var3 = v01Var2;
                                                    r10 = r8;
                                                    r11 = r10;
                                                    if (v01Var3 instanceof i01) {
                                                        BuildersKt__Builders_commonKt.launch$default(pq1Var.i.d, NonCancellable.INSTANCE, null, new nq1(r11, null), 2, null);
                                                        return v01Var3;
                                                    }
                                                    s11 s11Var14 = s11.CUI_NAME_SDKINIT_SDKCORE_JS_LOADED;
                                                    yq1 yq1Var15 = pq1Var.i;
                                                    WeakHashMap weakHashMap14 = hs3.a;
                                                    rr3VarA2 = hs3.a(s11Var14, CollectionsKt.emptyList(), true);
                                                    eb3 eb3Var7 = yq1Var15.f.s;
                                                    eb3Var7.getClass();
                                                    Duration.Companion companion7 = Duration.INSTANCE;
                                                    long duration7 = DurationKt.toDuration(10, DurationUnit.SECONDS);
                                                    Intrinsics.checkNotNullParameter("gads:js_eng_load_gmsg:timeout_millis", C3510b4.i.W);
                                                    rawValue = ((Duration) eb3Var7.a("gads:js_eng_load_gmsg:timeout_millis", Duration.m4365boximpl(duration7), yr.j)).getRawValue();
                                                    oq1Var = new oq1(completableDeferred, null);
                                                    pq1Var.a = r11;
                                                    pq1Var.b = rr3VarA2;
                                                    pq1Var.c = rr3VarA2;
                                                    pq1Var.d = null;
                                                    pq1Var.e = i6;
                                                    pq1Var.f = 9;
                                                    if (TimeoutKt.m4522withTimeoutKLykuaI(rawValue, oq1Var, pq1Var) != coroutine_suspended) {
                                                        rr3Var6 = rr3VarA2;
                                                        closeable7 = rr3VarA2;
                                                        r12 = r11;
                                                        ?? r110 = r12;
                                                        obj2 = p005kotlin.Unit.INSTANCE;
                                                        if (obj2 instanceof i01) {
                                                            xs3.a((i01) obj2, false);
                                                            break;
                                                        }
                                                        CloseableKt.closeFinally(closeable7, null);
                                                        yq1 yq1Var16 = pq1Var.i;
                                                        CoroutineScope coroutineScope14 = yq1Var16.d;
                                                        CoroutineScope coroutineScope15 = yq1Var16.e;
                                                        g83 g83Var7 = yq1Var16.l;
                                                        ex0 ex0Var7 = yq1Var16.f;
                                                        if (i6 != 0) {
                                                            z2 = true;
                                                        } else {
                                                            z2 = false;
                                                        }
                                                        return new q01(new fl1(r110, coroutineScope14, coroutineScope15, g83Var7, ex0Var7, z2));
                                                    }
                                                }
                                            } else {
                                                s11 s11Var15 = s11.CUI_NAME_SDKINIT_SDKCORE_LOAD_URL;
                                                String str9 = pq1Var.l;
                                                WeakHashMap weakHashMap15 = hs3.a;
                                                rr3VarA = hs3.a(s11Var15, CollectionsKt.emptyList(), true);
                                                pq1Var.a = r1;
                                                pq1Var.b = completableDeferred;
                                                pq1Var.c = rr3VarA;
                                                pq1Var.d = rr3VarA;
                                                pq1Var.e = i5;
                                                pq1Var.f = 7;
                                                objC = r1.c(str9, pq1Var);
                                                if (objC != coroutine_suspended) {
                                                    r8 = r1;
                                                    rr3Var = rr3VarA;
                                                    i6 = i5;
                                                    closeable3 = rr3VarA;
                                                    v01Var2 = (v01) objC;
                                                    if (v01Var2 instanceof i01) {
                                                        xs3.a((i01) v01Var2, false);
                                                    }
                                                    CloseableKt.closeFinally(closeable3, null);
                                                    v01Var3 = v01Var2;
                                                    r10 = r8;
                                                    r11 = r10;
                                                    if (v01Var3 instanceof i01) {
                                                        BuildersKt__Builders_commonKt.launch$default(pq1Var.i.d, NonCancellable.INSTANCE, null, new nq1(r11, null), 2, null);
                                                        return v01Var3;
                                                    }
                                                    s11 s11Var16 = s11.CUI_NAME_SDKINIT_SDKCORE_JS_LOADED;
                                                    yq1 yq1Var17 = pq1Var.i;
                                                    WeakHashMap weakHashMap16 = hs3.a;
                                                    rr3VarA2 = hs3.a(s11Var16, CollectionsKt.emptyList(), true);
                                                    eb3 eb3Var8 = yq1Var17.f.s;
                                                    eb3Var8.getClass();
                                                    Duration.Companion companion8 = Duration.INSTANCE;
                                                    long duration8 = DurationKt.toDuration(10, DurationUnit.SECONDS);
                                                    Intrinsics.checkNotNullParameter("gads:js_eng_load_gmsg:timeout_millis", C3510b4.i.W);
                                                    rawValue = ((Duration) eb3Var8.a("gads:js_eng_load_gmsg:timeout_millis", Duration.m4365boximpl(duration8), yr.j)).getRawValue();
                                                    oq1Var = new oq1(completableDeferred, null);
                                                    pq1Var.a = r11;
                                                    pq1Var.b = rr3VarA2;
                                                    pq1Var.c = rr3VarA2;
                                                    pq1Var.d = null;
                                                    pq1Var.e = i6;
                                                    pq1Var.f = 9;
                                                    if (TimeoutKt.m4522withTimeoutKLykuaI(rawValue, oq1Var, pq1Var) != coroutine_suspended) {
                                                        rr3Var6 = rr3VarA2;
                                                        closeable7 = rr3VarA2;
                                                        r12 = r11;
                                                        ?? r111 = r12;
                                                        obj2 = p005kotlin.Unit.INSTANCE;
                                                        if (obj2 instanceof i01) {
                                                            xs3.a((i01) obj2, false);
                                                            break;
                                                        }
                                                        CloseableKt.closeFinally(closeable7, null);
                                                        yq1 yq1Var18 = pq1Var.i;
                                                        CoroutineScope coroutineScope16 = yq1Var18.d;
                                                        CoroutineScope coroutineScope17 = yq1Var18.e;
                                                        g83 g83Var8 = yq1Var18.l;
                                                        ex0 ex0Var8 = yq1Var18.f;
                                                        if (i6 != 0) {
                                                            z2 = true;
                                                        } else {
                                                            z2 = false;
                                                        }
                                                        return new q01(new fl1(r111, coroutineScope16, coroutineScope17, g83Var8, ex0Var8, z2));
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        } else {
                            booleanRef = booleanRef2;
                            if (pq1Var.j) {
                                z = false;
                            } else {
                                z = false;
                            }
                            booleanRef.element = z;
                            yq1 yq1Var19 = pq1Var.i;
                            CoroutineScope coroutineScope18 = yq1Var19.e;
                            mq1 block2 = new mq1(booleanRef, yq1Var19, pq1Var.l, objectRef, null);
                            EmptyCoroutineContext context2 = EmptyCoroutineContext.INSTANCE;
                            Intrinsics.checkNotNullParameter(coroutineScope18, "<this>");
                            Intrinsics.checkNotNullParameter(context2, "context");
                            Intrinsics.checkNotNullParameter(block2, "block");
                            Deferred deferredAsync$default2 = BuildersKt__Builders_commonKt.async$default(coroutineScope18, context2, null, new vs3(block2, null), 2, null);
                            i = i2;
                            deferred = deferredAsync$default2;
                            objectRef4 = objectRef;
                            iz3 iz3Var3 = pq1Var.i.k;
                            v14 v14Var3 = new v14(u14.DEFAULT, 0, 0, 14);
                            ar1 ar1Var5 = pq1Var.i.m;
                            pq1Var.a = booleanRef;
                            pq1Var.b = deferred;
                            pq1Var.c = objectRef4;
                            pq1Var.e = i;
                            pq1Var.f = 3;
                            objA3 = iz3.a(iz3Var3, v14Var3, ar1Var5, true, (eo2) null, true, (Continuation) this, 24);
                            pq1Var = this;
                            if (objA3 != coroutine_suspended) {
                                booleanRef4 = booleanRef;
                                objectRef5 = objectRef4;
                                deferred2 = deferred;
                                v01Var = (v01) objA3;
                                if (v01Var instanceof i01) {
                                    return (i01) v01Var;
                                }
                                Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                r0 = (r31) ((q01) v01Var).b;
                                r0.setWillNotDraw(true);
                                pq1Var.k.element = r0;
                                fq1Var = (fq1) pq1Var.i.n.get();
                                ar1Var = pq1Var.i.m;
                                pq1Var.a = booleanRef4;
                                pq1Var.b = deferred2;
                                pq1Var.c = objectRef5;
                                pq1Var.d = r0;
                                pq1Var.e = i;
                                pq1Var.f = 4;
                                if (fq1Var.a(ar1Var, pq1Var) != coroutine_suspended) {
                                    r2 = r0;
                                    i4 = i;
                                    if (!pq1Var.h) {
                                    }
                                    objectRef6 = objectRef5;
                                    r4 = r2;
                                    completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
                                    ar1Var2 = pq1Var.i.m;
                                    jq1Var = new jq1(completableDeferredCompletableDeferred$default);
                                    pq1Var.a = objectRef6;
                                    pq1Var.b = r4;
                                    pq1Var.c = completableDeferredCompletableDeferred$default;
                                    pq1Var.d = null;
                                    pq1Var.e = i4;
                                    pq1Var.f = 6;
                                    ar1Var2.getClass();
                                    r7 = r4;
                                    if (yr1.a(ar1Var2, "/jsLoaded", jq1Var, pq1Var) != coroutine_suspended) {
                                        i5 = i4;
                                        completableDeferred = completableDeferredCompletableDeferred$default;
                                        r1 = r7;
                                        charSequence2 = (CharSequence) objectRef6.element;
                                        if (charSequence2 == null) {
                                            s11 s11Var17 = s11.CUI_NAME_SDKINIT_SDKCORE_LOAD_URL;
                                            String str10 = pq1Var.l;
                                            WeakHashMap weakHashMap17 = hs3.a;
                                            rr3VarA = hs3.a(s11Var17, CollectionsKt.emptyList(), true);
                                            pq1Var.a = r1;
                                            pq1Var.b = completableDeferred;
                                            pq1Var.c = rr3VarA;
                                            pq1Var.d = rr3VarA;
                                            pq1Var.e = i5;
                                            pq1Var.f = 7;
                                            objC = r1.c(str10, pq1Var);
                                            if (objC != coroutine_suspended) {
                                                r8 = r1;
                                                rr3Var = rr3VarA;
                                                i6 = i5;
                                                closeable3 = rr3VarA;
                                                v01Var2 = (v01) objC;
                                                if (v01Var2 instanceof i01) {
                                                    xs3.a((i01) v01Var2, false);
                                                }
                                                CloseableKt.closeFinally(closeable3, null);
                                                v01Var3 = v01Var2;
                                                r10 = r8;
                                                r11 = r10;
                                                if (v01Var3 instanceof i01) {
                                                    BuildersKt__Builders_commonKt.launch$default(pq1Var.i.d, NonCancellable.INSTANCE, null, new nq1(r11, null), 2, null);
                                                    return v01Var3;
                                                }
                                                s11 s11Var18 = s11.CUI_NAME_SDKINIT_SDKCORE_JS_LOADED;
                                                yq1 yq1Var110 = pq1Var.i;
                                                WeakHashMap weakHashMap18 = hs3.a;
                                                rr3VarA2 = hs3.a(s11Var18, CollectionsKt.emptyList(), true);
                                                eb3 eb3Var9 = yq1Var110.f.s;
                                                eb3Var9.getClass();
                                                Duration.Companion companion9 = Duration.INSTANCE;
                                                long duration9 = DurationKt.toDuration(10, DurationUnit.SECONDS);
                                                Intrinsics.checkNotNullParameter("gads:js_eng_load_gmsg:timeout_millis", C3510b4.i.W);
                                                rawValue = ((Duration) eb3Var9.a("gads:js_eng_load_gmsg:timeout_millis", Duration.m4365boximpl(duration9), yr.j)).getRawValue();
                                                oq1Var = new oq1(completableDeferred, null);
                                                pq1Var.a = r11;
                                                pq1Var.b = rr3VarA2;
                                                pq1Var.c = rr3VarA2;
                                                pq1Var.d = null;
                                                pq1Var.e = i6;
                                                pq1Var.f = 9;
                                                if (TimeoutKt.m4522withTimeoutKLykuaI(rawValue, oq1Var, pq1Var) != coroutine_suspended) {
                                                    rr3Var6 = rr3VarA2;
                                                    closeable7 = rr3VarA2;
                                                    r12 = r11;
                                                    ?? r112 = r12;
                                                    obj2 = p005kotlin.Unit.INSTANCE;
                                                    if (obj2 instanceof i01) {
                                                        xs3.a((i01) obj2, false);
                                                        break;
                                                    }
                                                    CloseableKt.closeFinally(closeable7, null);
                                                    yq1 yq1Var111 = pq1Var.i;
                                                    CoroutineScope coroutineScope19 = yq1Var111.d;
                                                    CoroutineScope coroutineScope110 = yq1Var111.e;
                                                    g83 g83Var9 = yq1Var111.l;
                                                    ex0 ex0Var9 = yq1Var111.f;
                                                    if (i6 != 0) {
                                                        z2 = true;
                                                    } else {
                                                        z2 = false;
                                                    }
                                                    return new q01(new fl1(r112, coroutineScope19, coroutineScope110, g83Var9, ex0Var9, z2));
                                                }
                                            }
                                        } else {
                                            s11 s11Var19 = s11.CUI_NAME_SDKINIT_SDKCORE_LOAD_URL;
                                            String str11 = pq1Var.l;
                                            WeakHashMap weakHashMap19 = hs3.a;
                                            rr3VarA = hs3.a(s11Var19, CollectionsKt.emptyList(), true);
                                            pq1Var.a = r1;
                                            pq1Var.b = completableDeferred;
                                            pq1Var.c = rr3VarA;
                                            pq1Var.d = rr3VarA;
                                            pq1Var.e = i5;
                                            pq1Var.f = 7;
                                            objC = r1.c(str11, pq1Var);
                                            if (objC != coroutine_suspended) {
                                                r8 = r1;
                                                rr3Var = rr3VarA;
                                                i6 = i5;
                                                closeable3 = rr3VarA;
                                                v01Var2 = (v01) objC;
                                                if (v01Var2 instanceof i01) {
                                                    xs3.a((i01) v01Var2, false);
                                                }
                                                CloseableKt.closeFinally(closeable3, null);
                                                v01Var3 = v01Var2;
                                                r10 = r8;
                                                r11 = r10;
                                                if (v01Var3 instanceof i01) {
                                                    BuildersKt__Builders_commonKt.launch$default(pq1Var.i.d, NonCancellable.INSTANCE, null, new nq1(r11, null), 2, null);
                                                    return v01Var3;
                                                }
                                                s11 s11Var110 = s11.CUI_NAME_SDKINIT_SDKCORE_JS_LOADED;
                                                yq1 yq1Var112 = pq1Var.i;
                                                WeakHashMap weakHashMap110 = hs3.a;
                                                rr3VarA2 = hs3.a(s11Var110, CollectionsKt.emptyList(), true);
                                                eb3 eb3Var10 = yq1Var112.f.s;
                                                eb3Var10.getClass();
                                                Duration.Companion companion10 = Duration.INSTANCE;
                                                long duration10 = DurationKt.toDuration(10, DurationUnit.SECONDS);
                                                Intrinsics.checkNotNullParameter("gads:js_eng_load_gmsg:timeout_millis", C3510b4.i.W);
                                                rawValue = ((Duration) eb3Var10.a("gads:js_eng_load_gmsg:timeout_millis", Duration.m4365boximpl(duration10), yr.j)).getRawValue();
                                                oq1Var = new oq1(completableDeferred, null);
                                                pq1Var.a = r11;
                                                pq1Var.b = rr3VarA2;
                                                pq1Var.c = rr3VarA2;
                                                pq1Var.d = null;
                                                pq1Var.e = i6;
                                                pq1Var.f = 9;
                                                if (TimeoutKt.m4522withTimeoutKLykuaI(rawValue, oq1Var, pq1Var) != coroutine_suspended) {
                                                    rr3Var6 = rr3VarA2;
                                                    closeable7 = rr3VarA2;
                                                    r12 = r11;
                                                    ?? r113 = r12;
                                                    obj2 = p005kotlin.Unit.INSTANCE;
                                                    if (obj2 instanceof i01) {
                                                        xs3.a((i01) obj2, false);
                                                        break;
                                                    }
                                                    CloseableKt.closeFinally(closeable7, null);
                                                    yq1 yq1Var113 = pq1Var.i;
                                                    CoroutineScope coroutineScope111 = yq1Var113.d;
                                                    CoroutineScope coroutineScope112 = yq1Var113.e;
                                                    g83 g83Var10 = yq1Var113.l;
                                                    ex0 ex0Var10 = yq1Var113.f;
                                                    if (i6 != 0) {
                                                        z2 = true;
                                                    } else {
                                                        z2 = false;
                                                    }
                                                    return new q01(new fl1(r113, coroutineScope111, coroutineScope112, g83Var10, ex0Var10, z2));
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    break;
                }
                return coroutine_suspended;
            case 1:
                i2 = pq1Var.e;
                objectRef = (Ref.ObjectRef) pq1Var.b;
                Ref.BooleanRef booleanRef6 = (Ref.BooleanRef) pq1Var.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
                booleanRef2 = booleanRef6;
                objA = obj;
                if (!((Boolean) objA).booleanValue()) {
                    booleanRef = booleanRef2;
                    if (pq1Var.j) {
                        z = false;
                    } else {
                        z = false;
                    }
                    booleanRef.element = z;
                    yq1 yq1Var114 = pq1Var.i;
                    CoroutineScope coroutineScope113 = yq1Var114.e;
                    mq1 block3 = new mq1(booleanRef, yq1Var114, pq1Var.l, objectRef, null);
                    EmptyCoroutineContext context3 = EmptyCoroutineContext.INSTANCE;
                    Intrinsics.checkNotNullParameter(coroutineScope113, "<this>");
                    Intrinsics.checkNotNullParameter(context3, "context");
                    Intrinsics.checkNotNullParameter(block3, "block");
                    Deferred deferredAsync$default3 = BuildersKt__Builders_commonKt.async$default(coroutineScope113, context3, null, new vs3(block3, null), 2, null);
                    i = i2;
                    deferred = deferredAsync$default3;
                    objectRef4 = objectRef;
                    iz3 iz3Var4 = pq1Var.i.k;
                    v14 v14Var4 = new v14(u14.DEFAULT, 0, 0, 14);
                    ar1 ar1Var6 = pq1Var.i.m;
                    pq1Var.a = booleanRef;
                    pq1Var.b = deferred;
                    pq1Var.c = objectRef4;
                    pq1Var.e = i;
                    pq1Var.f = 3;
                    objA3 = iz3.a(iz3Var4, v14Var4, ar1Var6, true, (eo2) null, true, (Continuation) this, 24);
                    pq1Var = this;
                    if (objA3 != coroutine_suspended) {
                        booleanRef4 = booleanRef;
                        objectRef5 = objectRef4;
                        deferred2 = deferred;
                        v01Var = (v01) objA3;
                        if (v01Var instanceof i01) {
                            return (i01) v01Var;
                        }
                        Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                        r0 = (r31) ((q01) v01Var).b;
                        r0.setWillNotDraw(true);
                        pq1Var.k.element = r0;
                        fq1Var = (fq1) pq1Var.i.n.get();
                        ar1Var = pq1Var.i.m;
                        pq1Var.a = booleanRef4;
                        pq1Var.b = deferred2;
                        pq1Var.c = objectRef5;
                        pq1Var.d = r0;
                        pq1Var.e = i;
                        pq1Var.f = 4;
                        if (fq1Var.a(ar1Var, pq1Var) != coroutine_suspended) {
                            r2 = r0;
                            i4 = i;
                            if (!pq1Var.h) {
                            }
                            objectRef6 = objectRef5;
                            r4 = r2;
                            completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
                            ar1Var2 = pq1Var.i.m;
                            jq1Var = new jq1(completableDeferredCompletableDeferred$default);
                            pq1Var.a = objectRef6;
                            pq1Var.b = r4;
                            pq1Var.c = completableDeferredCompletableDeferred$default;
                            pq1Var.d = null;
                            pq1Var.e = i4;
                            pq1Var.f = 6;
                            ar1Var2.getClass();
                            r7 = r4;
                            if (yr1.a(ar1Var2, "/jsLoaded", jq1Var, pq1Var) != coroutine_suspended) {
                                i5 = i4;
                                completableDeferred = completableDeferredCompletableDeferred$default;
                                r1 = r7;
                                charSequence2 = (CharSequence) objectRef6.element;
                                if (charSequence2 == null) {
                                    s11 s11Var111 = s11.CUI_NAME_SDKINIT_SDKCORE_LOAD_URL;
                                    String str12 = pq1Var.l;
                                    WeakHashMap weakHashMap111 = hs3.a;
                                    rr3VarA = hs3.a(s11Var111, CollectionsKt.emptyList(), true);
                                    pq1Var.a = r1;
                                    pq1Var.b = completableDeferred;
                                    pq1Var.c = rr3VarA;
                                    pq1Var.d = rr3VarA;
                                    pq1Var.e = i5;
                                    pq1Var.f = 7;
                                    objC = r1.c(str12, pq1Var);
                                    if (objC != coroutine_suspended) {
                                        r8 = r1;
                                        rr3Var = rr3VarA;
                                        i6 = i5;
                                        closeable3 = rr3VarA;
                                        v01Var2 = (v01) objC;
                                        if (v01Var2 instanceof i01) {
                                            xs3.a((i01) v01Var2, false);
                                        }
                                        CloseableKt.closeFinally(closeable3, null);
                                        v01Var3 = v01Var2;
                                        r10 = r8;
                                        r11 = r10;
                                        if (v01Var3 instanceof i01) {
                                            BuildersKt__Builders_commonKt.launch$default(pq1Var.i.d, NonCancellable.INSTANCE, null, new nq1(r11, null), 2, null);
                                            return v01Var3;
                                        }
                                        s11 s11Var112 = s11.CUI_NAME_SDKINIT_SDKCORE_JS_LOADED;
                                        yq1 yq1Var115 = pq1Var.i;
                                        WeakHashMap weakHashMap112 = hs3.a;
                                        rr3VarA2 = hs3.a(s11Var112, CollectionsKt.emptyList(), true);
                                        eb3 eb3Var11 = yq1Var115.f.s;
                                        eb3Var11.getClass();
                                        Duration.Companion companion11 = Duration.INSTANCE;
                                        long duration11 = DurationKt.toDuration(10, DurationUnit.SECONDS);
                                        Intrinsics.checkNotNullParameter("gads:js_eng_load_gmsg:timeout_millis", C3510b4.i.W);
                                        rawValue = ((Duration) eb3Var11.a("gads:js_eng_load_gmsg:timeout_millis", Duration.m4365boximpl(duration11), yr.j)).getRawValue();
                                        oq1Var = new oq1(completableDeferred, null);
                                        pq1Var.a = r11;
                                        pq1Var.b = rr3VarA2;
                                        pq1Var.c = rr3VarA2;
                                        pq1Var.d = null;
                                        pq1Var.e = i6;
                                        pq1Var.f = 9;
                                        if (TimeoutKt.m4522withTimeoutKLykuaI(rawValue, oq1Var, pq1Var) != coroutine_suspended) {
                                            rr3Var6 = rr3VarA2;
                                            closeable7 = rr3VarA2;
                                            r12 = r11;
                                            ?? r114 = r12;
                                            obj2 = p005kotlin.Unit.INSTANCE;
                                            if (obj2 instanceof i01) {
                                                xs3.a((i01) obj2, false);
                                                break;
                                            }
                                            CloseableKt.closeFinally(closeable7, null);
                                            yq1 yq1Var116 = pq1Var.i;
                                            CoroutineScope coroutineScope114 = yq1Var116.d;
                                            CoroutineScope coroutineScope115 = yq1Var116.e;
                                            g83 g83Var11 = yq1Var116.l;
                                            ex0 ex0Var11 = yq1Var116.f;
                                            if (i6 != 0) {
                                                z2 = true;
                                            } else {
                                                z2 = false;
                                            }
                                            return new q01(new fl1(r114, coroutineScope114, coroutineScope115, g83Var11, ex0Var11, z2));
                                        }
                                    }
                                } else {
                                    s11 s11Var113 = s11.CUI_NAME_SDKINIT_SDKCORE_LOAD_URL;
                                    String str13 = pq1Var.l;
                                    WeakHashMap weakHashMap113 = hs3.a;
                                    rr3VarA = hs3.a(s11Var113, CollectionsKt.emptyList(), true);
                                    pq1Var.a = r1;
                                    pq1Var.b = completableDeferred;
                                    pq1Var.c = rr3VarA;
                                    pq1Var.d = rr3VarA;
                                    pq1Var.e = i5;
                                    pq1Var.f = 7;
                                    objC = r1.c(str13, pq1Var);
                                    if (objC != coroutine_suspended) {
                                        r8 = r1;
                                        rr3Var = rr3VarA;
                                        i6 = i5;
                                        closeable3 = rr3VarA;
                                        v01Var2 = (v01) objC;
                                        if (v01Var2 instanceof i01) {
                                            xs3.a((i01) v01Var2, false);
                                        }
                                        CloseableKt.closeFinally(closeable3, null);
                                        v01Var3 = v01Var2;
                                        r10 = r8;
                                        r11 = r10;
                                        if (v01Var3 instanceof i01) {
                                            BuildersKt__Builders_commonKt.launch$default(pq1Var.i.d, NonCancellable.INSTANCE, null, new nq1(r11, null), 2, null);
                                            return v01Var3;
                                        }
                                        s11 s11Var114 = s11.CUI_NAME_SDKINIT_SDKCORE_JS_LOADED;
                                        yq1 yq1Var117 = pq1Var.i;
                                        WeakHashMap weakHashMap114 = hs3.a;
                                        rr3VarA2 = hs3.a(s11Var114, CollectionsKt.emptyList(), true);
                                        eb3 eb3Var12 = yq1Var117.f.s;
                                        eb3Var12.getClass();
                                        Duration.Companion companion12 = Duration.INSTANCE;
                                        long duration12 = DurationKt.toDuration(10, DurationUnit.SECONDS);
                                        Intrinsics.checkNotNullParameter("gads:js_eng_load_gmsg:timeout_millis", C3510b4.i.W);
                                        rawValue = ((Duration) eb3Var12.a("gads:js_eng_load_gmsg:timeout_millis", Duration.m4365boximpl(duration12), yr.j)).getRawValue();
                                        oq1Var = new oq1(completableDeferred, null);
                                        pq1Var.a = r11;
                                        pq1Var.b = rr3VarA2;
                                        pq1Var.c = rr3VarA2;
                                        pq1Var.d = null;
                                        pq1Var.e = i6;
                                        pq1Var.f = 9;
                                        if (TimeoutKt.m4522withTimeoutKLykuaI(rawValue, oq1Var, pq1Var) != coroutine_suspended) {
                                            rr3Var6 = rr3VarA2;
                                            closeable7 = rr3VarA2;
                                            r12 = r11;
                                            ?? r115 = r12;
                                            obj2 = p005kotlin.Unit.INSTANCE;
                                            if (obj2 instanceof i01) {
                                                xs3.a((i01) obj2, false);
                                                break;
                                            }
                                            CloseableKt.closeFinally(closeable7, null);
                                            yq1 yq1Var118 = pq1Var.i;
                                            CoroutineScope coroutineScope116 = yq1Var118.d;
                                            CoroutineScope coroutineScope117 = yq1Var118.e;
                                            g83 g83Var12 = yq1Var118.l;
                                            ex0 ex0Var12 = yq1Var118.f;
                                            if (i6 != 0) {
                                                z2 = true;
                                            } else {
                                                z2 = false;
                                            }
                                            return new q01(new fl1(r115, coroutineScope116, coroutineScope117, g83Var12, ex0Var12, z2));
                                        }
                                    }
                                }
                            }
                        }
                    }
                    break;
                } else {
                    cb3 cb3Var2 = pq1Var.i.j;
                    pq1Var.a = booleanRef2;
                    pq1Var.b = objectRef;
                    pq1Var.c = objectRef;
                    pq1Var.e = 1;
                    pq1Var.f = 2;
                    cb3Var2.getClass();
                    objA2 = cb3.a(cb3Var2, pq1Var);
                    if (objA2 != coroutine_suspended) {
                        objectRef2 = objectRef;
                        booleanRef3 = booleanRef2;
                        objectRef3 = objectRef2;
                        i3 = 1;
                        objectRef2.element = ((ua3) objA2).v();
                        i2 = i3;
                        objectRef = objectRef3;
                        booleanRef = booleanRef3;
                        if (pq1Var.j) {
                            z = false;
                        } else {
                            z = false;
                        }
                        booleanRef.element = z;
                        yq1 yq1Var119 = pq1Var.i;
                        CoroutineScope coroutineScope118 = yq1Var119.e;
                        mq1 block4 = new mq1(booleanRef, yq1Var119, pq1Var.l, objectRef, null);
                        EmptyCoroutineContext context4 = EmptyCoroutineContext.INSTANCE;
                        Intrinsics.checkNotNullParameter(coroutineScope118, "<this>");
                        Intrinsics.checkNotNullParameter(context4, "context");
                        Intrinsics.checkNotNullParameter(block4, "block");
                        Deferred deferredAsync$default4 = BuildersKt__Builders_commonKt.async$default(coroutineScope118, context4, null, new vs3(block4, null), 2, null);
                        i = i2;
                        deferred = deferredAsync$default4;
                        objectRef4 = objectRef;
                        iz3 iz3Var5 = pq1Var.i.k;
                        v14 v14Var5 = new v14(u14.DEFAULT, 0, 0, 14);
                        ar1 ar1Var7 = pq1Var.i.m;
                        pq1Var.a = booleanRef;
                        pq1Var.b = deferred;
                        pq1Var.c = objectRef4;
                        pq1Var.e = i;
                        pq1Var.f = 3;
                        objA3 = iz3.a(iz3Var5, v14Var5, ar1Var7, true, (eo2) null, true, (Continuation) this, 24);
                        pq1Var = this;
                        if (objA3 != coroutine_suspended) {
                            booleanRef4 = booleanRef;
                            objectRef5 = objectRef4;
                            deferred2 = deferred;
                            v01Var = (v01) objA3;
                            if (v01Var instanceof i01) {
                                return (i01) v01Var;
                            }
                            Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                            r0 = (r31) ((q01) v01Var).b;
                            r0.setWillNotDraw(true);
                            pq1Var.k.element = r0;
                            fq1Var = (fq1) pq1Var.i.n.get();
                            ar1Var = pq1Var.i.m;
                            pq1Var.a = booleanRef4;
                            pq1Var.b = deferred2;
                            pq1Var.c = objectRef5;
                            pq1Var.d = r0;
                            pq1Var.e = i;
                            pq1Var.f = 4;
                            if (fq1Var.a(ar1Var, pq1Var) != coroutine_suspended) {
                                r2 = r0;
                                i4 = i;
                                if (!pq1Var.h) {
                                }
                                objectRef6 = objectRef5;
                                r4 = r2;
                                completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
                                ar1Var2 = pq1Var.i.m;
                                jq1Var = new jq1(completableDeferredCompletableDeferred$default);
                                pq1Var.a = objectRef6;
                                pq1Var.b = r4;
                                pq1Var.c = completableDeferredCompletableDeferred$default;
                                pq1Var.d = null;
                                pq1Var.e = i4;
                                pq1Var.f = 6;
                                ar1Var2.getClass();
                                r7 = r4;
                                if (yr1.a(ar1Var2, "/jsLoaded", jq1Var, pq1Var) != coroutine_suspended) {
                                    i5 = i4;
                                    completableDeferred = completableDeferredCompletableDeferred$default;
                                    r1 = r7;
                                    charSequence2 = (CharSequence) objectRef6.element;
                                    if (charSequence2 == null) {
                                        s11 s11Var115 = s11.CUI_NAME_SDKINIT_SDKCORE_LOAD_URL;
                                        String str14 = pq1Var.l;
                                        WeakHashMap weakHashMap115 = hs3.a;
                                        rr3VarA = hs3.a(s11Var115, CollectionsKt.emptyList(), true);
                                        pq1Var.a = r1;
                                        pq1Var.b = completableDeferred;
                                        pq1Var.c = rr3VarA;
                                        pq1Var.d = rr3VarA;
                                        pq1Var.e = i5;
                                        pq1Var.f = 7;
                                        objC = r1.c(str14, pq1Var);
                                        if (objC != coroutine_suspended) {
                                            r8 = r1;
                                            rr3Var = rr3VarA;
                                            i6 = i5;
                                            closeable3 = rr3VarA;
                                            v01Var2 = (v01) objC;
                                            if (v01Var2 instanceof i01) {
                                                xs3.a((i01) v01Var2, false);
                                            }
                                            CloseableKt.closeFinally(closeable3, null);
                                            v01Var3 = v01Var2;
                                            r10 = r8;
                                            r11 = r10;
                                            if (v01Var3 instanceof i01) {
                                                BuildersKt__Builders_commonKt.launch$default(pq1Var.i.d, NonCancellable.INSTANCE, null, new nq1(r11, null), 2, null);
                                                return v01Var3;
                                            }
                                            s11 s11Var116 = s11.CUI_NAME_SDKINIT_SDKCORE_JS_LOADED;
                                            yq1 yq1Var1110 = pq1Var.i;
                                            WeakHashMap weakHashMap116 = hs3.a;
                                            rr3VarA2 = hs3.a(s11Var116, CollectionsKt.emptyList(), true);
                                            eb3 eb3Var13 = yq1Var1110.f.s;
                                            eb3Var13.getClass();
                                            Duration.Companion companion13 = Duration.INSTANCE;
                                            long duration13 = DurationKt.toDuration(10, DurationUnit.SECONDS);
                                            Intrinsics.checkNotNullParameter("gads:js_eng_load_gmsg:timeout_millis", C3510b4.i.W);
                                            rawValue = ((Duration) eb3Var13.a("gads:js_eng_load_gmsg:timeout_millis", Duration.m4365boximpl(duration13), yr.j)).getRawValue();
                                            oq1Var = new oq1(completableDeferred, null);
                                            pq1Var.a = r11;
                                            pq1Var.b = rr3VarA2;
                                            pq1Var.c = rr3VarA2;
                                            pq1Var.d = null;
                                            pq1Var.e = i6;
                                            pq1Var.f = 9;
                                            if (TimeoutKt.m4522withTimeoutKLykuaI(rawValue, oq1Var, pq1Var) != coroutine_suspended) {
                                                rr3Var6 = rr3VarA2;
                                                closeable7 = rr3VarA2;
                                                r12 = r11;
                                                ?? r116 = r12;
                                                obj2 = p005kotlin.Unit.INSTANCE;
                                                if (obj2 instanceof i01) {
                                                    xs3.a((i01) obj2, false);
                                                    break;
                                                }
                                                CloseableKt.closeFinally(closeable7, null);
                                                yq1 yq1Var1111 = pq1Var.i;
                                                CoroutineScope coroutineScope119 = yq1Var1111.d;
                                                CoroutineScope coroutineScope1110 = yq1Var1111.e;
                                                g83 g83Var13 = yq1Var1111.l;
                                                ex0 ex0Var13 = yq1Var1111.f;
                                                if (i6 != 0) {
                                                    z2 = true;
                                                } else {
                                                    z2 = false;
                                                }
                                                return new q01(new fl1(r116, coroutineScope119, coroutineScope1110, g83Var13, ex0Var13, z2));
                                            }
                                        }
                                    } else {
                                        s11 s11Var117 = s11.CUI_NAME_SDKINIT_SDKCORE_LOAD_URL;
                                        String str15 = pq1Var.l;
                                        WeakHashMap weakHashMap117 = hs3.a;
                                        rr3VarA = hs3.a(s11Var117, CollectionsKt.emptyList(), true);
                                        pq1Var.a = r1;
                                        pq1Var.b = completableDeferred;
                                        pq1Var.c = rr3VarA;
                                        pq1Var.d = rr3VarA;
                                        pq1Var.e = i5;
                                        pq1Var.f = 7;
                                        objC = r1.c(str15, pq1Var);
                                        if (objC != coroutine_suspended) {
                                            r8 = r1;
                                            rr3Var = rr3VarA;
                                            i6 = i5;
                                            closeable3 = rr3VarA;
                                            v01Var2 = (v01) objC;
                                            if (v01Var2 instanceof i01) {
                                                xs3.a((i01) v01Var2, false);
                                            }
                                            CloseableKt.closeFinally(closeable3, null);
                                            v01Var3 = v01Var2;
                                            r10 = r8;
                                            r11 = r10;
                                            if (v01Var3 instanceof i01) {
                                                BuildersKt__Builders_commonKt.launch$default(pq1Var.i.d, NonCancellable.INSTANCE, null, new nq1(r11, null), 2, null);
                                                return v01Var3;
                                            }
                                            s11 s11Var118 = s11.CUI_NAME_SDKINIT_SDKCORE_JS_LOADED;
                                            yq1 yq1Var1112 = pq1Var.i;
                                            WeakHashMap weakHashMap118 = hs3.a;
                                            rr3VarA2 = hs3.a(s11Var118, CollectionsKt.emptyList(), true);
                                            eb3 eb3Var14 = yq1Var1112.f.s;
                                            eb3Var14.getClass();
                                            Duration.Companion companion14 = Duration.INSTANCE;
                                            long duration14 = DurationKt.toDuration(10, DurationUnit.SECONDS);
                                            Intrinsics.checkNotNullParameter("gads:js_eng_load_gmsg:timeout_millis", C3510b4.i.W);
                                            rawValue = ((Duration) eb3Var14.a("gads:js_eng_load_gmsg:timeout_millis", Duration.m4365boximpl(duration14), yr.j)).getRawValue();
                                            oq1Var = new oq1(completableDeferred, null);
                                            pq1Var.a = r11;
                                            pq1Var.b = rr3VarA2;
                                            pq1Var.c = rr3VarA2;
                                            pq1Var.d = null;
                                            pq1Var.e = i6;
                                            pq1Var.f = 9;
                                            if (TimeoutKt.m4522withTimeoutKLykuaI(rawValue, oq1Var, pq1Var) != coroutine_suspended) {
                                                rr3Var6 = rr3VarA2;
                                                closeable7 = rr3VarA2;
                                                r12 = r11;
                                                ?? r117 = r12;
                                                obj2 = p005kotlin.Unit.INSTANCE;
                                                if (obj2 instanceof i01) {
                                                    xs3.a((i01) obj2, false);
                                                    break;
                                                }
                                                CloseableKt.closeFinally(closeable7, null);
                                                yq1 yq1Var1113 = pq1Var.i;
                                                CoroutineScope coroutineScope1111 = yq1Var1113.d;
                                                CoroutineScope coroutineScope1112 = yq1Var1113.e;
                                                g83 g83Var14 = yq1Var1113.l;
                                                ex0 ex0Var14 = yq1Var1113.f;
                                                if (i6 != 0) {
                                                    z2 = true;
                                                } else {
                                                    z2 = false;
                                                }
                                                return new q01(new fl1(r117, coroutineScope1111, coroutineScope1112, g83Var14, ex0Var14, z2));
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    break;
                }
                return coroutine_suspended;
            case 2:
                int i7 = pq1Var.e;
                Ref.ObjectRef objectRef8 = (Ref.ObjectRef) pq1Var.c;
                Ref.ObjectRef objectRef9 = (Ref.ObjectRef) pq1Var.b;
                Ref.BooleanRef booleanRef7 = (Ref.BooleanRef) pq1Var.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
                booleanRef3 = booleanRef7;
                objectRef3 = objectRef9;
                objectRef2 = objectRef8;
                i3 = i7;
                objA2 = obj;
                objectRef2.element = ((ua3) objA2).v();
                i2 = i3;
                objectRef = objectRef3;
                booleanRef = booleanRef3;
                if (pq1Var.j) {
                    z = false;
                } else {
                    z = false;
                }
                booleanRef.element = z;
                yq1 yq1Var1114 = pq1Var.i;
                CoroutineScope coroutineScope1113 = yq1Var1114.e;
                mq1 block5 = new mq1(booleanRef, yq1Var1114, pq1Var.l, objectRef, null);
                EmptyCoroutineContext context5 = EmptyCoroutineContext.INSTANCE;
                Intrinsics.checkNotNullParameter(coroutineScope1113, "<this>");
                Intrinsics.checkNotNullParameter(context5, "context");
                Intrinsics.checkNotNullParameter(block5, "block");
                Deferred deferredAsync$default5 = BuildersKt__Builders_commonKt.async$default(coroutineScope1113, context5, null, new vs3(block5, null), 2, null);
                i = i2;
                deferred = deferredAsync$default5;
                objectRef4 = objectRef;
                iz3 iz3Var6 = pq1Var.i.k;
                v14 v14Var6 = new v14(u14.DEFAULT, 0, 0, 14);
                ar1 ar1Var8 = pq1Var.i.m;
                pq1Var.a = booleanRef;
                pq1Var.b = deferred;
                pq1Var.c = objectRef4;
                pq1Var.e = i;
                pq1Var.f = 3;
                objA3 = iz3.a(iz3Var6, v14Var6, ar1Var8, true, (eo2) null, true, (Continuation) this, 24);
                pq1Var = this;
                if (objA3 != coroutine_suspended) {
                    booleanRef4 = booleanRef;
                    objectRef5 = objectRef4;
                    deferred2 = deferred;
                    v01Var = (v01) objA3;
                    if (v01Var instanceof i01) {
                        return (i01) v01Var;
                    }
                    Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                    r0 = (r31) ((q01) v01Var).b;
                    r0.setWillNotDraw(true);
                    pq1Var.k.element = r0;
                    fq1Var = (fq1) pq1Var.i.n.get();
                    ar1Var = pq1Var.i.m;
                    pq1Var.a = booleanRef4;
                    pq1Var.b = deferred2;
                    pq1Var.c = objectRef5;
                    pq1Var.d = r0;
                    pq1Var.e = i;
                    pq1Var.f = 4;
                    if (fq1Var.a(ar1Var, pq1Var) != coroutine_suspended) {
                        r2 = r0;
                        i4 = i;
                        if (!pq1Var.h) {
                        }
                        objectRef6 = objectRef5;
                        r4 = r2;
                        completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
                        ar1Var2 = pq1Var.i.m;
                        jq1Var = new jq1(completableDeferredCompletableDeferred$default);
                        pq1Var.a = objectRef6;
                        pq1Var.b = r4;
                        pq1Var.c = completableDeferredCompletableDeferred$default;
                        pq1Var.d = null;
                        pq1Var.e = i4;
                        pq1Var.f = 6;
                        ar1Var2.getClass();
                        r7 = r4;
                        if (yr1.a(ar1Var2, "/jsLoaded", jq1Var, pq1Var) != coroutine_suspended) {
                            i5 = i4;
                            completableDeferred = completableDeferredCompletableDeferred$default;
                            r1 = r7;
                            charSequence2 = (CharSequence) objectRef6.element;
                            if (charSequence2 == null) {
                                s11 s11Var119 = s11.CUI_NAME_SDKINIT_SDKCORE_LOAD_URL;
                                String str16 = pq1Var.l;
                                WeakHashMap weakHashMap119 = hs3.a;
                                rr3VarA = hs3.a(s11Var119, CollectionsKt.emptyList(), true);
                                pq1Var.a = r1;
                                pq1Var.b = completableDeferred;
                                pq1Var.c = rr3VarA;
                                pq1Var.d = rr3VarA;
                                pq1Var.e = i5;
                                pq1Var.f = 7;
                                objC = r1.c(str16, pq1Var);
                                if (objC != coroutine_suspended) {
                                    r8 = r1;
                                    rr3Var = rr3VarA;
                                    i6 = i5;
                                    closeable3 = rr3VarA;
                                    v01Var2 = (v01) objC;
                                    if (v01Var2 instanceof i01) {
                                        xs3.a((i01) v01Var2, false);
                                    }
                                    CloseableKt.closeFinally(closeable3, null);
                                    v01Var3 = v01Var2;
                                    r10 = r8;
                                    r11 = r10;
                                    if (v01Var3 instanceof i01) {
                                        BuildersKt__Builders_commonKt.launch$default(pq1Var.i.d, NonCancellable.INSTANCE, null, new nq1(r11, null), 2, null);
                                        return v01Var3;
                                    }
                                    s11 s11Var1110 = s11.CUI_NAME_SDKINIT_SDKCORE_JS_LOADED;
                                    yq1 yq1Var1115 = pq1Var.i;
                                    WeakHashMap weakHashMap1110 = hs3.a;
                                    rr3VarA2 = hs3.a(s11Var1110, CollectionsKt.emptyList(), true);
                                    eb3 eb3Var15 = yq1Var1115.f.s;
                                    eb3Var15.getClass();
                                    Duration.Companion companion15 = Duration.INSTANCE;
                                    long duration15 = DurationKt.toDuration(10, DurationUnit.SECONDS);
                                    Intrinsics.checkNotNullParameter("gads:js_eng_load_gmsg:timeout_millis", C3510b4.i.W);
                                    rawValue = ((Duration) eb3Var15.a("gads:js_eng_load_gmsg:timeout_millis", Duration.m4365boximpl(duration15), yr.j)).getRawValue();
                                    oq1Var = new oq1(completableDeferred, null);
                                    pq1Var.a = r11;
                                    pq1Var.b = rr3VarA2;
                                    pq1Var.c = rr3VarA2;
                                    pq1Var.d = null;
                                    pq1Var.e = i6;
                                    pq1Var.f = 9;
                                    if (TimeoutKt.m4522withTimeoutKLykuaI(rawValue, oq1Var, pq1Var) != coroutine_suspended) {
                                        rr3Var6 = rr3VarA2;
                                        closeable7 = rr3VarA2;
                                        r12 = r11;
                                        ?? r118 = r12;
                                        obj2 = p005kotlin.Unit.INSTANCE;
                                        if (obj2 instanceof i01) {
                                            xs3.a((i01) obj2, false);
                                            break;
                                        }
                                        CloseableKt.closeFinally(closeable7, null);
                                        yq1 yq1Var1116 = pq1Var.i;
                                        CoroutineScope coroutineScope1114 = yq1Var1116.d;
                                        CoroutineScope coroutineScope1115 = yq1Var1116.e;
                                        g83 g83Var15 = yq1Var1116.l;
                                        ex0 ex0Var15 = yq1Var1116.f;
                                        if (i6 != 0) {
                                            z2 = true;
                                        } else {
                                            z2 = false;
                                        }
                                        return new q01(new fl1(r118, coroutineScope1114, coroutineScope1115, g83Var15, ex0Var15, z2));
                                    }
                                }
                            } else {
                                s11 s11Var1111 = s11.CUI_NAME_SDKINIT_SDKCORE_LOAD_URL;
                                String str17 = pq1Var.l;
                                WeakHashMap weakHashMap1111 = hs3.a;
                                rr3VarA = hs3.a(s11Var1111, CollectionsKt.emptyList(), true);
                                pq1Var.a = r1;
                                pq1Var.b = completableDeferred;
                                pq1Var.c = rr3VarA;
                                pq1Var.d = rr3VarA;
                                pq1Var.e = i5;
                                pq1Var.f = 7;
                                objC = r1.c(str17, pq1Var);
                                if (objC != coroutine_suspended) {
                                    r8 = r1;
                                    rr3Var = rr3VarA;
                                    i6 = i5;
                                    closeable3 = rr3VarA;
                                    v01Var2 = (v01) objC;
                                    if (v01Var2 instanceof i01) {
                                        xs3.a((i01) v01Var2, false);
                                    }
                                    CloseableKt.closeFinally(closeable3, null);
                                    v01Var3 = v01Var2;
                                    r10 = r8;
                                    r11 = r10;
                                    if (v01Var3 instanceof i01) {
                                        BuildersKt__Builders_commonKt.launch$default(pq1Var.i.d, NonCancellable.INSTANCE, null, new nq1(r11, null), 2, null);
                                        return v01Var3;
                                    }
                                    s11 s11Var1112 = s11.CUI_NAME_SDKINIT_SDKCORE_JS_LOADED;
                                    yq1 yq1Var1117 = pq1Var.i;
                                    WeakHashMap weakHashMap1112 = hs3.a;
                                    rr3VarA2 = hs3.a(s11Var1112, CollectionsKt.emptyList(), true);
                                    eb3 eb3Var16 = yq1Var1117.f.s;
                                    eb3Var16.getClass();
                                    Duration.Companion companion16 = Duration.INSTANCE;
                                    long duration16 = DurationKt.toDuration(10, DurationUnit.SECONDS);
                                    Intrinsics.checkNotNullParameter("gads:js_eng_load_gmsg:timeout_millis", C3510b4.i.W);
                                    rawValue = ((Duration) eb3Var16.a("gads:js_eng_load_gmsg:timeout_millis", Duration.m4365boximpl(duration16), yr.j)).getRawValue();
                                    oq1Var = new oq1(completableDeferred, null);
                                    pq1Var.a = r11;
                                    pq1Var.b = rr3VarA2;
                                    pq1Var.c = rr3VarA2;
                                    pq1Var.d = null;
                                    pq1Var.e = i6;
                                    pq1Var.f = 9;
                                    if (TimeoutKt.m4522withTimeoutKLykuaI(rawValue, oq1Var, pq1Var) != coroutine_suspended) {
                                        rr3Var6 = rr3VarA2;
                                        closeable7 = rr3VarA2;
                                        r12 = r11;
                                        ?? r119 = r12;
                                        obj2 = p005kotlin.Unit.INSTANCE;
                                        if (obj2 instanceof i01) {
                                            xs3.a((i01) obj2, false);
                                            break;
                                        }
                                        CloseableKt.closeFinally(closeable7, null);
                                        yq1 yq1Var1118 = pq1Var.i;
                                        CoroutineScope coroutineScope1116 = yq1Var1118.d;
                                        CoroutineScope coroutineScope1117 = yq1Var1118.e;
                                        g83 g83Var16 = yq1Var1118.l;
                                        ex0 ex0Var16 = yq1Var1118.f;
                                        if (i6 != 0) {
                                            z2 = true;
                                        } else {
                                            z2 = false;
                                        }
                                        return new q01(new fl1(r119, coroutineScope1116, coroutineScope1117, g83Var16, ex0Var16, z2));
                                    }
                                }
                            }
                        }
                    }
                    break;
                }
                return coroutine_suspended;
            case 3:
                int i8 = pq1Var.e;
                objectRef5 = (Ref.ObjectRef) pq1Var.c;
                Deferred deferred3 = (Deferred) pq1Var.b;
                Ref.BooleanRef booleanRef8 = (Ref.BooleanRef) pq1Var.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
                i = i8;
                booleanRef4 = booleanRef8;
                objA3 = obj;
                deferred2 = deferred3;
                v01Var = (v01) objA3;
                if (v01Var instanceof i01) {
                    return (i01) v01Var;
                }
                Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                r0 = (r31) ((q01) v01Var).b;
                r0.setWillNotDraw(true);
                pq1Var.k.element = r0;
                fq1Var = (fq1) pq1Var.i.n.get();
                ar1Var = pq1Var.i.m;
                pq1Var.a = booleanRef4;
                pq1Var.b = deferred2;
                pq1Var.c = objectRef5;
                pq1Var.d = r0;
                pq1Var.e = i;
                pq1Var.f = 4;
                if (fq1Var.a(ar1Var, pq1Var) != coroutine_suspended) {
                    r2 = r0;
                    i4 = i;
                    if (!pq1Var.h) {
                    }
                    objectRef6 = objectRef5;
                    r4 = r2;
                    completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
                    ar1Var2 = pq1Var.i.m;
                    jq1Var = new jq1(completableDeferredCompletableDeferred$default);
                    pq1Var.a = objectRef6;
                    pq1Var.b = r4;
                    pq1Var.c = completableDeferredCompletableDeferred$default;
                    pq1Var.d = null;
                    pq1Var.e = i4;
                    pq1Var.f = 6;
                    ar1Var2.getClass();
                    r7 = r4;
                    if (yr1.a(ar1Var2, "/jsLoaded", jq1Var, pq1Var) != coroutine_suspended) {
                        i5 = i4;
                        completableDeferred = completableDeferredCompletableDeferred$default;
                        r1 = r7;
                        charSequence2 = (CharSequence) objectRef6.element;
                        if (charSequence2 == null) {
                            s11 s11Var1113 = s11.CUI_NAME_SDKINIT_SDKCORE_LOAD_URL;
                            String str18 = pq1Var.l;
                            WeakHashMap weakHashMap1113 = hs3.a;
                            rr3VarA = hs3.a(s11Var1113, CollectionsKt.emptyList(), true);
                            pq1Var.a = r1;
                            pq1Var.b = completableDeferred;
                            pq1Var.c = rr3VarA;
                            pq1Var.d = rr3VarA;
                            pq1Var.e = i5;
                            pq1Var.f = 7;
                            objC = r1.c(str18, pq1Var);
                            if (objC != coroutine_suspended) {
                                r8 = r1;
                                rr3Var = rr3VarA;
                                i6 = i5;
                                closeable3 = rr3VarA;
                                v01Var2 = (v01) objC;
                                if (v01Var2 instanceof i01) {
                                    xs3.a((i01) v01Var2, false);
                                }
                                CloseableKt.closeFinally(closeable3, null);
                                v01Var3 = v01Var2;
                                r10 = r8;
                                r11 = r10;
                                if (v01Var3 instanceof i01) {
                                    BuildersKt__Builders_commonKt.launch$default(pq1Var.i.d, NonCancellable.INSTANCE, null, new nq1(r11, null), 2, null);
                                    return v01Var3;
                                }
                                s11 s11Var1114 = s11.CUI_NAME_SDKINIT_SDKCORE_JS_LOADED;
                                yq1 yq1Var1119 = pq1Var.i;
                                WeakHashMap weakHashMap1114 = hs3.a;
                                rr3VarA2 = hs3.a(s11Var1114, CollectionsKt.emptyList(), true);
                                eb3 eb3Var17 = yq1Var1119.f.s;
                                eb3Var17.getClass();
                                Duration.Companion companion17 = Duration.INSTANCE;
                                long duration17 = DurationKt.toDuration(10, DurationUnit.SECONDS);
                                Intrinsics.checkNotNullParameter("gads:js_eng_load_gmsg:timeout_millis", C3510b4.i.W);
                                rawValue = ((Duration) eb3Var17.a("gads:js_eng_load_gmsg:timeout_millis", Duration.m4365boximpl(duration17), yr.j)).getRawValue();
                                oq1Var = new oq1(completableDeferred, null);
                                pq1Var.a = r11;
                                pq1Var.b = rr3VarA2;
                                pq1Var.c = rr3VarA2;
                                pq1Var.d = null;
                                pq1Var.e = i6;
                                pq1Var.f = 9;
                                if (TimeoutKt.m4522withTimeoutKLykuaI(rawValue, oq1Var, pq1Var) != coroutine_suspended) {
                                    rr3Var6 = rr3VarA2;
                                    closeable7 = rr3VarA2;
                                    r12 = r11;
                                    ?? r1110 = r12;
                                    obj2 = p005kotlin.Unit.INSTANCE;
                                    if (obj2 instanceof i01) {
                                        xs3.a((i01) obj2, false);
                                        break;
                                    }
                                    CloseableKt.closeFinally(closeable7, null);
                                    yq1 yq1Var11110 = pq1Var.i;
                                    CoroutineScope coroutineScope1118 = yq1Var11110.d;
                                    CoroutineScope coroutineScope1119 = yq1Var11110.e;
                                    g83 g83Var17 = yq1Var11110.l;
                                    ex0 ex0Var17 = yq1Var11110.f;
                                    if (i6 != 0) {
                                        z2 = true;
                                    } else {
                                        z2 = false;
                                    }
                                    return new q01(new fl1(r1110, coroutineScope1118, coroutineScope1119, g83Var17, ex0Var17, z2));
                                }
                            }
                        } else {
                            s11 s11Var1115 = s11.CUI_NAME_SDKINIT_SDKCORE_LOAD_URL;
                            String str19 = pq1Var.l;
                            WeakHashMap weakHashMap1115 = hs3.a;
                            rr3VarA = hs3.a(s11Var1115, CollectionsKt.emptyList(), true);
                            pq1Var.a = r1;
                            pq1Var.b = completableDeferred;
                            pq1Var.c = rr3VarA;
                            pq1Var.d = rr3VarA;
                            pq1Var.e = i5;
                            pq1Var.f = 7;
                            objC = r1.c(str19, pq1Var);
                            if (objC != coroutine_suspended) {
                                r8 = r1;
                                rr3Var = rr3VarA;
                                i6 = i5;
                                closeable3 = rr3VarA;
                                v01Var2 = (v01) objC;
                                if (v01Var2 instanceof i01) {
                                    xs3.a((i01) v01Var2, false);
                                }
                                CloseableKt.closeFinally(closeable3, null);
                                v01Var3 = v01Var2;
                                r10 = r8;
                                r11 = r10;
                                if (v01Var3 instanceof i01) {
                                    BuildersKt__Builders_commonKt.launch$default(pq1Var.i.d, NonCancellable.INSTANCE, null, new nq1(r11, null), 2, null);
                                    return v01Var3;
                                }
                                s11 s11Var1116 = s11.CUI_NAME_SDKINIT_SDKCORE_JS_LOADED;
                                yq1 yq1Var11111 = pq1Var.i;
                                WeakHashMap weakHashMap1116 = hs3.a;
                                rr3VarA2 = hs3.a(s11Var1116, CollectionsKt.emptyList(), true);
                                eb3 eb3Var18 = yq1Var11111.f.s;
                                eb3Var18.getClass();
                                Duration.Companion companion18 = Duration.INSTANCE;
                                long duration18 = DurationKt.toDuration(10, DurationUnit.SECONDS);
                                Intrinsics.checkNotNullParameter("gads:js_eng_load_gmsg:timeout_millis", C3510b4.i.W);
                                rawValue = ((Duration) eb3Var18.a("gads:js_eng_load_gmsg:timeout_millis", Duration.m4365boximpl(duration18), yr.j)).getRawValue();
                                oq1Var = new oq1(completableDeferred, null);
                                pq1Var.a = r11;
                                pq1Var.b = rr3VarA2;
                                pq1Var.c = rr3VarA2;
                                pq1Var.d = null;
                                pq1Var.e = i6;
                                pq1Var.f = 9;
                                if (TimeoutKt.m4522withTimeoutKLykuaI(rawValue, oq1Var, pq1Var) != coroutine_suspended) {
                                    rr3Var6 = rr3VarA2;
                                    closeable7 = rr3VarA2;
                                    r12 = r11;
                                    ?? r1111 = r12;
                                    obj2 = p005kotlin.Unit.INSTANCE;
                                    if (obj2 instanceof i01) {
                                        xs3.a((i01) obj2, false);
                                        break;
                                    }
                                    CloseableKt.closeFinally(closeable7, null);
                                    yq1 yq1Var11112 = pq1Var.i;
                                    CoroutineScope coroutineScope11110 = yq1Var11112.d;
                                    CoroutineScope coroutineScope11111 = yq1Var11112.e;
                                    g83 g83Var18 = yq1Var11112.l;
                                    ex0 ex0Var18 = yq1Var11112.f;
                                    if (i6 != 0) {
                                        z2 = true;
                                    } else {
                                        z2 = false;
                                    }
                                    return new q01(new fl1(r1111, coroutineScope11110, coroutineScope11111, g83Var18, ex0Var18, z2));
                                }
                            }
                        }
                    }
                    break;
                }
                return coroutine_suspended;
            case 4:
                i4 = pq1Var.e;
                r31 r31Var = (r31) pq1Var.d;
                Ref.ObjectRef objectRef10 = (Ref.ObjectRef) pq1Var.c;
                deferred2 = (Deferred) pq1Var.b;
                booleanRef4 = (Ref.BooleanRef) pq1Var.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
                r2 = r31Var;
                objectRef5 = objectRef10;
                if (!pq1Var.h) {
                    break;
                }
                objectRef6 = objectRef5;
                r4 = r2;
                completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
                ar1Var2 = pq1Var.i.m;
                jq1Var = new jq1(completableDeferredCompletableDeferred$default);
                pq1Var.a = objectRef6;
                pq1Var.b = r4;
                pq1Var.c = completableDeferredCompletableDeferred$default;
                pq1Var.d = null;
                pq1Var.e = i4;
                pq1Var.f = 6;
                ar1Var2.getClass();
                r7 = r4;
                if (yr1.a(ar1Var2, "/jsLoaded", jq1Var, pq1Var) != coroutine_suspended) {
                    i5 = i4;
                    completableDeferred = completableDeferredCompletableDeferred$default;
                    r1 = r7;
                    charSequence2 = (CharSequence) objectRef6.element;
                    if (charSequence2 == null) {
                        s11 s11Var1117 = s11.CUI_NAME_SDKINIT_SDKCORE_LOAD_URL;
                        String str110 = pq1Var.l;
                        WeakHashMap weakHashMap1117 = hs3.a;
                        rr3VarA = hs3.a(s11Var1117, CollectionsKt.emptyList(), true);
                        pq1Var.a = r1;
                        pq1Var.b = completableDeferred;
                        pq1Var.c = rr3VarA;
                        pq1Var.d = rr3VarA;
                        pq1Var.e = i5;
                        pq1Var.f = 7;
                        objC = r1.c(str110, pq1Var);
                        if (objC != coroutine_suspended) {
                            r8 = r1;
                            rr3Var = rr3VarA;
                            i6 = i5;
                            closeable3 = rr3VarA;
                            v01Var2 = (v01) objC;
                            if (v01Var2 instanceof i01) {
                                xs3.a((i01) v01Var2, false);
                            }
                            CloseableKt.closeFinally(closeable3, null);
                            v01Var3 = v01Var2;
                            r10 = r8;
                            r11 = r10;
                            if (v01Var3 instanceof i01) {
                                BuildersKt__Builders_commonKt.launch$default(pq1Var.i.d, NonCancellable.INSTANCE, null, new nq1(r11, null), 2, null);
                                return v01Var3;
                            }
                            s11 s11Var1118 = s11.CUI_NAME_SDKINIT_SDKCORE_JS_LOADED;
                            yq1 yq1Var11113 = pq1Var.i;
                            WeakHashMap weakHashMap1118 = hs3.a;
                            rr3VarA2 = hs3.a(s11Var1118, CollectionsKt.emptyList(), true);
                            eb3 eb3Var19 = yq1Var11113.f.s;
                            eb3Var19.getClass();
                            Duration.Companion companion19 = Duration.INSTANCE;
                            long duration19 = DurationKt.toDuration(10, DurationUnit.SECONDS);
                            Intrinsics.checkNotNullParameter("gads:js_eng_load_gmsg:timeout_millis", C3510b4.i.W);
                            rawValue = ((Duration) eb3Var19.a("gads:js_eng_load_gmsg:timeout_millis", Duration.m4365boximpl(duration19), yr.j)).getRawValue();
                            oq1Var = new oq1(completableDeferred, null);
                            pq1Var.a = r11;
                            pq1Var.b = rr3VarA2;
                            pq1Var.c = rr3VarA2;
                            pq1Var.d = null;
                            pq1Var.e = i6;
                            pq1Var.f = 9;
                            if (TimeoutKt.m4522withTimeoutKLykuaI(rawValue, oq1Var, pq1Var) != coroutine_suspended) {
                                rr3Var6 = rr3VarA2;
                                closeable7 = rr3VarA2;
                                r12 = r11;
                                ?? r1112 = r12;
                                obj2 = p005kotlin.Unit.INSTANCE;
                                if (obj2 instanceof i01) {
                                    xs3.a((i01) obj2, false);
                                    break;
                                }
                                CloseableKt.closeFinally(closeable7, null);
                                yq1 yq1Var11114 = pq1Var.i;
                                CoroutineScope coroutineScope11112 = yq1Var11114.d;
                                CoroutineScope coroutineScope11113 = yq1Var11114.e;
                                g83 g83Var19 = yq1Var11114.l;
                                ex0 ex0Var19 = yq1Var11114.f;
                                if (i6 != 0) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                return new q01(new fl1(r1112, coroutineScope11112, coroutineScope11113, g83Var19, ex0Var19, z2));
                            }
                        }
                    } else {
                        s11 s11Var1119 = s11.CUI_NAME_SDKINIT_SDKCORE_LOAD_URL;
                        String str111 = pq1Var.l;
                        WeakHashMap weakHashMap1119 = hs3.a;
                        rr3VarA = hs3.a(s11Var1119, CollectionsKt.emptyList(), true);
                        pq1Var.a = r1;
                        pq1Var.b = completableDeferred;
                        pq1Var.c = rr3VarA;
                        pq1Var.d = rr3VarA;
                        pq1Var.e = i5;
                        pq1Var.f = 7;
                        objC = r1.c(str111, pq1Var);
                        if (objC != coroutine_suspended) {
                            r8 = r1;
                            rr3Var = rr3VarA;
                            i6 = i5;
                            closeable3 = rr3VarA;
                            v01Var2 = (v01) objC;
                            if (v01Var2 instanceof i01) {
                                xs3.a((i01) v01Var2, false);
                            }
                            CloseableKt.closeFinally(closeable3, null);
                            v01Var3 = v01Var2;
                            r10 = r8;
                            r11 = r10;
                            if (v01Var3 instanceof i01) {
                                BuildersKt__Builders_commonKt.launch$default(pq1Var.i.d, NonCancellable.INSTANCE, null, new nq1(r11, null), 2, null);
                                return v01Var3;
                            }
                            s11 s11Var11110 = s11.CUI_NAME_SDKINIT_SDKCORE_JS_LOADED;
                            yq1 yq1Var11115 = pq1Var.i;
                            WeakHashMap weakHashMap11110 = hs3.a;
                            rr3VarA2 = hs3.a(s11Var11110, CollectionsKt.emptyList(), true);
                            eb3 eb3Var110 = yq1Var11115.f.s;
                            eb3Var110.getClass();
                            Duration.Companion companion110 = Duration.INSTANCE;
                            long duration110 = DurationKt.toDuration(10, DurationUnit.SECONDS);
                            Intrinsics.checkNotNullParameter("gads:js_eng_load_gmsg:timeout_millis", C3510b4.i.W);
                            rawValue = ((Duration) eb3Var110.a("gads:js_eng_load_gmsg:timeout_millis", Duration.m4365boximpl(duration110), yr.j)).getRawValue();
                            oq1Var = new oq1(completableDeferred, null);
                            pq1Var.a = r11;
                            pq1Var.b = rr3VarA2;
                            pq1Var.c = rr3VarA2;
                            pq1Var.d = null;
                            pq1Var.e = i6;
                            pq1Var.f = 9;
                            if (TimeoutKt.m4522withTimeoutKLykuaI(rawValue, oq1Var, pq1Var) != coroutine_suspended) {
                                rr3Var6 = rr3VarA2;
                                closeable7 = rr3VarA2;
                                r12 = r11;
                                ?? r1113 = r12;
                                obj2 = p005kotlin.Unit.INSTANCE;
                                if (obj2 instanceof i01) {
                                    xs3.a((i01) obj2, false);
                                    break;
                                }
                                CloseableKt.closeFinally(closeable7, null);
                                yq1 yq1Var11116 = pq1Var.i;
                                CoroutineScope coroutineScope11114 = yq1Var11116.d;
                                CoroutineScope coroutineScope11115 = yq1Var11116.e;
                                g83 g83Var110 = yq1Var11116.l;
                                ex0 ex0Var110 = yq1Var11116.f;
                                if (i6 != 0) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                return new q01(new fl1(r1113, coroutineScope11114, coroutineScope11115, g83Var110, ex0Var110, z2));
                            }
                        }
                    }
                }
                return coroutine_suspended;
            case 5:
                i4 = pq1Var.e;
                objectRef5 = (Ref.ObjectRef) pq1Var.c;
                r31 r31Var2 = (r31) pq1Var.b;
                Ref.ObjectRef objectRef11 = (Ref.ObjectRef) pq1Var.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
                objectRef7 = objectRef11;
                objAwait = obj;
                r6 = r31Var2;
                r5 = r6;
                r3 = (String) objAwait;
                objectRef5.element = r3;
                objectRef6 = objectRef7;
                r4 = r5;
                completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
                ar1Var2 = pq1Var.i.m;
                jq1Var = new jq1(completableDeferredCompletableDeferred$default);
                pq1Var.a = objectRef6;
                pq1Var.b = r4;
                pq1Var.c = completableDeferredCompletableDeferred$default;
                pq1Var.d = null;
                pq1Var.e = i4;
                pq1Var.f = 6;
                ar1Var2.getClass();
                r7 = r4;
                if (yr1.a(ar1Var2, "/jsLoaded", jq1Var, pq1Var) != coroutine_suspended) {
                    i5 = i4;
                    completableDeferred = completableDeferredCompletableDeferred$default;
                    r1 = r7;
                    charSequence2 = (CharSequence) objectRef6.element;
                    if (charSequence2 == null) {
                        s11 s11Var11111 = s11.CUI_NAME_SDKINIT_SDKCORE_LOAD_URL;
                        String str112 = pq1Var.l;
                        WeakHashMap weakHashMap11111 = hs3.a;
                        rr3VarA = hs3.a(s11Var11111, CollectionsKt.emptyList(), true);
                        pq1Var.a = r1;
                        pq1Var.b = completableDeferred;
                        pq1Var.c = rr3VarA;
                        pq1Var.d = rr3VarA;
                        pq1Var.e = i5;
                        pq1Var.f = 7;
                        objC = r1.c(str112, pq1Var);
                        if (objC != coroutine_suspended) {
                            r8 = r1;
                            rr3Var = rr3VarA;
                            i6 = i5;
                            closeable3 = rr3VarA;
                            v01Var2 = (v01) objC;
                            if (v01Var2 instanceof i01) {
                                xs3.a((i01) v01Var2, false);
                            }
                            CloseableKt.closeFinally(closeable3, null);
                            v01Var3 = v01Var2;
                            r10 = r8;
                            r11 = r10;
                            if (v01Var3 instanceof i01) {
                                BuildersKt__Builders_commonKt.launch$default(pq1Var.i.d, NonCancellable.INSTANCE, null, new nq1(r11, null), 2, null);
                                return v01Var3;
                            }
                            s11 s11Var11112 = s11.CUI_NAME_SDKINIT_SDKCORE_JS_LOADED;
                            yq1 yq1Var11117 = pq1Var.i;
                            WeakHashMap weakHashMap11112 = hs3.a;
                            rr3VarA2 = hs3.a(s11Var11112, CollectionsKt.emptyList(), true);
                            eb3 eb3Var111 = yq1Var11117.f.s;
                            eb3Var111.getClass();
                            Duration.Companion companion111 = Duration.INSTANCE;
                            long duration111 = DurationKt.toDuration(10, DurationUnit.SECONDS);
                            Intrinsics.checkNotNullParameter("gads:js_eng_load_gmsg:timeout_millis", C3510b4.i.W);
                            rawValue = ((Duration) eb3Var111.a("gads:js_eng_load_gmsg:timeout_millis", Duration.m4365boximpl(duration111), yr.j)).getRawValue();
                            oq1Var = new oq1(completableDeferred, null);
                            pq1Var.a = r11;
                            pq1Var.b = rr3VarA2;
                            pq1Var.c = rr3VarA2;
                            pq1Var.d = null;
                            pq1Var.e = i6;
                            pq1Var.f = 9;
                            if (TimeoutKt.m4522withTimeoutKLykuaI(rawValue, oq1Var, pq1Var) != coroutine_suspended) {
                                rr3Var6 = rr3VarA2;
                                closeable7 = rr3VarA2;
                                r12 = r11;
                                ?? r1114 = r12;
                                obj2 = p005kotlin.Unit.INSTANCE;
                                if (obj2 instanceof i01) {
                                    xs3.a((i01) obj2, false);
                                    break;
                                }
                                CloseableKt.closeFinally(closeable7, null);
                                yq1 yq1Var11118 = pq1Var.i;
                                CoroutineScope coroutineScope11116 = yq1Var11118.d;
                                CoroutineScope coroutineScope11117 = yq1Var11118.e;
                                g83 g83Var111 = yq1Var11118.l;
                                ex0 ex0Var111 = yq1Var11118.f;
                                if (i6 != 0) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                return new q01(new fl1(r1114, coroutineScope11116, coroutineScope11117, g83Var111, ex0Var111, z2));
                            }
                        }
                    } else {
                        s11 s11Var11113 = s11.CUI_NAME_SDKINIT_SDKCORE_LOAD_URL;
                        String str113 = pq1Var.l;
                        WeakHashMap weakHashMap11113 = hs3.a;
                        rr3VarA = hs3.a(s11Var11113, CollectionsKt.emptyList(), true);
                        pq1Var.a = r1;
                        pq1Var.b = completableDeferred;
                        pq1Var.c = rr3VarA;
                        pq1Var.d = rr3VarA;
                        pq1Var.e = i5;
                        pq1Var.f = 7;
                        objC = r1.c(str113, pq1Var);
                        if (objC != coroutine_suspended) {
                            r8 = r1;
                            rr3Var = rr3VarA;
                            i6 = i5;
                            closeable3 = rr3VarA;
                            v01Var2 = (v01) objC;
                            if (v01Var2 instanceof i01) {
                                xs3.a((i01) v01Var2, false);
                            }
                            CloseableKt.closeFinally(closeable3, null);
                            v01Var3 = v01Var2;
                            r10 = r8;
                            r11 = r10;
                            if (v01Var3 instanceof i01) {
                                BuildersKt__Builders_commonKt.launch$default(pq1Var.i.d, NonCancellable.INSTANCE, null, new nq1(r11, null), 2, null);
                                return v01Var3;
                            }
                            s11 s11Var11114 = s11.CUI_NAME_SDKINIT_SDKCORE_JS_LOADED;
                            yq1 yq1Var11119 = pq1Var.i;
                            WeakHashMap weakHashMap11114 = hs3.a;
                            rr3VarA2 = hs3.a(s11Var11114, CollectionsKt.emptyList(), true);
                            eb3 eb3Var112 = yq1Var11119.f.s;
                            eb3Var112.getClass();
                            Duration.Companion companion112 = Duration.INSTANCE;
                            long duration112 = DurationKt.toDuration(10, DurationUnit.SECONDS);
                            Intrinsics.checkNotNullParameter("gads:js_eng_load_gmsg:timeout_millis", C3510b4.i.W);
                            rawValue = ((Duration) eb3Var112.a("gads:js_eng_load_gmsg:timeout_millis", Duration.m4365boximpl(duration112), yr.j)).getRawValue();
                            oq1Var = new oq1(completableDeferred, null);
                            pq1Var.a = r11;
                            pq1Var.b = rr3VarA2;
                            pq1Var.c = rr3VarA2;
                            pq1Var.d = null;
                            pq1Var.e = i6;
                            pq1Var.f = 9;
                            if (TimeoutKt.m4522withTimeoutKLykuaI(rawValue, oq1Var, pq1Var) != coroutine_suspended) {
                                rr3Var6 = rr3VarA2;
                                closeable7 = rr3VarA2;
                                r12 = r11;
                                ?? r1115 = r12;
                                obj2 = p005kotlin.Unit.INSTANCE;
                                if (obj2 instanceof i01) {
                                    xs3.a((i01) obj2, false);
                                    break;
                                }
                                CloseableKt.closeFinally(closeable7, null);
                                yq1 yq1Var111110 = pq1Var.i;
                                CoroutineScope coroutineScope11118 = yq1Var111110.d;
                                CoroutineScope coroutineScope11119 = yq1Var111110.e;
                                g83 g83Var112 = yq1Var111110.l;
                                ex0 ex0Var112 = yq1Var111110.f;
                                if (i6 != 0) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                return new q01(new fl1(r1115, coroutineScope11118, coroutineScope11119, g83Var112, ex0Var112, z2));
                            }
                        }
                    }
                }
                return coroutine_suspended;
            case 6:
                i4 = pq1Var.e;
                completableDeferredCompletableDeferred$default = (CompletableDeferred) pq1Var.c;
                r31 r31Var3 = (r31) pq1Var.b;
                objectRef6 = (Ref.ObjectRef) pq1Var.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
                r7 = r31Var3;
                i5 = i4;
                completableDeferred = completableDeferredCompletableDeferred$default;
                r1 = r7;
                charSequence2 = (CharSequence) objectRef6.element;
                if (charSequence2 == null) {
                    s11 s11Var11115 = s11.CUI_NAME_SDKINIT_SDKCORE_LOAD_URL;
                    String str114 = pq1Var.l;
                    WeakHashMap weakHashMap11115 = hs3.a;
                    rr3VarA = hs3.a(s11Var11115, CollectionsKt.emptyList(), true);
                    pq1Var.a = r1;
                    pq1Var.b = completableDeferred;
                    pq1Var.c = rr3VarA;
                    pq1Var.d = rr3VarA;
                    pq1Var.e = i5;
                    pq1Var.f = 7;
                    objC = r1.c(str114, pq1Var);
                    if (objC != coroutine_suspended) {
                        r8 = r1;
                        rr3Var = rr3VarA;
                        i6 = i5;
                        closeable3 = rr3VarA;
                        v01Var2 = (v01) objC;
                        if (v01Var2 instanceof i01) {
                            xs3.a((i01) v01Var2, false);
                        }
                        CloseableKt.closeFinally(closeable3, null);
                        v01Var3 = v01Var2;
                        r10 = r8;
                        r11 = r10;
                        if (v01Var3 instanceof i01) {
                            BuildersKt__Builders_commonKt.launch$default(pq1Var.i.d, NonCancellable.INSTANCE, null, new nq1(r11, null), 2, null);
                            return v01Var3;
                        }
                        s11 s11Var11116 = s11.CUI_NAME_SDKINIT_SDKCORE_JS_LOADED;
                        yq1 yq1Var111111 = pq1Var.i;
                        WeakHashMap weakHashMap11116 = hs3.a;
                        rr3VarA2 = hs3.a(s11Var11116, CollectionsKt.emptyList(), true);
                        eb3 eb3Var113 = yq1Var111111.f.s;
                        eb3Var113.getClass();
                        Duration.Companion companion113 = Duration.INSTANCE;
                        long duration113 = DurationKt.toDuration(10, DurationUnit.SECONDS);
                        Intrinsics.checkNotNullParameter("gads:js_eng_load_gmsg:timeout_millis", C3510b4.i.W);
                        rawValue = ((Duration) eb3Var113.a("gads:js_eng_load_gmsg:timeout_millis", Duration.m4365boximpl(duration113), yr.j)).getRawValue();
                        oq1Var = new oq1(completableDeferred, null);
                        pq1Var.a = r11;
                        pq1Var.b = rr3VarA2;
                        pq1Var.c = rr3VarA2;
                        pq1Var.d = null;
                        pq1Var.e = i6;
                        pq1Var.f = 9;
                        if (TimeoutKt.m4522withTimeoutKLykuaI(rawValue, oq1Var, pq1Var) != coroutine_suspended) {
                            rr3Var6 = rr3VarA2;
                            closeable7 = rr3VarA2;
                            r12 = r11;
                            ?? r1116 = r12;
                            obj2 = p005kotlin.Unit.INSTANCE;
                            if (obj2 instanceof i01) {
                                xs3.a((i01) obj2, false);
                                break;
                            }
                            CloseableKt.closeFinally(closeable7, null);
                            yq1 yq1Var111112 = pq1Var.i;
                            CoroutineScope coroutineScope111110 = yq1Var111112.d;
                            CoroutineScope coroutineScope111111 = yq1Var111112.e;
                            g83 g83Var113 = yq1Var111112.l;
                            ex0 ex0Var113 = yq1Var111112.f;
                            if (i6 != 0) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            return new q01(new fl1(r1116, coroutineScope111110, coroutineScope111111, g83Var113, ex0Var113, z2));
                        }
                    }
                    break;
                } else {
                    s11 s11Var11117 = s11.CUI_NAME_SDKINIT_SDKCORE_LOAD_URL;
                    String str115 = pq1Var.l;
                    WeakHashMap weakHashMap11117 = hs3.a;
                    rr3VarA = hs3.a(s11Var11117, CollectionsKt.emptyList(), true);
                    pq1Var.a = r1;
                    pq1Var.b = completableDeferred;
                    pq1Var.c = rr3VarA;
                    pq1Var.d = rr3VarA;
                    pq1Var.e = i5;
                    pq1Var.f = 7;
                    objC = r1.c(str115, pq1Var);
                    if (objC != coroutine_suspended) {
                        r8 = r1;
                        rr3Var = rr3VarA;
                        i6 = i5;
                        closeable3 = rr3VarA;
                        v01Var2 = (v01) objC;
                        if (v01Var2 instanceof i01) {
                            xs3.a((i01) v01Var2, false);
                        }
                        CloseableKt.closeFinally(closeable3, null);
                        v01Var3 = v01Var2;
                        r10 = r8;
                        r11 = r10;
                        if (v01Var3 instanceof i01) {
                            BuildersKt__Builders_commonKt.launch$default(pq1Var.i.d, NonCancellable.INSTANCE, null, new nq1(r11, null), 2, null);
                            return v01Var3;
                        }
                        s11 s11Var11118 = s11.CUI_NAME_SDKINIT_SDKCORE_JS_LOADED;
                        yq1 yq1Var111113 = pq1Var.i;
                        WeakHashMap weakHashMap11118 = hs3.a;
                        rr3VarA2 = hs3.a(s11Var11118, CollectionsKt.emptyList(), true);
                        eb3 eb3Var114 = yq1Var111113.f.s;
                        eb3Var114.getClass();
                        Duration.Companion companion114 = Duration.INSTANCE;
                        long duration114 = DurationKt.toDuration(10, DurationUnit.SECONDS);
                        Intrinsics.checkNotNullParameter("gads:js_eng_load_gmsg:timeout_millis", C3510b4.i.W);
                        rawValue = ((Duration) eb3Var114.a("gads:js_eng_load_gmsg:timeout_millis", Duration.m4365boximpl(duration114), yr.j)).getRawValue();
                        oq1Var = new oq1(completableDeferred, null);
                        pq1Var.a = r11;
                        pq1Var.b = rr3VarA2;
                        pq1Var.c = rr3VarA2;
                        pq1Var.d = null;
                        pq1Var.e = i6;
                        pq1Var.f = 9;
                        if (TimeoutKt.m4522withTimeoutKLykuaI(rawValue, oq1Var, pq1Var) != coroutine_suspended) {
                            rr3Var6 = rr3VarA2;
                            closeable7 = rr3VarA2;
                            r12 = r11;
                            ?? r1117 = r12;
                            obj2 = p005kotlin.Unit.INSTANCE;
                            if (obj2 instanceof i01) {
                                xs3.a((i01) obj2, false);
                                break;
                            }
                            CloseableKt.closeFinally(closeable7, null);
                            yq1 yq1Var111114 = pq1Var.i;
                            CoroutineScope coroutineScope111112 = yq1Var111114.d;
                            CoroutineScope coroutineScope111113 = yq1Var111114.e;
                            g83 g83Var114 = yq1Var111114.l;
                            ex0 ex0Var114 = yq1Var111114.f;
                            if (i6 != 0) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            return new q01(new fl1(r1117, coroutineScope111112, coroutineScope111113, g83Var114, ex0Var114, z2));
                        }
                    }
                    break;
                }
                return coroutine_suspended;
            case 7:
                i6 = pq1Var.e;
                closeable3 = (Closeable) pq1Var.d;
                rr3Var4 = (rr3) pq1Var.c;
                CompletableDeferred completableDeferred3 = (CompletableDeferred) pq1Var.b;
                r31 r31Var4 = (r31) pq1Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    completableDeferred = completableDeferred3;
                    rr3Var = rr3Var4;
                    objC = obj;
                    closeable3 = closeable3;
                    r8 = r31Var4;
                    v01Var2 = (v01) objC;
                    if (v01Var2 instanceof i01) {
                        xs3.a((i01) v01Var2, false);
                        break;
                    }
                    CloseableKt.closeFinally(closeable3, null);
                    v01Var3 = v01Var2;
                    r10 = r8;
                    r11 = r10;
                    if (v01Var3 instanceof i01) {
                        BuildersKt__Builders_commonKt.launch$default(pq1Var.i.d, NonCancellable.INSTANCE, null, new nq1(r11, null), 2, null);
                        return v01Var3;
                    }
                    s11 s11Var11119 = s11.CUI_NAME_SDKINIT_SDKCORE_JS_LOADED;
                    yq1 yq1Var111115 = pq1Var.i;
                    WeakHashMap weakHashMap11119 = hs3.a;
                    rr3VarA2 = hs3.a(s11Var11119, CollectionsKt.emptyList(), true);
                    eb3 eb3Var115 = yq1Var111115.f.s;
                    eb3Var115.getClass();
                    Duration.Companion companion115 = Duration.INSTANCE;
                    long duration115 = DurationKt.toDuration(10, DurationUnit.SECONDS);
                    Intrinsics.checkNotNullParameter("gads:js_eng_load_gmsg:timeout_millis", C3510b4.i.W);
                    rawValue = ((Duration) eb3Var115.a("gads:js_eng_load_gmsg:timeout_millis", Duration.m4365boximpl(duration115), yr.j)).getRawValue();
                    oq1Var = new oq1(completableDeferred, null);
                    pq1Var.a = r11;
                    pq1Var.b = rr3VarA2;
                    pq1Var.c = rr3VarA2;
                    pq1Var.d = null;
                    pq1Var.e = i6;
                    pq1Var.f = 9;
                    if (TimeoutKt.m4522withTimeoutKLykuaI(rawValue, oq1Var, pq1Var) != coroutine_suspended) {
                        rr3Var6 = rr3VarA2;
                        closeable7 = rr3VarA2;
                        r12 = r11;
                        ?? r1118 = r12;
                        obj2 = p005kotlin.Unit.INSTANCE;
                        if (obj2 instanceof i01) {
                            xs3.a((i01) obj2, false);
                            break;
                        }
                        CloseableKt.closeFinally(closeable7, null);
                        yq1 yq1Var111116 = pq1Var.i;
                        CoroutineScope coroutineScope111114 = yq1Var111116.d;
                        CoroutineScope coroutineScope111115 = yq1Var111116.e;
                        g83 g83Var115 = yq1Var111116.l;
                        ex0 ex0Var115 = yq1Var111116.f;
                        if (i6 != 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        return new q01(new fl1(r1118, coroutineScope111114, coroutineScope111115, g83Var115, ex0Var115, z2));
                    }
                    return coroutine_suspended;
                } catch (Throwable th12) {
                    th = th12;
                    rr3 rr3Var9 = rr3Var4;
                    closeable = closeable3;
                    rr3Var3 = rr3Var9;
                    rr3Var3.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        rr3Var3.a(th);
                    }
                    if (th instanceof TimeoutCancellationException) {
                        throw new i21(th);
                    }
                    if (th instanceof CancellationException) {
                        throw new wz0(th);
                    }
                    if (th instanceof w01) {
                        throw th;
                    }
                    throw new b01(th);
                }
            case 8:
                i6 = pq1Var.e;
                closeable4 = (Closeable) pq1Var.d;
                rr3Var2 = (rr3) pq1Var.c;
                completableDeferred2 = (CompletableDeferred) pq1Var.b;
                r31 r31Var5 = (r31) pq1Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    closeable6 = closeable4;
                    objA4 = obj;
                    rr3Var2 = rr3Var2;
                    r9 = r31Var5;
                    v01Var3 = (v01) objA4;
                    if (v01Var3 instanceof i01) {
                        xs3.a((i01) v01Var3, false);
                        break;
                    }
                    CloseableKt.closeFinally(closeable6, null);
                    completableDeferred = completableDeferred2;
                    r10 = r9;
                    r11 = r10;
                    if (v01Var3 instanceof i01) {
                        BuildersKt__Builders_commonKt.launch$default(pq1Var.i.d, NonCancellable.INSTANCE, null, new nq1(r11, null), 2, null);
                        return v01Var3;
                    }
                    s11 s11Var111110 = s11.CUI_NAME_SDKINIT_SDKCORE_JS_LOADED;
                    yq1 yq1Var111117 = pq1Var.i;
                    WeakHashMap weakHashMap111110 = hs3.a;
                    rr3VarA2 = hs3.a(s11Var111110, CollectionsKt.emptyList(), true);
                    eb3 eb3Var116 = yq1Var111117.f.s;
                    eb3Var116.getClass();
                    Duration.Companion companion116 = Duration.INSTANCE;
                    long duration116 = DurationKt.toDuration(10, DurationUnit.SECONDS);
                    Intrinsics.checkNotNullParameter("gads:js_eng_load_gmsg:timeout_millis", C3510b4.i.W);
                    rawValue = ((Duration) eb3Var116.a("gads:js_eng_load_gmsg:timeout_millis", Duration.m4365boximpl(duration116), yr.j)).getRawValue();
                    oq1Var = new oq1(completableDeferred, null);
                    pq1Var.a = r11;
                    pq1Var.b = rr3VarA2;
                    pq1Var.c = rr3VarA2;
                    pq1Var.d = null;
                    pq1Var.e = i6;
                    pq1Var.f = 9;
                    if (TimeoutKt.m4522withTimeoutKLykuaI(rawValue, oq1Var, pq1Var) != coroutine_suspended) {
                        rr3Var6 = rr3VarA2;
                        closeable7 = rr3VarA2;
                        r12 = r11;
                        ?? r1119 = r12;
                        obj2 = p005kotlin.Unit.INSTANCE;
                        if (obj2 instanceof i01) {
                            xs3.a((i01) obj2, false);
                            break;
                        }
                        CloseableKt.closeFinally(closeable7, null);
                        yq1 yq1Var111118 = pq1Var.i;
                        CoroutineScope coroutineScope111116 = yq1Var111118.d;
                        CoroutineScope coroutineScope111117 = yq1Var111118.e;
                        g83 g83Var116 = yq1Var111118.l;
                        ex0 ex0Var116 = yq1Var111118.f;
                        if (i6 != 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        return new q01(new fl1(r1119, coroutineScope111116, coroutineScope111117, g83Var116, ex0Var116, z2));
                    }
                    return coroutine_suspended;
                } catch (Throwable th13) {
                    th = th13;
                    rr3Var5 = rr3Var2;
                    closeable2 = closeable4;
                    rr3Var5.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        rr3Var5.a(th);
                    }
                    if (th instanceof TimeoutCancellationException) {
                        throw new i21(th);
                    }
                    if (th instanceof CancellationException) {
                        throw new wz0(th);
                    }
                    if (th instanceof w01) {
                        throw th;
                    }
                    throw new b01(th);
                }
            case 9:
                i6 = pq1Var.e;
                closeable7 = (Closeable) pq1Var.c;
                rr3Var6 = (rr3) pq1Var.b;
                r31 r31Var6 = (r31) pq1Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    closeable7 = closeable7;
                    rr3Var6 = rr3Var6;
                    r12 = r31Var6;
                    ?? r11110 = r12;
                    obj2 = p005kotlin.Unit.INSTANCE;
                    if (obj2 instanceof i01) {
                        xs3.a((i01) obj2, false);
                        break;
                    }
                    CloseableKt.closeFinally(closeable7, null);
                    yq1 yq1Var111119 = pq1Var.i;
                    CoroutineScope coroutineScope111118 = yq1Var111119.d;
                    CoroutineScope coroutineScope111119 = yq1Var111119.e;
                    g83 g83Var117 = yq1Var111119.l;
                    ex0 ex0Var117 = yq1Var111119.f;
                    if (i6 != 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    return new q01(new fl1(r11110, coroutineScope111118, coroutineScope111119, g83Var117, ex0Var117, z2));
                } catch (Throwable th14) {
                    th = th14;
                    rr3 rr3Var10 = rr3Var6;
                    closeable5 = closeable7;
                    rr3Var7 = rr3Var10;
                    rr3Var7.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        rr3Var7.a(th);
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
    }
}

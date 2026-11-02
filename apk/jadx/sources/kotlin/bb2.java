package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.ClientRequestBuildingData;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.a;
import com.google.common.base.Splitter;
import com.google.gson.Gson;
import com.ironsource.adapters.facebook.FacebookConstants;
import java.io.Closeable;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.random.Random;
import p005kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class bb2 implements nt3, li1 {
    public final jb3 a;
    public final ka2 b;
    public final a c;
    public final BaseRequest d;
    public final j53 e;
    public final ej1 f;
    public final k g;
    public final j43 h;
    public final u43 i;
    public final b53 j;
    public final ex0 k;
    public final f13 l;
    public final ur3 m;
    public final Gson n;
    public final n8 o;
    public final CoroutineScope p;
    public volatile boolean q;
    public volatile boolean r;

    public bb2(jb3 javascriptEngine, ka2 networkResponseRequester, a signalsProvider, BaseRequest baseRequest, j53 requestType, ej1 internalAdRequestEventEmitter, k actionFunction, j43 clientSideRequestBuilder, u43 requestThrottler, b53 requestThrottlerV2, ex0 flags, f13 randomGenerator, ur3 traceLogger, Gson gson, n8 adRequestDomainPreloader, CoroutineScope backgroundScope) {
        Intrinsics.checkNotNullParameter(javascriptEngine, "javascriptEngine");
        Intrinsics.checkNotNullParameter(networkResponseRequester, "networkResponseRequester");
        Intrinsics.checkNotNullParameter(signalsProvider, "signalsProvider");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(internalAdRequestEventEmitter, "internalAdRequestEventEmitter");
        Intrinsics.checkNotNullParameter(actionFunction, "actionFunction");
        Intrinsics.checkNotNullParameter(clientSideRequestBuilder, "clientSideRequestBuilder");
        Intrinsics.checkNotNullParameter(requestThrottler, "requestThrottler");
        Intrinsics.checkNotNullParameter(requestThrottlerV2, "requestThrottlerV2");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(randomGenerator, "randomGenerator");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(gson, "gson");
        Intrinsics.checkNotNullParameter(adRequestDomainPreloader, "adRequestDomainPreloader");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        this.a = javascriptEngine;
        this.b = networkResponseRequester;
        this.c = signalsProvider;
        this.d = baseRequest;
        this.e = requestType;
        this.f = internalAdRequestEventEmitter;
        this.g = actionFunction;
        this.h = clientSideRequestBuilder;
        this.i = requestThrottler;
        this.j = requestThrottlerV2;
        this.k = flags;
        this.l = randomGenerator;
        this.m = traceLogger;
        this.n = gson;
        this.o = adRequestDomainPreloader;
        this.p = backgroundScope;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00a7, code lost:
    
        if (kotlin.b53.d(r12, r2, r10, r0) == r1) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00ce, code lost:
    
        if (kotlin.b53.d(r12, r2, r10, r0) == r1) goto L45;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object a(kotlin.bb2 r10, kotlin.i01 r11, p005kotlin.coroutines.Continuation r12) {
        /*
            Method dump skipped, instruction units count: 215
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.bb2.a(ads_mobile_sdk.bb2, ads_mobile_sdk.i01, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0071, code lost:
    
        if (kotlin.b53.c(r7, r2, r6, r0) == r1) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object a(kotlin.bb2 r6, p005kotlin.coroutines.Continuation r7) {
        /*
            boolean r0 = r7 instanceof kotlin.wa2
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.wa2 r0 = (kotlin.wa2) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.wa2 r0 = new ads_mobile_sdk.wa2
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.b
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3a
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L74
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            ads_mobile_sdk.bb2 r6 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L55
        L3a:
            p005kotlin.ResultKt.throwOnFailure(r7)
            ads_mobile_sdk.b53 r7 = r6.j
            com.google.android.libraries.ads.mobile.sdk.common.BaseRequest r2 = r6.d
            java.lang.String r2 = r2.getAdUnitId()
            ads_mobile_sdk.j53 r5 = r6.e
            r0.a = r6
            r0.d = r4
            r7.getClass()
            java.lang.Object r7 = kotlin.b53.a(r7, r2, r5, r0)
            if (r7 != r1) goto L55
            goto L73
        L55:
            ads_mobile_sdk.zr0 r7 = (kotlin.zr0) r7
            ads_mobile_sdk.zr0 r2 = kotlin.zr0.WATERFALL_FILL
            if (r7 != r2) goto L77
            ads_mobile_sdk.b53 r7 = r6.j
            com.google.android.libraries.ads.mobile.sdk.common.BaseRequest r2 = r6.d
            java.lang.String r2 = r2.getAdUnitId()
            ads_mobile_sdk.j53 r6 = r6.e
            r4 = 0
            r0.a = r4
            r0.d = r3
            r7.getClass()
            java.lang.Object r6 = kotlin.b53.c(r7, r2, r6, r0)
            if (r6 != r1) goto L74
        L73:
            return r1
        L74:
            kotlin.Unit r6 = p005kotlin.Unit.INSTANCE
            return r6
        L77:
            kotlin.Unit r6 = p005kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.bb2.a(ads_mobile_sdk.bb2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:102:0x01fc A[Catch: all -> 0x01d7, TRY_ENTER, TryCatch #11 {all -> 0x01d7, blocks: (B:134:0x02c1, B:136:0x02c5, B:139:0x02ce, B:141:0x02db, B:143:0x02e7, B:145:0x02eb, B:147:0x02f5, B:150:0x031b, B:151:0x031c, B:153:0x0325, B:21:0x0083, B:116:0x024b, B:24:0x0093, B:97:0x01ed, B:99:0x01f3, B:102:0x01fc, B:104:0x020e, B:108:0x0229, B:113:0x0236, B:79:0x01a3, B:91:0x01e0, B:94:0x01e5), top: B:239:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:104:0x020e A[Catch: all -> 0x01d7, TryCatch #11 {all -> 0x01d7, blocks: (B:134:0x02c1, B:136:0x02c5, B:139:0x02ce, B:141:0x02db, B:143:0x02e7, B:145:0x02eb, B:147:0x02f5, B:150:0x031b, B:151:0x031c, B:153:0x0325, B:21:0x0083, B:116:0x024b, B:24:0x0093, B:97:0x01ed, B:99:0x01f3, B:102:0x01fc, B:104:0x020e, B:108:0x0229, B:113:0x0236, B:79:0x01a3, B:91:0x01e0, B:94:0x01e5), top: B:239:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:106:0x0226  */
    /* JADX WARN: Code duplicated, block: B:107:0x0228  */
    /* JADX WARN: Code duplicated, block: B:110:0x0231 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:115:0x0249  */
    /* JADX WARN: Code duplicated, block: B:116:0x024b A[Catch: all -> 0x01d7, PHI: r0 r1 r3 r6 r10 r11
  0x024b: PHI (r0v58 boolean) = (r0v44 boolean), (r0v59 boolean) binds: [B:114:0x0247, B:21:0x0083] A[DONT_GENERATE, DONT_INLINE]
  0x024b: PHI (r1v60 java.lang.Object) = (r1v49 java.lang.Object), (r1v1 java.lang.Object) binds: [B:114:0x0247, B:21:0x0083] A[DONT_GENERATE, DONT_INLINE]
  0x024b: PHI (r3v13 com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals) = 
  (r3v4 com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals)
  (r3v14 com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals)
 binds: [B:114:0x0247, B:21:0x0083] A[DONT_GENERATE, DONT_INLINE]
  0x024b: PHI (r6v21 ??) = (r6v29 ??), (r6v30 ??) binds: [B:114:0x0247, B:21:0x0083] A[DONT_GENERATE, DONT_INLINE]
  0x024b: PHI (r10v25 ??) = (r10v34 ??), (r10v35 ??) binds: [B:114:0x0247, B:21:0x0083] A[DONT_GENERATE, DONT_INLINE]
  0x024b: PHI (r11v7 ads_mobile_sdk.bb2) = (r11v4 ads_mobile_sdk.bb2), (r11v9 ads_mobile_sdk.bb2) binds: [B:114:0x0247, B:21:0x0083] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #11 {all -> 0x01d7, blocks: (B:134:0x02c1, B:136:0x02c5, B:139:0x02ce, B:141:0x02db, B:143:0x02e7, B:145:0x02eb, B:147:0x02f5, B:150:0x031b, B:151:0x031c, B:153:0x0325, B:21:0x0083, B:116:0x024b, B:24:0x0093, B:97:0x01ed, B:99:0x01f3, B:102:0x01fc, B:104:0x020e, B:108:0x0229, B:113:0x0236, B:79:0x01a3, B:91:0x01e0, B:94:0x01e5), top: B:239:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:120:0x0259 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:121:0x025b A[Catch: all -> 0x040e, TryCatch #6 {all -> 0x040e, blocks: (B:118:0x0251, B:121:0x025b, B:124:0x0267), top: B:247:0x0251 }] */
    /* JADX WARN: Code duplicated, block: B:124:0x0267 A[Catch: all -> 0x040e, TRY_LEAVE, TryCatch #6 {all -> 0x040e, blocks: (B:118:0x0251, B:121:0x025b, B:124:0x0267), top: B:247:0x0251 }] */
    /* JADX WARN: Code duplicated, block: B:128:0x02a9  */
    /* JADX WARN: Code duplicated, block: B:131:0x02b7 A[Catch: all -> 0x0072, TRY_LEAVE, TryCatch #8 {all -> 0x0072, blocks: (B:16:0x006b, B:129:0x02aa, B:131:0x02b7), top: B:249:0x006b }] */
    /* JADX WARN: Code duplicated, block: B:136:0x02c5 A[Catch: all -> 0x01d7, TRY_LEAVE, TryCatch #11 {all -> 0x01d7, blocks: (B:134:0x02c1, B:136:0x02c5, B:139:0x02ce, B:141:0x02db, B:143:0x02e7, B:145:0x02eb, B:147:0x02f5, B:150:0x031b, B:151:0x031c, B:153:0x0325, B:21:0x0083, B:116:0x024b, B:24:0x0093, B:97:0x01ed, B:99:0x01f3, B:102:0x01fc, B:104:0x020e, B:108:0x0229, B:113:0x0236, B:79:0x01a3, B:91:0x01e0, B:94:0x01e5), top: B:239:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:139:0x02ce A[Catch: all -> 0x01d7, TRY_ENTER, TryCatch #11 {all -> 0x01d7, blocks: (B:134:0x02c1, B:136:0x02c5, B:139:0x02ce, B:141:0x02db, B:143:0x02e7, B:145:0x02eb, B:147:0x02f5, B:150:0x031b, B:151:0x031c, B:153:0x0325, B:21:0x0083, B:116:0x024b, B:24:0x0093, B:97:0x01ed, B:99:0x01f3, B:102:0x01fc, B:104:0x020e, B:108:0x0229, B:113:0x0236, B:79:0x01a3, B:91:0x01e0, B:94:0x01e5), top: B:239:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:141:0x02db A[Catch: all -> 0x01d7, TryCatch #11 {all -> 0x01d7, blocks: (B:134:0x02c1, B:136:0x02c5, B:139:0x02ce, B:141:0x02db, B:143:0x02e7, B:145:0x02eb, B:147:0x02f5, B:150:0x031b, B:151:0x031c, B:153:0x0325, B:21:0x0083, B:116:0x024b, B:24:0x0093, B:97:0x01ed, B:99:0x01f3, B:102:0x01fc, B:104:0x020e, B:108:0x0229, B:113:0x0236, B:79:0x01a3, B:91:0x01e0, B:94:0x01e5), top: B:239:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:143:0x02e7 A[Catch: all -> 0x01d7, TryCatch #11 {all -> 0x01d7, blocks: (B:134:0x02c1, B:136:0x02c5, B:139:0x02ce, B:141:0x02db, B:143:0x02e7, B:145:0x02eb, B:147:0x02f5, B:150:0x031b, B:151:0x031c, B:153:0x0325, B:21:0x0083, B:116:0x024b, B:24:0x0093, B:97:0x01ed, B:99:0x01f3, B:102:0x01fc, B:104:0x020e, B:108:0x0229, B:113:0x0236, B:79:0x01a3, B:91:0x01e0, B:94:0x01e5), top: B:239:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:149:0x031a  */
    /* JADX WARN: Code duplicated, block: B:150:0x031b A[Catch: all -> 0x01d7, TryCatch #11 {all -> 0x01d7, blocks: (B:134:0x02c1, B:136:0x02c5, B:139:0x02ce, B:141:0x02db, B:143:0x02e7, B:145:0x02eb, B:147:0x02f5, B:150:0x031b, B:151:0x031c, B:153:0x0325, B:21:0x0083, B:116:0x024b, B:24:0x0093, B:97:0x01ed, B:99:0x01f3, B:102:0x01fc, B:104:0x020e, B:108:0x0229, B:113:0x0236, B:79:0x01a3, B:91:0x01e0, B:94:0x01e5), top: B:239:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:153:0x0325 A[Catch: all -> 0x01d7, TRY_LEAVE, TryCatch #11 {all -> 0x01d7, blocks: (B:134:0x02c1, B:136:0x02c5, B:139:0x02ce, B:141:0x02db, B:143:0x02e7, B:145:0x02eb, B:147:0x02f5, B:150:0x031b, B:151:0x031c, B:153:0x0325, B:21:0x0083, B:116:0x024b, B:24:0x0093, B:97:0x01ed, B:99:0x01f3, B:102:0x01fc, B:104:0x020e, B:108:0x0229, B:113:0x0236, B:79:0x01a3, B:91:0x01e0, B:94:0x01e5), top: B:239:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:157:0x0355  */
    /* JADX WARN: Code duplicated, block: B:160:0x035c  */
    /* JADX WARN: Code duplicated, block: B:162:0x035f  */
    /* JADX WARN: Code duplicated, block: B:165:0x037b A[PHI: r0 r2
  0x037b: PHI (r0v81 ads_mobile_sdk.ac3) = (r0v78 ads_mobile_sdk.ac3), (r0v86 ads_mobile_sdk.ac3) binds: [B:163:0x0378, B:13:0x0040] A[DONT_GENERATE, DONT_INLINE]
  0x037b: PHI (r2v18 ads_mobile_sdk.bb2) = (r2v16 ads_mobile_sdk.bb2), (r2v21 ads_mobile_sdk.bb2) binds: [B:163:0x0378, B:13:0x0040] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:168:0x03c2  */
    /* JADX WARN: Code duplicated, block: B:177:0x03d4 A[Catch: all -> 0x0403, TryCatch #0 {all -> 0x0403, blocks: (B:175:0x03cd, B:177:0x03d4, B:179:0x03d8, B:181:0x03dc, B:182:0x03df, B:184:0x03e3, B:186:0x03e7, B:188:0x03eb, B:189:0x03ec, B:190:0x03f1, B:191:0x03f2, B:192:0x03f9, B:193:0x03fa, B:194:0x0401, B:195:0x0402), top: B:238:0x03cd, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:184:0x03e3 A[Catch: all -> 0x0403, TryCatch #0 {all -> 0x0403, blocks: (B:175:0x03cd, B:177:0x03d4, B:179:0x03d8, B:181:0x03dc, B:182:0x03df, B:184:0x03e3, B:186:0x03e7, B:188:0x03eb, B:189:0x03ec, B:190:0x03f1, B:191:0x03f2, B:192:0x03f9, B:193:0x03fa, B:194:0x0401, B:195:0x0402), top: B:238:0x03cd, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:186:0x03e7 A[Catch: all -> 0x0403, TryCatch #0 {all -> 0x0403, blocks: (B:175:0x03cd, B:177:0x03d4, B:179:0x03d8, B:181:0x03dc, B:182:0x03df, B:184:0x03e3, B:186:0x03e7, B:188:0x03eb, B:189:0x03ec, B:190:0x03f1, B:191:0x03f2, B:192:0x03f9, B:193:0x03fa, B:194:0x0401, B:195:0x0402), top: B:238:0x03cd, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:188:0x03eb A[Catch: all -> 0x0403, TryCatch #0 {all -> 0x0403, blocks: (B:175:0x03cd, B:177:0x03d4, B:179:0x03d8, B:181:0x03dc, B:182:0x03df, B:184:0x03e3, B:186:0x03e7, B:188:0x03eb, B:189:0x03ec, B:190:0x03f1, B:191:0x03f2, B:192:0x03f9, B:193:0x03fa, B:194:0x0401, B:195:0x0402), top: B:238:0x03cd, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:189:0x03ec A[Catch: all -> 0x0403, TryCatch #0 {all -> 0x0403, blocks: (B:175:0x03cd, B:177:0x03d4, B:179:0x03d8, B:181:0x03dc, B:182:0x03df, B:184:0x03e3, B:186:0x03e7, B:188:0x03eb, B:189:0x03ec, B:190:0x03f1, B:191:0x03f2, B:192:0x03f9, B:193:0x03fa, B:194:0x0401, B:195:0x0402), top: B:238:0x03cd, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:191:0x03f2 A[Catch: all -> 0x0403, TryCatch #0 {all -> 0x0403, blocks: (B:175:0x03cd, B:177:0x03d4, B:179:0x03d8, B:181:0x03dc, B:182:0x03df, B:184:0x03e3, B:186:0x03e7, B:188:0x03eb, B:189:0x03ec, B:190:0x03f1, B:191:0x03f2, B:192:0x03f9, B:193:0x03fa, B:194:0x0401, B:195:0x0402), top: B:238:0x03cd, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:193:0x03fa A[Catch: all -> 0x0403, TryCatch #0 {all -> 0x0403, blocks: (B:175:0x03cd, B:177:0x03d4, B:179:0x03d8, B:181:0x03dc, B:182:0x03df, B:184:0x03e3, B:186:0x03e7, B:188:0x03eb, B:189:0x03ec, B:190:0x03f1, B:191:0x03f2, B:192:0x03f9, B:193:0x03fa, B:194:0x0401, B:195:0x0402), top: B:238:0x03cd, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:195:0x0402 A[Catch: all -> 0x0403, TRY_LEAVE, TryCatch #0 {all -> 0x0403, blocks: (B:175:0x03cd, B:177:0x03d4, B:179:0x03d8, B:181:0x03dc, B:182:0x03df, B:184:0x03e3, B:186:0x03e7, B:188:0x03eb, B:189:0x03ec, B:190:0x03f1, B:191:0x03f2, B:192:0x03f9, B:193:0x03fa, B:194:0x0401, B:195:0x0402), top: B:238:0x03cd, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:213:0x0422 A[Catch: all -> 0x0451, TryCatch #7 {all -> 0x0451, blocks: (B:211:0x041b, B:213:0x0422, B:215:0x0426, B:217:0x042a, B:218:0x042d, B:220:0x0431, B:222:0x0435, B:224:0x0439, B:225:0x043a, B:226:0x043f, B:227:0x0440, B:228:0x0447, B:229:0x0448, B:230:0x044f, B:231:0x0450), top: B:248:0x041b }] */
    /* JADX WARN: Code duplicated, block: B:215:0x0426 A[Catch: all -> 0x0451, TryCatch #7 {all -> 0x0451, blocks: (B:211:0x041b, B:213:0x0422, B:215:0x0426, B:217:0x042a, B:218:0x042d, B:220:0x0431, B:222:0x0435, B:224:0x0439, B:225:0x043a, B:226:0x043f, B:227:0x0440, B:228:0x0447, B:229:0x0448, B:230:0x044f, B:231:0x0450), top: B:248:0x041b }] */
    /* JADX WARN: Code duplicated, block: B:220:0x0431 A[Catch: all -> 0x0451, TryCatch #7 {all -> 0x0451, blocks: (B:211:0x041b, B:213:0x0422, B:215:0x0426, B:217:0x042a, B:218:0x042d, B:220:0x0431, B:222:0x0435, B:224:0x0439, B:225:0x043a, B:226:0x043f, B:227:0x0440, B:228:0x0447, B:229:0x0448, B:230:0x044f, B:231:0x0450), top: B:248:0x041b }] */
    /* JADX WARN: Code duplicated, block: B:222:0x0435 A[Catch: all -> 0x0451, TryCatch #7 {all -> 0x0451, blocks: (B:211:0x041b, B:213:0x0422, B:215:0x0426, B:217:0x042a, B:218:0x042d, B:220:0x0431, B:222:0x0435, B:224:0x0439, B:225:0x043a, B:226:0x043f, B:227:0x0440, B:228:0x0447, B:229:0x0448, B:230:0x044f, B:231:0x0450), top: B:248:0x041b }] */
    /* JADX WARN: Code duplicated, block: B:224:0x0439 A[Catch: all -> 0x0451, TryCatch #7 {all -> 0x0451, blocks: (B:211:0x041b, B:213:0x0422, B:215:0x0426, B:217:0x042a, B:218:0x042d, B:220:0x0431, B:222:0x0435, B:224:0x0439, B:225:0x043a, B:226:0x043f, B:227:0x0440, B:228:0x0447, B:229:0x0448, B:230:0x044f, B:231:0x0450), top: B:248:0x041b }] */
    /* JADX WARN: Code duplicated, block: B:225:0x043a A[Catch: all -> 0x0451, TryCatch #7 {all -> 0x0451, blocks: (B:211:0x041b, B:213:0x0422, B:215:0x0426, B:217:0x042a, B:218:0x042d, B:220:0x0431, B:222:0x0435, B:224:0x0439, B:225:0x043a, B:226:0x043f, B:227:0x0440, B:228:0x0447, B:229:0x0448, B:230:0x044f, B:231:0x0450), top: B:248:0x041b }] */
    /* JADX WARN: Code duplicated, block: B:227:0x0440 A[Catch: all -> 0x0451, TryCatch #7 {all -> 0x0451, blocks: (B:211:0x041b, B:213:0x0422, B:215:0x0426, B:217:0x042a, B:218:0x042d, B:220:0x0431, B:222:0x0435, B:224:0x0439, B:225:0x043a, B:226:0x043f, B:227:0x0440, B:228:0x0447, B:229:0x0448, B:230:0x044f, B:231:0x0450), top: B:248:0x041b }] */
    /* JADX WARN: Code duplicated, block: B:229:0x0448 A[Catch: all -> 0x0451, TryCatch #7 {all -> 0x0451, blocks: (B:211:0x041b, B:213:0x0422, B:215:0x0426, B:217:0x042a, B:218:0x042d, B:220:0x0431, B:222:0x0435, B:224:0x0439, B:225:0x043a, B:226:0x043f, B:227:0x0440, B:228:0x0447, B:229:0x0448, B:230:0x044f, B:231:0x0450), top: B:248:0x041b }] */
    /* JADX WARN: Code duplicated, block: B:231:0x0450 A[Catch: all -> 0x0451, TRY_LEAVE, TryCatch #7 {all -> 0x0451, blocks: (B:211:0x041b, B:213:0x0422, B:215:0x0426, B:217:0x042a, B:218:0x042d, B:220:0x0431, B:222:0x0435, B:224:0x0439, B:225:0x043a, B:226:0x043f, B:227:0x0440, B:228:0x0447, B:229:0x0448, B:230:0x044f, B:231:0x0450), top: B:248:0x041b }] */
    /* JADX WARN: Code duplicated, block: B:251:0x015f A[EXC_TOP_SPLITTER, PHI: r0 r6 r10 r12
  0x015f: PHI (r0v15 ads_mobile_sdk.bb2) = (r0v0 ads_mobile_sdk.bb2), (r0v11 ads_mobile_sdk.bb2), (r0v17 ads_mobile_sdk.bb2), (r0v17 ads_mobile_sdk.bb2) binds: [B:63:0x015e, B:55:0x0132, B:60:0x0155, B:61:0x0157] A[DONT_GENERATE, DONT_INLINE]
  0x015f: PHI (r6v9 ??) = (r6v41 ??), (r6v42 ??), (r6v43 ??), (r6v44 ??) binds: [B:63:0x015e, B:55:0x0132, B:60:0x0155, B:61:0x0157] A[DONT_GENERATE, DONT_INLINE]
  0x015f: PHI (r10v4 long) = (r10v1 long), (r10v2 long), (r10v9 long), (r10v10 long) binds: [B:63:0x015e, B:55:0x0132, B:60:0x0155, B:61:0x0157] A[DONT_GENERATE, DONT_INLINE]
  0x015f: PHI (r12v13 ??) = (r12v6 ??), (r12v31 ??), (r12v32 ??), (r12v33 ??) binds: [B:63:0x015e, B:55:0x0132, B:60:0x0155, B:61:0x0157] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:25:0x0096 A[PHI: r0 r1 r6 r10
  0x0096: PHI (r0v38 ads_mobile_sdk.bb2) = (r0v21 ads_mobile_sdk.bb2), (r0v54 ads_mobile_sdk.bb2) binds: [B:95:0x01e9, B:24:0x0093] A[DONT_GENERATE, DONT_INLINE]
  0x0096: PHI (r1v43 java.lang.Object) = (r1v37 java.lang.Object), (r1v1 java.lang.Object) binds: [B:95:0x01e9, B:24:0x0093] A[DONT_GENERATE, DONT_INLINE]
  0x0096: PHI (r6v16 ??) = (r6v33 ??), (r6v34 ??) binds: [B:95:0x01e9, B:24:0x0093] A[DONT_GENERATE, DONT_INLINE]
  0x0096: PHI (r10v16 ??) = (r10v38 ??), (r10v39 ??) binds: [B:95:0x01e9, B:24:0x0093] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:56:0x0134 A[Catch: all -> 0x00e4, TryCatch #1 {all -> 0x00e4, blocks: (B:37:0x00ce, B:59:0x014f, B:61:0x0157, B:67:0x0179, B:70:0x017e, B:40:0x00e0, B:54:0x012c, B:56:0x0134), top: B:239:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:58:0x014d  */
    /* JADX WARN: Code duplicated, block: B:59:0x014f A[Catch: all -> 0x00e4, PHI: r0 r1 r6 r10 r12
  0x014f: PHI (r0v17 ads_mobile_sdk.bb2) = (r0v11 ads_mobile_sdk.bb2), (r0v20 ads_mobile_sdk.bb2) binds: [B:57:0x014b, B:37:0x00ce] A[DONT_GENERATE, DONT_INLINE]
  0x014f: PHI (r1v30 java.lang.Object) = (r1v25 java.lang.Object), (r1v1 java.lang.Object) binds: [B:57:0x014b, B:37:0x00ce] A[DONT_GENERATE, DONT_INLINE]
  0x014f: PHI (r6v10 ??) = (r6v39 ??), (r6v40 ??) binds: [B:57:0x014b, B:37:0x00ce] A[DONT_GENERATE, DONT_INLINE]
  0x014f: PHI (r10v9 long) = (r10v2 long), (r10v11 long) binds: [B:57:0x014b, B:37:0x00ce] A[DONT_GENERATE, DONT_INLINE]
  0x014f: PHI (r12v14 ??) = (r12v29 ??), (r12v30 ??) binds: [B:57:0x014b, B:37:0x00ce] A[DONT_GENERATE, DONT_INLINE], TryCatch #1 {all -> 0x00e4, blocks: (B:37:0x00ce, B:59:0x014f, B:61:0x0157, B:67:0x0179, B:70:0x017e, B:40:0x00e0, B:54:0x012c, B:56:0x0134), top: B:239:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:61:0x0157 A[Catch: all -> 0x00e4, TRY_LEAVE, TryCatch #1 {all -> 0x00e4, blocks: (B:37:0x00ce, B:59:0x014f, B:61:0x0157, B:67:0x0179, B:70:0x017e, B:40:0x00e0, B:54:0x012c, B:56:0x0134), top: B:239:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:66:0x016b A[Catch: all -> 0x0413, TRY_LEAVE, TryCatch #9 {all -> 0x0413, blocks: (B:64:0x015f, B:66:0x016b, B:69:0x017c), top: B:251:0x015f }] */
    /* JADX WARN: Code duplicated, block: B:73:0x0186  */
    /* JADX WARN: Code duplicated, block: B:75:0x018e  */
    /* JADX WARN: Code duplicated, block: B:78:0x019f A[Catch: all -> 0x00bc, TRY_LEAVE, TryCatch #13 {all -> 0x00bc, blocks: (B:32:0x00b7, B:74:0x0187, B:76:0x0193, B:78:0x019f, B:81:0x01a6, B:90:0x01da, B:93:0x01e3), top: B:257:0x00b7 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    /* JADX WARN: Code duplicated, block: B:84:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:90:0x01da A[Catch: all -> 0x00bc, TRY_ENTER, TRY_LEAVE, TryCatch #13 {all -> 0x00bc, blocks: (B:32:0x00b7, B:74:0x0187, B:76:0x0193, B:78:0x019f, B:81:0x01a6, B:90:0x01da, B:93:0x01e3), top: B:257:0x00b7 }] */
    /* JADX WARN: Code duplicated, block: B:96:0x01eb  */
    /* JADX WARN: Code duplicated, block: B:99:0x01f3 A[Catch: all -> 0x01d7, TRY_LEAVE, TryCatch #11 {all -> 0x01d7, blocks: (B:134:0x02c1, B:136:0x02c5, B:139:0x02ce, B:141:0x02db, B:143:0x02e7, B:145:0x02eb, B:147:0x02f5, B:150:0x031b, B:151:0x031c, B:153:0x0325, B:21:0x0083, B:116:0x024b, B:24:0x0093, B:97:0x01ed, B:99:0x01f3, B:102:0x01fc, B:104:0x020e, B:108:0x0229, B:113:0x0236, B:79:0x01a3, B:91:0x01e0, B:94:0x01e5), top: B:239:0x002c }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v67, types: [kotlin.Pair] */
    /* JADX WARN: Type inference failed for: r10v12, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v16, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v19 */
    /* JADX WARN: Type inference failed for: r10v25 */
    /* JADX WARN: Type inference failed for: r10v30 */
    /* JADX WARN: Type inference failed for: r10v34 */
    /* JADX WARN: Type inference failed for: r10v35 */
    /* JADX WARN: Type inference failed for: r10v36 */
    /* JADX WARN: Type inference failed for: r10v37 */
    /* JADX WARN: Type inference failed for: r10v38 */
    /* JADX WARN: Type inference failed for: r10v39 */
    /* JADX WARN: Type inference failed for: r10v40 */
    /* JADX WARN: Type inference failed for: r10v41 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v14 */
    /* JADX WARN: Type inference failed for: r12v17 */
    /* JADX WARN: Type inference failed for: r12v19, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r12v20 */
    /* JADX WARN: Type inference failed for: r12v21 */
    /* JADX WARN: Type inference failed for: r12v22 */
    /* JADX WARN: Type inference failed for: r12v23 */
    /* JADX WARN: Type inference failed for: r12v24, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r12v25 */
    /* JADX WARN: Type inference failed for: r12v26 */
    /* JADX WARN: Type inference failed for: r12v27 */
    /* JADX WARN: Type inference failed for: r12v28 */
    /* JADX WARN: Type inference failed for: r12v29 */
    /* JADX WARN: Type inference failed for: r12v3, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r12v30 */
    /* JADX WARN: Type inference failed for: r12v31 */
    /* JADX WARN: Type inference failed for: r12v32 */
    /* JADX WARN: Type inference failed for: r12v33 */
    /* JADX WARN: Type inference failed for: r12v34 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v13, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r13v15 */
    /* JADX WARN: Type inference failed for: r13v16 */
    /* JADX WARN: Type inference failed for: r13v17 */
    /* JADX WARN: Type inference failed for: r13v18 */
    /* JADX WARN: Type inference failed for: r13v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r13v9 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v8, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r6v0, types: [int] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v12, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v21 */
    /* JADX WARN: Type inference failed for: r6v25, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r6v29 */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r6v30 */
    /* JADX WARN: Type inference failed for: r6v31 */
    /* JADX WARN: Type inference failed for: r6v32 */
    /* JADX WARN: Type inference failed for: r6v33 */
    /* JADX WARN: Type inference failed for: r6v34 */
    /* JADX WARN: Type inference failed for: r6v35 */
    /* JADX WARN: Type inference failed for: r6v36 */
    /* JADX WARN: Type inference failed for: r6v37 */
    /* JADX WARN: Type inference failed for: r6v38 */
    /* JADX WARN: Type inference failed for: r6v39 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v40 */
    /* JADX WARN: Type inference failed for: r6v41 */
    /* JADX WARN: Type inference failed for: r6v42 */
    /* JADX WARN: Type inference failed for: r6v43 */
    /* JADX WARN: Type inference failed for: r6v44 */
    /* JADX WARN: Type inference failed for: r6v45 */
    /* JADX WARN: Type inference failed for: r6v46 */
    /* JADX WARN: Type inference failed for: r6v6, types: [ads_mobile_sdk.rr3, java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r6v9, types: [java.io.Closeable] */
    public static Object b(bb2 bb2Var, Continuation continuation) {
        xa2 xa2Var;
        ?? r12;
        long jM4458getZEROUwyO8pc;
        ?? r13;
        ?? r6;
        ?? r2;
        ?? r5;
        ?? r10;
        long rawValue;
        ?? r11;
        ?? r14;
        ?? r7;
        ?? r8;
        ?? r9;
        ?? r15;
        ?? r16;
        bb2 bb2Var2;
        v01 v01Var;
        Signals signals;
        boolean z;
        v01 m01Var;
        ?? r17;
        ?? r18;
        ?? r19;
        ?? r110;
        bb2 bb2Var3;
        Signals signals2;
        rr3 rr3VarA;
        rr3 rr3Var;
        yt ytVar;
        ?? r111;
        ?? r20;
        ?? r112;
        ?? r113;
        ?? r21;
        zt ztVar;
        ?? pair;
        bb2 bb2Var4;
        List list;
        IllegalStateException illegalStateException;
        v01 v01Var2;
        ac3 ac3Var;
        k kVar;
        ec3 ec3Var;
        ej1 ej1Var;
        ec3 ec3Var2;
        bb2 bb2Var5 = bb2Var;
        if (continuation instanceof xa2) {
            xa2Var = (xa2) continuation;
            int i = xa2Var.l;
            if ((i & Integer.MIN_VALUE) != 0) {
                xa2Var.l = i - Integer.MIN_VALUE;
            } else {
                xa2Var = new xa2(bb2Var5, continuation);
            }
        } else {
            xa2Var = new xa2(bb2Var5, continuation);
        }
        Object objA = xa2Var.j;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? A = xa2Var.l;
        boolean z2 = true;
        try {
            try {
                try {
                    switch (A) {
                        case 0:
                            p005kotlin.ResultKt.throwOnFailure(objA);
                            if (bb2Var5.k.n()) {
                                bb2Var5.o.g();
                            }
                            A = hs3.a(s11.CUI_NAME_ADREQUEST_CLIENT_REQUEST, CollectionsKt.emptyList(), true);
                            try {
                                jM4458getZEROUwyO8pc = Duration.INSTANCE.m4458getZEROUwyO8pc();
                                if (bb2Var5.k.x0()) {
                                    b53 b53Var = bb2Var5.j;
                                    String adUnitId = bb2Var5.d.getAdUnitId();
                                    j53 j53Var = bb2Var5.e;
                                    xa2Var.a = bb2Var5;
                                    xa2Var.b = A;
                                    xa2Var.c = A;
                                    xa2Var.h = jM4458getZEROUwyO8pc;
                                    xa2Var.l = 1;
                                    objA = b53Var.a(j53Var, adUnitId, xa2Var);
                                    if (objA != coroutine_suspended) {
                                        r13 = A;
                                        r6 = A;
                                        A = r6;
                                        r12 = r13;
                                        if (!((Boolean) objA).booleanValue()) {
                                            u43 u43Var = bb2Var5.i;
                                            String adUnitId2 = bb2Var5.d.getAdUnitId();
                                            xa2Var.a = bb2Var5;
                                            xa2Var.b = r13;
                                            xa2Var.c = r6;
                                            xa2Var.h = jM4458getZEROUwyO8pc;
                                            xa2Var.l = 2;
                                            objA = u43Var.a(adUnitId2, xa2Var);
                                            if (objA == coroutine_suspended) {
                                                r7 = r6;
                                                r14 = r13;
                                            } else {
                                                r7 = r6;
                                                r14 = r13;
                                                A = r7;
                                                r12 = r14;
                                                if (((Boolean) objA).booleanValue()) {
                                                    jM4458getZEROUwyO8pc = bb2Var5.k.y0();
                                                    A = r7;
                                                    r12 = r14;
                                                }
                                                try {
                                                    if (Duration.m4372equalsimpl0(jM4458getZEROUwyO8pc, Duration.INSTANCE.m4458getZEROUwyO8pc())) {
                                                        b53 b53Var2 = bb2Var5.j;
                                                        String adUnitId3 = bb2Var5.d.getAdUnitId();
                                                        j53 j53Var2 = bb2Var5.e;
                                                        xa2Var.a = bb2Var5;
                                                        xa2Var.b = r12;
                                                        xa2Var.c = A;
                                                        xa2Var.l = 3;
                                                        objA = b53Var2.b(j53Var2, adUnitId3, xa2Var);
                                                        if (objA != coroutine_suspended) {
                                                            r11 = r12;
                                                            r9 = A;
                                                            rawValue = ((Duration) objA).getRawValue();
                                                            r8 = r9;
                                                            r10 = r11;
                                                            if (Duration.m4366compareToLRDsOJo(rawValue, Duration.INSTANCE.m4458getZEROUwyO8pc()) > 0) {
                                                                xa2Var.a = bb2Var5;
                                                                xa2Var.b = r10;
                                                                xa2Var.c = r8;
                                                                xa2Var.l = 4;
                                                                if (DelayKt.m4512delayVtjQ1oo(rawValue, xa2Var) != coroutine_suspended) {
                                                                    r2 = r8;
                                                                    r5 = r10;
                                                                    n01 n01Var = new n01("Too many recently failed requests for ad unit ID: " + bb2Var5.d.getAdUnitId() + ". You must wait a few seconds before making another ad request.", true);
                                                                    xs3.a(n01Var, false);
                                                                    CloseableKt.closeFinally(r2, null);
                                                                    return n01Var;
                                                                }
                                                            } else {
                                                                a aVar = bb2Var5.c;
                                                                xa2Var.a = bb2Var5;
                                                                xa2Var.b = r10;
                                                                xa2Var.c = r8;
                                                                xa2Var.l = 5;
                                                                objA = aVar.a(xa2Var);
                                                                r16 = r8;
                                                                r15 = r10;
                                                                if (objA != coroutine_suspended) {
                                                                    bb2Var2 = bb2Var5;
                                                                    v01Var = (v01) objA;
                                                                    if (v01Var instanceof i01) {
                                                                        i01 i01Var = (i01) v01Var;
                                                                        xs3.a(i01Var, false);
                                                                        CloseableKt.closeFinally(r16, null);
                                                                        return i01Var;
                                                                    }
                                                                    Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                                    signals = (Signals) ((q01) v01Var).a();
                                                                    if (bb2Var2.k.w) {
                                                                        z = false;
                                                                    } else {
                                                                        bb2Var2.l.getClass();
                                                                        if (Random.INSTANCE.nextInt(1000) < bb2Var2.k.x * ((double) 1000)) {
                                                                            z = true;
                                                                        } else {
                                                                            z = false;
                                                                        }
                                                                    }
                                                                    if (!bb2Var2.k.S() || z) {
                                                                        xa2Var.a = bb2Var2;
                                                                        xa2Var.b = r15;
                                                                        xa2Var.c = r16;
                                                                        xa2Var.d = signals;
                                                                        xa2Var.i = z;
                                                                        xa2Var.l = 6;
                                                                        objA = bb2Var2.a(signals, xa2Var);
                                                                        r20 = r16;
                                                                        r111 = r15;
                                                                        if (objA == coroutine_suspended) {
                                                                            m01Var = (v01) objA;
                                                                            r18 = r20;
                                                                            r17 = r111;
                                                                            r19 = r18;
                                                                            r110 = r17;
                                                                            bb2Var3 = bb2Var2;
                                                                            signals2 = signals;
                                                                            try {
                                                                                if (!bb2Var3.k.S()) {
                                                                                    if (m01Var == null) {
                                                                                        m01Var = new m01("Client side request building returned null while building URL.");
                                                                                    }
                                                                                    z2 = true;
                                                                                    r113 = r19;
                                                                                    r112 = r110;
                                                                                    r21 = r113;
                                                                                    if (m01Var instanceof i01) {
                                                                                        i01 i01Var2 = (i01) m01Var;
                                                                                        xs3.a(i01Var2, false);
                                                                                        CloseableKt.closeFinally(r21, null);
                                                                                        return i01Var2;
                                                                                    }
                                                                                    Intrinsics.checkNotNull(m01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                                                    ztVar = (zt) ((q01) m01Var).a();
                                                                                    if (z) {
                                                                                        Splitter splitter = f01.a;
                                                                                        f01.a(new ya2(ztVar));
                                                                                    }
                                                                                    if (z && (list = ztVar.g) != null && (!list.isEmpty()) == z2) {
                                                                                        illegalStateException = new IllegalStateException("CSRB A/B divergence: " + ztVar.g);
                                                                                        ((as3) bb2Var3.m).a("CSRB A/B divergence", (Throwable) illegalStateException);
                                                                                        if (bb2Var3.k.K()) {
                                                                                            throw illegalStateException;
                                                                                        }
                                                                                    }
                                                                                    pair = new p005kotlin.Pair(signals2, ztVar);
                                                                                    if (pair instanceof i01) {
                                                                                        xs3.a((i01) pair, false);
                                                                                    }
                                                                                    CloseableKt.closeFinally(r21, null);
                                                                                    Signals signals3 = (Signals) pair.component1();
                                                                                    zt ztVar2 = (zt) pair.component2();
                                                                                    ka2 ka2Var = bb2Var3.b;
                                                                                    xa2Var.a = bb2Var3;
                                                                                    xa2Var.b = null;
                                                                                    xa2Var.c = null;
                                                                                    xa2Var.d = null;
                                                                                    xa2Var.e = null;
                                                                                    xa2Var.f = null;
                                                                                    xa2Var.g = null;
                                                                                    xa2Var.l = 8;
                                                                                    objA = ka2Var.a(signals3, ztVar2, xa2Var);
                                                                                    if (objA != coroutine_suspended) {
                                                                                        bb2Var4 = bb2Var3;
                                                                                        v01Var2 = (v01) objA;
                                                                                        if (v01Var2 instanceof i01) {
                                                                                            return (i01) v01Var2;
                                                                                        }
                                                                                        Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                                                        ac3Var = (ac3) ((q01) v01Var2).a();
                                                                                        kVar = bb2Var4.g;
                                                                                        xa2Var.a = bb2Var4;
                                                                                        xa2Var.b = ac3Var;
                                                                                        xa2Var.l = 9;
                                                                                        if (kVar.a(ac3Var, xa2Var) != coroutine_suspended) {
                                                                                            hs3.a().g().b.b = ac3Var.b.h;
                                                                                            boolean z3 = !ac3Var.a.isEmpty();
                                                                                            bb2Var4.r = z3;
                                                                                            BuildersKt__Builders_commonKt.launch$default(bb2Var4.p, null, null, new ab2(ac3Var, bb2Var4, z3, null), 3, null);
                                                                                            bb2Var4.q = true;
                                                                                            ec3Var = new ec3(new wb3(bb2Var4.d), ac3Var);
                                                                                            ej1Var = bb2Var4.f;
                                                                                            xa2Var.a = ec3Var;
                                                                                            xa2Var.b = null;
                                                                                            xa2Var.l = 10;
                                                                                            if (ej1Var.a(ec3Var, xa2Var) != coroutine_suspended) {
                                                                                                ec3Var2 = ec3Var;
                                                                                                return new q01(ec3Var2);
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                } else {
                                                                                    rr3VarA = hs3.a(s11.CUI_NAME_ADREQUEST_BUILDURL, CollectionsKt.emptyList(), true);
                                                                                    try {
                                                                                        String json = bb2Var3.n.toJson(signals2);
                                                                                        Splitter splitter2 = f01.a;
                                                                                        f01.a(new za2(json));
                                                                                        ytVar = zt.j;
                                                                                        Object obj = bb2Var3.a;
                                                                                        Intrinsics.checkNotNull(json);
                                                                                        xa2Var.a = bb2Var3;
                                                                                        xa2Var.b = r110;
                                                                                        xa2Var.c = r19;
                                                                                        xa2Var.d = signals2;
                                                                                        xa2Var.e = rr3VarA;
                                                                                        xa2Var.f = rr3VarA;
                                                                                        xa2Var.g = ytVar;
                                                                                        xa2Var.i = z;
                                                                                        xa2Var.l = 7;
                                                                                        objA = ((rp0) obj).a("AFMA_getAdDictionary", json, xa2Var);
                                                                                        if (objA != coroutine_suspended) {
                                                                                            rr3Var = rr3VarA;
                                                                                            r19 = r19;
                                                                                            r110 = r110;
                                                                                            ytVar.getClass();
                                                                                            m01Var = yt.a((v01) objA);
                                                                                            if (m01Var instanceof i01) {
                                                                                                xs3.a((i01) m01Var, false);
                                                                                            }
                                                                                            CloseableKt.closeFinally(rr3VarA, null);
                                                                                            r113 = r19;
                                                                                            r112 = r110;
                                                                                            r21 = r113;
                                                                                            if (m01Var instanceof i01) {
                                                                                                i01 i01Var3 = (i01) m01Var;
                                                                                                xs3.a(i01Var3, false);
                                                                                                CloseableKt.closeFinally(r21, null);
                                                                                                return i01Var3;
                                                                                            }
                                                                                            Intrinsics.checkNotNull(m01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                                                            ztVar = (zt) ((q01) m01Var).a();
                                                                                            if (z) {
                                                                                                Splitter splitter3 = f01.a;
                                                                                                f01.a(new ya2(ztVar));
                                                                                            }
                                                                                            if (z) {
                                                                                                illegalStateException = new IllegalStateException("CSRB A/B divergence: " + ztVar.g);
                                                                                                ((as3) bb2Var3.m).a("CSRB A/B divergence", (Throwable) illegalStateException);
                                                                                                if (bb2Var3.k.K()) {
                                                                                                    throw illegalStateException;
                                                                                                }
                                                                                            }
                                                                                            pair = new p005kotlin.Pair(signals2, ztVar);
                                                                                            if (pair instanceof i01) {
                                                                                                xs3.a((i01) pair, false);
                                                                                            }
                                                                                            CloseableKt.closeFinally(r21, null);
                                                                                            Signals signals4 = (Signals) pair.component1();
                                                                                            zt ztVar3 = (zt) pair.component2();
                                                                                            ka2 ka2Var2 = bb2Var3.b;
                                                                                            xa2Var.a = bb2Var3;
                                                                                            xa2Var.b = null;
                                                                                            xa2Var.c = null;
                                                                                            xa2Var.d = null;
                                                                                            xa2Var.e = null;
                                                                                            xa2Var.f = null;
                                                                                            xa2Var.g = null;
                                                                                            xa2Var.l = 8;
                                                                                            objA = ka2Var2.a(signals4, ztVar3, xa2Var);
                                                                                            if (objA != coroutine_suspended) {
                                                                                                bb2Var4 = bb2Var3;
                                                                                                v01Var2 = (v01) objA;
                                                                                                if (v01Var2 instanceof i01) {
                                                                                                    return (i01) v01Var2;
                                                                                                }
                                                                                                Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                                                                ac3Var = (ac3) ((q01) v01Var2).a();
                                                                                                kVar = bb2Var4.g;
                                                                                                xa2Var.a = bb2Var4;
                                                                                                xa2Var.b = ac3Var;
                                                                                                xa2Var.l = 9;
                                                                                                if (kVar.a(ac3Var, xa2Var) != coroutine_suspended) {
                                                                                                    hs3.a().g().b.b = ac3Var.b.h;
                                                                                                    boolean z4 = !ac3Var.a.isEmpty();
                                                                                                    bb2Var4.r = z4;
                                                                                                    BuildersKt__Builders_commonKt.launch$default(bb2Var4.p, null, null, new ab2(ac3Var, bb2Var4, z4, null), 3, null);
                                                                                                    bb2Var4.q = true;
                                                                                                    ec3Var = new ec3(new wb3(bb2Var4.d), ac3Var);
                                                                                                    ej1Var = bb2Var4.f;
                                                                                                    xa2Var.a = ec3Var;
                                                                                                    xa2Var.b = null;
                                                                                                    xa2Var.l = 10;
                                                                                                    if (ej1Var.a(ec3Var, xa2Var) != coroutine_suspended) {
                                                                                                        ec3Var2 = ec3Var;
                                                                                                        return new q01(ec3Var2);
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                        break;
                                                                                    } catch (Throwable th) {
                                                                                        th = th;
                                                                                        rr3Var = rr3VarA;
                                                                                        try {
                                                                                            rr3Var.b(th);
                                                                                            if (!(th instanceof v24)) {
                                                                                                throw th;
                                                                                            }
                                                                                            if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                                                                                rr3Var.a(th);
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
                                                                                                CloseableKt.closeFinally(rr3VarA, th2);
                                                                                                throw th3;
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            } catch (Throwable th4) {
                                                                                th = th4;
                                                                                A = r19;
                                                                                r12 = r110;
                                                                                try {
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
                                                                    } else {
                                                                        m01Var = null;
                                                                        r18 = r16;
                                                                        r17 = r15;
                                                                        r19 = r18;
                                                                        r110 = r17;
                                                                        bb2Var3 = bb2Var2;
                                                                        signals2 = signals;
                                                                        if (!bb2Var3.k.S()) {
                                                                            if (m01Var == null) {
                                                                                m01Var = new m01("Client side request building returned null while building URL.");
                                                                            }
                                                                            z2 = true;
                                                                            r113 = r19;
                                                                            r112 = r110;
                                                                            r21 = r113;
                                                                            if (m01Var instanceof i01) {
                                                                                i01 i01Var4 = (i01) m01Var;
                                                                                xs3.a(i01Var4, false);
                                                                                CloseableKt.closeFinally(r21, null);
                                                                                return i01Var4;
                                                                            }
                                                                            Intrinsics.checkNotNull(m01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                                            ztVar = (zt) ((q01) m01Var).a();
                                                                            if (z) {
                                                                                Splitter splitter4 = f01.a;
                                                                                f01.a(new ya2(ztVar));
                                                                            }
                                                                            if (z) {
                                                                                illegalStateException = new IllegalStateException("CSRB A/B divergence: " + ztVar.g);
                                                                                ((as3) bb2Var3.m).a("CSRB A/B divergence", (Throwable) illegalStateException);
                                                                                if (bb2Var3.k.K()) {
                                                                                    throw illegalStateException;
                                                                                }
                                                                            }
                                                                            pair = new p005kotlin.Pair(signals2, ztVar);
                                                                            if (pair instanceof i01) {
                                                                                xs3.a((i01) pair, false);
                                                                            }
                                                                            CloseableKt.closeFinally(r21, null);
                                                                            Signals signals5 = (Signals) pair.component1();
                                                                            zt ztVar4 = (zt) pair.component2();
                                                                            ka2 ka2Var3 = bb2Var3.b;
                                                                            xa2Var.a = bb2Var3;
                                                                            xa2Var.b = null;
                                                                            xa2Var.c = null;
                                                                            xa2Var.d = null;
                                                                            xa2Var.e = null;
                                                                            xa2Var.f = null;
                                                                            xa2Var.g = null;
                                                                            xa2Var.l = 8;
                                                                            objA = ka2Var3.a(signals5, ztVar4, xa2Var);
                                                                            if (objA != coroutine_suspended) {
                                                                                bb2Var4 = bb2Var3;
                                                                                v01Var2 = (v01) objA;
                                                                                if (v01Var2 instanceof i01) {
                                                                                    return (i01) v01Var2;
                                                                                }
                                                                                Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                                                ac3Var = (ac3) ((q01) v01Var2).a();
                                                                                kVar = bb2Var4.g;
                                                                                xa2Var.a = bb2Var4;
                                                                                xa2Var.b = ac3Var;
                                                                                xa2Var.l = 9;
                                                                                if (kVar.a(ac3Var, xa2Var) != coroutine_suspended) {
                                                                                    hs3.a().g().b.b = ac3Var.b.h;
                                                                                    boolean z5 = !ac3Var.a.isEmpty();
                                                                                    bb2Var4.r = z5;
                                                                                    BuildersKt__Builders_commonKt.launch$default(bb2Var4.p, null, null, new ab2(ac3Var, bb2Var4, z5, null), 3, null);
                                                                                    bb2Var4.q = true;
                                                                                    ec3Var = new ec3(new wb3(bb2Var4.d), ac3Var);
                                                                                    ej1Var = bb2Var4.f;
                                                                                    xa2Var.a = ec3Var;
                                                                                    xa2Var.b = null;
                                                                                    xa2Var.l = 10;
                                                                                    if (ej1Var.a(ec3Var, xa2Var) != coroutine_suspended) {
                                                                                        ec3Var2 = ec3Var;
                                                                                        return new q01(ec3Var2);
                                                                                    }
                                                                                }
                                                                            }
                                                                        } else {
                                                                            rr3VarA = hs3.a(s11.CUI_NAME_ADREQUEST_BUILDURL, CollectionsKt.emptyList(), true);
                                                                            String json2 = bb2Var3.n.toJson(signals2);
                                                                            Splitter splitter5 = f01.a;
                                                                            f01.a(new za2(json2));
                                                                            ytVar = zt.j;
                                                                            Object obj2 = bb2Var3.a;
                                                                            Intrinsics.checkNotNull(json2);
                                                                            xa2Var.a = bb2Var3;
                                                                            xa2Var.b = r110;
                                                                            xa2Var.c = r19;
                                                                            xa2Var.d = signals2;
                                                                            xa2Var.e = rr3VarA;
                                                                            xa2Var.f = rr3VarA;
                                                                            xa2Var.g = ytVar;
                                                                            xa2Var.i = z;
                                                                            xa2Var.l = 7;
                                                                            objA = ((rp0) obj2).a("AFMA_getAdDictionary", json2, xa2Var);
                                                                            if (objA != coroutine_suspended) {
                                                                                rr3Var = rr3VarA;
                                                                                r19 = r19;
                                                                                r110 = r110;
                                                                                ytVar.getClass();
                                                                                m01Var = yt.a((v01) objA);
                                                                                if (m01Var instanceof i01) {
                                                                                    xs3.a((i01) m01Var, false);
                                                                                }
                                                                                CloseableKt.closeFinally(rr3VarA, null);
                                                                                r113 = r19;
                                                                                r112 = r110;
                                                                                r21 = r113;
                                                                                if (m01Var instanceof i01) {
                                                                                    i01 i01Var5 = (i01) m01Var;
                                                                                    xs3.a(i01Var5, false);
                                                                                    CloseableKt.closeFinally(r21, null);
                                                                                    return i01Var5;
                                                                                }
                                                                                Intrinsics.checkNotNull(m01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                                                ztVar = (zt) ((q01) m01Var).a();
                                                                                if (z) {
                                                                                    Splitter splitter6 = f01.a;
                                                                                    f01.a(new ya2(ztVar));
                                                                                }
                                                                                if (z) {
                                                                                    illegalStateException = new IllegalStateException("CSRB A/B divergence: " + ztVar.g);
                                                                                    ((as3) bb2Var3.m).a("CSRB A/B divergence", (Throwable) illegalStateException);
                                                                                    if (bb2Var3.k.K()) {
                                                                                        throw illegalStateException;
                                                                                    }
                                                                                }
                                                                                pair = new p005kotlin.Pair(signals2, ztVar);
                                                                                if (pair instanceof i01) {
                                                                                    xs3.a((i01) pair, false);
                                                                                }
                                                                                CloseableKt.closeFinally(r21, null);
                                                                                Signals signals6 = (Signals) pair.component1();
                                                                                zt ztVar5 = (zt) pair.component2();
                                                                                ka2 ka2Var4 = bb2Var3.b;
                                                                                xa2Var.a = bb2Var3;
                                                                                xa2Var.b = null;
                                                                                xa2Var.c = null;
                                                                                xa2Var.d = null;
                                                                                xa2Var.e = null;
                                                                                xa2Var.f = null;
                                                                                xa2Var.g = null;
                                                                                xa2Var.l = 8;
                                                                                objA = ka2Var4.a(signals6, ztVar5, xa2Var);
                                                                                if (objA != coroutine_suspended) {
                                                                                    bb2Var4 = bb2Var3;
                                                                                    v01Var2 = (v01) objA;
                                                                                    if (v01Var2 instanceof i01) {
                                                                                        return (i01) v01Var2;
                                                                                    }
                                                                                    Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                                                    ac3Var = (ac3) ((q01) v01Var2).a();
                                                                                    kVar = bb2Var4.g;
                                                                                    xa2Var.a = bb2Var4;
                                                                                    xa2Var.b = ac3Var;
                                                                                    xa2Var.l = 9;
                                                                                    if (kVar.a(ac3Var, xa2Var) != coroutine_suspended) {
                                                                                        hs3.a().g().b.b = ac3Var.b.h;
                                                                                        boolean z6 = !ac3Var.a.isEmpty();
                                                                                        bb2Var4.r = z6;
                                                                                        BuildersKt__Builders_commonKt.launch$default(bb2Var4.p, null, null, new ab2(ac3Var, bb2Var4, z6, null), 3, null);
                                                                                        bb2Var4.q = true;
                                                                                        ec3Var = new ec3(new wb3(bb2Var4.d), ac3Var);
                                                                                        ej1Var = bb2Var4.f;
                                                                                        xa2Var.a = ec3Var;
                                                                                        xa2Var.b = null;
                                                                                        xa2Var.l = 10;
                                                                                        if (ej1Var.a(ec3Var, xa2Var) != coroutine_suspended) {
                                                                                            ec3Var2 = ec3Var;
                                                                                            return new q01(ec3Var2);
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    } else {
                                                        long j = jM4458getZEROUwyO8pc;
                                                        r10 = r12;
                                                        rawValue = j;
                                                        r8 = A;
                                                        if (Duration.m4366compareToLRDsOJo(rawValue, Duration.INSTANCE.m4458getZEROUwyO8pc()) > 0) {
                                                            xa2Var.a = bb2Var5;
                                                            xa2Var.b = r10;
                                                            xa2Var.c = r8;
                                                            xa2Var.l = 4;
                                                            if (DelayKt.m4512delayVtjQ1oo(rawValue, xa2Var) != coroutine_suspended) {
                                                                r2 = r8;
                                                                r5 = r10;
                                                                n01 n01Var2 = new n01("Too many recently failed requests for ad unit ID: " + bb2Var5.d.getAdUnitId() + ". You must wait a few seconds before making another ad request.", true);
                                                                xs3.a(n01Var2, false);
                                                                CloseableKt.closeFinally(r2, null);
                                                                return n01Var2;
                                                            }
                                                        } else {
                                                            a aVar2 = bb2Var5.c;
                                                            xa2Var.a = bb2Var5;
                                                            xa2Var.b = r10;
                                                            xa2Var.c = r8;
                                                            xa2Var.l = 5;
                                                            objA = aVar2.a(xa2Var);
                                                            r16 = r8;
                                                            r15 = r10;
                                                            if (objA != coroutine_suspended) {
                                                                bb2Var2 = bb2Var5;
                                                                v01Var = (v01) objA;
                                                                if (v01Var instanceof i01) {
                                                                    i01 i01Var6 = (i01) v01Var;
                                                                    xs3.a(i01Var6, false);
                                                                    CloseableKt.closeFinally(r16, null);
                                                                    return i01Var6;
                                                                }
                                                                Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                                signals = (Signals) ((q01) v01Var).a();
                                                                if (bb2Var2.k.w) {
                                                                    bb2Var2.l.getClass();
                                                                    if (Random.INSTANCE.nextInt(1000) < bb2Var2.k.x * ((double) 1000)) {
                                                                        z = true;
                                                                    } else {
                                                                        z = false;
                                                                    }
                                                                } else {
                                                                    z = false;
                                                                }
                                                                if (bb2Var2.k.S()) {
                                                                }
                                                                xa2Var.a = bb2Var2;
                                                                xa2Var.b = r15;
                                                                xa2Var.c = r16;
                                                                xa2Var.d = signals;
                                                                xa2Var.i = z;
                                                                xa2Var.l = 6;
                                                                objA = bb2Var2.a(signals, xa2Var);
                                                                r20 = r16;
                                                                r111 = r15;
                                                                if (objA == coroutine_suspended) {
                                                                    m01Var = (v01) objA;
                                                                    r18 = r20;
                                                                    r17 = r111;
                                                                    r19 = r18;
                                                                    r110 = r17;
                                                                    bb2Var3 = bb2Var2;
                                                                    signals2 = signals;
                                                                    if (!bb2Var3.k.S()) {
                                                                        if (m01Var == null) {
                                                                            m01Var = new m01("Client side request building returned null while building URL.");
                                                                        }
                                                                        z2 = true;
                                                                        r113 = r19;
                                                                        r112 = r110;
                                                                        r21 = r113;
                                                                        if (m01Var instanceof i01) {
                                                                            i01 i01Var7 = (i01) m01Var;
                                                                            xs3.a(i01Var7, false);
                                                                            CloseableKt.closeFinally(r21, null);
                                                                            return i01Var7;
                                                                        }
                                                                        Intrinsics.checkNotNull(m01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                                        ztVar = (zt) ((q01) m01Var).a();
                                                                        if (z) {
                                                                            Splitter splitter7 = f01.a;
                                                                            f01.a(new ya2(ztVar));
                                                                        }
                                                                        if (z) {
                                                                            illegalStateException = new IllegalStateException("CSRB A/B divergence: " + ztVar.g);
                                                                            ((as3) bb2Var3.m).a("CSRB A/B divergence", (Throwable) illegalStateException);
                                                                            if (bb2Var3.k.K()) {
                                                                                throw illegalStateException;
                                                                            }
                                                                        }
                                                                        pair = new p005kotlin.Pair(signals2, ztVar);
                                                                        if (pair instanceof i01) {
                                                                            xs3.a((i01) pair, false);
                                                                        }
                                                                        CloseableKt.closeFinally(r21, null);
                                                                        Signals signals7 = (Signals) pair.component1();
                                                                        zt ztVar6 = (zt) pair.component2();
                                                                        ka2 ka2Var5 = bb2Var3.b;
                                                                        xa2Var.a = bb2Var3;
                                                                        xa2Var.b = null;
                                                                        xa2Var.c = null;
                                                                        xa2Var.d = null;
                                                                        xa2Var.e = null;
                                                                        xa2Var.f = null;
                                                                        xa2Var.g = null;
                                                                        xa2Var.l = 8;
                                                                        objA = ka2Var5.a(signals7, ztVar6, xa2Var);
                                                                        if (objA != coroutine_suspended) {
                                                                            bb2Var4 = bb2Var3;
                                                                            v01Var2 = (v01) objA;
                                                                            if (v01Var2 instanceof i01) {
                                                                                return (i01) v01Var2;
                                                                            }
                                                                            Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                                            ac3Var = (ac3) ((q01) v01Var2).a();
                                                                            kVar = bb2Var4.g;
                                                                            xa2Var.a = bb2Var4;
                                                                            xa2Var.b = ac3Var;
                                                                            xa2Var.l = 9;
                                                                            if (kVar.a(ac3Var, xa2Var) != coroutine_suspended) {
                                                                                hs3.a().g().b.b = ac3Var.b.h;
                                                                                boolean z7 = !ac3Var.a.isEmpty();
                                                                                bb2Var4.r = z7;
                                                                                BuildersKt__Builders_commonKt.launch$default(bb2Var4.p, null, null, new ab2(ac3Var, bb2Var4, z7, null), 3, null);
                                                                                bb2Var4.q = true;
                                                                                ec3Var = new ec3(new wb3(bb2Var4.d), ac3Var);
                                                                                ej1Var = bb2Var4.f;
                                                                                xa2Var.a = ec3Var;
                                                                                xa2Var.b = null;
                                                                                xa2Var.l = 10;
                                                                                if (ej1Var.a(ec3Var, xa2Var) != coroutine_suspended) {
                                                                                    ec3Var2 = ec3Var;
                                                                                    return new q01(ec3Var2);
                                                                                }
                                                                            }
                                                                        }
                                                                    } else {
                                                                        rr3VarA = hs3.a(s11.CUI_NAME_ADREQUEST_BUILDURL, CollectionsKt.emptyList(), true);
                                                                        String json3 = bb2Var3.n.toJson(signals2);
                                                                        Splitter splitter8 = f01.a;
                                                                        f01.a(new za2(json3));
                                                                        ytVar = zt.j;
                                                                        Object obj3 = bb2Var3.a;
                                                                        Intrinsics.checkNotNull(json3);
                                                                        xa2Var.a = bb2Var3;
                                                                        xa2Var.b = r110;
                                                                        xa2Var.c = r19;
                                                                        xa2Var.d = signals2;
                                                                        xa2Var.e = rr3VarA;
                                                                        xa2Var.f = rr3VarA;
                                                                        xa2Var.g = ytVar;
                                                                        xa2Var.i = z;
                                                                        xa2Var.l = 7;
                                                                        objA = ((rp0) obj3).a("AFMA_getAdDictionary", json3, xa2Var);
                                                                        if (objA != coroutine_suspended) {
                                                                            rr3Var = rr3VarA;
                                                                            r19 = r19;
                                                                            r110 = r110;
                                                                            ytVar.getClass();
                                                                            m01Var = yt.a((v01) objA);
                                                                            if (m01Var instanceof i01) {
                                                                                xs3.a((i01) m01Var, false);
                                                                            }
                                                                            CloseableKt.closeFinally(rr3VarA, null);
                                                                            r113 = r19;
                                                                            r112 = r110;
                                                                            r21 = r113;
                                                                            if (m01Var instanceof i01) {
                                                                                i01 i01Var8 = (i01) m01Var;
                                                                                xs3.a(i01Var8, false);
                                                                                CloseableKt.closeFinally(r21, null);
                                                                                return i01Var8;
                                                                            }
                                                                            Intrinsics.checkNotNull(m01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                                            ztVar = (zt) ((q01) m01Var).a();
                                                                            if (z) {
                                                                                Splitter splitter9 = f01.a;
                                                                                f01.a(new ya2(ztVar));
                                                                            }
                                                                            if (z) {
                                                                                illegalStateException = new IllegalStateException("CSRB A/B divergence: " + ztVar.g);
                                                                                ((as3) bb2Var3.m).a("CSRB A/B divergence", (Throwable) illegalStateException);
                                                                                if (bb2Var3.k.K()) {
                                                                                    throw illegalStateException;
                                                                                }
                                                                            }
                                                                            pair = new p005kotlin.Pair(signals2, ztVar);
                                                                            if (pair instanceof i01) {
                                                                                xs3.a((i01) pair, false);
                                                                            }
                                                                            CloseableKt.closeFinally(r21, null);
                                                                            Signals signals8 = (Signals) pair.component1();
                                                                            zt ztVar7 = (zt) pair.component2();
                                                                            ka2 ka2Var6 = bb2Var3.b;
                                                                            xa2Var.a = bb2Var3;
                                                                            xa2Var.b = null;
                                                                            xa2Var.c = null;
                                                                            xa2Var.d = null;
                                                                            xa2Var.e = null;
                                                                            xa2Var.f = null;
                                                                            xa2Var.g = null;
                                                                            xa2Var.l = 8;
                                                                            objA = ka2Var6.a(signals8, ztVar7, xa2Var);
                                                                            if (objA != coroutine_suspended) {
                                                                                bb2Var4 = bb2Var3;
                                                                                v01Var2 = (v01) objA;
                                                                                if (v01Var2 instanceof i01) {
                                                                                    return (i01) v01Var2;
                                                                                }
                                                                                Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                                                ac3Var = (ac3) ((q01) v01Var2).a();
                                                                                kVar = bb2Var4.g;
                                                                                xa2Var.a = bb2Var4;
                                                                                xa2Var.b = ac3Var;
                                                                                xa2Var.l = 9;
                                                                                if (kVar.a(ac3Var, xa2Var) != coroutine_suspended) {
                                                                                    hs3.a().g().b.b = ac3Var.b.h;
                                                                                    boolean z8 = !ac3Var.a.isEmpty();
                                                                                    bb2Var4.r = z8;
                                                                                    BuildersKt__Builders_commonKt.launch$default(bb2Var4.p, null, null, new ab2(ac3Var, bb2Var4, z8, null), 3, null);
                                                                                    bb2Var4.q = true;
                                                                                    ec3Var = new ec3(new wb3(bb2Var4.d), ac3Var);
                                                                                    ej1Var = bb2Var4.f;
                                                                                    xa2Var.a = ec3Var;
                                                                                    xa2Var.b = null;
                                                                                    xa2Var.l = 10;
                                                                                    if (ej1Var.a(ec3Var, xa2Var) != coroutine_suspended) {
                                                                                        ec3Var2 = ec3Var;
                                                                                        return new q01(ec3Var2);
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                } catch (Throwable th7) {
                                                    th = th7;
                                                    r2 = A;
                                                    r5 = r12;
                                                    A = r2;
                                                    r12 = r5;
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
                                            }
                                        } else if (Duration.m4372equalsimpl0(jM4458getZEROUwyO8pc, Duration.INSTANCE.m4458getZEROUwyO8pc())) {
                                            b53 b53Var3 = bb2Var5.j;
                                            String adUnitId4 = bb2Var5.d.getAdUnitId();
                                            j53 j53Var3 = bb2Var5.e;
                                            xa2Var.a = bb2Var5;
                                            xa2Var.b = r12;
                                            xa2Var.c = A;
                                            xa2Var.l = 3;
                                            objA = b53Var3.b(j53Var3, adUnitId4, xa2Var);
                                            if (objA != coroutine_suspended) {
                                                r11 = r12;
                                                r9 = A;
                                                rawValue = ((Duration) objA).getRawValue();
                                                r8 = r9;
                                                r10 = r11;
                                                if (Duration.m4366compareToLRDsOJo(rawValue, Duration.INSTANCE.m4458getZEROUwyO8pc()) > 0) {
                                                    xa2Var.a = bb2Var5;
                                                    xa2Var.b = r10;
                                                    xa2Var.c = r8;
                                                    xa2Var.l = 4;
                                                    if (DelayKt.m4512delayVtjQ1oo(rawValue, xa2Var) != coroutine_suspended) {
                                                        r2 = r8;
                                                        r5 = r10;
                                                        n01 n01Var3 = new n01("Too many recently failed requests for ad unit ID: " + bb2Var5.d.getAdUnitId() + ". You must wait a few seconds before making another ad request.", true);
                                                        xs3.a(n01Var3, false);
                                                        CloseableKt.closeFinally(r2, null);
                                                        return n01Var3;
                                                    }
                                                } else {
                                                    a aVar3 = bb2Var5.c;
                                                    xa2Var.a = bb2Var5;
                                                    xa2Var.b = r10;
                                                    xa2Var.c = r8;
                                                    xa2Var.l = 5;
                                                    objA = aVar3.a(xa2Var);
                                                    r16 = r8;
                                                    r15 = r10;
                                                    if (objA != coroutine_suspended) {
                                                        bb2Var2 = bb2Var5;
                                                        v01Var = (v01) objA;
                                                        if (v01Var instanceof i01) {
                                                            i01 i01Var9 = (i01) v01Var;
                                                            xs3.a(i01Var9, false);
                                                            CloseableKt.closeFinally(r16, null);
                                                            return i01Var9;
                                                        }
                                                        Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                        signals = (Signals) ((q01) v01Var).a();
                                                        if (bb2Var2.k.w) {
                                                            bb2Var2.l.getClass();
                                                            if (Random.INSTANCE.nextInt(1000) < bb2Var2.k.x * ((double) 1000)) {
                                                                z = true;
                                                            } else {
                                                                z = false;
                                                            }
                                                        } else {
                                                            z = false;
                                                        }
                                                        if (bb2Var2.k.S()) {
                                                        }
                                                        xa2Var.a = bb2Var2;
                                                        xa2Var.b = r15;
                                                        xa2Var.c = r16;
                                                        xa2Var.d = signals;
                                                        xa2Var.i = z;
                                                        xa2Var.l = 6;
                                                        objA = bb2Var2.a(signals, xa2Var);
                                                        r20 = r16;
                                                        r111 = r15;
                                                        if (objA == coroutine_suspended) {
                                                            m01Var = (v01) objA;
                                                            r18 = r20;
                                                            r17 = r111;
                                                            r19 = r18;
                                                            r110 = r17;
                                                            bb2Var3 = bb2Var2;
                                                            signals2 = signals;
                                                            if (!bb2Var3.k.S()) {
                                                                if (m01Var == null) {
                                                                    m01Var = new m01("Client side request building returned null while building URL.");
                                                                }
                                                                z2 = true;
                                                                r113 = r19;
                                                                r112 = r110;
                                                                r21 = r113;
                                                                if (m01Var instanceof i01) {
                                                                    i01 i01Var10 = (i01) m01Var;
                                                                    xs3.a(i01Var10, false);
                                                                    CloseableKt.closeFinally(r21, null);
                                                                    return i01Var10;
                                                                }
                                                                Intrinsics.checkNotNull(m01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                                ztVar = (zt) ((q01) m01Var).a();
                                                                if (z) {
                                                                    Splitter splitter10 = f01.a;
                                                                    f01.a(new ya2(ztVar));
                                                                }
                                                                if (z) {
                                                                    illegalStateException = new IllegalStateException("CSRB A/B divergence: " + ztVar.g);
                                                                    ((as3) bb2Var3.m).a("CSRB A/B divergence", (Throwable) illegalStateException);
                                                                    if (bb2Var3.k.K()) {
                                                                        throw illegalStateException;
                                                                    }
                                                                }
                                                                pair = new p005kotlin.Pair(signals2, ztVar);
                                                                if (pair instanceof i01) {
                                                                    xs3.a((i01) pair, false);
                                                                }
                                                                CloseableKt.closeFinally(r21, null);
                                                                Signals signals9 = (Signals) pair.component1();
                                                                zt ztVar8 = (zt) pair.component2();
                                                                ka2 ka2Var7 = bb2Var3.b;
                                                                xa2Var.a = bb2Var3;
                                                                xa2Var.b = null;
                                                                xa2Var.c = null;
                                                                xa2Var.d = null;
                                                                xa2Var.e = null;
                                                                xa2Var.f = null;
                                                                xa2Var.g = null;
                                                                xa2Var.l = 8;
                                                                objA = ka2Var7.a(signals9, ztVar8, xa2Var);
                                                                if (objA != coroutine_suspended) {
                                                                    bb2Var4 = bb2Var3;
                                                                    v01Var2 = (v01) objA;
                                                                    if (v01Var2 instanceof i01) {
                                                                        return (i01) v01Var2;
                                                                    }
                                                                    Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                                    ac3Var = (ac3) ((q01) v01Var2).a();
                                                                    kVar = bb2Var4.g;
                                                                    xa2Var.a = bb2Var4;
                                                                    xa2Var.b = ac3Var;
                                                                    xa2Var.l = 9;
                                                                    if (kVar.a(ac3Var, xa2Var) != coroutine_suspended) {
                                                                        hs3.a().g().b.b = ac3Var.b.h;
                                                                        boolean z9 = !ac3Var.a.isEmpty();
                                                                        bb2Var4.r = z9;
                                                                        BuildersKt__Builders_commonKt.launch$default(bb2Var4.p, null, null, new ab2(ac3Var, bb2Var4, z9, null), 3, null);
                                                                        bb2Var4.q = true;
                                                                        ec3Var = new ec3(new wb3(bb2Var4.d), ac3Var);
                                                                        ej1Var = bb2Var4.f;
                                                                        xa2Var.a = ec3Var;
                                                                        xa2Var.b = null;
                                                                        xa2Var.l = 10;
                                                                        if (ej1Var.a(ec3Var, xa2Var) != coroutine_suspended) {
                                                                            ec3Var2 = ec3Var;
                                                                            return new q01(ec3Var2);
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                rr3VarA = hs3.a(s11.CUI_NAME_ADREQUEST_BUILDURL, CollectionsKt.emptyList(), true);
                                                                String json4 = bb2Var3.n.toJson(signals2);
                                                                Splitter splitter11 = f01.a;
                                                                f01.a(new za2(json4));
                                                                ytVar = zt.j;
                                                                Object obj4 = bb2Var3.a;
                                                                Intrinsics.checkNotNull(json4);
                                                                xa2Var.a = bb2Var3;
                                                                xa2Var.b = r110;
                                                                xa2Var.c = r19;
                                                                xa2Var.d = signals2;
                                                                xa2Var.e = rr3VarA;
                                                                xa2Var.f = rr3VarA;
                                                                xa2Var.g = ytVar;
                                                                xa2Var.i = z;
                                                                xa2Var.l = 7;
                                                                objA = ((rp0) obj4).a("AFMA_getAdDictionary", json4, xa2Var);
                                                                if (objA != coroutine_suspended) {
                                                                    rr3Var = rr3VarA;
                                                                    r19 = r19;
                                                                    r110 = r110;
                                                                    ytVar.getClass();
                                                                    m01Var = yt.a((v01) objA);
                                                                    if (m01Var instanceof i01) {
                                                                        xs3.a((i01) m01Var, false);
                                                                    }
                                                                    CloseableKt.closeFinally(rr3VarA, null);
                                                                    r113 = r19;
                                                                    r112 = r110;
                                                                    r21 = r113;
                                                                    if (m01Var instanceof i01) {
                                                                        i01 i01Var11 = (i01) m01Var;
                                                                        xs3.a(i01Var11, false);
                                                                        CloseableKt.closeFinally(r21, null);
                                                                        return i01Var11;
                                                                    }
                                                                    Intrinsics.checkNotNull(m01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                                    ztVar = (zt) ((q01) m01Var).a();
                                                                    if (z) {
                                                                        Splitter splitter12 = f01.a;
                                                                        f01.a(new ya2(ztVar));
                                                                    }
                                                                    if (z) {
                                                                        illegalStateException = new IllegalStateException("CSRB A/B divergence: " + ztVar.g);
                                                                        ((as3) bb2Var3.m).a("CSRB A/B divergence", (Throwable) illegalStateException);
                                                                        if (bb2Var3.k.K()) {
                                                                            throw illegalStateException;
                                                                        }
                                                                    }
                                                                    pair = new p005kotlin.Pair(signals2, ztVar);
                                                                    if (pair instanceof i01) {
                                                                        xs3.a((i01) pair, false);
                                                                    }
                                                                    CloseableKt.closeFinally(r21, null);
                                                                    Signals signals10 = (Signals) pair.component1();
                                                                    zt ztVar9 = (zt) pair.component2();
                                                                    ka2 ka2Var8 = bb2Var3.b;
                                                                    xa2Var.a = bb2Var3;
                                                                    xa2Var.b = null;
                                                                    xa2Var.c = null;
                                                                    xa2Var.d = null;
                                                                    xa2Var.e = null;
                                                                    xa2Var.f = null;
                                                                    xa2Var.g = null;
                                                                    xa2Var.l = 8;
                                                                    objA = ka2Var8.a(signals10, ztVar9, xa2Var);
                                                                    if (objA != coroutine_suspended) {
                                                                        bb2Var4 = bb2Var3;
                                                                        v01Var2 = (v01) objA;
                                                                        if (v01Var2 instanceof i01) {
                                                                            return (i01) v01Var2;
                                                                        }
                                                                        Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                                        ac3Var = (ac3) ((q01) v01Var2).a();
                                                                        kVar = bb2Var4.g;
                                                                        xa2Var.a = bb2Var4;
                                                                        xa2Var.b = ac3Var;
                                                                        xa2Var.l = 9;
                                                                        if (kVar.a(ac3Var, xa2Var) != coroutine_suspended) {
                                                                            hs3.a().g().b.b = ac3Var.b.h;
                                                                            boolean z10 = !ac3Var.a.isEmpty();
                                                                            bb2Var4.r = z10;
                                                                            BuildersKt__Builders_commonKt.launch$default(bb2Var4.p, null, null, new ab2(ac3Var, bb2Var4, z10, null), 3, null);
                                                                            bb2Var4.q = true;
                                                                            ec3Var = new ec3(new wb3(bb2Var4.d), ac3Var);
                                                                            ej1Var = bb2Var4.f;
                                                                            xa2Var.a = ec3Var;
                                                                            xa2Var.b = null;
                                                                            xa2Var.l = 10;
                                                                            if (ej1Var.a(ec3Var, xa2Var) != coroutine_suspended) {
                                                                                ec3Var2 = ec3Var;
                                                                                return new q01(ec3Var2);
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        } else {
                                            long j2 = jM4458getZEROUwyO8pc;
                                            r10 = r12;
                                            rawValue = j2;
                                            r8 = A;
                                            if (Duration.m4366compareToLRDsOJo(rawValue, Duration.INSTANCE.m4458getZEROUwyO8pc()) > 0) {
                                                xa2Var.a = bb2Var5;
                                                xa2Var.b = r10;
                                                xa2Var.c = r8;
                                                xa2Var.l = 4;
                                                if (DelayKt.m4512delayVtjQ1oo(rawValue, xa2Var) != coroutine_suspended) {
                                                    r2 = r8;
                                                    r5 = r10;
                                                    n01 n01Var4 = new n01("Too many recently failed requests for ad unit ID: " + bb2Var5.d.getAdUnitId() + ". You must wait a few seconds before making another ad request.", true);
                                                    xs3.a(n01Var4, false);
                                                    CloseableKt.closeFinally(r2, null);
                                                    return n01Var4;
                                                }
                                            } else {
                                                a aVar4 = bb2Var5.c;
                                                xa2Var.a = bb2Var5;
                                                xa2Var.b = r10;
                                                xa2Var.c = r8;
                                                xa2Var.l = 5;
                                                objA = aVar4.a(xa2Var);
                                                r16 = r8;
                                                r15 = r10;
                                                if (objA != coroutine_suspended) {
                                                    bb2Var2 = bb2Var5;
                                                    v01Var = (v01) objA;
                                                    if (v01Var instanceof i01) {
                                                        i01 i01Var12 = (i01) v01Var;
                                                        xs3.a(i01Var12, false);
                                                        CloseableKt.closeFinally(r16, null);
                                                        return i01Var12;
                                                    }
                                                    Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                    signals = (Signals) ((q01) v01Var).a();
                                                    if (bb2Var2.k.w) {
                                                        bb2Var2.l.getClass();
                                                        if (Random.INSTANCE.nextInt(1000) < bb2Var2.k.x * ((double) 1000)) {
                                                            z = true;
                                                        } else {
                                                            z = false;
                                                        }
                                                    } else {
                                                        z = false;
                                                    }
                                                    if (bb2Var2.k.S()) {
                                                    }
                                                    xa2Var.a = bb2Var2;
                                                    xa2Var.b = r15;
                                                    xa2Var.c = r16;
                                                    xa2Var.d = signals;
                                                    xa2Var.i = z;
                                                    xa2Var.l = 6;
                                                    objA = bb2Var2.a(signals, xa2Var);
                                                    r20 = r16;
                                                    r111 = r15;
                                                    if (objA == coroutine_suspended) {
                                                        m01Var = (v01) objA;
                                                        r18 = r20;
                                                        r17 = r111;
                                                        r19 = r18;
                                                        r110 = r17;
                                                        bb2Var3 = bb2Var2;
                                                        signals2 = signals;
                                                        if (!bb2Var3.k.S()) {
                                                            if (m01Var == null) {
                                                                m01Var = new m01("Client side request building returned null while building URL.");
                                                            }
                                                            z2 = true;
                                                            r113 = r19;
                                                            r112 = r110;
                                                            r21 = r113;
                                                            if (m01Var instanceof i01) {
                                                                i01 i01Var13 = (i01) m01Var;
                                                                xs3.a(i01Var13, false);
                                                                CloseableKt.closeFinally(r21, null);
                                                                return i01Var13;
                                                            }
                                                            Intrinsics.checkNotNull(m01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                            ztVar = (zt) ((q01) m01Var).a();
                                                            if (z) {
                                                                Splitter splitter13 = f01.a;
                                                                f01.a(new ya2(ztVar));
                                                            }
                                                            if (z) {
                                                                illegalStateException = new IllegalStateException("CSRB A/B divergence: " + ztVar.g);
                                                                ((as3) bb2Var3.m).a("CSRB A/B divergence", (Throwable) illegalStateException);
                                                                if (bb2Var3.k.K()) {
                                                                    throw illegalStateException;
                                                                }
                                                            }
                                                            pair = new p005kotlin.Pair(signals2, ztVar);
                                                            if (pair instanceof i01) {
                                                                xs3.a((i01) pair, false);
                                                            }
                                                            CloseableKt.closeFinally(r21, null);
                                                            Signals signals11 = (Signals) pair.component1();
                                                            zt ztVar10 = (zt) pair.component2();
                                                            ka2 ka2Var9 = bb2Var3.b;
                                                            xa2Var.a = bb2Var3;
                                                            xa2Var.b = null;
                                                            xa2Var.c = null;
                                                            xa2Var.d = null;
                                                            xa2Var.e = null;
                                                            xa2Var.f = null;
                                                            xa2Var.g = null;
                                                            xa2Var.l = 8;
                                                            objA = ka2Var9.a(signals11, ztVar10, xa2Var);
                                                            if (objA != coroutine_suspended) {
                                                                bb2Var4 = bb2Var3;
                                                                v01Var2 = (v01) objA;
                                                                if (v01Var2 instanceof i01) {
                                                                    return (i01) v01Var2;
                                                                }
                                                                Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                                ac3Var = (ac3) ((q01) v01Var2).a();
                                                                kVar = bb2Var4.g;
                                                                xa2Var.a = bb2Var4;
                                                                xa2Var.b = ac3Var;
                                                                xa2Var.l = 9;
                                                                if (kVar.a(ac3Var, xa2Var) != coroutine_suspended) {
                                                                    hs3.a().g().b.b = ac3Var.b.h;
                                                                    boolean z11 = !ac3Var.a.isEmpty();
                                                                    bb2Var4.r = z11;
                                                                    BuildersKt__Builders_commonKt.launch$default(bb2Var4.p, null, null, new ab2(ac3Var, bb2Var4, z11, null), 3, null);
                                                                    bb2Var4.q = true;
                                                                    ec3Var = new ec3(new wb3(bb2Var4.d), ac3Var);
                                                                    ej1Var = bb2Var4.f;
                                                                    xa2Var.a = ec3Var;
                                                                    xa2Var.b = null;
                                                                    xa2Var.l = 10;
                                                                    if (ej1Var.a(ec3Var, xa2Var) != coroutine_suspended) {
                                                                        ec3Var2 = ec3Var;
                                                                        return new q01(ec3Var2);
                                                                    }
                                                                }
                                                            }
                                                        } else {
                                                            rr3VarA = hs3.a(s11.CUI_NAME_ADREQUEST_BUILDURL, CollectionsKt.emptyList(), true);
                                                            String json5 = bb2Var3.n.toJson(signals2);
                                                            Splitter splitter14 = f01.a;
                                                            f01.a(new za2(json5));
                                                            ytVar = zt.j;
                                                            Object obj5 = bb2Var3.a;
                                                            Intrinsics.checkNotNull(json5);
                                                            xa2Var.a = bb2Var3;
                                                            xa2Var.b = r110;
                                                            xa2Var.c = r19;
                                                            xa2Var.d = signals2;
                                                            xa2Var.e = rr3VarA;
                                                            xa2Var.f = rr3VarA;
                                                            xa2Var.g = ytVar;
                                                            xa2Var.i = z;
                                                            xa2Var.l = 7;
                                                            objA = ((rp0) obj5).a("AFMA_getAdDictionary", json5, xa2Var);
                                                            if (objA != coroutine_suspended) {
                                                                rr3Var = rr3VarA;
                                                                r19 = r19;
                                                                r110 = r110;
                                                                ytVar.getClass();
                                                                m01Var = yt.a((v01) objA);
                                                                if (m01Var instanceof i01) {
                                                                    xs3.a((i01) m01Var, false);
                                                                }
                                                                CloseableKt.closeFinally(rr3VarA, null);
                                                                r113 = r19;
                                                                r112 = r110;
                                                                r21 = r113;
                                                                if (m01Var instanceof i01) {
                                                                    i01 i01Var14 = (i01) m01Var;
                                                                    xs3.a(i01Var14, false);
                                                                    CloseableKt.closeFinally(r21, null);
                                                                    return i01Var14;
                                                                }
                                                                Intrinsics.checkNotNull(m01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                                ztVar = (zt) ((q01) m01Var).a();
                                                                if (z) {
                                                                    Splitter splitter15 = f01.a;
                                                                    f01.a(new ya2(ztVar));
                                                                }
                                                                if (z) {
                                                                    illegalStateException = new IllegalStateException("CSRB A/B divergence: " + ztVar.g);
                                                                    ((as3) bb2Var3.m).a("CSRB A/B divergence", (Throwable) illegalStateException);
                                                                    if (bb2Var3.k.K()) {
                                                                        throw illegalStateException;
                                                                    }
                                                                }
                                                                pair = new p005kotlin.Pair(signals2, ztVar);
                                                                if (pair instanceof i01) {
                                                                    xs3.a((i01) pair, false);
                                                                }
                                                                CloseableKt.closeFinally(r21, null);
                                                                Signals signals12 = (Signals) pair.component1();
                                                                zt ztVar11 = (zt) pair.component2();
                                                                ka2 ka2Var10 = bb2Var3.b;
                                                                xa2Var.a = bb2Var3;
                                                                xa2Var.b = null;
                                                                xa2Var.c = null;
                                                                xa2Var.d = null;
                                                                xa2Var.e = null;
                                                                xa2Var.f = null;
                                                                xa2Var.g = null;
                                                                xa2Var.l = 8;
                                                                objA = ka2Var10.a(signals12, ztVar11, xa2Var);
                                                                if (objA != coroutine_suspended) {
                                                                    bb2Var4 = bb2Var3;
                                                                    v01Var2 = (v01) objA;
                                                                    if (v01Var2 instanceof i01) {
                                                                        return (i01) v01Var2;
                                                                    }
                                                                    Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                                    ac3Var = (ac3) ((q01) v01Var2).a();
                                                                    kVar = bb2Var4.g;
                                                                    xa2Var.a = bb2Var4;
                                                                    xa2Var.b = ac3Var;
                                                                    xa2Var.l = 9;
                                                                    if (kVar.a(ac3Var, xa2Var) != coroutine_suspended) {
                                                                        hs3.a().g().b.b = ac3Var.b.h;
                                                                        boolean z12 = !ac3Var.a.isEmpty();
                                                                        bb2Var4.r = z12;
                                                                        BuildersKt__Builders_commonKt.launch$default(bb2Var4.p, null, null, new ab2(ac3Var, bb2Var4, z12, null), 3, null);
                                                                        bb2Var4.q = true;
                                                                        ec3Var = new ec3(new wb3(bb2Var4.d), ac3Var);
                                                                        ej1Var = bb2Var4.f;
                                                                        xa2Var.a = ec3Var;
                                                                        xa2Var.b = null;
                                                                        xa2Var.l = 10;
                                                                        if (ej1Var.a(ec3Var, xa2Var) != coroutine_suspended) {
                                                                            ec3Var2 = ec3Var;
                                                                            return new q01(ec3Var2);
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    r12 = A;
                                    A = A;
                                    if (Duration.m4372equalsimpl0(jM4458getZEROUwyO8pc, Duration.INSTANCE.m4458getZEROUwyO8pc())) {
                                        b53 b53Var4 = bb2Var5.j;
                                        String adUnitId5 = bb2Var5.d.getAdUnitId();
                                        j53 j53Var4 = bb2Var5.e;
                                        xa2Var.a = bb2Var5;
                                        xa2Var.b = r12;
                                        xa2Var.c = A;
                                        xa2Var.l = 3;
                                        objA = b53Var4.b(j53Var4, adUnitId5, xa2Var);
                                        if (objA != coroutine_suspended) {
                                            r11 = r12;
                                            r9 = A;
                                            rawValue = ((Duration) objA).getRawValue();
                                            r8 = r9;
                                            r10 = r11;
                                            if (Duration.m4366compareToLRDsOJo(rawValue, Duration.INSTANCE.m4458getZEROUwyO8pc()) > 0) {
                                                xa2Var.a = bb2Var5;
                                                xa2Var.b = r10;
                                                xa2Var.c = r8;
                                                xa2Var.l = 4;
                                                if (DelayKt.m4512delayVtjQ1oo(rawValue, xa2Var) != coroutine_suspended) {
                                                    r2 = r8;
                                                    r5 = r10;
                                                    n01 n01Var5 = new n01("Too many recently failed requests for ad unit ID: " + bb2Var5.d.getAdUnitId() + ". You must wait a few seconds before making another ad request.", true);
                                                    xs3.a(n01Var5, false);
                                                    CloseableKt.closeFinally(r2, null);
                                                    return n01Var5;
                                                }
                                            } else {
                                                a aVar5 = bb2Var5.c;
                                                xa2Var.a = bb2Var5;
                                                xa2Var.b = r10;
                                                xa2Var.c = r8;
                                                xa2Var.l = 5;
                                                objA = aVar5.a(xa2Var);
                                                r16 = r8;
                                                r15 = r10;
                                                if (objA != coroutine_suspended) {
                                                    bb2Var2 = bb2Var5;
                                                    v01Var = (v01) objA;
                                                    if (v01Var instanceof i01) {
                                                        i01 i01Var15 = (i01) v01Var;
                                                        xs3.a(i01Var15, false);
                                                        CloseableKt.closeFinally(r16, null);
                                                        return i01Var15;
                                                    }
                                                    Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                    signals = (Signals) ((q01) v01Var).a();
                                                    if (bb2Var2.k.w) {
                                                        bb2Var2.l.getClass();
                                                        if (Random.INSTANCE.nextInt(1000) < bb2Var2.k.x * ((double) 1000)) {
                                                            z = true;
                                                        } else {
                                                            z = false;
                                                        }
                                                    } else {
                                                        z = false;
                                                    }
                                                    if (bb2Var2.k.S()) {
                                                    }
                                                    xa2Var.a = bb2Var2;
                                                    xa2Var.b = r15;
                                                    xa2Var.c = r16;
                                                    xa2Var.d = signals;
                                                    xa2Var.i = z;
                                                    xa2Var.l = 6;
                                                    objA = bb2Var2.a(signals, xa2Var);
                                                    r20 = r16;
                                                    r111 = r15;
                                                    if (objA == coroutine_suspended) {
                                                        m01Var = (v01) objA;
                                                        r18 = r20;
                                                        r17 = r111;
                                                        r19 = r18;
                                                        r110 = r17;
                                                        bb2Var3 = bb2Var2;
                                                        signals2 = signals;
                                                        if (!bb2Var3.k.S()) {
                                                            if (m01Var == null) {
                                                                m01Var = new m01("Client side request building returned null while building URL.");
                                                            }
                                                            z2 = true;
                                                            r113 = r19;
                                                            r112 = r110;
                                                            r21 = r113;
                                                            if (m01Var instanceof i01) {
                                                                i01 i01Var16 = (i01) m01Var;
                                                                xs3.a(i01Var16, false);
                                                                CloseableKt.closeFinally(r21, null);
                                                                return i01Var16;
                                                            }
                                                            Intrinsics.checkNotNull(m01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                            ztVar = (zt) ((q01) m01Var).a();
                                                            if (z) {
                                                                Splitter splitter16 = f01.a;
                                                                f01.a(new ya2(ztVar));
                                                            }
                                                            if (z) {
                                                                illegalStateException = new IllegalStateException("CSRB A/B divergence: " + ztVar.g);
                                                                ((as3) bb2Var3.m).a("CSRB A/B divergence", (Throwable) illegalStateException);
                                                                if (bb2Var3.k.K()) {
                                                                    throw illegalStateException;
                                                                }
                                                            }
                                                            pair = new p005kotlin.Pair(signals2, ztVar);
                                                            if (pair instanceof i01) {
                                                                xs3.a((i01) pair, false);
                                                            }
                                                            CloseableKt.closeFinally(r21, null);
                                                            Signals signals13 = (Signals) pair.component1();
                                                            zt ztVar12 = (zt) pair.component2();
                                                            ka2 ka2Var11 = bb2Var3.b;
                                                            xa2Var.a = bb2Var3;
                                                            xa2Var.b = null;
                                                            xa2Var.c = null;
                                                            xa2Var.d = null;
                                                            xa2Var.e = null;
                                                            xa2Var.f = null;
                                                            xa2Var.g = null;
                                                            xa2Var.l = 8;
                                                            objA = ka2Var11.a(signals13, ztVar12, xa2Var);
                                                            if (objA != coroutine_suspended) {
                                                                bb2Var4 = bb2Var3;
                                                                v01Var2 = (v01) objA;
                                                                if (v01Var2 instanceof i01) {
                                                                    return (i01) v01Var2;
                                                                }
                                                                Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                                ac3Var = (ac3) ((q01) v01Var2).a();
                                                                kVar = bb2Var4.g;
                                                                xa2Var.a = bb2Var4;
                                                                xa2Var.b = ac3Var;
                                                                xa2Var.l = 9;
                                                                if (kVar.a(ac3Var, xa2Var) != coroutine_suspended) {
                                                                    hs3.a().g().b.b = ac3Var.b.h;
                                                                    boolean z13 = !ac3Var.a.isEmpty();
                                                                    bb2Var4.r = z13;
                                                                    BuildersKt__Builders_commonKt.launch$default(bb2Var4.p, null, null, new ab2(ac3Var, bb2Var4, z13, null), 3, null);
                                                                    bb2Var4.q = true;
                                                                    ec3Var = new ec3(new wb3(bb2Var4.d), ac3Var);
                                                                    ej1Var = bb2Var4.f;
                                                                    xa2Var.a = ec3Var;
                                                                    xa2Var.b = null;
                                                                    xa2Var.l = 10;
                                                                    if (ej1Var.a(ec3Var, xa2Var) != coroutine_suspended) {
                                                                        ec3Var2 = ec3Var;
                                                                        return new q01(ec3Var2);
                                                                    }
                                                                }
                                                            }
                                                        } else {
                                                            rr3VarA = hs3.a(s11.CUI_NAME_ADREQUEST_BUILDURL, CollectionsKt.emptyList(), true);
                                                            String json6 = bb2Var3.n.toJson(signals2);
                                                            Splitter splitter17 = f01.a;
                                                            f01.a(new za2(json6));
                                                            ytVar = zt.j;
                                                            Object obj6 = bb2Var3.a;
                                                            Intrinsics.checkNotNull(json6);
                                                            xa2Var.a = bb2Var3;
                                                            xa2Var.b = r110;
                                                            xa2Var.c = r19;
                                                            xa2Var.d = signals2;
                                                            xa2Var.e = rr3VarA;
                                                            xa2Var.f = rr3VarA;
                                                            xa2Var.g = ytVar;
                                                            xa2Var.i = z;
                                                            xa2Var.l = 7;
                                                            objA = ((rp0) obj6).a("AFMA_getAdDictionary", json6, xa2Var);
                                                            if (objA != coroutine_suspended) {
                                                                rr3Var = rr3VarA;
                                                                r19 = r19;
                                                                r110 = r110;
                                                                ytVar.getClass();
                                                                m01Var = yt.a((v01) objA);
                                                                if (m01Var instanceof i01) {
                                                                    xs3.a((i01) m01Var, false);
                                                                }
                                                                CloseableKt.closeFinally(rr3VarA, null);
                                                                r113 = r19;
                                                                r112 = r110;
                                                                r21 = r113;
                                                                if (m01Var instanceof i01) {
                                                                    i01 i01Var17 = (i01) m01Var;
                                                                    xs3.a(i01Var17, false);
                                                                    CloseableKt.closeFinally(r21, null);
                                                                    return i01Var17;
                                                                }
                                                                Intrinsics.checkNotNull(m01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                                ztVar = (zt) ((q01) m01Var).a();
                                                                if (z) {
                                                                    Splitter splitter18 = f01.a;
                                                                    f01.a(new ya2(ztVar));
                                                                }
                                                                if (z) {
                                                                    illegalStateException = new IllegalStateException("CSRB A/B divergence: " + ztVar.g);
                                                                    ((as3) bb2Var3.m).a("CSRB A/B divergence", (Throwable) illegalStateException);
                                                                    if (bb2Var3.k.K()) {
                                                                        throw illegalStateException;
                                                                    }
                                                                }
                                                                pair = new p005kotlin.Pair(signals2, ztVar);
                                                                if (pair instanceof i01) {
                                                                    xs3.a((i01) pair, false);
                                                                }
                                                                CloseableKt.closeFinally(r21, null);
                                                                Signals signals14 = (Signals) pair.component1();
                                                                zt ztVar13 = (zt) pair.component2();
                                                                ka2 ka2Var12 = bb2Var3.b;
                                                                xa2Var.a = bb2Var3;
                                                                xa2Var.b = null;
                                                                xa2Var.c = null;
                                                                xa2Var.d = null;
                                                                xa2Var.e = null;
                                                                xa2Var.f = null;
                                                                xa2Var.g = null;
                                                                xa2Var.l = 8;
                                                                objA = ka2Var12.a(signals14, ztVar13, xa2Var);
                                                                if (objA != coroutine_suspended) {
                                                                    bb2Var4 = bb2Var3;
                                                                    v01Var2 = (v01) objA;
                                                                    if (v01Var2 instanceof i01) {
                                                                        return (i01) v01Var2;
                                                                    }
                                                                    Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                                    ac3Var = (ac3) ((q01) v01Var2).a();
                                                                    kVar = bb2Var4.g;
                                                                    xa2Var.a = bb2Var4;
                                                                    xa2Var.b = ac3Var;
                                                                    xa2Var.l = 9;
                                                                    if (kVar.a(ac3Var, xa2Var) != coroutine_suspended) {
                                                                        hs3.a().g().b.b = ac3Var.b.h;
                                                                        boolean z14 = !ac3Var.a.isEmpty();
                                                                        bb2Var4.r = z14;
                                                                        BuildersKt__Builders_commonKt.launch$default(bb2Var4.p, null, null, new ab2(ac3Var, bb2Var4, z14, null), 3, null);
                                                                        bb2Var4.q = true;
                                                                        ec3Var = new ec3(new wb3(bb2Var4.d), ac3Var);
                                                                        ej1Var = bb2Var4.f;
                                                                        xa2Var.a = ec3Var;
                                                                        xa2Var.b = null;
                                                                        xa2Var.l = 10;
                                                                        if (ej1Var.a(ec3Var, xa2Var) != coroutine_suspended) {
                                                                            ec3Var2 = ec3Var;
                                                                            return new q01(ec3Var2);
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    } else {
                                        long j3 = jM4458getZEROUwyO8pc;
                                        r10 = r12;
                                        rawValue = j3;
                                        r8 = A;
                                        if (Duration.m4366compareToLRDsOJo(rawValue, Duration.INSTANCE.m4458getZEROUwyO8pc()) > 0) {
                                            xa2Var.a = bb2Var5;
                                            xa2Var.b = r10;
                                            xa2Var.c = r8;
                                            xa2Var.l = 4;
                                            if (DelayKt.m4512delayVtjQ1oo(rawValue, xa2Var) != coroutine_suspended) {
                                                r2 = r8;
                                                r5 = r10;
                                                n01 n01Var6 = new n01("Too many recently failed requests for ad unit ID: " + bb2Var5.d.getAdUnitId() + ". You must wait a few seconds before making another ad request.", true);
                                                xs3.a(n01Var6, false);
                                                CloseableKt.closeFinally(r2, null);
                                                return n01Var6;
                                            }
                                        } else {
                                            a aVar6 = bb2Var5.c;
                                            xa2Var.a = bb2Var5;
                                            xa2Var.b = r10;
                                            xa2Var.c = r8;
                                            xa2Var.l = 5;
                                            objA = aVar6.a(xa2Var);
                                            r16 = r8;
                                            r15 = r10;
                                            if (objA != coroutine_suspended) {
                                                bb2Var2 = bb2Var5;
                                                v01Var = (v01) objA;
                                                if (v01Var instanceof i01) {
                                                    i01 i01Var18 = (i01) v01Var;
                                                    xs3.a(i01Var18, false);
                                                    CloseableKt.closeFinally(r16, null);
                                                    return i01Var18;
                                                }
                                                Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                signals = (Signals) ((q01) v01Var).a();
                                                if (bb2Var2.k.w) {
                                                    bb2Var2.l.getClass();
                                                    if (Random.INSTANCE.nextInt(1000) < bb2Var2.k.x * ((double) 1000)) {
                                                        z = true;
                                                    } else {
                                                        z = false;
                                                    }
                                                } else {
                                                    z = false;
                                                }
                                                if (bb2Var2.k.S()) {
                                                }
                                                xa2Var.a = bb2Var2;
                                                xa2Var.b = r15;
                                                xa2Var.c = r16;
                                                xa2Var.d = signals;
                                                xa2Var.i = z;
                                                xa2Var.l = 6;
                                                objA = bb2Var2.a(signals, xa2Var);
                                                r20 = r16;
                                                r111 = r15;
                                                if (objA == coroutine_suspended) {
                                                    m01Var = (v01) objA;
                                                    r18 = r20;
                                                    r17 = r111;
                                                    r19 = r18;
                                                    r110 = r17;
                                                    bb2Var3 = bb2Var2;
                                                    signals2 = signals;
                                                    if (!bb2Var3.k.S()) {
                                                        if (m01Var == null) {
                                                            m01Var = new m01("Client side request building returned null while building URL.");
                                                        }
                                                        z2 = true;
                                                        r113 = r19;
                                                        r112 = r110;
                                                        r21 = r113;
                                                        if (m01Var instanceof i01) {
                                                            i01 i01Var19 = (i01) m01Var;
                                                            xs3.a(i01Var19, false);
                                                            CloseableKt.closeFinally(r21, null);
                                                            return i01Var19;
                                                        }
                                                        Intrinsics.checkNotNull(m01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                        ztVar = (zt) ((q01) m01Var).a();
                                                        if (z) {
                                                            Splitter splitter19 = f01.a;
                                                            f01.a(new ya2(ztVar));
                                                        }
                                                        if (z) {
                                                            illegalStateException = new IllegalStateException("CSRB A/B divergence: " + ztVar.g);
                                                            ((as3) bb2Var3.m).a("CSRB A/B divergence", (Throwable) illegalStateException);
                                                            if (bb2Var3.k.K()) {
                                                                throw illegalStateException;
                                                            }
                                                        }
                                                        pair = new p005kotlin.Pair(signals2, ztVar);
                                                        if (pair instanceof i01) {
                                                            xs3.a((i01) pair, false);
                                                        }
                                                        CloseableKt.closeFinally(r21, null);
                                                        Signals signals15 = (Signals) pair.component1();
                                                        zt ztVar14 = (zt) pair.component2();
                                                        ka2 ka2Var13 = bb2Var3.b;
                                                        xa2Var.a = bb2Var3;
                                                        xa2Var.b = null;
                                                        xa2Var.c = null;
                                                        xa2Var.d = null;
                                                        xa2Var.e = null;
                                                        xa2Var.f = null;
                                                        xa2Var.g = null;
                                                        xa2Var.l = 8;
                                                        objA = ka2Var13.a(signals15, ztVar14, xa2Var);
                                                        if (objA != coroutine_suspended) {
                                                            bb2Var4 = bb2Var3;
                                                            v01Var2 = (v01) objA;
                                                            if (v01Var2 instanceof i01) {
                                                                return (i01) v01Var2;
                                                            }
                                                            Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                            ac3Var = (ac3) ((q01) v01Var2).a();
                                                            kVar = bb2Var4.g;
                                                            xa2Var.a = bb2Var4;
                                                            xa2Var.b = ac3Var;
                                                            xa2Var.l = 9;
                                                            if (kVar.a(ac3Var, xa2Var) != coroutine_suspended) {
                                                                hs3.a().g().b.b = ac3Var.b.h;
                                                                boolean z15 = !ac3Var.a.isEmpty();
                                                                bb2Var4.r = z15;
                                                                BuildersKt__Builders_commonKt.launch$default(bb2Var4.p, null, null, new ab2(ac3Var, bb2Var4, z15, null), 3, null);
                                                                bb2Var4.q = true;
                                                                ec3Var = new ec3(new wb3(bb2Var4.d), ac3Var);
                                                                ej1Var = bb2Var4.f;
                                                                xa2Var.a = ec3Var;
                                                                xa2Var.b = null;
                                                                xa2Var.l = 10;
                                                                if (ej1Var.a(ec3Var, xa2Var) != coroutine_suspended) {
                                                                    ec3Var2 = ec3Var;
                                                                    return new q01(ec3Var2);
                                                                }
                                                            }
                                                        }
                                                    } else {
                                                        rr3VarA = hs3.a(s11.CUI_NAME_ADREQUEST_BUILDURL, CollectionsKt.emptyList(), true);
                                                        String json7 = bb2Var3.n.toJson(signals2);
                                                        Splitter splitter110 = f01.a;
                                                        f01.a(new za2(json7));
                                                        ytVar = zt.j;
                                                        Object obj7 = bb2Var3.a;
                                                        Intrinsics.checkNotNull(json7);
                                                        xa2Var.a = bb2Var3;
                                                        xa2Var.b = r110;
                                                        xa2Var.c = r19;
                                                        xa2Var.d = signals2;
                                                        xa2Var.e = rr3VarA;
                                                        xa2Var.f = rr3VarA;
                                                        xa2Var.g = ytVar;
                                                        xa2Var.i = z;
                                                        xa2Var.l = 7;
                                                        objA = ((rp0) obj7).a("AFMA_getAdDictionary", json7, xa2Var);
                                                        if (objA != coroutine_suspended) {
                                                            rr3Var = rr3VarA;
                                                            r19 = r19;
                                                            r110 = r110;
                                                            ytVar.getClass();
                                                            m01Var = yt.a((v01) objA);
                                                            if (m01Var instanceof i01) {
                                                                xs3.a((i01) m01Var, false);
                                                            }
                                                            CloseableKt.closeFinally(rr3VarA, null);
                                                            r113 = r19;
                                                            r112 = r110;
                                                            r21 = r113;
                                                            if (m01Var instanceof i01) {
                                                                i01 i01Var110 = (i01) m01Var;
                                                                xs3.a(i01Var110, false);
                                                                CloseableKt.closeFinally(r21, null);
                                                                return i01Var110;
                                                            }
                                                            Intrinsics.checkNotNull(m01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                            ztVar = (zt) ((q01) m01Var).a();
                                                            if (z) {
                                                                Splitter splitter111 = f01.a;
                                                                f01.a(new ya2(ztVar));
                                                            }
                                                            if (z) {
                                                                illegalStateException = new IllegalStateException("CSRB A/B divergence: " + ztVar.g);
                                                                ((as3) bb2Var3.m).a("CSRB A/B divergence", (Throwable) illegalStateException);
                                                                if (bb2Var3.k.K()) {
                                                                    throw illegalStateException;
                                                                }
                                                            }
                                                            pair = new p005kotlin.Pair(signals2, ztVar);
                                                            if (pair instanceof i01) {
                                                                xs3.a((i01) pair, false);
                                                            }
                                                            CloseableKt.closeFinally(r21, null);
                                                            Signals signals16 = (Signals) pair.component1();
                                                            zt ztVar15 = (zt) pair.component2();
                                                            ka2 ka2Var14 = bb2Var3.b;
                                                            xa2Var.a = bb2Var3;
                                                            xa2Var.b = null;
                                                            xa2Var.c = null;
                                                            xa2Var.d = null;
                                                            xa2Var.e = null;
                                                            xa2Var.f = null;
                                                            xa2Var.g = null;
                                                            xa2Var.l = 8;
                                                            objA = ka2Var14.a(signals16, ztVar15, xa2Var);
                                                            if (objA != coroutine_suspended) {
                                                                bb2Var4 = bb2Var3;
                                                                v01Var2 = (v01) objA;
                                                                if (v01Var2 instanceof i01) {
                                                                    return (i01) v01Var2;
                                                                }
                                                                Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                                ac3Var = (ac3) ((q01) v01Var2).a();
                                                                kVar = bb2Var4.g;
                                                                xa2Var.a = bb2Var4;
                                                                xa2Var.b = ac3Var;
                                                                xa2Var.l = 9;
                                                                if (kVar.a(ac3Var, xa2Var) != coroutine_suspended) {
                                                                    hs3.a().g().b.b = ac3Var.b.h;
                                                                    boolean z16 = !ac3Var.a.isEmpty();
                                                                    bb2Var4.r = z16;
                                                                    BuildersKt__Builders_commonKt.launch$default(bb2Var4.p, null, null, new ab2(ac3Var, bb2Var4, z16, null), 3, null);
                                                                    bb2Var4.q = true;
                                                                    ec3Var = new ec3(new wb3(bb2Var4.d), ac3Var);
                                                                    ej1Var = bb2Var4.f;
                                                                    xa2Var.a = ec3Var;
                                                                    xa2Var.b = null;
                                                                    xa2Var.l = 10;
                                                                    if (ej1Var.a(ec3Var, xa2Var) != coroutine_suspended) {
                                                                        ec3Var2 = ec3Var;
                                                                        return new q01(ec3Var2);
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                return coroutine_suspended;
                            } catch (Throwable th8) {
                                th = th8;
                                r12 = A;
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
                        case 1:
                            jM4458getZEROUwyO8pc = xa2Var.h;
                            Closeable closeable = xa2Var.c;
                            rr3 rr3Var2 = (rr3) xa2Var.b;
                            bb2Var5 = (bb2) xa2Var.a;
                            p005kotlin.ResultKt.throwOnFailure(objA);
                            r6 = closeable;
                            r13 = rr3Var2;
                            A = r6;
                            r12 = r13;
                            if (!((Boolean) objA).booleanValue()) {
                                u43 u43Var2 = bb2Var5.i;
                                String adUnitId6 = bb2Var5.d.getAdUnitId();
                                xa2Var.a = bb2Var5;
                                xa2Var.b = r13;
                                xa2Var.c = r6;
                                xa2Var.h = jM4458getZEROUwyO8pc;
                                xa2Var.l = 2;
                                objA = u43Var2.a(adUnitId6, xa2Var);
                                if (objA == coroutine_suspended) {
                                    r7 = r6;
                                    r14 = r13;
                                } else {
                                    r7 = r6;
                                    r14 = r13;
                                    A = r7;
                                    r12 = r14;
                                    if (((Boolean) objA).booleanValue()) {
                                        jM4458getZEROUwyO8pc = bb2Var5.k.y0();
                                        A = r7;
                                        r12 = r14;
                                    }
                                    if (Duration.m4372equalsimpl0(jM4458getZEROUwyO8pc, Duration.INSTANCE.m4458getZEROUwyO8pc())) {
                                        b53 b53Var5 = bb2Var5.j;
                                        String adUnitId7 = bb2Var5.d.getAdUnitId();
                                        j53 j53Var5 = bb2Var5.e;
                                        xa2Var.a = bb2Var5;
                                        xa2Var.b = r12;
                                        xa2Var.c = A;
                                        xa2Var.l = 3;
                                        objA = b53Var5.b(j53Var5, adUnitId7, xa2Var);
                                        if (objA != coroutine_suspended) {
                                            r11 = r12;
                                            r9 = A;
                                            rawValue = ((Duration) objA).getRawValue();
                                            r8 = r9;
                                            r10 = r11;
                                            if (Duration.m4366compareToLRDsOJo(rawValue, Duration.INSTANCE.m4458getZEROUwyO8pc()) > 0) {
                                                xa2Var.a = bb2Var5;
                                                xa2Var.b = r10;
                                                xa2Var.c = r8;
                                                xa2Var.l = 4;
                                                if (DelayKt.m4512delayVtjQ1oo(rawValue, xa2Var) != coroutine_suspended) {
                                                    r2 = r8;
                                                    r5 = r10;
                                                    n01 n01Var7 = new n01("Too many recently failed requests for ad unit ID: " + bb2Var5.d.getAdUnitId() + ". You must wait a few seconds before making another ad request.", true);
                                                    xs3.a(n01Var7, false);
                                                    CloseableKt.closeFinally(r2, null);
                                                    return n01Var7;
                                                }
                                            } else {
                                                a aVar7 = bb2Var5.c;
                                                xa2Var.a = bb2Var5;
                                                xa2Var.b = r10;
                                                xa2Var.c = r8;
                                                xa2Var.l = 5;
                                                objA = aVar7.a(xa2Var);
                                                r16 = r8;
                                                r15 = r10;
                                                if (objA != coroutine_suspended) {
                                                    bb2Var2 = bb2Var5;
                                                    v01Var = (v01) objA;
                                                    if (v01Var instanceof i01) {
                                                        i01 i01Var111 = (i01) v01Var;
                                                        xs3.a(i01Var111, false);
                                                        CloseableKt.closeFinally(r16, null);
                                                        return i01Var111;
                                                    }
                                                    Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                    signals = (Signals) ((q01) v01Var).a();
                                                    if (bb2Var2.k.w) {
                                                        bb2Var2.l.getClass();
                                                        if (Random.INSTANCE.nextInt(1000) < bb2Var2.k.x * ((double) 1000)) {
                                                            z = true;
                                                        } else {
                                                            z = false;
                                                        }
                                                    } else {
                                                        z = false;
                                                    }
                                                    if (bb2Var2.k.S()) {
                                                    }
                                                    xa2Var.a = bb2Var2;
                                                    xa2Var.b = r15;
                                                    xa2Var.c = r16;
                                                    xa2Var.d = signals;
                                                    xa2Var.i = z;
                                                    xa2Var.l = 6;
                                                    objA = bb2Var2.a(signals, xa2Var);
                                                    r20 = r16;
                                                    r111 = r15;
                                                    if (objA == coroutine_suspended) {
                                                        m01Var = (v01) objA;
                                                        r18 = r20;
                                                        r17 = r111;
                                                        r19 = r18;
                                                        r110 = r17;
                                                        bb2Var3 = bb2Var2;
                                                        signals2 = signals;
                                                        if (!bb2Var3.k.S()) {
                                                            if (m01Var == null) {
                                                                m01Var = new m01("Client side request building returned null while building URL.");
                                                            }
                                                            z2 = true;
                                                            r113 = r19;
                                                            r112 = r110;
                                                            r21 = r113;
                                                            if (m01Var instanceof i01) {
                                                                i01 i01Var112 = (i01) m01Var;
                                                                xs3.a(i01Var112, false);
                                                                CloseableKt.closeFinally(r21, null);
                                                                return i01Var112;
                                                            }
                                                            Intrinsics.checkNotNull(m01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                            ztVar = (zt) ((q01) m01Var).a();
                                                            if (z) {
                                                                Splitter splitter112 = f01.a;
                                                                f01.a(new ya2(ztVar));
                                                            }
                                                            if (z) {
                                                                illegalStateException = new IllegalStateException("CSRB A/B divergence: " + ztVar.g);
                                                                ((as3) bb2Var3.m).a("CSRB A/B divergence", (Throwable) illegalStateException);
                                                                if (bb2Var3.k.K()) {
                                                                    throw illegalStateException;
                                                                }
                                                            }
                                                            pair = new p005kotlin.Pair(signals2, ztVar);
                                                            if (pair instanceof i01) {
                                                                xs3.a((i01) pair, false);
                                                            }
                                                            CloseableKt.closeFinally(r21, null);
                                                            Signals signals17 = (Signals) pair.component1();
                                                            zt ztVar16 = (zt) pair.component2();
                                                            ka2 ka2Var15 = bb2Var3.b;
                                                            xa2Var.a = bb2Var3;
                                                            xa2Var.b = null;
                                                            xa2Var.c = null;
                                                            xa2Var.d = null;
                                                            xa2Var.e = null;
                                                            xa2Var.f = null;
                                                            xa2Var.g = null;
                                                            xa2Var.l = 8;
                                                            objA = ka2Var15.a(signals17, ztVar16, xa2Var);
                                                            if (objA != coroutine_suspended) {
                                                                bb2Var4 = bb2Var3;
                                                                v01Var2 = (v01) objA;
                                                                if (v01Var2 instanceof i01) {
                                                                    return (i01) v01Var2;
                                                                }
                                                                Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                                ac3Var = (ac3) ((q01) v01Var2).a();
                                                                kVar = bb2Var4.g;
                                                                xa2Var.a = bb2Var4;
                                                                xa2Var.b = ac3Var;
                                                                xa2Var.l = 9;
                                                                if (kVar.a(ac3Var, xa2Var) != coroutine_suspended) {
                                                                    hs3.a().g().b.b = ac3Var.b.h;
                                                                    boolean z17 = !ac3Var.a.isEmpty();
                                                                    bb2Var4.r = z17;
                                                                    BuildersKt__Builders_commonKt.launch$default(bb2Var4.p, null, null, new ab2(ac3Var, bb2Var4, z17, null), 3, null);
                                                                    bb2Var4.q = true;
                                                                    ec3Var = new ec3(new wb3(bb2Var4.d), ac3Var);
                                                                    ej1Var = bb2Var4.f;
                                                                    xa2Var.a = ec3Var;
                                                                    xa2Var.b = null;
                                                                    xa2Var.l = 10;
                                                                    if (ej1Var.a(ec3Var, xa2Var) != coroutine_suspended) {
                                                                        ec3Var2 = ec3Var;
                                                                        return new q01(ec3Var2);
                                                                    }
                                                                }
                                                            }
                                                        } else {
                                                            rr3VarA = hs3.a(s11.CUI_NAME_ADREQUEST_BUILDURL, CollectionsKt.emptyList(), true);
                                                            String json8 = bb2Var3.n.toJson(signals2);
                                                            Splitter splitter113 = f01.a;
                                                            f01.a(new za2(json8));
                                                            ytVar = zt.j;
                                                            Object obj8 = bb2Var3.a;
                                                            Intrinsics.checkNotNull(json8);
                                                            xa2Var.a = bb2Var3;
                                                            xa2Var.b = r110;
                                                            xa2Var.c = r19;
                                                            xa2Var.d = signals2;
                                                            xa2Var.e = rr3VarA;
                                                            xa2Var.f = rr3VarA;
                                                            xa2Var.g = ytVar;
                                                            xa2Var.i = z;
                                                            xa2Var.l = 7;
                                                            objA = ((rp0) obj8).a("AFMA_getAdDictionary", json8, xa2Var);
                                                            if (objA != coroutine_suspended) {
                                                                rr3Var = rr3VarA;
                                                                r19 = r19;
                                                                r110 = r110;
                                                                ytVar.getClass();
                                                                m01Var = yt.a((v01) objA);
                                                                if (m01Var instanceof i01) {
                                                                    xs3.a((i01) m01Var, false);
                                                                }
                                                                CloseableKt.closeFinally(rr3VarA, null);
                                                                r113 = r19;
                                                                r112 = r110;
                                                                r21 = r113;
                                                                if (m01Var instanceof i01) {
                                                                    i01 i01Var113 = (i01) m01Var;
                                                                    xs3.a(i01Var113, false);
                                                                    CloseableKt.closeFinally(r21, null);
                                                                    return i01Var113;
                                                                }
                                                                Intrinsics.checkNotNull(m01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                                ztVar = (zt) ((q01) m01Var).a();
                                                                if (z) {
                                                                    Splitter splitter114 = f01.a;
                                                                    f01.a(new ya2(ztVar));
                                                                }
                                                                if (z) {
                                                                    illegalStateException = new IllegalStateException("CSRB A/B divergence: " + ztVar.g);
                                                                    ((as3) bb2Var3.m).a("CSRB A/B divergence", (Throwable) illegalStateException);
                                                                    if (bb2Var3.k.K()) {
                                                                        throw illegalStateException;
                                                                    }
                                                                }
                                                                pair = new p005kotlin.Pair(signals2, ztVar);
                                                                if (pair instanceof i01) {
                                                                    xs3.a((i01) pair, false);
                                                                }
                                                                CloseableKt.closeFinally(r21, null);
                                                                Signals signals18 = (Signals) pair.component1();
                                                                zt ztVar17 = (zt) pair.component2();
                                                                ka2 ka2Var16 = bb2Var3.b;
                                                                xa2Var.a = bb2Var3;
                                                                xa2Var.b = null;
                                                                xa2Var.c = null;
                                                                xa2Var.d = null;
                                                                xa2Var.e = null;
                                                                xa2Var.f = null;
                                                                xa2Var.g = null;
                                                                xa2Var.l = 8;
                                                                objA = ka2Var16.a(signals18, ztVar17, xa2Var);
                                                                if (objA != coroutine_suspended) {
                                                                    bb2Var4 = bb2Var3;
                                                                    v01Var2 = (v01) objA;
                                                                    if (v01Var2 instanceof i01) {
                                                                        return (i01) v01Var2;
                                                                    }
                                                                    Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                                    ac3Var = (ac3) ((q01) v01Var2).a();
                                                                    kVar = bb2Var4.g;
                                                                    xa2Var.a = bb2Var4;
                                                                    xa2Var.b = ac3Var;
                                                                    xa2Var.l = 9;
                                                                    if (kVar.a(ac3Var, xa2Var) != coroutine_suspended) {
                                                                        hs3.a().g().b.b = ac3Var.b.h;
                                                                        boolean z18 = !ac3Var.a.isEmpty();
                                                                        bb2Var4.r = z18;
                                                                        BuildersKt__Builders_commonKt.launch$default(bb2Var4.p, null, null, new ab2(ac3Var, bb2Var4, z18, null), 3, null);
                                                                        bb2Var4.q = true;
                                                                        ec3Var = new ec3(new wb3(bb2Var4.d), ac3Var);
                                                                        ej1Var = bb2Var4.f;
                                                                        xa2Var.a = ec3Var;
                                                                        xa2Var.b = null;
                                                                        xa2Var.l = 10;
                                                                        if (ej1Var.a(ec3Var, xa2Var) != coroutine_suspended) {
                                                                            ec3Var2 = ec3Var;
                                                                            return new q01(ec3Var2);
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    } else {
                                        long j4 = jM4458getZEROUwyO8pc;
                                        r10 = r12;
                                        rawValue = j4;
                                        r8 = A;
                                        if (Duration.m4366compareToLRDsOJo(rawValue, Duration.INSTANCE.m4458getZEROUwyO8pc()) > 0) {
                                            xa2Var.a = bb2Var5;
                                            xa2Var.b = r10;
                                            xa2Var.c = r8;
                                            xa2Var.l = 4;
                                            if (DelayKt.m4512delayVtjQ1oo(rawValue, xa2Var) != coroutine_suspended) {
                                                r2 = r8;
                                                r5 = r10;
                                                n01 n01Var8 = new n01("Too many recently failed requests for ad unit ID: " + bb2Var5.d.getAdUnitId() + ". You must wait a few seconds before making another ad request.", true);
                                                xs3.a(n01Var8, false);
                                                CloseableKt.closeFinally(r2, null);
                                                return n01Var8;
                                            }
                                        } else {
                                            a aVar8 = bb2Var5.c;
                                            xa2Var.a = bb2Var5;
                                            xa2Var.b = r10;
                                            xa2Var.c = r8;
                                            xa2Var.l = 5;
                                            objA = aVar8.a(xa2Var);
                                            r16 = r8;
                                            r15 = r10;
                                            if (objA != coroutine_suspended) {
                                                bb2Var2 = bb2Var5;
                                                v01Var = (v01) objA;
                                                if (v01Var instanceof i01) {
                                                    i01 i01Var114 = (i01) v01Var;
                                                    xs3.a(i01Var114, false);
                                                    CloseableKt.closeFinally(r16, null);
                                                    return i01Var114;
                                                }
                                                Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                signals = (Signals) ((q01) v01Var).a();
                                                if (bb2Var2.k.w) {
                                                    bb2Var2.l.getClass();
                                                    if (Random.INSTANCE.nextInt(1000) < bb2Var2.k.x * ((double) 1000)) {
                                                        z = true;
                                                    } else {
                                                        z = false;
                                                    }
                                                } else {
                                                    z = false;
                                                }
                                                if (bb2Var2.k.S()) {
                                                }
                                                xa2Var.a = bb2Var2;
                                                xa2Var.b = r15;
                                                xa2Var.c = r16;
                                                xa2Var.d = signals;
                                                xa2Var.i = z;
                                                xa2Var.l = 6;
                                                objA = bb2Var2.a(signals, xa2Var);
                                                r20 = r16;
                                                r111 = r15;
                                                if (objA == coroutine_suspended) {
                                                    m01Var = (v01) objA;
                                                    r18 = r20;
                                                    r17 = r111;
                                                    r19 = r18;
                                                    r110 = r17;
                                                    bb2Var3 = bb2Var2;
                                                    signals2 = signals;
                                                    if (!bb2Var3.k.S()) {
                                                        if (m01Var == null) {
                                                            m01Var = new m01("Client side request building returned null while building URL.");
                                                        }
                                                        z2 = true;
                                                        r113 = r19;
                                                        r112 = r110;
                                                        r21 = r113;
                                                        if (m01Var instanceof i01) {
                                                            i01 i01Var115 = (i01) m01Var;
                                                            xs3.a(i01Var115, false);
                                                            CloseableKt.closeFinally(r21, null);
                                                            return i01Var115;
                                                        }
                                                        Intrinsics.checkNotNull(m01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                        ztVar = (zt) ((q01) m01Var).a();
                                                        if (z) {
                                                            Splitter splitter115 = f01.a;
                                                            f01.a(new ya2(ztVar));
                                                        }
                                                        if (z) {
                                                            illegalStateException = new IllegalStateException("CSRB A/B divergence: " + ztVar.g);
                                                            ((as3) bb2Var3.m).a("CSRB A/B divergence", (Throwable) illegalStateException);
                                                            if (bb2Var3.k.K()) {
                                                                throw illegalStateException;
                                                            }
                                                        }
                                                        pair = new p005kotlin.Pair(signals2, ztVar);
                                                        if (pair instanceof i01) {
                                                            xs3.a((i01) pair, false);
                                                        }
                                                        CloseableKt.closeFinally(r21, null);
                                                        Signals signals19 = (Signals) pair.component1();
                                                        zt ztVar18 = (zt) pair.component2();
                                                        ka2 ka2Var17 = bb2Var3.b;
                                                        xa2Var.a = bb2Var3;
                                                        xa2Var.b = null;
                                                        xa2Var.c = null;
                                                        xa2Var.d = null;
                                                        xa2Var.e = null;
                                                        xa2Var.f = null;
                                                        xa2Var.g = null;
                                                        xa2Var.l = 8;
                                                        objA = ka2Var17.a(signals19, ztVar18, xa2Var);
                                                        if (objA != coroutine_suspended) {
                                                            bb2Var4 = bb2Var3;
                                                            v01Var2 = (v01) objA;
                                                            if (v01Var2 instanceof i01) {
                                                                return (i01) v01Var2;
                                                            }
                                                            Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                            ac3Var = (ac3) ((q01) v01Var2).a();
                                                            kVar = bb2Var4.g;
                                                            xa2Var.a = bb2Var4;
                                                            xa2Var.b = ac3Var;
                                                            xa2Var.l = 9;
                                                            if (kVar.a(ac3Var, xa2Var) != coroutine_suspended) {
                                                                hs3.a().g().b.b = ac3Var.b.h;
                                                                boolean z19 = !ac3Var.a.isEmpty();
                                                                bb2Var4.r = z19;
                                                                BuildersKt__Builders_commonKt.launch$default(bb2Var4.p, null, null, new ab2(ac3Var, bb2Var4, z19, null), 3, null);
                                                                bb2Var4.q = true;
                                                                ec3Var = new ec3(new wb3(bb2Var4.d), ac3Var);
                                                                ej1Var = bb2Var4.f;
                                                                xa2Var.a = ec3Var;
                                                                xa2Var.b = null;
                                                                xa2Var.l = 10;
                                                                if (ej1Var.a(ec3Var, xa2Var) != coroutine_suspended) {
                                                                    ec3Var2 = ec3Var;
                                                                    return new q01(ec3Var2);
                                                                }
                                                            }
                                                        }
                                                    } else {
                                                        rr3VarA = hs3.a(s11.CUI_NAME_ADREQUEST_BUILDURL, CollectionsKt.emptyList(), true);
                                                        String json9 = bb2Var3.n.toJson(signals2);
                                                        Splitter splitter116 = f01.a;
                                                        f01.a(new za2(json9));
                                                        ytVar = zt.j;
                                                        Object obj9 = bb2Var3.a;
                                                        Intrinsics.checkNotNull(json9);
                                                        xa2Var.a = bb2Var3;
                                                        xa2Var.b = r110;
                                                        xa2Var.c = r19;
                                                        xa2Var.d = signals2;
                                                        xa2Var.e = rr3VarA;
                                                        xa2Var.f = rr3VarA;
                                                        xa2Var.g = ytVar;
                                                        xa2Var.i = z;
                                                        xa2Var.l = 7;
                                                        objA = ((rp0) obj9).a("AFMA_getAdDictionary", json9, xa2Var);
                                                        if (objA != coroutine_suspended) {
                                                            rr3Var = rr3VarA;
                                                            r19 = r19;
                                                            r110 = r110;
                                                            ytVar.getClass();
                                                            m01Var = yt.a((v01) objA);
                                                            if (m01Var instanceof i01) {
                                                                xs3.a((i01) m01Var, false);
                                                            }
                                                            CloseableKt.closeFinally(rr3VarA, null);
                                                            r113 = r19;
                                                            r112 = r110;
                                                            r21 = r113;
                                                            if (m01Var instanceof i01) {
                                                                i01 i01Var116 = (i01) m01Var;
                                                                xs3.a(i01Var116, false);
                                                                CloseableKt.closeFinally(r21, null);
                                                                return i01Var116;
                                                            }
                                                            Intrinsics.checkNotNull(m01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                            ztVar = (zt) ((q01) m01Var).a();
                                                            if (z) {
                                                                Splitter splitter117 = f01.a;
                                                                f01.a(new ya2(ztVar));
                                                            }
                                                            if (z) {
                                                                illegalStateException = new IllegalStateException("CSRB A/B divergence: " + ztVar.g);
                                                                ((as3) bb2Var3.m).a("CSRB A/B divergence", (Throwable) illegalStateException);
                                                                if (bb2Var3.k.K()) {
                                                                    throw illegalStateException;
                                                                }
                                                            }
                                                            pair = new p005kotlin.Pair(signals2, ztVar);
                                                            if (pair instanceof i01) {
                                                                xs3.a((i01) pair, false);
                                                            }
                                                            CloseableKt.closeFinally(r21, null);
                                                            Signals signals110 = (Signals) pair.component1();
                                                            zt ztVar19 = (zt) pair.component2();
                                                            ka2 ka2Var18 = bb2Var3.b;
                                                            xa2Var.a = bb2Var3;
                                                            xa2Var.b = null;
                                                            xa2Var.c = null;
                                                            xa2Var.d = null;
                                                            xa2Var.e = null;
                                                            xa2Var.f = null;
                                                            xa2Var.g = null;
                                                            xa2Var.l = 8;
                                                            objA = ka2Var18.a(signals110, ztVar19, xa2Var);
                                                            if (objA != coroutine_suspended) {
                                                                bb2Var4 = bb2Var3;
                                                                v01Var2 = (v01) objA;
                                                                if (v01Var2 instanceof i01) {
                                                                    return (i01) v01Var2;
                                                                }
                                                                Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                                ac3Var = (ac3) ((q01) v01Var2).a();
                                                                kVar = bb2Var4.g;
                                                                xa2Var.a = bb2Var4;
                                                                xa2Var.b = ac3Var;
                                                                xa2Var.l = 9;
                                                                if (kVar.a(ac3Var, xa2Var) != coroutine_suspended) {
                                                                    hs3.a().g().b.b = ac3Var.b.h;
                                                                    boolean z110 = !ac3Var.a.isEmpty();
                                                                    bb2Var4.r = z110;
                                                                    BuildersKt__Builders_commonKt.launch$default(bb2Var4.p, null, null, new ab2(ac3Var, bb2Var4, z110, null), 3, null);
                                                                    bb2Var4.q = true;
                                                                    ec3Var = new ec3(new wb3(bb2Var4.d), ac3Var);
                                                                    ej1Var = bb2Var4.f;
                                                                    xa2Var.a = ec3Var;
                                                                    xa2Var.b = null;
                                                                    xa2Var.l = 10;
                                                                    if (ej1Var.a(ec3Var, xa2Var) != coroutine_suspended) {
                                                                        ec3Var2 = ec3Var;
                                                                        return new q01(ec3Var2);
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            } else if (Duration.m4372equalsimpl0(jM4458getZEROUwyO8pc, Duration.INSTANCE.m4458getZEROUwyO8pc())) {
                                b53 b53Var6 = bb2Var5.j;
                                String adUnitId8 = bb2Var5.d.getAdUnitId();
                                j53 j53Var6 = bb2Var5.e;
                                xa2Var.a = bb2Var5;
                                xa2Var.b = r12;
                                xa2Var.c = A;
                                xa2Var.l = 3;
                                objA = b53Var6.b(j53Var6, adUnitId8, xa2Var);
                                if (objA != coroutine_suspended) {
                                    r11 = r12;
                                    r9 = A;
                                    rawValue = ((Duration) objA).getRawValue();
                                    r8 = r9;
                                    r10 = r11;
                                    if (Duration.m4366compareToLRDsOJo(rawValue, Duration.INSTANCE.m4458getZEROUwyO8pc()) > 0) {
                                        xa2Var.a = bb2Var5;
                                        xa2Var.b = r10;
                                        xa2Var.c = r8;
                                        xa2Var.l = 4;
                                        if (DelayKt.m4512delayVtjQ1oo(rawValue, xa2Var) != coroutine_suspended) {
                                            r2 = r8;
                                            r5 = r10;
                                            n01 n01Var9 = new n01("Too many recently failed requests for ad unit ID: " + bb2Var5.d.getAdUnitId() + ". You must wait a few seconds before making another ad request.", true);
                                            xs3.a(n01Var9, false);
                                            CloseableKt.closeFinally(r2, null);
                                            return n01Var9;
                                        }
                                    } else {
                                        a aVar9 = bb2Var5.c;
                                        xa2Var.a = bb2Var5;
                                        xa2Var.b = r10;
                                        xa2Var.c = r8;
                                        xa2Var.l = 5;
                                        objA = aVar9.a(xa2Var);
                                        r16 = r8;
                                        r15 = r10;
                                        if (objA != coroutine_suspended) {
                                            bb2Var2 = bb2Var5;
                                            v01Var = (v01) objA;
                                            if (v01Var instanceof i01) {
                                                i01 i01Var117 = (i01) v01Var;
                                                xs3.a(i01Var117, false);
                                                CloseableKt.closeFinally(r16, null);
                                                return i01Var117;
                                            }
                                            Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                            signals = (Signals) ((q01) v01Var).a();
                                            if (bb2Var2.k.w) {
                                                bb2Var2.l.getClass();
                                                if (Random.INSTANCE.nextInt(1000) < bb2Var2.k.x * ((double) 1000)) {
                                                    z = true;
                                                } else {
                                                    z = false;
                                                }
                                            } else {
                                                z = false;
                                            }
                                            if (bb2Var2.k.S()) {
                                            }
                                            xa2Var.a = bb2Var2;
                                            xa2Var.b = r15;
                                            xa2Var.c = r16;
                                            xa2Var.d = signals;
                                            xa2Var.i = z;
                                            xa2Var.l = 6;
                                            objA = bb2Var2.a(signals, xa2Var);
                                            r20 = r16;
                                            r111 = r15;
                                            if (objA == coroutine_suspended) {
                                                m01Var = (v01) objA;
                                                r18 = r20;
                                                r17 = r111;
                                                r19 = r18;
                                                r110 = r17;
                                                bb2Var3 = bb2Var2;
                                                signals2 = signals;
                                                if (!bb2Var3.k.S()) {
                                                    if (m01Var == null) {
                                                        m01Var = new m01("Client side request building returned null while building URL.");
                                                    }
                                                    z2 = true;
                                                    r113 = r19;
                                                    r112 = r110;
                                                    r21 = r113;
                                                    if (m01Var instanceof i01) {
                                                        i01 i01Var118 = (i01) m01Var;
                                                        xs3.a(i01Var118, false);
                                                        CloseableKt.closeFinally(r21, null);
                                                        return i01Var118;
                                                    }
                                                    Intrinsics.checkNotNull(m01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                    ztVar = (zt) ((q01) m01Var).a();
                                                    if (z) {
                                                        Splitter splitter118 = f01.a;
                                                        f01.a(new ya2(ztVar));
                                                    }
                                                    if (z) {
                                                        illegalStateException = new IllegalStateException("CSRB A/B divergence: " + ztVar.g);
                                                        ((as3) bb2Var3.m).a("CSRB A/B divergence", (Throwable) illegalStateException);
                                                        if (bb2Var3.k.K()) {
                                                            throw illegalStateException;
                                                        }
                                                    }
                                                    pair = new p005kotlin.Pair(signals2, ztVar);
                                                    if (pair instanceof i01) {
                                                        xs3.a((i01) pair, false);
                                                    }
                                                    CloseableKt.closeFinally(r21, null);
                                                    Signals signals111 = (Signals) pair.component1();
                                                    zt ztVar110 = (zt) pair.component2();
                                                    ka2 ka2Var19 = bb2Var3.b;
                                                    xa2Var.a = bb2Var3;
                                                    xa2Var.b = null;
                                                    xa2Var.c = null;
                                                    xa2Var.d = null;
                                                    xa2Var.e = null;
                                                    xa2Var.f = null;
                                                    xa2Var.g = null;
                                                    xa2Var.l = 8;
                                                    objA = ka2Var19.a(signals111, ztVar110, xa2Var);
                                                    if (objA != coroutine_suspended) {
                                                        bb2Var4 = bb2Var3;
                                                        v01Var2 = (v01) objA;
                                                        if (v01Var2 instanceof i01) {
                                                            return (i01) v01Var2;
                                                        }
                                                        Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                        ac3Var = (ac3) ((q01) v01Var2).a();
                                                        kVar = bb2Var4.g;
                                                        xa2Var.a = bb2Var4;
                                                        xa2Var.b = ac3Var;
                                                        xa2Var.l = 9;
                                                        if (kVar.a(ac3Var, xa2Var) != coroutine_suspended) {
                                                            hs3.a().g().b.b = ac3Var.b.h;
                                                            boolean z111 = !ac3Var.a.isEmpty();
                                                            bb2Var4.r = z111;
                                                            BuildersKt__Builders_commonKt.launch$default(bb2Var4.p, null, null, new ab2(ac3Var, bb2Var4, z111, null), 3, null);
                                                            bb2Var4.q = true;
                                                            ec3Var = new ec3(new wb3(bb2Var4.d), ac3Var);
                                                            ej1Var = bb2Var4.f;
                                                            xa2Var.a = ec3Var;
                                                            xa2Var.b = null;
                                                            xa2Var.l = 10;
                                                            if (ej1Var.a(ec3Var, xa2Var) != coroutine_suspended) {
                                                                ec3Var2 = ec3Var;
                                                                return new q01(ec3Var2);
                                                            }
                                                        }
                                                    }
                                                } else {
                                                    rr3VarA = hs3.a(s11.CUI_NAME_ADREQUEST_BUILDURL, CollectionsKt.emptyList(), true);
                                                    String json10 = bb2Var3.n.toJson(signals2);
                                                    Splitter splitter119 = f01.a;
                                                    f01.a(new za2(json10));
                                                    ytVar = zt.j;
                                                    Object obj10 = bb2Var3.a;
                                                    Intrinsics.checkNotNull(json10);
                                                    xa2Var.a = bb2Var3;
                                                    xa2Var.b = r110;
                                                    xa2Var.c = r19;
                                                    xa2Var.d = signals2;
                                                    xa2Var.e = rr3VarA;
                                                    xa2Var.f = rr3VarA;
                                                    xa2Var.g = ytVar;
                                                    xa2Var.i = z;
                                                    xa2Var.l = 7;
                                                    objA = ((rp0) obj10).a("AFMA_getAdDictionary", json10, xa2Var);
                                                    if (objA != coroutine_suspended) {
                                                        rr3Var = rr3VarA;
                                                        r19 = r19;
                                                        r110 = r110;
                                                        ytVar.getClass();
                                                        m01Var = yt.a((v01) objA);
                                                        if (m01Var instanceof i01) {
                                                            xs3.a((i01) m01Var, false);
                                                        }
                                                        CloseableKt.closeFinally(rr3VarA, null);
                                                        r113 = r19;
                                                        r112 = r110;
                                                        r21 = r113;
                                                        if (m01Var instanceof i01) {
                                                            i01 i01Var119 = (i01) m01Var;
                                                            xs3.a(i01Var119, false);
                                                            CloseableKt.closeFinally(r21, null);
                                                            return i01Var119;
                                                        }
                                                        Intrinsics.checkNotNull(m01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                        ztVar = (zt) ((q01) m01Var).a();
                                                        if (z) {
                                                            Splitter splitter1110 = f01.a;
                                                            f01.a(new ya2(ztVar));
                                                        }
                                                        if (z) {
                                                            illegalStateException = new IllegalStateException("CSRB A/B divergence: " + ztVar.g);
                                                            ((as3) bb2Var3.m).a("CSRB A/B divergence", (Throwable) illegalStateException);
                                                            if (bb2Var3.k.K()) {
                                                                throw illegalStateException;
                                                            }
                                                        }
                                                        pair = new p005kotlin.Pair(signals2, ztVar);
                                                        if (pair instanceof i01) {
                                                            xs3.a((i01) pair, false);
                                                        }
                                                        CloseableKt.closeFinally(r21, null);
                                                        Signals signals112 = (Signals) pair.component1();
                                                        zt ztVar111 = (zt) pair.component2();
                                                        ka2 ka2Var110 = bb2Var3.b;
                                                        xa2Var.a = bb2Var3;
                                                        xa2Var.b = null;
                                                        xa2Var.c = null;
                                                        xa2Var.d = null;
                                                        xa2Var.e = null;
                                                        xa2Var.f = null;
                                                        xa2Var.g = null;
                                                        xa2Var.l = 8;
                                                        objA = ka2Var110.a(signals112, ztVar111, xa2Var);
                                                        if (objA != coroutine_suspended) {
                                                            bb2Var4 = bb2Var3;
                                                            v01Var2 = (v01) objA;
                                                            if (v01Var2 instanceof i01) {
                                                                return (i01) v01Var2;
                                                            }
                                                            Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                            ac3Var = (ac3) ((q01) v01Var2).a();
                                                            kVar = bb2Var4.g;
                                                            xa2Var.a = bb2Var4;
                                                            xa2Var.b = ac3Var;
                                                            xa2Var.l = 9;
                                                            if (kVar.a(ac3Var, xa2Var) != coroutine_suspended) {
                                                                hs3.a().g().b.b = ac3Var.b.h;
                                                                boolean z112 = !ac3Var.a.isEmpty();
                                                                bb2Var4.r = z112;
                                                                BuildersKt__Builders_commonKt.launch$default(bb2Var4.p, null, null, new ab2(ac3Var, bb2Var4, z112, null), 3, null);
                                                                bb2Var4.q = true;
                                                                ec3Var = new ec3(new wb3(bb2Var4.d), ac3Var);
                                                                ej1Var = bb2Var4.f;
                                                                xa2Var.a = ec3Var;
                                                                xa2Var.b = null;
                                                                xa2Var.l = 10;
                                                                if (ej1Var.a(ec3Var, xa2Var) != coroutine_suspended) {
                                                                    ec3Var2 = ec3Var;
                                                                    return new q01(ec3Var2);
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            } else {
                                long j5 = jM4458getZEROUwyO8pc;
                                r10 = r12;
                                rawValue = j5;
                                r8 = A;
                                if (Duration.m4366compareToLRDsOJo(rawValue, Duration.INSTANCE.m4458getZEROUwyO8pc()) > 0) {
                                    xa2Var.a = bb2Var5;
                                    xa2Var.b = r10;
                                    xa2Var.c = r8;
                                    xa2Var.l = 4;
                                    if (DelayKt.m4512delayVtjQ1oo(rawValue, xa2Var) != coroutine_suspended) {
                                        r2 = r8;
                                        r5 = r10;
                                        n01 n01Var10 = new n01("Too many recently failed requests for ad unit ID: " + bb2Var5.d.getAdUnitId() + ". You must wait a few seconds before making another ad request.", true);
                                        xs3.a(n01Var10, false);
                                        CloseableKt.closeFinally(r2, null);
                                        return n01Var10;
                                    }
                                } else {
                                    a aVar10 = bb2Var5.c;
                                    xa2Var.a = bb2Var5;
                                    xa2Var.b = r10;
                                    xa2Var.c = r8;
                                    xa2Var.l = 5;
                                    objA = aVar10.a(xa2Var);
                                    r16 = r8;
                                    r15 = r10;
                                    if (objA != coroutine_suspended) {
                                        bb2Var2 = bb2Var5;
                                        v01Var = (v01) objA;
                                        if (v01Var instanceof i01) {
                                            i01 i01Var1110 = (i01) v01Var;
                                            xs3.a(i01Var1110, false);
                                            CloseableKt.closeFinally(r16, null);
                                            return i01Var1110;
                                        }
                                        Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                        signals = (Signals) ((q01) v01Var).a();
                                        if (bb2Var2.k.w) {
                                            bb2Var2.l.getClass();
                                            if (Random.INSTANCE.nextInt(1000) < bb2Var2.k.x * ((double) 1000)) {
                                                z = true;
                                            } else {
                                                z = false;
                                            }
                                        } else {
                                            z = false;
                                        }
                                        if (bb2Var2.k.S()) {
                                        }
                                        xa2Var.a = bb2Var2;
                                        xa2Var.b = r15;
                                        xa2Var.c = r16;
                                        xa2Var.d = signals;
                                        xa2Var.i = z;
                                        xa2Var.l = 6;
                                        objA = bb2Var2.a(signals, xa2Var);
                                        r20 = r16;
                                        r111 = r15;
                                        if (objA == coroutine_suspended) {
                                            m01Var = (v01) objA;
                                            r18 = r20;
                                            r17 = r111;
                                            r19 = r18;
                                            r110 = r17;
                                            bb2Var3 = bb2Var2;
                                            signals2 = signals;
                                            if (!bb2Var3.k.S()) {
                                                if (m01Var == null) {
                                                    m01Var = new m01("Client side request building returned null while building URL.");
                                                }
                                                z2 = true;
                                                r113 = r19;
                                                r112 = r110;
                                                r21 = r113;
                                                if (m01Var instanceof i01) {
                                                    i01 i01Var1111 = (i01) m01Var;
                                                    xs3.a(i01Var1111, false);
                                                    CloseableKt.closeFinally(r21, null);
                                                    return i01Var1111;
                                                }
                                                Intrinsics.checkNotNull(m01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                ztVar = (zt) ((q01) m01Var).a();
                                                if (z) {
                                                    Splitter splitter1111 = f01.a;
                                                    f01.a(new ya2(ztVar));
                                                }
                                                if (z) {
                                                    illegalStateException = new IllegalStateException("CSRB A/B divergence: " + ztVar.g);
                                                    ((as3) bb2Var3.m).a("CSRB A/B divergence", (Throwable) illegalStateException);
                                                    if (bb2Var3.k.K()) {
                                                        throw illegalStateException;
                                                    }
                                                }
                                                pair = new p005kotlin.Pair(signals2, ztVar);
                                                if (pair instanceof i01) {
                                                    xs3.a((i01) pair, false);
                                                }
                                                CloseableKt.closeFinally(r21, null);
                                                Signals signals113 = (Signals) pair.component1();
                                                zt ztVar112 = (zt) pair.component2();
                                                ka2 ka2Var111 = bb2Var3.b;
                                                xa2Var.a = bb2Var3;
                                                xa2Var.b = null;
                                                xa2Var.c = null;
                                                xa2Var.d = null;
                                                xa2Var.e = null;
                                                xa2Var.f = null;
                                                xa2Var.g = null;
                                                xa2Var.l = 8;
                                                objA = ka2Var111.a(signals113, ztVar112, xa2Var);
                                                if (objA != coroutine_suspended) {
                                                    bb2Var4 = bb2Var3;
                                                    v01Var2 = (v01) objA;
                                                    if (v01Var2 instanceof i01) {
                                                        return (i01) v01Var2;
                                                    }
                                                    Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                    ac3Var = (ac3) ((q01) v01Var2).a();
                                                    kVar = bb2Var4.g;
                                                    xa2Var.a = bb2Var4;
                                                    xa2Var.b = ac3Var;
                                                    xa2Var.l = 9;
                                                    if (kVar.a(ac3Var, xa2Var) != coroutine_suspended) {
                                                        hs3.a().g().b.b = ac3Var.b.h;
                                                        boolean z113 = !ac3Var.a.isEmpty();
                                                        bb2Var4.r = z113;
                                                        BuildersKt__Builders_commonKt.launch$default(bb2Var4.p, null, null, new ab2(ac3Var, bb2Var4, z113, null), 3, null);
                                                        bb2Var4.q = true;
                                                        ec3Var = new ec3(new wb3(bb2Var4.d), ac3Var);
                                                        ej1Var = bb2Var4.f;
                                                        xa2Var.a = ec3Var;
                                                        xa2Var.b = null;
                                                        xa2Var.l = 10;
                                                        if (ej1Var.a(ec3Var, xa2Var) != coroutine_suspended) {
                                                            ec3Var2 = ec3Var;
                                                            return new q01(ec3Var2);
                                                        }
                                                    }
                                                }
                                            } else {
                                                rr3VarA = hs3.a(s11.CUI_NAME_ADREQUEST_BUILDURL, CollectionsKt.emptyList(), true);
                                                String json11 = bb2Var3.n.toJson(signals2);
                                                Splitter splitter1112 = f01.a;
                                                f01.a(new za2(json11));
                                                ytVar = zt.j;
                                                Object obj11 = bb2Var3.a;
                                                Intrinsics.checkNotNull(json11);
                                                xa2Var.a = bb2Var3;
                                                xa2Var.b = r110;
                                                xa2Var.c = r19;
                                                xa2Var.d = signals2;
                                                xa2Var.e = rr3VarA;
                                                xa2Var.f = rr3VarA;
                                                xa2Var.g = ytVar;
                                                xa2Var.i = z;
                                                xa2Var.l = 7;
                                                objA = ((rp0) obj11).a("AFMA_getAdDictionary", json11, xa2Var);
                                                if (objA != coroutine_suspended) {
                                                    rr3Var = rr3VarA;
                                                    r19 = r19;
                                                    r110 = r110;
                                                    ytVar.getClass();
                                                    m01Var = yt.a((v01) objA);
                                                    if (m01Var instanceof i01) {
                                                        xs3.a((i01) m01Var, false);
                                                    }
                                                    CloseableKt.closeFinally(rr3VarA, null);
                                                    r113 = r19;
                                                    r112 = r110;
                                                    r21 = r113;
                                                    if (m01Var instanceof i01) {
                                                        i01 i01Var1112 = (i01) m01Var;
                                                        xs3.a(i01Var1112, false);
                                                        CloseableKt.closeFinally(r21, null);
                                                        return i01Var1112;
                                                    }
                                                    Intrinsics.checkNotNull(m01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                    ztVar = (zt) ((q01) m01Var).a();
                                                    if (z) {
                                                        Splitter splitter1113 = f01.a;
                                                        f01.a(new ya2(ztVar));
                                                    }
                                                    if (z) {
                                                        illegalStateException = new IllegalStateException("CSRB A/B divergence: " + ztVar.g);
                                                        ((as3) bb2Var3.m).a("CSRB A/B divergence", (Throwable) illegalStateException);
                                                        if (bb2Var3.k.K()) {
                                                            throw illegalStateException;
                                                        }
                                                    }
                                                    pair = new p005kotlin.Pair(signals2, ztVar);
                                                    if (pair instanceof i01) {
                                                        xs3.a((i01) pair, false);
                                                    }
                                                    CloseableKt.closeFinally(r21, null);
                                                    Signals signals114 = (Signals) pair.component1();
                                                    zt ztVar113 = (zt) pair.component2();
                                                    ka2 ka2Var112 = bb2Var3.b;
                                                    xa2Var.a = bb2Var3;
                                                    xa2Var.b = null;
                                                    xa2Var.c = null;
                                                    xa2Var.d = null;
                                                    xa2Var.e = null;
                                                    xa2Var.f = null;
                                                    xa2Var.g = null;
                                                    xa2Var.l = 8;
                                                    objA = ka2Var112.a(signals114, ztVar113, xa2Var);
                                                    if (objA != coroutine_suspended) {
                                                        bb2Var4 = bb2Var3;
                                                        v01Var2 = (v01) objA;
                                                        if (v01Var2 instanceof i01) {
                                                            return (i01) v01Var2;
                                                        }
                                                        Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                        ac3Var = (ac3) ((q01) v01Var2).a();
                                                        kVar = bb2Var4.g;
                                                        xa2Var.a = bb2Var4;
                                                        xa2Var.b = ac3Var;
                                                        xa2Var.l = 9;
                                                        if (kVar.a(ac3Var, xa2Var) != coroutine_suspended) {
                                                            hs3.a().g().b.b = ac3Var.b.h;
                                                            boolean z114 = !ac3Var.a.isEmpty();
                                                            bb2Var4.r = z114;
                                                            BuildersKt__Builders_commonKt.launch$default(bb2Var4.p, null, null, new ab2(ac3Var, bb2Var4, z114, null), 3, null);
                                                            bb2Var4.q = true;
                                                            ec3Var = new ec3(new wb3(bb2Var4.d), ac3Var);
                                                            ej1Var = bb2Var4.f;
                                                            xa2Var.a = ec3Var;
                                                            xa2Var.b = null;
                                                            xa2Var.l = 10;
                                                            if (ej1Var.a(ec3Var, xa2Var) != coroutine_suspended) {
                                                                ec3Var2 = ec3Var;
                                                                return new q01(ec3Var2);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            return coroutine_suspended;
                        case 2:
                            jM4458getZEROUwyO8pc = xa2Var.h;
                            Closeable closeable2 = xa2Var.c;
                            rr3 rr3Var3 = (rr3) xa2Var.b;
                            bb2Var5 = (bb2) xa2Var.a;
                            p005kotlin.ResultKt.throwOnFailure(objA);
                            r7 = closeable2;
                            r14 = rr3Var3;
                            r7 = r6;
                            r14 = r13;
                            A = r7;
                            r12 = r14;
                            if (((Boolean) objA).booleanValue()) {
                                jM4458getZEROUwyO8pc = bb2Var5.k.y0();
                                A = r7;
                                r12 = r14;
                            }
                            if (Duration.m4372equalsimpl0(jM4458getZEROUwyO8pc, Duration.INSTANCE.m4458getZEROUwyO8pc())) {
                                b53 b53Var7 = bb2Var5.j;
                                String adUnitId9 = bb2Var5.d.getAdUnitId();
                                j53 j53Var7 = bb2Var5.e;
                                xa2Var.a = bb2Var5;
                                xa2Var.b = r12;
                                xa2Var.c = A;
                                xa2Var.l = 3;
                                objA = b53Var7.b(j53Var7, adUnitId9, xa2Var);
                                if (objA != coroutine_suspended) {
                                    r11 = r12;
                                    r9 = A;
                                    rawValue = ((Duration) objA).getRawValue();
                                    r8 = r9;
                                    r10 = r11;
                                    if (Duration.m4366compareToLRDsOJo(rawValue, Duration.INSTANCE.m4458getZEROUwyO8pc()) > 0) {
                                        xa2Var.a = bb2Var5;
                                        xa2Var.b = r10;
                                        xa2Var.c = r8;
                                        xa2Var.l = 4;
                                        if (DelayKt.m4512delayVtjQ1oo(rawValue, xa2Var) != coroutine_suspended) {
                                            r2 = r8;
                                            r5 = r10;
                                            n01 n01Var11 = new n01("Too many recently failed requests for ad unit ID: " + bb2Var5.d.getAdUnitId() + ". You must wait a few seconds before making another ad request.", true);
                                            xs3.a(n01Var11, false);
                                            CloseableKt.closeFinally(r2, null);
                                            return n01Var11;
                                        }
                                    } else {
                                        a aVar11 = bb2Var5.c;
                                        xa2Var.a = bb2Var5;
                                        xa2Var.b = r10;
                                        xa2Var.c = r8;
                                        xa2Var.l = 5;
                                        objA = aVar11.a(xa2Var);
                                        r16 = r8;
                                        r15 = r10;
                                        if (objA != coroutine_suspended) {
                                            bb2Var2 = bb2Var5;
                                            v01Var = (v01) objA;
                                            if (v01Var instanceof i01) {
                                                i01 i01Var1113 = (i01) v01Var;
                                                xs3.a(i01Var1113, false);
                                                CloseableKt.closeFinally(r16, null);
                                                return i01Var1113;
                                            }
                                            Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                            signals = (Signals) ((q01) v01Var).a();
                                            if (bb2Var2.k.w) {
                                                bb2Var2.l.getClass();
                                                if (Random.INSTANCE.nextInt(1000) < bb2Var2.k.x * ((double) 1000)) {
                                                    z = true;
                                                } else {
                                                    z = false;
                                                }
                                            } else {
                                                z = false;
                                            }
                                            if (bb2Var2.k.S()) {
                                            }
                                            xa2Var.a = bb2Var2;
                                            xa2Var.b = r15;
                                            xa2Var.c = r16;
                                            xa2Var.d = signals;
                                            xa2Var.i = z;
                                            xa2Var.l = 6;
                                            objA = bb2Var2.a(signals, xa2Var);
                                            r20 = r16;
                                            r111 = r15;
                                            if (objA == coroutine_suspended) {
                                                m01Var = (v01) objA;
                                                r18 = r20;
                                                r17 = r111;
                                                r19 = r18;
                                                r110 = r17;
                                                bb2Var3 = bb2Var2;
                                                signals2 = signals;
                                                if (!bb2Var3.k.S()) {
                                                    if (m01Var == null) {
                                                        m01Var = new m01("Client side request building returned null while building URL.");
                                                    }
                                                    z2 = true;
                                                    r113 = r19;
                                                    r112 = r110;
                                                    r21 = r113;
                                                    if (m01Var instanceof i01) {
                                                        i01 i01Var1114 = (i01) m01Var;
                                                        xs3.a(i01Var1114, false);
                                                        CloseableKt.closeFinally(r21, null);
                                                        return i01Var1114;
                                                    }
                                                    Intrinsics.checkNotNull(m01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                    ztVar = (zt) ((q01) m01Var).a();
                                                    if (z) {
                                                        Splitter splitter1114 = f01.a;
                                                        f01.a(new ya2(ztVar));
                                                    }
                                                    if (z) {
                                                        illegalStateException = new IllegalStateException("CSRB A/B divergence: " + ztVar.g);
                                                        ((as3) bb2Var3.m).a("CSRB A/B divergence", (Throwable) illegalStateException);
                                                        if (bb2Var3.k.K()) {
                                                            throw illegalStateException;
                                                        }
                                                    }
                                                    pair = new p005kotlin.Pair(signals2, ztVar);
                                                    if (pair instanceof i01) {
                                                        xs3.a((i01) pair, false);
                                                    }
                                                    CloseableKt.closeFinally(r21, null);
                                                    Signals signals115 = (Signals) pair.component1();
                                                    zt ztVar114 = (zt) pair.component2();
                                                    ka2 ka2Var113 = bb2Var3.b;
                                                    xa2Var.a = bb2Var3;
                                                    xa2Var.b = null;
                                                    xa2Var.c = null;
                                                    xa2Var.d = null;
                                                    xa2Var.e = null;
                                                    xa2Var.f = null;
                                                    xa2Var.g = null;
                                                    xa2Var.l = 8;
                                                    objA = ka2Var113.a(signals115, ztVar114, xa2Var);
                                                    if (objA != coroutine_suspended) {
                                                        bb2Var4 = bb2Var3;
                                                        v01Var2 = (v01) objA;
                                                        if (v01Var2 instanceof i01) {
                                                            return (i01) v01Var2;
                                                        }
                                                        Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                        ac3Var = (ac3) ((q01) v01Var2).a();
                                                        kVar = bb2Var4.g;
                                                        xa2Var.a = bb2Var4;
                                                        xa2Var.b = ac3Var;
                                                        xa2Var.l = 9;
                                                        if (kVar.a(ac3Var, xa2Var) != coroutine_suspended) {
                                                            hs3.a().g().b.b = ac3Var.b.h;
                                                            boolean z115 = !ac3Var.a.isEmpty();
                                                            bb2Var4.r = z115;
                                                            BuildersKt__Builders_commonKt.launch$default(bb2Var4.p, null, null, new ab2(ac3Var, bb2Var4, z115, null), 3, null);
                                                            bb2Var4.q = true;
                                                            ec3Var = new ec3(new wb3(bb2Var4.d), ac3Var);
                                                            ej1Var = bb2Var4.f;
                                                            xa2Var.a = ec3Var;
                                                            xa2Var.b = null;
                                                            xa2Var.l = 10;
                                                            if (ej1Var.a(ec3Var, xa2Var) != coroutine_suspended) {
                                                                ec3Var2 = ec3Var;
                                                                return new q01(ec3Var2);
                                                            }
                                                        }
                                                    }
                                                } else {
                                                    rr3VarA = hs3.a(s11.CUI_NAME_ADREQUEST_BUILDURL, CollectionsKt.emptyList(), true);
                                                    String json12 = bb2Var3.n.toJson(signals2);
                                                    Splitter splitter1115 = f01.a;
                                                    f01.a(new za2(json12));
                                                    ytVar = zt.j;
                                                    Object obj12 = bb2Var3.a;
                                                    Intrinsics.checkNotNull(json12);
                                                    xa2Var.a = bb2Var3;
                                                    xa2Var.b = r110;
                                                    xa2Var.c = r19;
                                                    xa2Var.d = signals2;
                                                    xa2Var.e = rr3VarA;
                                                    xa2Var.f = rr3VarA;
                                                    xa2Var.g = ytVar;
                                                    xa2Var.i = z;
                                                    xa2Var.l = 7;
                                                    objA = ((rp0) obj12).a("AFMA_getAdDictionary", json12, xa2Var);
                                                    if (objA != coroutine_suspended) {
                                                        rr3Var = rr3VarA;
                                                        r19 = r19;
                                                        r110 = r110;
                                                        ytVar.getClass();
                                                        m01Var = yt.a((v01) objA);
                                                        if (m01Var instanceof i01) {
                                                            xs3.a((i01) m01Var, false);
                                                        }
                                                        CloseableKt.closeFinally(rr3VarA, null);
                                                        r113 = r19;
                                                        r112 = r110;
                                                        r21 = r113;
                                                        if (m01Var instanceof i01) {
                                                            i01 i01Var1115 = (i01) m01Var;
                                                            xs3.a(i01Var1115, false);
                                                            CloseableKt.closeFinally(r21, null);
                                                            return i01Var1115;
                                                        }
                                                        Intrinsics.checkNotNull(m01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                        ztVar = (zt) ((q01) m01Var).a();
                                                        if (z) {
                                                            Splitter splitter1116 = f01.a;
                                                            f01.a(new ya2(ztVar));
                                                        }
                                                        if (z) {
                                                            illegalStateException = new IllegalStateException("CSRB A/B divergence: " + ztVar.g);
                                                            ((as3) bb2Var3.m).a("CSRB A/B divergence", (Throwable) illegalStateException);
                                                            if (bb2Var3.k.K()) {
                                                                throw illegalStateException;
                                                            }
                                                        }
                                                        pair = new p005kotlin.Pair(signals2, ztVar);
                                                        if (pair instanceof i01) {
                                                            xs3.a((i01) pair, false);
                                                        }
                                                        CloseableKt.closeFinally(r21, null);
                                                        Signals signals116 = (Signals) pair.component1();
                                                        zt ztVar115 = (zt) pair.component2();
                                                        ka2 ka2Var114 = bb2Var3.b;
                                                        xa2Var.a = bb2Var3;
                                                        xa2Var.b = null;
                                                        xa2Var.c = null;
                                                        xa2Var.d = null;
                                                        xa2Var.e = null;
                                                        xa2Var.f = null;
                                                        xa2Var.g = null;
                                                        xa2Var.l = 8;
                                                        objA = ka2Var114.a(signals116, ztVar115, xa2Var);
                                                        if (objA != coroutine_suspended) {
                                                            bb2Var4 = bb2Var3;
                                                            v01Var2 = (v01) objA;
                                                            if (v01Var2 instanceof i01) {
                                                                return (i01) v01Var2;
                                                            }
                                                            Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                            ac3Var = (ac3) ((q01) v01Var2).a();
                                                            kVar = bb2Var4.g;
                                                            xa2Var.a = bb2Var4;
                                                            xa2Var.b = ac3Var;
                                                            xa2Var.l = 9;
                                                            if (kVar.a(ac3Var, xa2Var) != coroutine_suspended) {
                                                                hs3.a().g().b.b = ac3Var.b.h;
                                                                boolean z116 = !ac3Var.a.isEmpty();
                                                                bb2Var4.r = z116;
                                                                BuildersKt__Builders_commonKt.launch$default(bb2Var4.p, null, null, new ab2(ac3Var, bb2Var4, z116, null), 3, null);
                                                                bb2Var4.q = true;
                                                                ec3Var = new ec3(new wb3(bb2Var4.d), ac3Var);
                                                                ej1Var = bb2Var4.f;
                                                                xa2Var.a = ec3Var;
                                                                xa2Var.b = null;
                                                                xa2Var.l = 10;
                                                                if (ej1Var.a(ec3Var, xa2Var) != coroutine_suspended) {
                                                                    ec3Var2 = ec3Var;
                                                                    return new q01(ec3Var2);
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            } else {
                                long j6 = jM4458getZEROUwyO8pc;
                                r10 = r12;
                                rawValue = j6;
                                r8 = A;
                                if (Duration.m4366compareToLRDsOJo(rawValue, Duration.INSTANCE.m4458getZEROUwyO8pc()) > 0) {
                                    xa2Var.a = bb2Var5;
                                    xa2Var.b = r10;
                                    xa2Var.c = r8;
                                    xa2Var.l = 4;
                                    if (DelayKt.m4512delayVtjQ1oo(rawValue, xa2Var) != coroutine_suspended) {
                                        r2 = r8;
                                        r5 = r10;
                                        n01 n01Var12 = new n01("Too many recently failed requests for ad unit ID: " + bb2Var5.d.getAdUnitId() + ". You must wait a few seconds before making another ad request.", true);
                                        xs3.a(n01Var12, false);
                                        CloseableKt.closeFinally(r2, null);
                                        return n01Var12;
                                    }
                                } else {
                                    a aVar12 = bb2Var5.c;
                                    xa2Var.a = bb2Var5;
                                    xa2Var.b = r10;
                                    xa2Var.c = r8;
                                    xa2Var.l = 5;
                                    objA = aVar12.a(xa2Var);
                                    r16 = r8;
                                    r15 = r10;
                                    if (objA != coroutine_suspended) {
                                        bb2Var2 = bb2Var5;
                                        v01Var = (v01) objA;
                                        if (v01Var instanceof i01) {
                                            i01 i01Var1116 = (i01) v01Var;
                                            xs3.a(i01Var1116, false);
                                            CloseableKt.closeFinally(r16, null);
                                            return i01Var1116;
                                        }
                                        Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                        signals = (Signals) ((q01) v01Var).a();
                                        if (bb2Var2.k.w) {
                                            bb2Var2.l.getClass();
                                            if (Random.INSTANCE.nextInt(1000) < bb2Var2.k.x * ((double) 1000)) {
                                                z = true;
                                            } else {
                                                z = false;
                                            }
                                        } else {
                                            z = false;
                                        }
                                        if (bb2Var2.k.S()) {
                                        }
                                        xa2Var.a = bb2Var2;
                                        xa2Var.b = r15;
                                        xa2Var.c = r16;
                                        xa2Var.d = signals;
                                        xa2Var.i = z;
                                        xa2Var.l = 6;
                                        objA = bb2Var2.a(signals, xa2Var);
                                        r20 = r16;
                                        r111 = r15;
                                        if (objA == coroutine_suspended) {
                                            m01Var = (v01) objA;
                                            r18 = r20;
                                            r17 = r111;
                                            r19 = r18;
                                            r110 = r17;
                                            bb2Var3 = bb2Var2;
                                            signals2 = signals;
                                            if (!bb2Var3.k.S()) {
                                                if (m01Var == null) {
                                                    m01Var = new m01("Client side request building returned null while building URL.");
                                                }
                                                z2 = true;
                                                r113 = r19;
                                                r112 = r110;
                                                r21 = r113;
                                                if (m01Var instanceof i01) {
                                                    i01 i01Var1117 = (i01) m01Var;
                                                    xs3.a(i01Var1117, false);
                                                    CloseableKt.closeFinally(r21, null);
                                                    return i01Var1117;
                                                }
                                                Intrinsics.checkNotNull(m01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                ztVar = (zt) ((q01) m01Var).a();
                                                if (z) {
                                                    Splitter splitter1117 = f01.a;
                                                    f01.a(new ya2(ztVar));
                                                }
                                                if (z) {
                                                    illegalStateException = new IllegalStateException("CSRB A/B divergence: " + ztVar.g);
                                                    ((as3) bb2Var3.m).a("CSRB A/B divergence", (Throwable) illegalStateException);
                                                    if (bb2Var3.k.K()) {
                                                        throw illegalStateException;
                                                    }
                                                }
                                                pair = new p005kotlin.Pair(signals2, ztVar);
                                                if (pair instanceof i01) {
                                                    xs3.a((i01) pair, false);
                                                }
                                                CloseableKt.closeFinally(r21, null);
                                                Signals signals117 = (Signals) pair.component1();
                                                zt ztVar116 = (zt) pair.component2();
                                                ka2 ka2Var115 = bb2Var3.b;
                                                xa2Var.a = bb2Var3;
                                                xa2Var.b = null;
                                                xa2Var.c = null;
                                                xa2Var.d = null;
                                                xa2Var.e = null;
                                                xa2Var.f = null;
                                                xa2Var.g = null;
                                                xa2Var.l = 8;
                                                objA = ka2Var115.a(signals117, ztVar116, xa2Var);
                                                if (objA != coroutine_suspended) {
                                                    bb2Var4 = bb2Var3;
                                                    v01Var2 = (v01) objA;
                                                    if (v01Var2 instanceof i01) {
                                                        return (i01) v01Var2;
                                                    }
                                                    Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                    ac3Var = (ac3) ((q01) v01Var2).a();
                                                    kVar = bb2Var4.g;
                                                    xa2Var.a = bb2Var4;
                                                    xa2Var.b = ac3Var;
                                                    xa2Var.l = 9;
                                                    if (kVar.a(ac3Var, xa2Var) != coroutine_suspended) {
                                                        hs3.a().g().b.b = ac3Var.b.h;
                                                        boolean z117 = !ac3Var.a.isEmpty();
                                                        bb2Var4.r = z117;
                                                        BuildersKt__Builders_commonKt.launch$default(bb2Var4.p, null, null, new ab2(ac3Var, bb2Var4, z117, null), 3, null);
                                                        bb2Var4.q = true;
                                                        ec3Var = new ec3(new wb3(bb2Var4.d), ac3Var);
                                                        ej1Var = bb2Var4.f;
                                                        xa2Var.a = ec3Var;
                                                        xa2Var.b = null;
                                                        xa2Var.l = 10;
                                                        if (ej1Var.a(ec3Var, xa2Var) != coroutine_suspended) {
                                                            ec3Var2 = ec3Var;
                                                            return new q01(ec3Var2);
                                                        }
                                                    }
                                                }
                                            } else {
                                                rr3VarA = hs3.a(s11.CUI_NAME_ADREQUEST_BUILDURL, CollectionsKt.emptyList(), true);
                                                String json13 = bb2Var3.n.toJson(signals2);
                                                Splitter splitter1118 = f01.a;
                                                f01.a(new za2(json13));
                                                ytVar = zt.j;
                                                Object obj13 = bb2Var3.a;
                                                Intrinsics.checkNotNull(json13);
                                                xa2Var.a = bb2Var3;
                                                xa2Var.b = r110;
                                                xa2Var.c = r19;
                                                xa2Var.d = signals2;
                                                xa2Var.e = rr3VarA;
                                                xa2Var.f = rr3VarA;
                                                xa2Var.g = ytVar;
                                                xa2Var.i = z;
                                                xa2Var.l = 7;
                                                objA = ((rp0) obj13).a("AFMA_getAdDictionary", json13, xa2Var);
                                                if (objA != coroutine_suspended) {
                                                    rr3Var = rr3VarA;
                                                    r19 = r19;
                                                    r110 = r110;
                                                    ytVar.getClass();
                                                    m01Var = yt.a((v01) objA);
                                                    if (m01Var instanceof i01) {
                                                        xs3.a((i01) m01Var, false);
                                                    }
                                                    CloseableKt.closeFinally(rr3VarA, null);
                                                    r113 = r19;
                                                    r112 = r110;
                                                    r21 = r113;
                                                    if (m01Var instanceof i01) {
                                                        i01 i01Var1118 = (i01) m01Var;
                                                        xs3.a(i01Var1118, false);
                                                        CloseableKt.closeFinally(r21, null);
                                                        return i01Var1118;
                                                    }
                                                    Intrinsics.checkNotNull(m01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                    ztVar = (zt) ((q01) m01Var).a();
                                                    if (z) {
                                                        Splitter splitter1119 = f01.a;
                                                        f01.a(new ya2(ztVar));
                                                    }
                                                    if (z) {
                                                        illegalStateException = new IllegalStateException("CSRB A/B divergence: " + ztVar.g);
                                                        ((as3) bb2Var3.m).a("CSRB A/B divergence", (Throwable) illegalStateException);
                                                        if (bb2Var3.k.K()) {
                                                            throw illegalStateException;
                                                        }
                                                    }
                                                    pair = new p005kotlin.Pair(signals2, ztVar);
                                                    if (pair instanceof i01) {
                                                        xs3.a((i01) pair, false);
                                                    }
                                                    CloseableKt.closeFinally(r21, null);
                                                    Signals signals118 = (Signals) pair.component1();
                                                    zt ztVar117 = (zt) pair.component2();
                                                    ka2 ka2Var116 = bb2Var3.b;
                                                    xa2Var.a = bb2Var3;
                                                    xa2Var.b = null;
                                                    xa2Var.c = null;
                                                    xa2Var.d = null;
                                                    xa2Var.e = null;
                                                    xa2Var.f = null;
                                                    xa2Var.g = null;
                                                    xa2Var.l = 8;
                                                    objA = ka2Var116.a(signals118, ztVar117, xa2Var);
                                                    if (objA != coroutine_suspended) {
                                                        bb2Var4 = bb2Var3;
                                                        v01Var2 = (v01) objA;
                                                        if (v01Var2 instanceof i01) {
                                                            return (i01) v01Var2;
                                                        }
                                                        Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                        ac3Var = (ac3) ((q01) v01Var2).a();
                                                        kVar = bb2Var4.g;
                                                        xa2Var.a = bb2Var4;
                                                        xa2Var.b = ac3Var;
                                                        xa2Var.l = 9;
                                                        if (kVar.a(ac3Var, xa2Var) != coroutine_suspended) {
                                                            hs3.a().g().b.b = ac3Var.b.h;
                                                            boolean z118 = !ac3Var.a.isEmpty();
                                                            bb2Var4.r = z118;
                                                            BuildersKt__Builders_commonKt.launch$default(bb2Var4.p, null, null, new ab2(ac3Var, bb2Var4, z118, null), 3, null);
                                                            bb2Var4.q = true;
                                                            ec3Var = new ec3(new wb3(bb2Var4.d), ac3Var);
                                                            ej1Var = bb2Var4.f;
                                                            xa2Var.a = ec3Var;
                                                            xa2Var.b = null;
                                                            xa2Var.l = 10;
                                                            if (ej1Var.a(ec3Var, xa2Var) != coroutine_suspended) {
                                                                ec3Var2 = ec3Var;
                                                                return new q01(ec3Var2);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            return coroutine_suspended;
                        case 3:
                            Closeable closeable3 = xa2Var.c;
                            rr3 rr3Var4 = (rr3) xa2Var.b;
                            bb2Var5 = (bb2) xa2Var.a;
                            try {
                                p005kotlin.ResultKt.throwOnFailure(objA);
                                r9 = closeable3;
                                r11 = rr3Var4;
                                rawValue = ((Duration) objA).getRawValue();
                                r8 = r9;
                                r10 = r11;
                                if (Duration.m4366compareToLRDsOJo(rawValue, Duration.INSTANCE.m4458getZEROUwyO8pc()) > 0) {
                                    xa2Var.a = bb2Var5;
                                    xa2Var.b = r10;
                                    xa2Var.c = r8;
                                    xa2Var.l = 4;
                                    if (DelayKt.m4512delayVtjQ1oo(rawValue, xa2Var) != coroutine_suspended) {
                                        r2 = r8;
                                        r5 = r10;
                                        n01 n01Var13 = new n01("Too many recently failed requests for ad unit ID: " + bb2Var5.d.getAdUnitId() + ". You must wait a few seconds before making another ad request.", true);
                                        xs3.a(n01Var13, false);
                                        CloseableKt.closeFinally(r2, null);
                                        return n01Var13;
                                    }
                                } else {
                                    a aVar13 = bb2Var5.c;
                                    xa2Var.a = bb2Var5;
                                    xa2Var.b = r10;
                                    xa2Var.c = r8;
                                    xa2Var.l = 5;
                                    objA = aVar13.a(xa2Var);
                                    r16 = r8;
                                    r15 = r10;
                                    if (objA != coroutine_suspended) {
                                        bb2Var2 = bb2Var5;
                                        v01Var = (v01) objA;
                                        if (v01Var instanceof i01) {
                                            i01 i01Var1119 = (i01) v01Var;
                                            xs3.a(i01Var1119, false);
                                            CloseableKt.closeFinally(r16, null);
                                            return i01Var1119;
                                        }
                                        Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                        signals = (Signals) ((q01) v01Var).a();
                                        if (bb2Var2.k.w) {
                                            bb2Var2.l.getClass();
                                            if (Random.INSTANCE.nextInt(1000) < bb2Var2.k.x * ((double) 1000)) {
                                                z = true;
                                            } else {
                                                z = false;
                                            }
                                        } else {
                                            z = false;
                                        }
                                        if (bb2Var2.k.S()) {
                                        }
                                        xa2Var.a = bb2Var2;
                                        xa2Var.b = r15;
                                        xa2Var.c = r16;
                                        xa2Var.d = signals;
                                        xa2Var.i = z;
                                        xa2Var.l = 6;
                                        objA = bb2Var2.a(signals, xa2Var);
                                        r20 = r16;
                                        r111 = r15;
                                        if (objA == coroutine_suspended) {
                                            m01Var = (v01) objA;
                                            r18 = r20;
                                            r17 = r111;
                                            r19 = r18;
                                            r110 = r17;
                                            bb2Var3 = bb2Var2;
                                            signals2 = signals;
                                            if (!bb2Var3.k.S()) {
                                                if (m01Var == null) {
                                                    m01Var = new m01("Client side request building returned null while building URL.");
                                                }
                                                z2 = true;
                                                r113 = r19;
                                                r112 = r110;
                                                r21 = r113;
                                                if (m01Var instanceof i01) {
                                                    i01 i01Var11110 = (i01) m01Var;
                                                    xs3.a(i01Var11110, false);
                                                    CloseableKt.closeFinally(r21, null);
                                                    return i01Var11110;
                                                }
                                                Intrinsics.checkNotNull(m01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                ztVar = (zt) ((q01) m01Var).a();
                                                if (z) {
                                                    Splitter splitter11110 = f01.a;
                                                    f01.a(new ya2(ztVar));
                                                }
                                                if (z) {
                                                    illegalStateException = new IllegalStateException("CSRB A/B divergence: " + ztVar.g);
                                                    ((as3) bb2Var3.m).a("CSRB A/B divergence", (Throwable) illegalStateException);
                                                    if (bb2Var3.k.K()) {
                                                        throw illegalStateException;
                                                    }
                                                }
                                                pair = new p005kotlin.Pair(signals2, ztVar);
                                                if (pair instanceof i01) {
                                                    xs3.a((i01) pair, false);
                                                }
                                                CloseableKt.closeFinally(r21, null);
                                                Signals signals119 = (Signals) pair.component1();
                                                zt ztVar118 = (zt) pair.component2();
                                                ka2 ka2Var117 = bb2Var3.b;
                                                xa2Var.a = bb2Var3;
                                                xa2Var.b = null;
                                                xa2Var.c = null;
                                                xa2Var.d = null;
                                                xa2Var.e = null;
                                                xa2Var.f = null;
                                                xa2Var.g = null;
                                                xa2Var.l = 8;
                                                objA = ka2Var117.a(signals119, ztVar118, xa2Var);
                                                if (objA != coroutine_suspended) {
                                                    bb2Var4 = bb2Var3;
                                                    v01Var2 = (v01) objA;
                                                    if (v01Var2 instanceof i01) {
                                                        return (i01) v01Var2;
                                                    }
                                                    Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                    ac3Var = (ac3) ((q01) v01Var2).a();
                                                    kVar = bb2Var4.g;
                                                    xa2Var.a = bb2Var4;
                                                    xa2Var.b = ac3Var;
                                                    xa2Var.l = 9;
                                                    if (kVar.a(ac3Var, xa2Var) != coroutine_suspended) {
                                                        hs3.a().g().b.b = ac3Var.b.h;
                                                        boolean z119 = !ac3Var.a.isEmpty();
                                                        bb2Var4.r = z119;
                                                        BuildersKt__Builders_commonKt.launch$default(bb2Var4.p, null, null, new ab2(ac3Var, bb2Var4, z119, null), 3, null);
                                                        bb2Var4.q = true;
                                                        ec3Var = new ec3(new wb3(bb2Var4.d), ac3Var);
                                                        ej1Var = bb2Var4.f;
                                                        xa2Var.a = ec3Var;
                                                        xa2Var.b = null;
                                                        xa2Var.l = 10;
                                                        if (ej1Var.a(ec3Var, xa2Var) != coroutine_suspended) {
                                                            ec3Var2 = ec3Var;
                                                            return new q01(ec3Var2);
                                                        }
                                                    }
                                                }
                                            } else {
                                                rr3VarA = hs3.a(s11.CUI_NAME_ADREQUEST_BUILDURL, CollectionsKt.emptyList(), true);
                                                String json14 = bb2Var3.n.toJson(signals2);
                                                Splitter splitter11111 = f01.a;
                                                f01.a(new za2(json14));
                                                ytVar = zt.j;
                                                Object obj14 = bb2Var3.a;
                                                Intrinsics.checkNotNull(json14);
                                                xa2Var.a = bb2Var3;
                                                xa2Var.b = r110;
                                                xa2Var.c = r19;
                                                xa2Var.d = signals2;
                                                xa2Var.e = rr3VarA;
                                                xa2Var.f = rr3VarA;
                                                xa2Var.g = ytVar;
                                                xa2Var.i = z;
                                                xa2Var.l = 7;
                                                objA = ((rp0) obj14).a("AFMA_getAdDictionary", json14, xa2Var);
                                                if (objA != coroutine_suspended) {
                                                    rr3Var = rr3VarA;
                                                    r19 = r19;
                                                    r110 = r110;
                                                    ytVar.getClass();
                                                    m01Var = yt.a((v01) objA);
                                                    if (m01Var instanceof i01) {
                                                        xs3.a((i01) m01Var, false);
                                                    }
                                                    CloseableKt.closeFinally(rr3VarA, null);
                                                    r113 = r19;
                                                    r112 = r110;
                                                    r21 = r113;
                                                    if (m01Var instanceof i01) {
                                                        i01 i01Var11111 = (i01) m01Var;
                                                        xs3.a(i01Var11111, false);
                                                        CloseableKt.closeFinally(r21, null);
                                                        return i01Var11111;
                                                    }
                                                    Intrinsics.checkNotNull(m01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                    ztVar = (zt) ((q01) m01Var).a();
                                                    if (z) {
                                                        Splitter splitter11112 = f01.a;
                                                        f01.a(new ya2(ztVar));
                                                    }
                                                    if (z) {
                                                        illegalStateException = new IllegalStateException("CSRB A/B divergence: " + ztVar.g);
                                                        ((as3) bb2Var3.m).a("CSRB A/B divergence", (Throwable) illegalStateException);
                                                        if (bb2Var3.k.K()) {
                                                            throw illegalStateException;
                                                        }
                                                    }
                                                    pair = new p005kotlin.Pair(signals2, ztVar);
                                                    if (pair instanceof i01) {
                                                        xs3.a((i01) pair, false);
                                                    }
                                                    CloseableKt.closeFinally(r21, null);
                                                    Signals signals1110 = (Signals) pair.component1();
                                                    zt ztVar119 = (zt) pair.component2();
                                                    ka2 ka2Var118 = bb2Var3.b;
                                                    xa2Var.a = bb2Var3;
                                                    xa2Var.b = null;
                                                    xa2Var.c = null;
                                                    xa2Var.d = null;
                                                    xa2Var.e = null;
                                                    xa2Var.f = null;
                                                    xa2Var.g = null;
                                                    xa2Var.l = 8;
                                                    objA = ka2Var118.a(signals1110, ztVar119, xa2Var);
                                                    if (objA != coroutine_suspended) {
                                                        bb2Var4 = bb2Var3;
                                                        v01Var2 = (v01) objA;
                                                        if (v01Var2 instanceof i01) {
                                                            return (i01) v01Var2;
                                                        }
                                                        Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                        ac3Var = (ac3) ((q01) v01Var2).a();
                                                        kVar = bb2Var4.g;
                                                        xa2Var.a = bb2Var4;
                                                        xa2Var.b = ac3Var;
                                                        xa2Var.l = 9;
                                                        if (kVar.a(ac3Var, xa2Var) != coroutine_suspended) {
                                                            hs3.a().g().b.b = ac3Var.b.h;
                                                            boolean z1110 = !ac3Var.a.isEmpty();
                                                            bb2Var4.r = z1110;
                                                            BuildersKt__Builders_commonKt.launch$default(bb2Var4.p, null, null, new ab2(ac3Var, bb2Var4, z1110, null), 3, null);
                                                            bb2Var4.q = true;
                                                            ec3Var = new ec3(new wb3(bb2Var4.d), ac3Var);
                                                            ej1Var = bb2Var4.f;
                                                            xa2Var.a = ec3Var;
                                                            xa2Var.b = null;
                                                            xa2Var.l = 10;
                                                            if (ej1Var.a(ec3Var, xa2Var) != coroutine_suspended) {
                                                                ec3Var2 = ec3Var;
                                                                return new q01(ec3Var2);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                return coroutine_suspended;
                            } catch (Throwable th9) {
                                th = th9;
                                r2 = closeable3;
                                r5 = rr3Var4;
                                A = r2;
                                r12 = r5;
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
                        case 4:
                            r2 = xa2Var.c;
                            r5 = (rr3) xa2Var.b;
                            bb2Var5 = (bb2) xa2Var.a;
                            try {
                                p005kotlin.ResultKt.throwOnFailure(objA);
                                r2 = r2;
                                r5 = r5;
                                n01 n01Var14 = new n01("Too many recently failed requests for ad unit ID: " + bb2Var5.d.getAdUnitId() + ". You must wait a few seconds before making another ad request.", true);
                                xs3.a(n01Var14, false);
                                CloseableKt.closeFinally(r2, null);
                                return n01Var14;
                            } catch (Throwable th10) {
                                th = th10;
                                A = r2;
                                r12 = r5;
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
                            }
                        case 5:
                            Closeable closeable4 = xa2Var.c;
                            rr3 rr3Var5 = (rr3) xa2Var.b;
                            bb2Var5 = (bb2) xa2Var.a;
                            p005kotlin.ResultKt.throwOnFailure(objA);
                            r16 = closeable4;
                            r15 = rr3Var5;
                            bb2Var2 = bb2Var5;
                            v01Var = (v01) objA;
                            if (v01Var instanceof i01) {
                                i01 i01Var11112 = (i01) v01Var;
                                xs3.a(i01Var11112, false);
                                CloseableKt.closeFinally(r16, null);
                                return i01Var11112;
                            }
                            Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                            signals = (Signals) ((q01) v01Var).a();
                            if (bb2Var2.k.w) {
                                bb2Var2.l.getClass();
                                if (Random.INSTANCE.nextInt(1000) < bb2Var2.k.x * ((double) 1000)) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                            } else {
                                z = false;
                            }
                            if (bb2Var2.k.S()) {
                            }
                            xa2Var.a = bb2Var2;
                            xa2Var.b = r15;
                            xa2Var.c = r16;
                            xa2Var.d = signals;
                            xa2Var.i = z;
                            xa2Var.l = 6;
                            objA = bb2Var2.a(signals, xa2Var);
                            r20 = r16;
                            r111 = r15;
                            if (objA == coroutine_suspended) {
                                m01Var = (v01) objA;
                                r18 = r20;
                                r17 = r111;
                                r19 = r18;
                                r110 = r17;
                                bb2Var3 = bb2Var2;
                                signals2 = signals;
                                if (!bb2Var3.k.S()) {
                                    if (m01Var == null) {
                                        m01Var = new m01("Client side request building returned null while building URL.");
                                    }
                                    z2 = true;
                                    r113 = r19;
                                    r112 = r110;
                                    r21 = r113;
                                    if (m01Var instanceof i01) {
                                        i01 i01Var11113 = (i01) m01Var;
                                        xs3.a(i01Var11113, false);
                                        CloseableKt.closeFinally(r21, null);
                                        return i01Var11113;
                                    }
                                    Intrinsics.checkNotNull(m01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                    ztVar = (zt) ((q01) m01Var).a();
                                    if (z) {
                                        Splitter splitter11113 = f01.a;
                                        f01.a(new ya2(ztVar));
                                    }
                                    if (z) {
                                        illegalStateException = new IllegalStateException("CSRB A/B divergence: " + ztVar.g);
                                        ((as3) bb2Var3.m).a("CSRB A/B divergence", (Throwable) illegalStateException);
                                        if (bb2Var3.k.K()) {
                                            throw illegalStateException;
                                        }
                                    }
                                    pair = new p005kotlin.Pair(signals2, ztVar);
                                    if (pair instanceof i01) {
                                        xs3.a((i01) pair, false);
                                    }
                                    CloseableKt.closeFinally(r21, null);
                                    Signals signals1111 = (Signals) pair.component1();
                                    zt ztVar1110 = (zt) pair.component2();
                                    ka2 ka2Var119 = bb2Var3.b;
                                    xa2Var.a = bb2Var3;
                                    xa2Var.b = null;
                                    xa2Var.c = null;
                                    xa2Var.d = null;
                                    xa2Var.e = null;
                                    xa2Var.f = null;
                                    xa2Var.g = null;
                                    xa2Var.l = 8;
                                    objA = ka2Var119.a(signals1111, ztVar1110, xa2Var);
                                    if (objA != coroutine_suspended) {
                                        bb2Var4 = bb2Var3;
                                        v01Var2 = (v01) objA;
                                        if (v01Var2 instanceof i01) {
                                            return (i01) v01Var2;
                                        }
                                        Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                        ac3Var = (ac3) ((q01) v01Var2).a();
                                        kVar = bb2Var4.g;
                                        xa2Var.a = bb2Var4;
                                        xa2Var.b = ac3Var;
                                        xa2Var.l = 9;
                                        if (kVar.a(ac3Var, xa2Var) != coroutine_suspended) {
                                            hs3.a().g().b.b = ac3Var.b.h;
                                            boolean z1111 = !ac3Var.a.isEmpty();
                                            bb2Var4.r = z1111;
                                            BuildersKt__Builders_commonKt.launch$default(bb2Var4.p, null, null, new ab2(ac3Var, bb2Var4, z1111, null), 3, null);
                                            bb2Var4.q = true;
                                            ec3Var = new ec3(new wb3(bb2Var4.d), ac3Var);
                                            ej1Var = bb2Var4.f;
                                            xa2Var.a = ec3Var;
                                            xa2Var.b = null;
                                            xa2Var.l = 10;
                                            if (ej1Var.a(ec3Var, xa2Var) != coroutine_suspended) {
                                                ec3Var2 = ec3Var;
                                                return new q01(ec3Var2);
                                            }
                                        }
                                    }
                                } else {
                                    rr3VarA = hs3.a(s11.CUI_NAME_ADREQUEST_BUILDURL, CollectionsKt.emptyList(), true);
                                    String json15 = bb2Var3.n.toJson(signals2);
                                    Splitter splitter11114 = f01.a;
                                    f01.a(new za2(json15));
                                    ytVar = zt.j;
                                    Object obj15 = bb2Var3.a;
                                    Intrinsics.checkNotNull(json15);
                                    xa2Var.a = bb2Var3;
                                    xa2Var.b = r110;
                                    xa2Var.c = r19;
                                    xa2Var.d = signals2;
                                    xa2Var.e = rr3VarA;
                                    xa2Var.f = rr3VarA;
                                    xa2Var.g = ytVar;
                                    xa2Var.i = z;
                                    xa2Var.l = 7;
                                    objA = ((rp0) obj15).a("AFMA_getAdDictionary", json15, xa2Var);
                                    if (objA != coroutine_suspended) {
                                        rr3Var = rr3VarA;
                                        r19 = r19;
                                        r110 = r110;
                                        ytVar.getClass();
                                        m01Var = yt.a((v01) objA);
                                        if (m01Var instanceof i01) {
                                            xs3.a((i01) m01Var, false);
                                        }
                                        CloseableKt.closeFinally(rr3VarA, null);
                                        r113 = r19;
                                        r112 = r110;
                                        r21 = r113;
                                        if (m01Var instanceof i01) {
                                            i01 i01Var11114 = (i01) m01Var;
                                            xs3.a(i01Var11114, false);
                                            CloseableKt.closeFinally(r21, null);
                                            return i01Var11114;
                                        }
                                        Intrinsics.checkNotNull(m01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                        ztVar = (zt) ((q01) m01Var).a();
                                        if (z) {
                                            Splitter splitter11115 = f01.a;
                                            f01.a(new ya2(ztVar));
                                        }
                                        if (z) {
                                            illegalStateException = new IllegalStateException("CSRB A/B divergence: " + ztVar.g);
                                            ((as3) bb2Var3.m).a("CSRB A/B divergence", (Throwable) illegalStateException);
                                            if (bb2Var3.k.K()) {
                                                throw illegalStateException;
                                            }
                                        }
                                        pair = new p005kotlin.Pair(signals2, ztVar);
                                        if (pair instanceof i01) {
                                            xs3.a((i01) pair, false);
                                        }
                                        CloseableKt.closeFinally(r21, null);
                                        Signals signals1112 = (Signals) pair.component1();
                                        zt ztVar1111 = (zt) pair.component2();
                                        ka2 ka2Var1110 = bb2Var3.b;
                                        xa2Var.a = bb2Var3;
                                        xa2Var.b = null;
                                        xa2Var.c = null;
                                        xa2Var.d = null;
                                        xa2Var.e = null;
                                        xa2Var.f = null;
                                        xa2Var.g = null;
                                        xa2Var.l = 8;
                                        objA = ka2Var1110.a(signals1112, ztVar1111, xa2Var);
                                        if (objA != coroutine_suspended) {
                                            bb2Var4 = bb2Var3;
                                            v01Var2 = (v01) objA;
                                            if (v01Var2 instanceof i01) {
                                                return (i01) v01Var2;
                                            }
                                            Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                            ac3Var = (ac3) ((q01) v01Var2).a();
                                            kVar = bb2Var4.g;
                                            xa2Var.a = bb2Var4;
                                            xa2Var.b = ac3Var;
                                            xa2Var.l = 9;
                                            if (kVar.a(ac3Var, xa2Var) != coroutine_suspended) {
                                                hs3.a().g().b.b = ac3Var.b.h;
                                                boolean z1112 = !ac3Var.a.isEmpty();
                                                bb2Var4.r = z1112;
                                                BuildersKt__Builders_commonKt.launch$default(bb2Var4.p, null, null, new ab2(ac3Var, bb2Var4, z1112, null), 3, null);
                                                bb2Var4.q = true;
                                                ec3Var = new ec3(new wb3(bb2Var4.d), ac3Var);
                                                ej1Var = bb2Var4.f;
                                                xa2Var.a = ec3Var;
                                                xa2Var.b = null;
                                                xa2Var.l = 10;
                                                if (ej1Var.a(ec3Var, xa2Var) != coroutine_suspended) {
                                                    ec3Var2 = ec3Var;
                                                    return new q01(ec3Var2);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            return coroutine_suspended;
                        case 6:
                            z = xa2Var.i;
                            signals = xa2Var.d;
                            Closeable closeable5 = xa2Var.c;
                            rr3 rr3Var6 = (rr3) xa2Var.b;
                            bb2Var2 = (bb2) xa2Var.a;
                            p005kotlin.ResultKt.throwOnFailure(objA);
                            r20 = closeable5;
                            r111 = rr3Var6;
                            m01Var = (v01) objA;
                            r18 = r20;
                            r17 = r111;
                            r19 = r18;
                            r110 = r17;
                            bb2Var3 = bb2Var2;
                            signals2 = signals;
                            if (!bb2Var3.k.S()) {
                                rr3VarA = hs3.a(s11.CUI_NAME_ADREQUEST_BUILDURL, CollectionsKt.emptyList(), true);
                                String json16 = bb2Var3.n.toJson(signals2);
                                Splitter splitter11116 = f01.a;
                                f01.a(new za2(json16));
                                ytVar = zt.j;
                                Object obj16 = bb2Var3.a;
                                Intrinsics.checkNotNull(json16);
                                xa2Var.a = bb2Var3;
                                xa2Var.b = r110;
                                xa2Var.c = r19;
                                xa2Var.d = signals2;
                                xa2Var.e = rr3VarA;
                                xa2Var.f = rr3VarA;
                                xa2Var.g = ytVar;
                                xa2Var.i = z;
                                xa2Var.l = 7;
                                objA = ((rp0) obj16).a("AFMA_getAdDictionary", json16, xa2Var);
                                if (objA != coroutine_suspended) {
                                    rr3Var = rr3VarA;
                                    r19 = r19;
                                    r110 = r110;
                                    ytVar.getClass();
                                    m01Var = yt.a((v01) objA);
                                    if (m01Var instanceof i01) {
                                        xs3.a((i01) m01Var, false);
                                    }
                                    CloseableKt.closeFinally(rr3VarA, null);
                                    r113 = r19;
                                    r112 = r110;
                                    r21 = r113;
                                    if (m01Var instanceof i01) {
                                        i01 i01Var11115 = (i01) m01Var;
                                        xs3.a(i01Var11115, false);
                                        CloseableKt.closeFinally(r21, null);
                                        return i01Var11115;
                                    }
                                    Intrinsics.checkNotNull(m01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                    ztVar = (zt) ((q01) m01Var).a();
                                    if (z) {
                                        Splitter splitter11117 = f01.a;
                                        f01.a(new ya2(ztVar));
                                    }
                                    if (z) {
                                        illegalStateException = new IllegalStateException("CSRB A/B divergence: " + ztVar.g);
                                        ((as3) bb2Var3.m).a("CSRB A/B divergence", (Throwable) illegalStateException);
                                        if (bb2Var3.k.K()) {
                                            throw illegalStateException;
                                        }
                                    }
                                    pair = new p005kotlin.Pair(signals2, ztVar);
                                    if (pair instanceof i01) {
                                        xs3.a((i01) pair, false);
                                    }
                                    CloseableKt.closeFinally(r21, null);
                                    Signals signals1113 = (Signals) pair.component1();
                                    zt ztVar1112 = (zt) pair.component2();
                                    ka2 ka2Var1111 = bb2Var3.b;
                                    xa2Var.a = bb2Var3;
                                    xa2Var.b = null;
                                    xa2Var.c = null;
                                    xa2Var.d = null;
                                    xa2Var.e = null;
                                    xa2Var.f = null;
                                    xa2Var.g = null;
                                    xa2Var.l = 8;
                                    objA = ka2Var1111.a(signals1113, ztVar1112, xa2Var);
                                    if (objA != coroutine_suspended) {
                                        bb2Var4 = bb2Var3;
                                        v01Var2 = (v01) objA;
                                        if (v01Var2 instanceof i01) {
                                            return (i01) v01Var2;
                                        }
                                        Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                        ac3Var = (ac3) ((q01) v01Var2).a();
                                        kVar = bb2Var4.g;
                                        xa2Var.a = bb2Var4;
                                        xa2Var.b = ac3Var;
                                        xa2Var.l = 9;
                                        if (kVar.a(ac3Var, xa2Var) != coroutine_suspended) {
                                            hs3.a().g().b.b = ac3Var.b.h;
                                            boolean z1113 = !ac3Var.a.isEmpty();
                                            bb2Var4.r = z1113;
                                            BuildersKt__Builders_commonKt.launch$default(bb2Var4.p, null, null, new ab2(ac3Var, bb2Var4, z1113, null), 3, null);
                                            bb2Var4.q = true;
                                            ec3Var = new ec3(new wb3(bb2Var4.d), ac3Var);
                                            ej1Var = bb2Var4.f;
                                            xa2Var.a = ec3Var;
                                            xa2Var.b = null;
                                            xa2Var.l = 10;
                                            if (ej1Var.a(ec3Var, xa2Var) != coroutine_suspended) {
                                                ec3Var2 = ec3Var;
                                                return new q01(ec3Var2);
                                            }
                                        }
                                    }
                                }
                                break;
                            } else {
                                if (m01Var == null) {
                                    m01Var = new m01("Client side request building returned null while building URL.");
                                }
                                z2 = true;
                                r113 = r19;
                                r112 = r110;
                                r21 = r113;
                                if (m01Var instanceof i01) {
                                    i01 i01Var11116 = (i01) m01Var;
                                    xs3.a(i01Var11116, false);
                                    CloseableKt.closeFinally(r21, null);
                                    return i01Var11116;
                                }
                                Intrinsics.checkNotNull(m01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                ztVar = (zt) ((q01) m01Var).a();
                                if (z) {
                                    Splitter splitter11118 = f01.a;
                                    f01.a(new ya2(ztVar));
                                }
                                if (z) {
                                    illegalStateException = new IllegalStateException("CSRB A/B divergence: " + ztVar.g);
                                    ((as3) bb2Var3.m).a("CSRB A/B divergence", (Throwable) illegalStateException);
                                    if (bb2Var3.k.K()) {
                                        throw illegalStateException;
                                    }
                                }
                                pair = new p005kotlin.Pair(signals2, ztVar);
                                if (pair instanceof i01) {
                                    xs3.a((i01) pair, false);
                                }
                                CloseableKt.closeFinally(r21, null);
                                Signals signals1114 = (Signals) pair.component1();
                                zt ztVar1113 = (zt) pair.component2();
                                ka2 ka2Var1112 = bb2Var3.b;
                                xa2Var.a = bb2Var3;
                                xa2Var.b = null;
                                xa2Var.c = null;
                                xa2Var.d = null;
                                xa2Var.e = null;
                                xa2Var.f = null;
                                xa2Var.g = null;
                                xa2Var.l = 8;
                                objA = ka2Var1112.a(signals1114, ztVar1113, xa2Var);
                                if (objA != coroutine_suspended) {
                                    bb2Var4 = bb2Var3;
                                    v01Var2 = (v01) objA;
                                    if (v01Var2 instanceof i01) {
                                        return (i01) v01Var2;
                                    }
                                    Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                    ac3Var = (ac3) ((q01) v01Var2).a();
                                    kVar = bb2Var4.g;
                                    xa2Var.a = bb2Var4;
                                    xa2Var.b = ac3Var;
                                    xa2Var.l = 9;
                                    if (kVar.a(ac3Var, xa2Var) != coroutine_suspended) {
                                        hs3.a().g().b.b = ac3Var.b.h;
                                        boolean z1114 = !ac3Var.a.isEmpty();
                                        bb2Var4.r = z1114;
                                        BuildersKt__Builders_commonKt.launch$default(bb2Var4.p, null, null, new ab2(ac3Var, bb2Var4, z1114, null), 3, null);
                                        bb2Var4.q = true;
                                        ec3Var = new ec3(new wb3(bb2Var4.d), ac3Var);
                                        ej1Var = bb2Var4.f;
                                        xa2Var.a = ec3Var;
                                        xa2Var.b = null;
                                        xa2Var.l = 10;
                                        if (ej1Var.a(ec3Var, xa2Var) != coroutine_suspended) {
                                            ec3Var2 = ec3Var;
                                            return new q01(ec3Var2);
                                        }
                                    }
                                }
                            }
                            return coroutine_suspended;
                        case 7:
                            z = xa2Var.i;
                            ytVar = xa2Var.g;
                            rr3VarA = xa2Var.f;
                            rr3Var = xa2Var.e;
                            signals2 = xa2Var.d;
                            r19 = xa2Var.c;
                            r110 = (rr3) xa2Var.b;
                            bb2Var3 = (bb2) xa2Var.a;
                            try {
                                p005kotlin.ResultKt.throwOnFailure(objA);
                                r19 = r19;
                                r110 = r110;
                                ytVar.getClass();
                                m01Var = yt.a((v01) objA);
                                if (m01Var instanceof i01) {
                                    xs3.a((i01) m01Var, false);
                                    break;
                                }
                                CloseableKt.closeFinally(rr3VarA, null);
                                r113 = r19;
                                r112 = r110;
                                r21 = r113;
                                if (m01Var instanceof i01) {
                                    i01 i01Var11117 = (i01) m01Var;
                                    xs3.a(i01Var11117, false);
                                    CloseableKt.closeFinally(r21, null);
                                    return i01Var11117;
                                }
                                Intrinsics.checkNotNull(m01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                ztVar = (zt) ((q01) m01Var).a();
                                if (z) {
                                    Splitter splitter11119 = f01.a;
                                    f01.a(new ya2(ztVar));
                                }
                                if (z) {
                                    illegalStateException = new IllegalStateException("CSRB A/B divergence: " + ztVar.g);
                                    ((as3) bb2Var3.m).a("CSRB A/B divergence", (Throwable) illegalStateException);
                                    if (bb2Var3.k.K()) {
                                        throw illegalStateException;
                                    }
                                }
                                pair = new p005kotlin.Pair(signals2, ztVar);
                                if (pair instanceof i01) {
                                    xs3.a((i01) pair, false);
                                }
                                CloseableKt.closeFinally(r21, null);
                                Signals signals1115 = (Signals) pair.component1();
                                zt ztVar1114 = (zt) pair.component2();
                                ka2 ka2Var1113 = bb2Var3.b;
                                xa2Var.a = bb2Var3;
                                xa2Var.b = null;
                                xa2Var.c = null;
                                xa2Var.d = null;
                                xa2Var.e = null;
                                xa2Var.f = null;
                                xa2Var.g = null;
                                xa2Var.l = 8;
                                objA = ka2Var1113.a(signals1115, ztVar1114, xa2Var);
                                if (objA != coroutine_suspended) {
                                    bb2Var4 = bb2Var3;
                                    v01Var2 = (v01) objA;
                                    if (v01Var2 instanceof i01) {
                                        return (i01) v01Var2;
                                    }
                                    Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                    ac3Var = (ac3) ((q01) v01Var2).a();
                                    kVar = bb2Var4.g;
                                    xa2Var.a = bb2Var4;
                                    xa2Var.b = ac3Var;
                                    xa2Var.l = 9;
                                    if (kVar.a(ac3Var, xa2Var) != coroutine_suspended) {
                                        hs3.a().g().b.b = ac3Var.b.h;
                                        boolean z1115 = !ac3Var.a.isEmpty();
                                        bb2Var4.r = z1115;
                                        BuildersKt__Builders_commonKt.launch$default(bb2Var4.p, null, null, new ab2(ac3Var, bb2Var4, z1115, null), 3, null);
                                        bb2Var4.q = true;
                                        ec3Var = new ec3(new wb3(bb2Var4.d), ac3Var);
                                        ej1Var = bb2Var4.f;
                                        xa2Var.a = ec3Var;
                                        xa2Var.b = null;
                                        xa2Var.l = 10;
                                        if (ej1Var.a(ec3Var, xa2Var) != coroutine_suspended) {
                                            ec3Var2 = ec3Var;
                                            return new q01(ec3Var2);
                                        }
                                    }
                                }
                                return coroutine_suspended;
                            } catch (Throwable th11) {
                                th = th11;
                                rr3Var.b(th);
                                if (!(th instanceof v24)) {
                                    throw th;
                                }
                                if (!(th instanceof TimeoutCancellationException)) {
                                    rr3Var.a(th);
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
                        case 8:
                            bb2 bb2Var6 = (bb2) xa2Var.a;
                            p005kotlin.ResultKt.throwOnFailure(objA);
                            bb2Var4 = bb2Var6;
                            v01Var2 = (v01) objA;
                            if (v01Var2 instanceof i01) {
                                return (i01) v01Var2;
                            }
                            Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                            ac3Var = (ac3) ((q01) v01Var2).a();
                            kVar = bb2Var4.g;
                            xa2Var.a = bb2Var4;
                            xa2Var.b = ac3Var;
                            xa2Var.l = 9;
                            if (kVar.a(ac3Var, xa2Var) != coroutine_suspended) {
                                hs3.a().g().b.b = ac3Var.b.h;
                                boolean z1116 = !ac3Var.a.isEmpty();
                                bb2Var4.r = z1116;
                                BuildersKt__Builders_commonKt.launch$default(bb2Var4.p, null, null, new ab2(ac3Var, bb2Var4, z1116, null), 3, null);
                                bb2Var4.q = true;
                                ec3Var = new ec3(new wb3(bb2Var4.d), ac3Var);
                                ej1Var = bb2Var4.f;
                                xa2Var.a = ec3Var;
                                xa2Var.b = null;
                                xa2Var.l = 10;
                                if (ej1Var.a(ec3Var, xa2Var) != coroutine_suspended) {
                                    ec3Var2 = ec3Var;
                                    return new q01(ec3Var2);
                                }
                            }
                            return coroutine_suspended;
                        case 9:
                            ac3Var = (ac3) xa2Var.b;
                            bb2Var4 = (bb2) xa2Var.a;
                            p005kotlin.ResultKt.throwOnFailure(objA);
                            hs3.a().g().b.b = ac3Var.b.h;
                            boolean z1117 = !ac3Var.a.isEmpty();
                            bb2Var4.r = z1117;
                            BuildersKt__Builders_commonKt.launch$default(bb2Var4.p, null, null, new ab2(ac3Var, bb2Var4, z1117, null), 3, null);
                            bb2Var4.q = true;
                            ec3Var = new ec3(new wb3(bb2Var4.d), ac3Var);
                            ej1Var = bb2Var4.f;
                            xa2Var.a = ec3Var;
                            xa2Var.b = null;
                            xa2Var.l = 10;
                            if (ej1Var.a(ec3Var, xa2Var) != coroutine_suspended) {
                                ec3Var2 = ec3Var;
                                return new q01(ec3Var2);
                            }
                            return coroutine_suspended;
                        case 10:
                            ec3Var2 = (ec3) xa2Var.a;
                            p005kotlin.ResultKt.throwOnFailure(objA);
                            return new q01(ec3Var2);
                        default:
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } catch (Throwable th12) {
                    th = th12;
                }
            } catch (Throwable th13) {
                th = th13;
                A = r19;
                r12 = r110;
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
        } catch (Throwable th14) {
            th = th14;
        }
    }

    @Override // kotlin.li1
    public final Object a(ec3 ec3Var, i2 i2Var, ResponseInfo responseInfo, Continuation continuation) {
        return a(this, continuation);
    }

    @Override // kotlin.li1
    public final Object a(i01 i01Var, ResponseInfo responseInfo, Continuation continuation) {
        return a(this, i01Var, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0090 A[Catch: all -> 0x018d, TryCatch #2 {all -> 0x018d, blocks: (B:47:0x017b, B:49:0x017f, B:29:0x008a, B:31:0x0090, B:32:0x00b2), top: B:88:0x008a }] */
    /* JADX WARN: Code duplicated, block: B:32:0x00b2 A[Catch: all -> 0x018d, TRY_LEAVE, TryCatch #2 {all -> 0x018d, blocks: (B:47:0x017b, B:49:0x017f, B:29:0x008a, B:31:0x0090, B:32:0x00b2), top: B:88:0x008a }] */
    /* JADX WARN: Code duplicated, block: B:35:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:38:0x00f5 A[Catch: all -> 0x003f, TryCatch #5 {all -> 0x003f, blocks: (B:13:0x003a, B:36:0x00e5, B:38:0x00f5, B:40:0x010d, B:42:0x0123, B:43:0x0158, B:45:0x015c), top: B:94:0x003a }] */
    /* JADX WARN: Code duplicated, block: B:40:0x010d A[Catch: all -> 0x003f, TryCatch #5 {all -> 0x003f, blocks: (B:13:0x003a, B:36:0x00e5, B:38:0x00f5, B:40:0x010d, B:42:0x0123, B:43:0x0158, B:45:0x015c), top: B:94:0x003a }] */
    /* JADX WARN: Code duplicated, block: B:41:0x0122  */
    /* JADX WARN: Code duplicated, block: B:43:0x0158 A[Catch: all -> 0x003f, TryCatch #5 {all -> 0x003f, blocks: (B:13:0x003a, B:36:0x00e5, B:38:0x00f5, B:40:0x010d, B:42:0x0123, B:43:0x0158, B:45:0x015c), top: B:94:0x003a }] */
    /* JADX WARN: Code duplicated, block: B:45:0x015c A[Catch: all -> 0x003f, TRY_LEAVE, TryCatch #5 {all -> 0x003f, blocks: (B:13:0x003a, B:36:0x00e5, B:38:0x00f5, B:40:0x010d, B:42:0x0123, B:43:0x0158, B:45:0x015c), top: B:94:0x003a }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object a(Signals signals, Continuation continuation) {
        ta2 ta2Var;
        Closeable closeable;
        Signals signals2;
        bb2 bb2Var;
        rr3 rr3Var;
        Closeable closeable2;
        v01 v01Var;
        Signals signals3;
        Closeable closeable3;
        rr3 rr3Var2;
        v01 v01Var2;
        rr3 rr3Var3;
        List list;
        String strJoinToString$default;
        Closeable closeable4;
        rr3 rr3Var4;
        if (continuation instanceof ta2) {
            ta2Var = (ta2) continuation;
            int i = ta2Var.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                ta2Var.g = i - Integer.MIN_VALUE;
            } else {
                ta2Var = new ta2(this, continuation);
            }
        } else {
            ta2Var = new ta2(this, continuation);
        }
        ta2 ta2Var2 = ta2Var;
        Object objE = ta2Var2.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ta2Var2.g;
        if (i2 != 0) {
            if (i2 == 1) {
                rr3 rr3Var5 = ta2Var2.d;
                rr3 rr3Var6 = (rr3) ta2Var2.c;
                signals2 = (Signals) ta2Var2.b;
                bb2Var = (bb2) ta2Var2.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(objE);
                    closeable2 = rr3Var5;
                    rr3Var = rr3Var6;
                    try {
                        v01Var = (v01) objE;
                        if (!(v01Var instanceof i01)) {
                            Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                            ((q01) v01Var).getClass();
                            j43 j43Var = bb2Var.h;
                            yp2 yp2VarO0 = bb2Var.k.o0();
                            hj2 hj2VarM0 = bb2Var.k.m0();
                            Map mapW = bb2Var.k.w();
                            ta2Var2.a = signals2;
                            ta2Var2.b = rr3Var;
                            ta2Var2.c = closeable2;
                            ta2Var2.d = null;
                            ta2Var2.g = 2;
                            signals3 = signals2;
                            objE = j43Var.a(signals3, yp2VarO0, hj2VarM0, mapW, ta2Var2);
                            if (objE != coroutine_suspended) {
                                closeable3 = closeable2;
                                rr3Var2 = rr3Var;
                                v01Var2 = (v01) objE;
                                Splitter splitter = f01.a;
                                f01.a(new ua2(v01Var2));
                                if (v01Var2 instanceof q01) {
                                    String str = ((zt) ((q01) v01Var2).a()).e;
                                    list = ((zt) ((q01) v01Var2).a()).a;
                                    if (list != null) {
                                        strJoinToString$default = CollectionsKt.joinToString$default(list, FacebookConstants.PLACEMENT_IDS_SEPARATOR, null, null, 0, null, null, 62, null);
                                    } else {
                                        strJoinToString$default = null;
                                    }
                                    signals3.clientRequestBuildingData = new ClientRequestBuildingData(str, ((zt) ((q01) v01Var2).a()).c, strJoinToString$default, Boxing.boxBoolean(((zt) ((q01) v01Var2).a()).d), signals3.requestId, ((zt) ((q01) v01Var2).a()).f, 65);
                                } else if (v01Var2 instanceof i01) {
                                    signals3.clientRequestBuildingData = new ClientRequestBuildingData(null, null, "CSRB error: " + v01Var2, null, null, null, 247);
                                }
                                closeable2 = closeable3;
                                rr3Var = rr3Var2;
                            }
                            return coroutine_suspended;
                        }
                        v01Var2 = (i01) v01Var;
                        signals2.clientRequestBuildingData = new ClientRequestBuildingData(null, null, "CSRB error: " + v01Var2, null, null, null, 247);
                        closeable2 = closeable2;
                        rr3Var = rr3Var;
                    } catch (Throwable th) {
                        th = th;
                        rr3Var3 = rr3Var;
                        closeable = closeable2;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    closeable4 = rr3Var5;
                    rr3Var4 = rr3Var6;
                }
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                closeable4 = ta2Var2.c;
                rr3Var4 = (rr3) ta2Var2.b;
                signals3 = (Signals) ta2Var2.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(objE);
                    closeable3 = closeable4;
                    rr3Var2 = rr3Var4;
                    v01Var2 = (v01) objE;
                    Splitter splitter2 = f01.a;
                    f01.a(new ua2(v01Var2));
                    if (v01Var2 instanceof q01) {
                        String str2 = ((zt) ((q01) v01Var2).a()).e;
                        list = ((zt) ((q01) v01Var2).a()).a;
                        if (list != null) {
                            strJoinToString$default = CollectionsKt.joinToString$default(list, FacebookConstants.PLACEMENT_IDS_SEPARATOR, null, null, 0, null, null, 62, null);
                        } else {
                            strJoinToString$default = null;
                        }
                        signals3.clientRequestBuildingData = new ClientRequestBuildingData(str2, ((zt) ((q01) v01Var2).a()).c, strJoinToString$default, Boxing.boxBoolean(((zt) ((q01) v01Var2).a()).d), signals3.requestId, ((zt) ((q01) v01Var2).a()).f, 65);
                    } else if (v01Var2 instanceof i01) {
                        signals3.clientRequestBuildingData = new ClientRequestBuildingData(null, null, "CSRB error: " + v01Var2, null, null, null, 247);
                    }
                    closeable2 = closeable3;
                    rr3Var = rr3Var2;
                } catch (Throwable th3) {
                    th = th3;
                }
            }
            closeable = closeable4;
            rr3Var3 = rr3Var4;
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
            } catch (Throwable th4) {
                try {
                    throw th4;
                } catch (Throwable th5) {
                    CloseableKt.closeFinally(closeable, th4);
                    throw th5;
                }
            }
        }
        p005kotlin.ResultKt.throwOnFailure(objE);
        rr3 rr3VarA = hs3.a(s11.CUI_NAME_ADREQUEST_BUILDURL, CollectionsKt.emptyList(), true);
        try {
            jb3 jb3Var = this.a;
            ta2Var2.a = this;
            signals2 = signals;
            ta2Var2.b = signals2;
            ta2Var2.c = rr3VarA;
            ta2Var2.d = rr3VarA;
            ta2Var2.g = 1;
            objE = ((yq1) jb3Var).e(ta2Var2);
            if (objE != coroutine_suspended) {
                bb2Var = this;
                rr3 rr3Var7 = rr3VarA;
                rr3Var = rr3Var7;
                closeable2 = rr3Var7;
                v01Var = (v01) objE;
                if (!(v01Var instanceof i01)) {
                    v01Var2 = (i01) v01Var;
                    signals2.clientRequestBuildingData = new ClientRequestBuildingData(null, null, "CSRB error: " + v01Var2, null, null, null, 247);
                    closeable2 = closeable2;
                    rr3Var = rr3Var;
                } else {
                    Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                    ((q01) v01Var).getClass();
                    j43 j43Var2 = bb2Var.h;
                    yp2 yp2VarO1 = bb2Var.k.o0();
                    hj2 hj2VarM1 = bb2Var.k.m0();
                    Map mapW2 = bb2Var.k.w();
                    ta2Var2.a = signals2;
                    ta2Var2.b = rr3Var;
                    ta2Var2.c = closeable2;
                    ta2Var2.d = null;
                    ta2Var2.g = 2;
                    signals3 = signals2;
                    objE = j43Var2.a(signals3, yp2VarO1, hj2VarM1, mapW2, ta2Var2);
                    if (objE != coroutine_suspended) {
                        closeable3 = closeable2;
                        rr3Var2 = rr3Var;
                        v01Var2 = (v01) objE;
                        Splitter splitter3 = f01.a;
                        f01.a(new ua2(v01Var2));
                        if (v01Var2 instanceof q01) {
                            String str3 = ((zt) ((q01) v01Var2).a()).e;
                            list = ((zt) ((q01) v01Var2).a()).a;
                            if (list != null) {
                                strJoinToString$default = CollectionsKt.joinToString$default(list, FacebookConstants.PLACEMENT_IDS_SEPARATOR, null, null, 0, null, null, 62, null);
                            } else {
                                strJoinToString$default = null;
                            }
                            signals3.clientRequestBuildingData = new ClientRequestBuildingData(str3, ((zt) ((q01) v01Var2).a()).c, strJoinToString$default, Boxing.boxBoolean(((zt) ((q01) v01Var2).a()).d), signals3.requestId, ((zt) ((q01) v01Var2).a()).f, 65);
                        } else if (v01Var2 instanceof i01) {
                            signals3.clientRequestBuildingData = new ClientRequestBuildingData(null, null, "CSRB error: " + v01Var2, null, null, null, 247);
                        }
                        closeable2 = closeable3;
                        rr3Var = rr3Var2;
                    }
                }
            }
            return coroutine_suspended;
        } catch (Throwable th6) {
            th = th6;
            closeable = rr3VarA;
            rr3Var3 = rr3VarA;
        }
        if (v01Var2 instanceof i01) {
            xs3.a((i01) v01Var2, false);
        }
        CloseableKt.closeFinally(closeable2, null);
        return v01Var2;
    }

    @Override // kotlin.nt3
    public final Object b(Continuation continuation) {
        return b(this, continuation);
    }
}

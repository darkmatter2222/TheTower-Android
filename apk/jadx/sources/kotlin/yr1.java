package kotlin;

import android.net.Uri;
import com.google.common.base.Splitter;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import java.util.LinkedHashMap;
import java.util.List;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class yr1 implements nr1 {
    public final g83 a;
    public final ks3 b;
    public final o21 c;
    public final CoroutineScope d;
    public final ex0 e;
    public final Mutex f;
    public final LinkedHashMap g;
    public final LinkedHashMap h;
    public final p02 i;

    public yr1(g83 rootTraceCreator, ks3 traceMetaSet, o21 gmaUtil, CoroutineScope backgroundScope, ex0 flags) {
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = rootTraceCreator;
        this.b = traceMetaSet;
        this.c = gmaUtil;
        this.d = backgroundScope;
        this.e = flags;
        this.f = MutexKt.Mutex$default(false, 1, null);
        this.g = new LinkedHashMap();
        this.h = new LinkedHashMap();
        this.i = new p02(null);
    }

    /* JADX WARN: Code duplicated, block: B:40:0x0119 A[Catch: all -> 0x015c, TryCatch #6 {all -> 0x015c, blocks: (B:38:0x010f, B:40:0x0119, B:43:0x0123, B:45:0x0129, B:47:0x0140, B:49:0x0148), top: B:156:0x010f }] */
    /* JADX WARN: Code duplicated, block: B:41:0x0120  */
    /* JADX WARN: Code duplicated, block: B:49:0x0148 A[Catch: all -> 0x015c, TRY_LEAVE, TryCatch #6 {all -> 0x015c, blocks: (B:38:0x010f, B:40:0x0119, B:43:0x0123, B:45:0x0129, B:47:0x0140, B:49:0x0148), top: B:156:0x010f }] */
    /* JADX WARN: Code duplicated, block: B:7:0x001d  */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00d7, code lost:
    
        if (r4 == r6) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0177, code lost:
    
        if (r4.lock(null, r5) == r6) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x01d1, code lost:
    
        if (r14.invoke(r5) == r6) goto L64;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v2, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v14, types: [T, java.lang.String] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object a(kotlin.yr1 r21, kotlin.r31 r22, android.net.Uri r23, p005kotlin.coroutines.Continuation r24) {
        /*
            Method dump skipped, instruction units count: 795
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.yr1.a(ads_mobile_sdk.yr1, ads_mobile_sdk.r31, android.net.Uri, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00a3 A[Catch: all -> 0x00bb, TryCatch #1 {all -> 0x00bb, blocks: (B:34:0x0099, B:36:0x00a3, B:37:0x00a8), top: B:55:0x0099 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x006e, code lost:
    
        if (r7.a(r10, r0) == r1) goto L44;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object a(kotlin.yr1 r7, java.lang.String r8, kotlin.r41 r9, p005kotlin.coroutines.Continuation r10) {
        /*
            Method dump skipped, instruction units count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.yr1.a(ads_mobile_sdk.yr1, java.lang.String, ads_mobile_sdk.r41, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object a(yr1 yr1Var, String str, Continuation continuation) {
        tr1 tr1Var;
        JsonObject jsonObject;
        if (continuation instanceof tr1) {
            tr1Var = (tr1) continuation;
            int i = tr1Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                tr1Var.e = i - Integer.MIN_VALUE;
            } else {
                tr1Var = new tr1(yr1Var, continuation);
            }
        } else {
            tr1Var = new tr1(yr1Var, continuation);
        }
        Object objA = tr1Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = tr1Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            p02 p02Var = yr1Var.i;
            tr1Var.a = yr1Var;
            tr1Var.b = str;
            tr1Var.e = 1;
            objA = p02Var.a(tr1Var);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                p005kotlin.ResultKt.throwOnFailure(objA);
                return p005kotlin.Unit.INSTANCE;
            }
            str = tr1Var.b;
            yr1Var = tr1Var.a;
            p005kotlin.ResultKt.throwOnFailure(objA);
        }
        t53 t53Var = (t53) objA;
        if (t53Var == null) {
            Splitter splitter = f01.a;
            f01.c("Unknown/Unexpected GMSG without a handler: result", null);
            xs3.a("Unknown/Unexpected GMSG without a handler: result", null, 6);
            return p005kotlin.Unit.INSTANCE;
        }
        ds1 ds1Var = ds1.a;
        try {
            jsonObject = (JsonObject) new Gson().fromJson(str, JsonObject.class);
        } catch (Exception e) {
            List list = a2.a(e, "t", e).s;
            String message = e.getMessage();
            if (message == null) {
                message = e.getClass().getName();
            }
            Intrinsics.checkNotNull(message);
            list.add(message);
            jsonObject = null;
        }
        if (jsonObject == null) {
            return p005kotlin.Unit.INSTANCE;
        }
        BuildersKt__Builders_commonKt.launch$default(yr1Var.d, null, null, new ur1(new vr1(yr1Var, t53Var, jsonObject, null), null), 3, null);
        return p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0063, code lost:
    
        if (r8.a(r6, r7, r0) == r1) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object a(kotlin.yr1 r5, java.lang.String r6, kotlinx.coroutines.CompletableDeferred r7, p005kotlin.coroutines.Continuation r8) {
        /*
            boolean r0 = r8 instanceof kotlin.xr1
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.xr1 r0 = (kotlin.xr1) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.xr1 r0 = new ads_mobile_sdk.xr1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.c
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            p005kotlin.ResultKt.throwOnFailure(r8)
            goto L66
        L2c:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L34:
            kotlinx.coroutines.CompletableDeferred r7 = r0.b
            java.lang.String r6 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r8)
            goto L4e
        L3c:
            p005kotlin.ResultKt.throwOnFailure(r8)
            ads_mobile_sdk.p02 r5 = r5.i
            r0.a = r6
            r0.b = r7
            r0.e = r4
            java.lang.Object r8 = r5.a(r0)
            if (r8 != r1) goto L4e
            goto L65
        L4e:
            ads_mobile_sdk.t53 r8 = (kotlin.t53) r8
            if (r8 != 0) goto L58
            r5 = 0
            java.lang.Boolean r5 = p005kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r5)
            return r5
        L58:
            r5 = 0
            r0.a = r5
            r0.b = r5
            r0.e = r3
            java.lang.Object r5 = r8.a(r6, r7, r0)
            if (r5 != r1) goto L66
        L65:
            return r1
        L66:
            java.lang.Boolean r5 = p005kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r4)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.yr1.a(ads_mobile_sdk.yr1, java.lang.String, kotlinx.coroutines.CompletableDeferred, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlin.nr1
    public final Object a(r31 r31Var, Uri uri, Continuation continuation) {
        return a(this, r31Var, uri, continuation);
    }

    @Override // kotlin.nr1
    public final Object a(r31 r31Var, String str, Continuation continuation) {
        return a(this, str, continuation);
    }

    @Override // kotlin.nr1
    public final Object a(String str, r41 r41Var, Continuation continuation) {
        return a(this, str, r41Var, continuation);
    }

    @Override // kotlin.nr1
    public final Object a(String str, CompletableDeferred completableDeferred, w21 w21Var) {
        return a(this, str, completableDeferred, w21Var);
    }
}

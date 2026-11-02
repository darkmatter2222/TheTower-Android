package kotlin;

import android.content.Context;
import android.net.Uri;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.ironsource.C3510b4;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.NonCancellable;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.TimeoutKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Ref;
import p005kotlin.text.StringsKt;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class yq1 extends rp0 implements jb3 {
    public final CoroutineScope d;
    public final CoroutineScope e;
    public final ex0 f;
    public final tx g;
    public final e01 h;
    public final uw0 i;
    public final cb3 j;
    public final iz3 k;
    public final g83 l;
    public final ar1 m;
    public final cw2 n;
    public final o21 o;
    public n30 p;

    public yq1(Context context, CoroutineScope uiScope, CoroutineScope backgroundScope, ex0 flags, tx clock, e01 httpClient, uw0 flagUpdater, cb3 sdkCoreDataStore, xw0 flagValueProvider, iz3 webViewFactory, g83 rootTraceCreator, ar1 jsContext, dw2 configuratorProvider, o21 gmaUtil) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(flagUpdater, "flagUpdater");
        Intrinsics.checkNotNullParameter(sdkCoreDataStore, "sdkCoreDataStore");
        Intrinsics.checkNotNullParameter(flagValueProvider, "flagValueProvider");
        Intrinsics.checkNotNullParameter(webViewFactory, "webViewFactory");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(jsContext, "jsContext");
        Intrinsics.checkNotNullParameter(configuratorProvider, "configuratorProvider");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        this.d = uiScope;
        this.e = backgroundScope;
        this.f = flags;
        this.g = clock;
        this.h = httpClient;
        this.i = flagUpdater;
        this.j = sdkCoreDataStore;
        this.k = webViewFactory;
        this.l = rootTraceCreator;
        this.m = jsContext;
        this.n = configuratorProvider;
        this.o = gmaUtil;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x006a, code lost:
    
        if (r5.c(r6, r0) == r1) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(kotlin.yq1 r5, java.lang.String r6, p005kotlin.coroutines.Continuation r7) {
        /*
            r5.getClass()
            boolean r0 = r7 instanceof kotlin.tq1
            if (r0 == 0) goto L16
            r0 = r7
            ads_mobile_sdk.tq1 r0 = (kotlin.tq1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.d = r1
            goto L1b
        L16:
            ads_mobile_sdk.tq1 r0 = new ads_mobile_sdk.tq1
            r0.<init>(r5, r7)
        L1b:
            java.lang.Object r7 = r0.b
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3d
            if (r2 == r4) goto L37
            if (r2 != r3) goto L2f
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L6d
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            ads_mobile_sdk.yq1 r5 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L4b
        L3d:
            p005kotlin.ResultKt.throwOnFailure(r7)
            r0.a = r5
            r0.d = r4
            java.lang.Object r7 = r5.a(r6, r0)
            if (r7 != r1) goto L4b
            goto L6c
        L4b:
            ads_mobile_sdk.v01 r7 = (kotlin.v01) r7
            boolean r6 = r7 instanceof kotlin.i01
            if (r6 == 0) goto L56
            ads_mobile_sdk.i01 r7 = (kotlin.i01) r7
            kotlin.Unit r5 = p005kotlin.Unit.INSTANCE
            return r5
        L56:
            java.lang.String r6 = "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"
            p005kotlin.jvm.internal.Intrinsics.checkNotNull(r7, r6)
            ads_mobile_sdk.q01 r7 = (kotlin.q01) r7
            java.lang.Object r6 = r7.b
            ads_mobile_sdk.fl1 r6 = (kotlin.fl1) r6
            r7 = 0
            r0.a = r7
            r0.d = r3
            java.lang.Object r5 = r5.c(r6, r0)
            if (r5 != r1) goto L6d
        L6c:
            return r1
        L6d:
            kotlin.Unit r5 = p005kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.yq1.a(ads_mobile_sdk.yq1, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object a(yq1 yq1Var, Continuation continuation) {
        vq1 vq1Var;
        long j;
        long duration;
        eb3 eb3Var;
        yq1Var.getClass();
        if (continuation instanceof vq1) {
            vq1Var = (vq1) continuation;
            int i = vq1Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                vq1Var.e = i - Integer.MIN_VALUE;
            } else {
                vq1Var = new vq1(yq1Var, continuation);
            }
        } else {
            vq1Var = new vq1(yq1Var, continuation);
        }
        Object objA = vq1Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = vq1Var.e;
        boolean z = true;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            cb3 cb3Var = yq1Var.j;
            vq1Var.a = yq1Var;
            vq1Var.e = 1;
            cb3Var.getClass();
            objA = cb3.a(cb3Var, vq1Var);
            if (objA != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i2 == 1) {
            yq1Var = vq1Var.a;
            p005kotlin.ResultKt.throwOnFailure(objA);
        } else {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            j = vq1Var.b;
            yq1Var = vq1Var.a;
            p005kotlin.ResultKt.throwOnFailure(objA);
        }
        duration = DurationKt.toDuration(((ua3) objA).x(), DurationUnit.MILLISECONDS);
        eb3Var = yq1Var.f.s;
        eb3Var.getClass();
        Duration.Companion companion = Duration.INSTANCE;
        if (Duration.m4366compareToLRDsOJo(j, Duration.m4396plusLRDsOJo(duration, ((Duration) eb3Var.a("gads:sdk_core_ttl_seconds", wm2.a(30, DurationUnit.DAYS, "gads:sdk_core_ttl_seconds", C3510b4.i.W), yr.l)).getRawValue())) >= 0) {
            z = false;
        }
        return Boxing.boxBoolean(z);
        String strV = ((ua3) objA).v();
        Intrinsics.checkNotNullExpressionValue(strV, "getCachedSdkCore(...)");
        if (StringsKt.isBlank(strV)) {
            z = false;
        } else {
            eb3 eb3Var2 = yq1Var.f.s;
            eb3Var2.getClass();
            if (Duration.m4366compareToLRDsOJo(((Duration) eb3Var2.a("gads:sdk_core_ttl_seconds", wm2.a(30, DurationUnit.DAYS, "gads:sdk_core_ttl_seconds", C3510b4.i.W), yr.l)).getRawValue(), Duration.INSTANCE.m4458getZEROUwyO8pc()) > 0) {
                yq1Var.g.getClass();
                long duration2 = DurationKt.toDuration(System.currentTimeMillis(), DurationUnit.MILLISECONDS);
                cb3 cb3Var2 = yq1Var.j;
                vq1Var.a = yq1Var;
                vq1Var.b = duration2;
                vq1Var.e = 2;
                cb3Var2.getClass();
                objA = cb3.a(cb3Var2, vq1Var);
                if (objA != coroutine_suspended) {
                    j = duration2;
                    duration = DurationKt.toDuration(((ua3) objA).x(), DurationUnit.MILLISECONDS);
                    eb3Var = yq1Var.f.s;
                    eb3Var.getClass();
                    Duration.Companion companion2 = Duration.INSTANCE;
                    if (Duration.m4366compareToLRDsOJo(j, Duration.m4396plusLRDsOJo(duration, ((Duration) eb3Var.a("gads:sdk_core_ttl_seconds", wm2.a(30, DurationUnit.DAYS, "gads:sdk_core_ttl_seconds", C3510b4.i.W), yr.l)).getRawValue())) >= 0) {
                        z = false;
                    }
                }
                return coroutine_suspended;
            }
        }
        return Boxing.boxBoolean(z);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object b(yq1 yq1Var, String str, Continuation continuation) {
        xq1 xq1Var;
        yq1Var.getClass();
        if (continuation instanceof xq1) {
            xq1Var = (xq1) continuation;
            int i = xq1Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                xq1Var.d = i - Integer.MIN_VALUE;
            } else {
                xq1Var = new xq1(yq1Var, continuation);
            }
        } else {
            xq1Var = new xq1(yq1Var, continuation);
        }
        Object objC = xq1Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = xq1Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objC);
            xq1Var.a = yq1Var;
            xq1Var.d = 1;
            objC = yq1Var.c(str, xq1Var);
            if (objC != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            String str2 = (String) xq1Var.a;
            p005kotlin.ResultKt.throwOnFailure(objC);
            return str2;
        }
        yq1Var = (yq1) xq1Var.a;
        p005kotlin.ResultKt.throwOnFailure(objC);
        v01 v01Var = (v01) objC;
        if (v01Var instanceof i01) {
            return null;
        }
        Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
        p53 p53Var = ((h81) ((q01) v01Var).b).d;
        String strA = p53Var != null ? p53.a(p53Var) : null;
        if (strA != null && !StringsKt.isBlank(strA)) {
            cb3 cb3Var = yq1Var.j;
            xq1Var.a = strA;
            xq1Var.d = 2;
            cb3Var.getClass();
            if (cb3.b(cb3Var, strA, xq1Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return strA;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00ba, code lost:
    
        if (kotlin.uw0.a(r2, r14, (com.google.gson.JsonObject) r15, r0) == r1) goto L44;
     */
    @Override // kotlin.rp0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlin.fl1 r14, p005kotlin.coroutines.Continuation r15) {
        /*
            Method dump skipped, instruction units count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.yq1.a(ads_mobile_sdk.fl1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:33:0x008e A[Catch: all -> 0x0046, TRY_LEAVE, TryCatch #4 {all -> 0x0046, blocks: (B:20:0x0042, B:31:0x0088, B:33:0x008e), top: B:109:0x0042 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x00a3 A[Catch: all -> 0x00d2, TryCatch #1 {all -> 0x00d2, blocks: (B:38:0x009c, B:40:0x00a3, B:42:0x00a7, B:44:0x00ab, B:45:0x00ae, B:47:0x00b2, B:49:0x00b6, B:51:0x00ba, B:52:0x00bb, B:53:0x00c0, B:54:0x00c1, B:55:0x00c8, B:56:0x00c9, B:57:0x00d0, B:58:0x00d1), top: B:104:0x009c }] */
    /* JADX WARN: Code duplicated, block: B:47:0x00b2 A[Catch: all -> 0x00d2, TryCatch #1 {all -> 0x00d2, blocks: (B:38:0x009c, B:40:0x00a3, B:42:0x00a7, B:44:0x00ab, B:45:0x00ae, B:47:0x00b2, B:49:0x00b6, B:51:0x00ba, B:52:0x00bb, B:53:0x00c0, B:54:0x00c1, B:55:0x00c8, B:56:0x00c9, B:57:0x00d0, B:58:0x00d1), top: B:104:0x009c }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00b6 A[Catch: all -> 0x00d2, TryCatch #1 {all -> 0x00d2, blocks: (B:38:0x009c, B:40:0x00a3, B:42:0x00a7, B:44:0x00ab, B:45:0x00ae, B:47:0x00b2, B:49:0x00b6, B:51:0x00ba, B:52:0x00bb, B:53:0x00c0, B:54:0x00c1, B:55:0x00c8, B:56:0x00c9, B:57:0x00d0, B:58:0x00d1), top: B:104:0x009c }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00ba A[Catch: all -> 0x00d2, TryCatch #1 {all -> 0x00d2, blocks: (B:38:0x009c, B:40:0x00a3, B:42:0x00a7, B:44:0x00ab, B:45:0x00ae, B:47:0x00b2, B:49:0x00b6, B:51:0x00ba, B:52:0x00bb, B:53:0x00c0, B:54:0x00c1, B:55:0x00c8, B:56:0x00c9, B:57:0x00d0, B:58:0x00d1), top: B:104:0x009c }] */
    /* JADX WARN: Code duplicated, block: B:52:0x00bb A[Catch: all -> 0x00d2, TryCatch #1 {all -> 0x00d2, blocks: (B:38:0x009c, B:40:0x00a3, B:42:0x00a7, B:44:0x00ab, B:45:0x00ae, B:47:0x00b2, B:49:0x00b6, B:51:0x00ba, B:52:0x00bb, B:53:0x00c0, B:54:0x00c1, B:55:0x00c8, B:56:0x00c9, B:57:0x00d0, B:58:0x00d1), top: B:104:0x009c }] */
    /* JADX WARN: Code duplicated, block: B:54:0x00c1 A[Catch: all -> 0x00d2, TryCatch #1 {all -> 0x00d2, blocks: (B:38:0x009c, B:40:0x00a3, B:42:0x00a7, B:44:0x00ab, B:45:0x00ae, B:47:0x00b2, B:49:0x00b6, B:51:0x00ba, B:52:0x00bb, B:53:0x00c0, B:54:0x00c1, B:55:0x00c8, B:56:0x00c9, B:57:0x00d0, B:58:0x00d1), top: B:104:0x009c }] */
    /* JADX WARN: Code duplicated, block: B:56:0x00c9 A[Catch: all -> 0x00d2, TryCatch #1 {all -> 0x00d2, blocks: (B:38:0x009c, B:40:0x00a3, B:42:0x00a7, B:44:0x00ab, B:45:0x00ae, B:47:0x00b2, B:49:0x00b6, B:51:0x00ba, B:52:0x00bb, B:53:0x00c0, B:54:0x00c1, B:55:0x00c8, B:56:0x00c9, B:57:0x00d0, B:58:0x00d1), top: B:104:0x009c }] */
    /* JADX WARN: Code duplicated, block: B:58:0x00d1 A[Catch: all -> 0x00d2, TRY_LEAVE, TryCatch #1 {all -> 0x00d2, blocks: (B:38:0x009c, B:40:0x00a3, B:42:0x00a7, B:44:0x00ab, B:45:0x00ae, B:47:0x00b2, B:49:0x00b6, B:51:0x00ba, B:52:0x00bb, B:53:0x00c0, B:54:0x00c1, B:55:0x00c8, B:56:0x00c9, B:57:0x00d0, B:58:0x00d1), top: B:104:0x009c }] */
    /* JADX WARN: Code duplicated, block: B:71:0x00f7 A[Catch: all -> 0x0033, TRY_LEAVE, TryCatch #2 {all -> 0x0033, blocks: (B:13:0x002e, B:69:0x00f1, B:71:0x00f7), top: B:105:0x002e }] */
    /* JADX WARN: Code duplicated, block: B:78:0x010c A[Catch: all -> 0x013b, TryCatch #6 {all -> 0x013b, blocks: (B:76:0x0105, B:78:0x010c, B:80:0x0110, B:82:0x0114, B:83:0x0117, B:85:0x011b, B:87:0x011f, B:89:0x0123, B:90:0x0124, B:91:0x0129, B:92:0x012a, B:93:0x0131, B:94:0x0132, B:95:0x0139, B:96:0x013a), top: B:113:0x0105 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code duplicated, block: B:85:0x011b A[Catch: all -> 0x013b, TryCatch #6 {all -> 0x013b, blocks: (B:76:0x0105, B:78:0x010c, B:80:0x0110, B:82:0x0114, B:83:0x0117, B:85:0x011b, B:87:0x011f, B:89:0x0123, B:90:0x0124, B:91:0x0129, B:92:0x012a, B:93:0x0131, B:94:0x0132, B:95:0x0139, B:96:0x013a), top: B:113:0x0105 }] */
    /* JADX WARN: Code duplicated, block: B:87:0x011f A[Catch: all -> 0x013b, TryCatch #6 {all -> 0x013b, blocks: (B:76:0x0105, B:78:0x010c, B:80:0x0110, B:82:0x0114, B:83:0x0117, B:85:0x011b, B:87:0x011f, B:89:0x0123, B:90:0x0124, B:91:0x0129, B:92:0x012a, B:93:0x0131, B:94:0x0132, B:95:0x0139, B:96:0x013a), top: B:113:0x0105 }] */
    /* JADX WARN: Code duplicated, block: B:89:0x0123 A[Catch: all -> 0x013b, TryCatch #6 {all -> 0x013b, blocks: (B:76:0x0105, B:78:0x010c, B:80:0x0110, B:82:0x0114, B:83:0x0117, B:85:0x011b, B:87:0x011f, B:89:0x0123, B:90:0x0124, B:91:0x0129, B:92:0x012a, B:93:0x0131, B:94:0x0132, B:95:0x0139, B:96:0x013a), top: B:113:0x0105 }] */
    /* JADX WARN: Code duplicated, block: B:90:0x0124 A[Catch: all -> 0x013b, TryCatch #6 {all -> 0x013b, blocks: (B:76:0x0105, B:78:0x010c, B:80:0x0110, B:82:0x0114, B:83:0x0117, B:85:0x011b, B:87:0x011f, B:89:0x0123, B:90:0x0124, B:91:0x0129, B:92:0x012a, B:93:0x0131, B:94:0x0132, B:95:0x0139, B:96:0x013a), top: B:113:0x0105 }] */
    /* JADX WARN: Code duplicated, block: B:92:0x012a A[Catch: all -> 0x013b, TryCatch #6 {all -> 0x013b, blocks: (B:76:0x0105, B:78:0x010c, B:80:0x0110, B:82:0x0114, B:83:0x0117, B:85:0x011b, B:87:0x011f, B:89:0x0123, B:90:0x0124, B:91:0x0129, B:92:0x012a, B:93:0x0131, B:94:0x0132, B:95:0x0139, B:96:0x013a), top: B:113:0x0105 }] */
    /* JADX WARN: Code duplicated, block: B:94:0x0132 A[Catch: all -> 0x013b, TryCatch #6 {all -> 0x013b, blocks: (B:76:0x0105, B:78:0x010c, B:80:0x0110, B:82:0x0114, B:83:0x0117, B:85:0x011b, B:87:0x011f, B:89:0x0123, B:90:0x0124, B:91:0x0129, B:92:0x012a, B:93:0x0131, B:94:0x0132, B:95:0x0139, B:96:0x013a), top: B:113:0x0105 }] */
    /* JADX WARN: Code duplicated, block: B:96:0x013a A[Catch: all -> 0x013b, TRY_LEAVE, TryCatch #6 {all -> 0x013b, blocks: (B:76:0x0105, B:78:0x010c, B:80:0x0110, B:82:0x0114, B:83:0x0117, B:85:0x011b, B:87:0x011f, B:89:0x0123, B:90:0x0124, B:91:0x0129, B:92:0x012a, B:93:0x0131, B:94:0x0132, B:95:0x0139, B:96:0x013a), top: B:113:0x0105 }] */
    @Override // kotlin.rp0
    public final Object a(String str, Continuation continuation) {
        kq1 kq1Var;
        rr3 rr3Var;
        TimeoutCancellationException th;
        rr3 rr3Var2;
        rr3 rr3Var3;
        TimeoutCancellationException th2;
        rr3 rr3Var4;
        v01 v01Var;
        v01 v01Var2;
        if (continuation instanceof kq1) {
            kq1Var = (kq1) continuation;
            int i = kq1Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                kq1Var.e = i - Integer.MIN_VALUE;
            } else {
                kq1Var = new kq1(this, continuation);
            }
        } else {
            kq1Var = new kq1(this, continuation);
        }
        Object obj = kq1Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = kq1Var.e;
        if (i2 != 0) {
            if (i2 == 1) {
                rr3Var4 = kq1Var.b;
                rr3Var3 = kq1Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    v01Var = (v01) obj;
                    if (v01Var instanceof i01) {
                        xs3.a((i01) v01Var, false);
                    }
                    CloseableKt.closeFinally(rr3Var4, null);
                    return v01Var;
                } catch (Throwable th3) {
                    th2 = th3;
                    try {
                        rr3Var3.b(th2);
                        if (!(th2 instanceof v24)) {
                            throw th2;
                        }
                        if (!(th2 instanceof TimeoutCancellationException) && !(th2 instanceof CancellationException)) {
                            rr3Var3.a(th2);
                        }
                        if (!(th2 instanceof TimeoutCancellationException)) {
                            throw new i21(th2);
                        }
                        if (!(th2 instanceof CancellationException)) {
                            throw new wz0(th2);
                        }
                        if (th2 instanceof w01) {
                            throw th2;
                        }
                        throw new b01(th2);
                    } catch (Throwable th4) {
                        try {
                            throw th4;
                        } catch (Throwable th5) {
                            CloseableKt.closeFinally(rr3Var4, th4);
                            throw th5;
                        }
                    }
                }
            }
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            rr3Var2 = kq1Var.b;
            rr3Var = kq1Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj);
                v01Var2 = (v01) obj;
                if (v01Var2 instanceof i01) {
                    xs3.a((i01) v01Var2, false);
                }
                CloseableKt.closeFinally(rr3Var2, null);
                return v01Var2;
            } catch (Throwable th6) {
                th = th6;
                try {
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
                } catch (Throwable th7) {
                    try {
                        throw th7;
                    } catch (Throwable th8) {
                        CloseableKt.closeFinally(rr3Var2, th7);
                        throw th8;
                    }
                }
            }
        }
        p005kotlin.ResultKt.throwOnFailure(obj);
        g83 g83Var = this.l;
        s11 s11Var = s11.CUI_NAME_SDKINIT_SDKCORE;
        List listEmptyList = CollectionsKt.emptyList();
        ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
        if (hs3.b().a == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
            try {
                kq1Var.a = tu2VarA;
                kq1Var.b = tu2VarA;
                kq1Var.e = 1;
                Object objB = b(str, kq1Var);
                if (objB != coroutine_suspended) {
                    rr3Var3 = tu2VarA;
                    obj = objB;
                    rr3Var4 = rr3Var3;
                    v01Var = (v01) obj;
                    if (v01Var instanceof i01) {
                        xs3.a((i01) v01Var, false);
                    }
                    CloseableKt.closeFinally(rr3Var4, null);
                    return v01Var;
                }
            } catch (Throwable th9) {
                rr3Var3 = tu2VarA;
                th2 = th9;
                rr3Var4 = rr3Var3;
                rr3Var3.b(th2);
                if (!(th2 instanceof v24)) {
                    throw th2;
                }
                if (!(th2 instanceof TimeoutCancellationException)) {
                    rr3Var3.a(th2);
                }
                if (!(th2 instanceof TimeoutCancellationException)) {
                    throw new i21(th2);
                }
                if (!(th2 instanceof CancellationException)) {
                    throw new wz0(th2);
                }
                if (th2 instanceof w01) {
                    throw th2;
                }
                throw new b01(th2);
            }
        } else {
            rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
            try {
                kq1Var.a = rr3VarA;
                kq1Var.b = rr3VarA;
                kq1Var.e = 2;
                Object objB2 = b(str, kq1Var);
                if (objB2 != coroutine_suspended) {
                    rr3Var = rr3VarA;
                    obj = objB2;
                    rr3Var2 = rr3Var;
                    v01Var2 = (v01) obj;
                    if (v01Var2 instanceof i01) {
                        xs3.a((i01) v01Var2, false);
                    }
                    CloseableKt.closeFinally(rr3Var2, null);
                    return v01Var2;
                }
            } catch (Throwable th10) {
                rr3Var = rr3VarA;
                th = th10;
                rr3Var2 = rr3Var;
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
            }
        }
        return coroutine_suspended;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(List list, Executor executor, Continuation continuation) throws Throwable {
        wq1 wq1Var;
        Object objWithContext;
        if (continuation instanceof wq1) {
            wq1Var = (wq1) continuation;
            int i = wq1Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                wq1Var.e = i - Integer.MIN_VALUE;
            } else {
                wq1Var = new wq1(this, continuation);
            }
        } else {
            wq1Var = new wq1(this, continuation);
        }
        Object objB = wq1Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = wq1Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objB);
            wq1Var.a = list;
            wq1Var.b = executor;
            wq1Var.e = 1;
            objB = b(wq1Var);
            if (objB != coroutine_suspended) {
            }
        }
        if (i2 != 1) {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(objB);
            return objB;
        }
        executor = wq1Var.b;
        list = wq1Var.a;
        p005kotlin.ResultKt.throwOnFailure(objB);
        v01 v01Var = (v01) objB;
        if (v01Var instanceof i01) {
            return Boxing.boxBoolean(false);
        }
        Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
        fl1 fl1Var = (fl1) ((q01) v01Var).b;
        wq1Var.a = null;
        wq1Var.b = null;
        wq1Var.e = 2;
        r31 r31Var = fl1Var.a;
        if (r31Var == null) {
            objWithContext = Boxing.boxBoolean(false);
        } else {
            r31Var.A.offer(list);
            objWithContext = BuildersKt.withContext(fl1Var.b.getCoroutineContext(), new el1(r31Var, executor, null), wq1Var);
        }
        return objWithContext == coroutine_suspended ? coroutine_suspended : objWithContext;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    public final Object b(String str, Continuation continuation) {
        lq1 lq1Var;
        String str2;
        yq1 yq1Var;
        Ref.ObjectRef objectRef;
        if (continuation instanceof lq1) {
            lq1Var = (lq1) continuation;
            int i = lq1Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                lq1Var.e = i - Integer.MIN_VALUE;
            } else {
                lq1Var = new lq1(this, continuation);
            }
        } else {
            lq1Var = new lq1(this, continuation);
        }
        lq1 lq1Var2 = lq1Var;
        Object objM4522withTimeoutKLykuaI = lq1Var2.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = lq1Var2.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objM4522withTimeoutKLykuaI);
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            if (this.o.d()) {
                eb3 eb3Var = this.f.s;
                eb3Var.getClass();
                Intrinsics.checkNotNullParameter("gads:sdk_core_location:decagon", C3510b4.i.W);
                Intrinsics.checkNotNullParameter("https://mediation.goog/mads/static/sdk/native/sdk-core-v40.html", "defaultValue");
                str2 = (String) eb3Var.a("gads:sdk_core_location:decagon", "https://mediation.goog/mads/static/sdk/native/sdk-core-v40.html", yr.o);
            } else {
                eb3 eb3Var2 = this.f.s;
                eb3Var2.getClass();
                Intrinsics.checkNotNullParameter("gads:sdk_core_location:decagon", C3510b4.i.W);
                Intrinsics.checkNotNullParameter("https://googleads.g.doubleclick.net/mads/static/sdk/native/sdk-core-android.html", "defaultValue");
                str2 = (String) eb3Var2.a("gads:sdk_core_location:decagon", "https://googleads.g.doubleclick.net/mads/static/sdk/native/sdk-core-android.html", yr.o);
            }
            Uri.Builder builderBuildUpon = Uri.parse(str2).buildUpon();
            eb3 eb3Var3 = this.f.s;
            eb3Var3.getClass();
            JsonObject defaultValue = new JsonObject();
            Intrinsics.checkNotNullParameter("sdk_core_query_params", C3510b4.i.W);
            Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
            for (Map.Entry<String, JsonElement> entry : ((JsonObject) eb3Var3.a("sdk_core_query_params", defaultValue, yr.i)).entrySet()) {
                if (entry.getValue().isJsonPrimitive() && entry.getValue().getAsJsonPrimitive().isString()) {
                    builderBuildUpon.appendQueryParameter(entry.getKey(), entry.getValue().getAsString());
                }
            }
            String string = builderBuildUpon.build().toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            eb3 eb3Var4 = this.f.s;
            eb3Var4.getClass();
            Intrinsics.checkNotNullParameter("gads:cache_sdk_core:enabled", C3510b4.i.W);
            Boolean bool = Boolean.TRUE;
            ir irVar = yr.b;
            boolean zBooleanValue = ((Boolean) eb3Var4.a("gads:cache_sdk_core:enabled", bool, irVar)).booleanValue();
            eb3 eb3Var5 = this.f.s;
            eb3Var5.getClass();
            Intrinsics.checkNotNullParameter("gads:fetch_initial_sdk_core_separately:enabled", C3510b4.i.W);
            boolean zBooleanValue2 = ((Boolean) eb3Var5.a("gads:fetch_initial_sdk_core_separately:enabled", Boolean.FALSE, irVar)).booleanValue();
            try {
                long jA = this.f.s.a();
                pq1 pq1Var = new pq1(str, zBooleanValue, this, zBooleanValue2, objectRef2, string, null);
                lq1Var2.a = this;
                lq1Var2.b = objectRef2;
                lq1Var2.e = 1;
                objM4522withTimeoutKLykuaI = TimeoutKt.m4522withTimeoutKLykuaI(jA, pq1Var, lq1Var2);
                if (objM4522withTimeoutKLykuaI == coroutine_suspended) {
                    return coroutine_suspended;
                }
                yq1Var = this;
                objectRef = objectRef2;
            } catch (i21 e) {
                e = e;
                yq1Var = this;
                objectRef = objectRef2;
                BuildersKt__Builders_commonKt.launch$default(yq1Var.d, NonCancellable.INSTANCE, null, new rq1(objectRef, null), 2, null);
                return new r01("Timed out waiting on /jsLoaded gmsg while loading a JavascriptEngine", e);
            } catch (TimeoutCancellationException e2) {
                e = e2;
                yq1Var = this;
                objectRef = objectRef2;
                BuildersKt__Builders_commonKt.launch$default(yq1Var.d, NonCancellable.INSTANCE, null, new qq1(objectRef, null), 2, null);
                return new r01("Timed out waiting on /jsLoaded gmsg while loading a JavascriptEngine", e);
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            objectRef = lq1Var2.b;
            yq1Var = lq1Var2.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(objM4522withTimeoutKLykuaI);
            } catch (i21 e3) {
                e = e3;
                BuildersKt__Builders_commonKt.launch$default(yq1Var.d, NonCancellable.INSTANCE, null, new rq1(objectRef, null), 2, null);
                return new r01("Timed out waiting on /jsLoaded gmsg while loading a JavascriptEngine", e);
            } catch (TimeoutCancellationException e4) {
                e = e4;
                BuildersKt__Builders_commonKt.launch$default(yq1Var.d, NonCancellable.INSTANCE, null, new qq1(objectRef, null), 2, null);
                return new r01("Timed out waiting on /jsLoaded gmsg while loading a JavascriptEngine", e);
            }
        }
        return (v01) objM4522withTimeoutKLykuaI;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0098 A[Catch: all -> 0x0046, TRY_LEAVE, TryCatch #3 {all -> 0x0046, blocks: (B:20:0x0042, B:31:0x0092, B:33:0x0098), top: B:108:0x0042 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x00ad A[Catch: all -> 0x00dc, TryCatch #4 {all -> 0x00dc, blocks: (B:38:0x00a6, B:40:0x00ad, B:42:0x00b1, B:44:0x00b5, B:45:0x00b8, B:47:0x00bc, B:49:0x00c0, B:51:0x00c4, B:52:0x00c5, B:53:0x00ca, B:54:0x00cb, B:55:0x00d2, B:56:0x00d3, B:57:0x00da, B:58:0x00db), top: B:110:0x00a6 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x00bc A[Catch: all -> 0x00dc, TryCatch #4 {all -> 0x00dc, blocks: (B:38:0x00a6, B:40:0x00ad, B:42:0x00b1, B:44:0x00b5, B:45:0x00b8, B:47:0x00bc, B:49:0x00c0, B:51:0x00c4, B:52:0x00c5, B:53:0x00ca, B:54:0x00cb, B:55:0x00d2, B:56:0x00d3, B:57:0x00da, B:58:0x00db), top: B:110:0x00a6 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00c0 A[Catch: all -> 0x00dc, TryCatch #4 {all -> 0x00dc, blocks: (B:38:0x00a6, B:40:0x00ad, B:42:0x00b1, B:44:0x00b5, B:45:0x00b8, B:47:0x00bc, B:49:0x00c0, B:51:0x00c4, B:52:0x00c5, B:53:0x00ca, B:54:0x00cb, B:55:0x00d2, B:56:0x00d3, B:57:0x00da, B:58:0x00db), top: B:110:0x00a6 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00c4 A[Catch: all -> 0x00dc, TryCatch #4 {all -> 0x00dc, blocks: (B:38:0x00a6, B:40:0x00ad, B:42:0x00b1, B:44:0x00b5, B:45:0x00b8, B:47:0x00bc, B:49:0x00c0, B:51:0x00c4, B:52:0x00c5, B:53:0x00ca, B:54:0x00cb, B:55:0x00d2, B:56:0x00d3, B:57:0x00da, B:58:0x00db), top: B:110:0x00a6 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x00c5 A[Catch: all -> 0x00dc, TryCatch #4 {all -> 0x00dc, blocks: (B:38:0x00a6, B:40:0x00ad, B:42:0x00b1, B:44:0x00b5, B:45:0x00b8, B:47:0x00bc, B:49:0x00c0, B:51:0x00c4, B:52:0x00c5, B:53:0x00ca, B:54:0x00cb, B:55:0x00d2, B:56:0x00d3, B:57:0x00da, B:58:0x00db), top: B:110:0x00a6 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x00cb A[Catch: all -> 0x00dc, TryCatch #4 {all -> 0x00dc, blocks: (B:38:0x00a6, B:40:0x00ad, B:42:0x00b1, B:44:0x00b5, B:45:0x00b8, B:47:0x00bc, B:49:0x00c0, B:51:0x00c4, B:52:0x00c5, B:53:0x00ca, B:54:0x00cb, B:55:0x00d2, B:56:0x00d3, B:57:0x00da, B:58:0x00db), top: B:110:0x00a6 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x00d3 A[Catch: all -> 0x00dc, TryCatch #4 {all -> 0x00dc, blocks: (B:38:0x00a6, B:40:0x00ad, B:42:0x00b1, B:44:0x00b5, B:45:0x00b8, B:47:0x00bc, B:49:0x00c0, B:51:0x00c4, B:52:0x00c5, B:53:0x00ca, B:54:0x00cb, B:55:0x00d2, B:56:0x00d3, B:57:0x00da, B:58:0x00db), top: B:110:0x00a6 }] */
    /* JADX WARN: Code duplicated, block: B:58:0x00db A[Catch: all -> 0x00dc, TRY_LEAVE, TryCatch #4 {all -> 0x00dc, blocks: (B:38:0x00a6, B:40:0x00ad, B:42:0x00b1, B:44:0x00b5, B:45:0x00b8, B:47:0x00bc, B:49:0x00c0, B:51:0x00c4, B:52:0x00c5, B:53:0x00ca, B:54:0x00cb, B:55:0x00d2, B:56:0x00d3, B:57:0x00da, B:58:0x00db), top: B:110:0x00a6 }] */
    /* JADX WARN: Code duplicated, block: B:71:0x0108 A[Catch: all -> 0x0033, TRY_LEAVE, TryCatch #2 {all -> 0x0033, blocks: (B:13:0x002e, B:69:0x0102, B:71:0x0108), top: B:106:0x002e }] */
    /* JADX WARN: Code duplicated, block: B:78:0x011d A[Catch: all -> 0x014c, TryCatch #5 {all -> 0x014c, blocks: (B:76:0x0116, B:78:0x011d, B:80:0x0121, B:82:0x0125, B:83:0x0128, B:85:0x012c, B:87:0x0130, B:89:0x0134, B:90:0x0135, B:91:0x013a, B:92:0x013b, B:93:0x0142, B:94:0x0143, B:95:0x014a, B:96:0x014b), top: B:111:0x0116 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code duplicated, block: B:85:0x012c A[Catch: all -> 0x014c, TryCatch #5 {all -> 0x014c, blocks: (B:76:0x0116, B:78:0x011d, B:80:0x0121, B:82:0x0125, B:83:0x0128, B:85:0x012c, B:87:0x0130, B:89:0x0134, B:90:0x0135, B:91:0x013a, B:92:0x013b, B:93:0x0142, B:94:0x0143, B:95:0x014a, B:96:0x014b), top: B:111:0x0116 }] */
    /* JADX WARN: Code duplicated, block: B:87:0x0130 A[Catch: all -> 0x014c, TryCatch #5 {all -> 0x014c, blocks: (B:76:0x0116, B:78:0x011d, B:80:0x0121, B:82:0x0125, B:83:0x0128, B:85:0x012c, B:87:0x0130, B:89:0x0134, B:90:0x0135, B:91:0x013a, B:92:0x013b, B:93:0x0142, B:94:0x0143, B:95:0x014a, B:96:0x014b), top: B:111:0x0116 }] */
    /* JADX WARN: Code duplicated, block: B:89:0x0134 A[Catch: all -> 0x014c, TryCatch #5 {all -> 0x014c, blocks: (B:76:0x0116, B:78:0x011d, B:80:0x0121, B:82:0x0125, B:83:0x0128, B:85:0x012c, B:87:0x0130, B:89:0x0134, B:90:0x0135, B:91:0x013a, B:92:0x013b, B:93:0x0142, B:94:0x0143, B:95:0x014a, B:96:0x014b), top: B:111:0x0116 }] */
    /* JADX WARN: Code duplicated, block: B:90:0x0135 A[Catch: all -> 0x014c, TryCatch #5 {all -> 0x014c, blocks: (B:76:0x0116, B:78:0x011d, B:80:0x0121, B:82:0x0125, B:83:0x0128, B:85:0x012c, B:87:0x0130, B:89:0x0134, B:90:0x0135, B:91:0x013a, B:92:0x013b, B:93:0x0142, B:94:0x0143, B:95:0x014a, B:96:0x014b), top: B:111:0x0116 }] */
    /* JADX WARN: Code duplicated, block: B:92:0x013b A[Catch: all -> 0x014c, TryCatch #5 {all -> 0x014c, blocks: (B:76:0x0116, B:78:0x011d, B:80:0x0121, B:82:0x0125, B:83:0x0128, B:85:0x012c, B:87:0x0130, B:89:0x0134, B:90:0x0135, B:91:0x013a, B:92:0x013b, B:93:0x0142, B:94:0x0143, B:95:0x014a, B:96:0x014b), top: B:111:0x0116 }] */
    /* JADX WARN: Code duplicated, block: B:94:0x0143 A[Catch: all -> 0x014c, TryCatch #5 {all -> 0x014c, blocks: (B:76:0x0116, B:78:0x011d, B:80:0x0121, B:82:0x0125, B:83:0x0128, B:85:0x012c, B:87:0x0130, B:89:0x0134, B:90:0x0135, B:91:0x013a, B:92:0x013b, B:93:0x0142, B:94:0x0143, B:95:0x014a, B:96:0x014b), top: B:111:0x0116 }] */
    /* JADX WARN: Code duplicated, block: B:96:0x014b A[Catch: all -> 0x014c, TRY_LEAVE, TryCatch #5 {all -> 0x014c, blocks: (B:76:0x0116, B:78:0x011d, B:80:0x0121, B:82:0x0125, B:83:0x0128, B:85:0x012c, B:87:0x0130, B:89:0x0134, B:90:0x0135, B:91:0x013a, B:92:0x013b, B:93:0x0142, B:94:0x0143, B:95:0x014a, B:96:0x014b), top: B:111:0x0116 }] */
    public final Object c(String str, Continuation continuation) {
        uq1 uq1Var;
        rr3 rr3Var;
        TimeoutCancellationException th;
        rr3 rr3Var2;
        rr3 rr3Var3;
        TimeoutCancellationException th2;
        rr3 rr3Var4;
        v01 v01Var;
        v01 v01Var2;
        if (continuation instanceof uq1) {
            uq1Var = (uq1) continuation;
            int i = uq1Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                uq1Var.e = i - Integer.MIN_VALUE;
            } else {
                uq1Var = new uq1(this, continuation);
            }
        } else {
            uq1Var = new uq1(this, continuation);
        }
        Object obj = uq1Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = uq1Var.e;
        if (i2 != 0) {
            if (i2 == 1) {
                rr3Var4 = uq1Var.b;
                rr3Var3 = uq1Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    v01Var = (v01) obj;
                    if (v01Var instanceof i01) {
                        xs3.a((i01) v01Var, false);
                    }
                    CloseableKt.closeFinally(rr3Var4, null);
                    return v01Var;
                } catch (Throwable th3) {
                    th2 = th3;
                    try {
                        rr3Var3.b(th2);
                        if (!(th2 instanceof v24)) {
                            throw th2;
                        }
                        if (!(th2 instanceof TimeoutCancellationException)) {
                            rr3Var3.a(th2);
                        }
                        if (!(th2 instanceof TimeoutCancellationException)) {
                            throw new i21(th2);
                        }
                        if (!(th2 instanceof CancellationException)) {
                            throw new wz0(th2);
                        }
                        if (th2 instanceof w01) {
                            throw th2;
                        }
                        throw new b01(th2);
                    } catch (Throwable th4) {
                        try {
                            throw th4;
                        } catch (Throwable th5) {
                            CloseableKt.closeFinally(rr3Var4, th4);
                            throw th5;
                        }
                    }
                }
            }
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            rr3Var2 = uq1Var.b;
            rr3Var = uq1Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj);
                v01Var2 = (v01) obj;
                if (v01Var2 instanceof i01) {
                    xs3.a((i01) v01Var2, false);
                }
                CloseableKt.closeFinally(rr3Var2, null);
                return v01Var2;
            } catch (Throwable th6) {
                th = th6;
                try {
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
                } catch (Throwable th7) {
                    try {
                        throw th7;
                    } catch (Throwable th8) {
                        CloseableKt.closeFinally(rr3Var2, th7);
                        throw th8;
                    }
                }
            }
        }
        p005kotlin.ResultKt.throwOnFailure(obj);
        g83 g83Var = this.l;
        s11 s11Var = s11.CUI_NAME_SDKINIT_SDKCORE_REQUEST;
        List listEmptyList = CollectionsKt.emptyList();
        ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
        if (hs3.b().a == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
            try {
                e01 e01Var = this.h;
                URL url = new URL(str);
                uq1Var.a = tu2VarA;
                uq1Var.b = tu2VarA;
                uq1Var.e = 1;
                Object objA = e01.a(e01Var, url, null, uq1Var, 30);
                if (objA != coroutine_suspended) {
                    rr3Var3 = tu2VarA;
                    obj = objA;
                    rr3Var4 = rr3Var3;
                    v01Var = (v01) obj;
                    if (v01Var instanceof i01) {
                        xs3.a((i01) v01Var, false);
                    }
                    CloseableKt.closeFinally(rr3Var4, null);
                    return v01Var;
                }
            } catch (Throwable th9) {
                rr3Var3 = tu2VarA;
                th2 = th9;
                rr3Var4 = rr3Var3;
                rr3Var3.b(th2);
                if (!(th2 instanceof v24)) {
                    throw th2;
                }
                if (!(th2 instanceof TimeoutCancellationException) && !(th2 instanceof CancellationException)) {
                    rr3Var3.a(th2);
                }
                if (!(th2 instanceof TimeoutCancellationException)) {
                    throw new i21(th2);
                }
                if (!(th2 instanceof CancellationException)) {
                    throw new wz0(th2);
                }
                if (th2 instanceof w01) {
                    throw th2;
                }
                throw new b01(th2);
            }
        } else {
            rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
            try {
                e01 e01Var2 = this.h;
                URL url2 = new URL(str);
                uq1Var.a = rr3VarA;
                uq1Var.b = rr3VarA;
                uq1Var.e = 2;
                Object objA2 = e01.a(e01Var2, url2, null, uq1Var, 30);
                if (objA2 != coroutine_suspended) {
                    rr3Var = rr3VarA;
                    obj = objA2;
                    rr3Var2 = rr3Var;
                    v01Var2 = (v01) obj;
                    if (v01Var2 instanceof i01) {
                        xs3.a((i01) v01Var2, false);
                    }
                    CloseableKt.closeFinally(rr3Var2, null);
                    return v01Var2;
                }
            } catch (Throwable th10) {
                rr3Var = rr3VarA;
                th = th10;
                rr3Var2 = rr3Var;
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
            }
        }
        return coroutine_suspended;
    }

    /* JADX WARN: Code duplicated, block: B:40:0x0097  */
    /* JADX WARN: Code duplicated, block: B:42:0x009a  */
    /* JADX WARN: Code duplicated, block: B:44:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:46:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object e(Continuation continuation) {
        sq1 sq1Var;
        Object objA;
        yq1 yq1Var;
        yq1 yq1Var2;
        v01 v01Var;
        if (continuation instanceof sq1) {
            sq1Var = (sq1) continuation;
            int i = sq1Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                sq1Var.d = i - Integer.MIN_VALUE;
            } else {
                sq1Var = new sq1(this, continuation);
            }
        } else {
            sq1Var = new sq1(this, continuation);
        }
        Object objB = sq1Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = sq1Var.d;
        if (i2 != 0) {
            if (i2 == 1) {
                yq1Var = sq1Var.a;
                p005kotlin.ResultKt.throwOnFailure(objB);
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                yq1Var2 = sq1Var.a;
                p005kotlin.ResultKt.throwOnFailure(objB);
            }
            v01Var = (v01) objB;
            if (v01Var instanceof i01) {
                return (i01) v01Var;
            }
            Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
            return ((hr) yq1Var2.f.a).o.get() ? new q01(p005kotlin.Unit.INSTANCE) : new m01("Failed to get the CSRB flags", kk1.INTERNAL_ERROR);
        }
        p005kotlin.ResultKt.throwOnFailure(objB);
        ex0 ex0Var = this.f;
        sq1Var.a = this;
        sq1Var.d = 1;
        hr hrVar = (hr) ex0Var.a;
        if (hrVar.o.get() || (objA = hrVar.a((qb0) null, sq1Var)) != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            objA = p005kotlin.Unit.INSTANCE;
        }
        if (objA != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            objA = p005kotlin.Unit.INSTANCE;
        }
        if (objA != coroutine_suspended) {
            yq1Var = this;
        }
        return coroutine_suspended;
        if (((hr) yq1Var.f.a).o.get()) {
            return new q01(p005kotlin.Unit.INSTANCE);
        }
        sq1Var.a = yq1Var;
        sq1Var.d = 2;
        objB = yq1Var.b(sq1Var);
        if (objB != coroutine_suspended) {
            yq1Var2 = yq1Var;
            v01Var = (v01) objB;
            if (v01Var instanceof i01) {
                return (i01) v01Var;
            }
            Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
            if (((hr) yq1Var2.f.a).o.get()) {
            }
        }
        return coroutine_suspended;
    }
}

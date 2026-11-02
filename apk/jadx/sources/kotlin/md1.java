package kotlin;

import android.os.Bundle;
import com.google.android.libraries.ads.mobile.sdk.common.AdSourceResponseInfo;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.common.MediationAdError;
import com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import java.util.List;
import java.util.Locale;
import java.util.Optional;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.optionals.OptionalsKt;
import p005kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class md1 implements gj1, li1 {
    public final if1 a;
    public final j53 b;
    public final Optional c;
    public final String d;
    public final boolean e;
    public final tx f;
    public final Gson g;
    public final ex0 h;
    public final Optional i;
    public String j;
    public final Mutex k;
    public ed1 l;
    public boolean m;
    public boolean n;
    public JsonObject o;
    public String p;
    public String q;
    public String r;
    public JsonObject s;
    public JsonObject t;
    public i01 u;
    public ResponseInfo v;
    public long w;
    public volatile boolean x;

    public md1(if1 inspectorManager, j53 requestType, Optional baseRequest, String requestId, boolean z, tx clock, Gson gson, ex0 flags, Optional signalRequest) {
        Intrinsics.checkNotNullParameter(inspectorManager, "inspectorManager");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(gson, "gson");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(signalRequest, "signalRequest");
        this.a = inspectorManager;
        this.b = requestType;
        this.c = baseRequest;
        this.d = requestId;
        this.e = z;
        this.f = clock;
        this.g = gson;
        this.h = flags;
        this.i = signalRequest;
        this.k = MutexKt.Mutex$default(false, 1, null);
        this.l = ed1.AD_REQUESTED;
        this.o = new JsonObject();
        this.p = "";
        this.q = "";
        this.r = "";
        this.s = new JsonObject();
        this.t = new JsonObject();
        this.w = Duration.INSTANCE.m4458getZEROUwyO8pc();
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00ac A[Catch: all -> 0x0034, TryCatch #1 {all -> 0x0034, blocks: (B:13:0x002f, B:31:0x00a4, B:33:0x00ac, B:35:0x00bb, B:34:0x00b9), top: B:44:0x002f }] */
    /* JADX WARN: Code duplicated, block: B:34:0x00b9 A[Catch: all -> 0x0034, TryCatch #1 {all -> 0x0034, blocks: (B:13:0x002f, B:31:0x00a4, B:33:0x00ac, B:35:0x00bb, B:34:0x00b9), top: B:44:0x002f }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object a(md1 md1Var, ec3 ec3Var, Continuation continuation) throws Throwable {
        id1 id1Var;
        Mutex mutex;
        Mutex mutex2;
        md1 md1Var2;
        if (continuation instanceof id1) {
            id1Var = (id1) continuation;
            int i = id1Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                id1Var.f = i - Integer.MIN_VALUE;
            } else {
                id1Var = new id1(md1Var, continuation);
            }
        } else {
            id1Var = new id1(md1Var, continuation);
        }
        Object obj = id1Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = id1Var.f;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                if (!md1Var.x) {
                    return p005kotlin.Unit.INSTANCE;
                }
                mutex = md1Var.k;
                id1Var.a = md1Var;
                id1Var.b = ec3Var;
                id1Var.c = mutex;
                id1Var.f = 1;
                if (mutex.lock(null, id1Var) != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutex2 = id1Var.c;
                ec3Var = id1Var.b;
                md1Var2 = id1Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    if (((Boolean) obj).booleanValue()) {
                        zy zyVar = ec3Var.b.b;
                        md1Var2.t = zyVar.e;
                        md1Var2.q = zyVar.d;
                    } else {
                        md1Var2.m = true;
                    }
                    p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                    mutex2.unlock(null);
                    return unit;
                } catch (Throwable th) {
                    th = th;
                    mutex2.unlock(null);
                    throw th;
                }
            }
            Mutex mutex3 = id1Var.c;
            ec3Var = id1Var.b;
            md1 md1Var3 = id1Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex3;
            md1Var = md1Var3;
            zy zyVar2 = ec3Var.b.b;
            md1Var.o = zyVar2.f;
            md1Var.p = zyVar2.c;
            md1Var.r = zyVar2.b;
            md1Var.s = zyVar2.i;
            if1 if1Var = md1Var.a;
            int length = zyVar2.e.toString().length() + ec3Var.b.b.d.length();
            id1Var.a = md1Var;
            id1Var.b = ec3Var;
            id1Var.c = mutex;
            id1Var.f = 2;
            Object objA = if1Var.a(length, id1Var);
            if (objA != coroutine_suspended) {
                md1Var2 = md1Var;
                mutex2 = mutex;
                obj = objA;
                if (((Boolean) obj).booleanValue()) {
                    zy zyVar3 = ec3Var.b.b;
                    md1Var2.t = zyVar3.e;
                    md1Var2.q = zyVar3.d;
                } else {
                    md1Var2.m = true;
                }
                p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                mutex2.unlock(null);
                return unit2;
            }
            return coroutine_suspended;
        } catch (Throwable th2) {
            th = th2;
            mutex2 = mutex;
            mutex2.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00b4, code lost:
    
        if (kotlin.if1.d(r7, r0) == r1) goto L34;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object a(kotlin.md1 r7, kotlin.i01 r8, com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo r9, p005kotlin.coroutines.Continuation r10) {
        /*
            boolean r0 = r10 instanceof kotlin.gd1
            if (r0 == 0) goto L13
            r0 = r10
            ads_mobile_sdk.gd1 r0 = (kotlin.gd1) r0
            int r1 = r0.g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.g = r1
            goto L18
        L13:
            ads_mobile_sdk.gd1 r0 = new ads_mobile_sdk.gd1
            r0.<init>(r7, r10)
        L18:
            java.lang.Object r10 = r0.e
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.g
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L4d
            if (r2 == r5) goto L3f
            if (r2 == r4) goto L39
            if (r2 != r3) goto L31
            p005kotlin.ResultKt.throwOnFailure(r10)
            goto Lb7
        L31:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L39:
            ads_mobile_sdk.md1 r7 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r10)
            goto La7
        L3f:
            kotlinx.coroutines.sync.Mutex r7 = r0.d
            com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo r9 = r0.c
            ads_mobile_sdk.i01 r8 = r0.b
            ads_mobile_sdk.md1 r2 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r10)
            r10 = r7
            r7 = r2
            goto L6a
        L4d:
            p005kotlin.ResultKt.throwOnFailure(r10)
            boolean r10 = r7.x
            if (r10 != 0) goto L57
            kotlin.Unit r7 = p005kotlin.Unit.INSTANCE
            return r7
        L57:
            kotlinx.coroutines.sync.Mutex r10 = r7.k
            r0.a = r7
            r0.b = r8
            r0.c = r9
            r0.d = r10
            r0.g = r5
            java.lang.Object r2 = r10.lock(r6, r0)
            if (r2 != r1) goto L6a
            goto Lb6
        L6a:
            ads_mobile_sdk.ed1 r2 = kotlin.ed1.AD_LOAD_FAILED     // Catch: java.lang.Throwable -> Lba
            r7.l = r2     // Catch: java.lang.Throwable -> Lba
            r7.u = r8     // Catch: java.lang.Throwable -> Lba
            r7.v = r9     // Catch: java.lang.Throwable -> Lba
            kotlin.time.Duration$Companion r8 = p005kotlin.time.Duration.INSTANCE     // Catch: java.lang.Throwable -> Lba
            ads_mobile_sdk.tx r8 = r7.f     // Catch: java.lang.Throwable -> Lba
            r8.getClass()     // Catch: java.lang.Throwable -> Lba
            long r8 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> Lba
            kotlin.time.DurationUnit r2 = p005kotlin.time.DurationUnit.MILLISECONDS     // Catch: java.lang.Throwable -> Lba
            long r8 = p005kotlin.time.DurationKt.toDuration(r8, r2)     // Catch: java.lang.Throwable -> Lba
            r7.w = r8     // Catch: java.lang.Throwable -> Lba
            kotlin.Unit r8 = p005kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> Lba
            r10.unlock(r6)
            ads_mobile_sdk.if1 r8 = r7.a
            java.lang.String r9 = r7.j
            if (r9 != 0) goto L96
            java.lang.String r9 = "adUnitId"
            p005kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r9)
            r9 = r6
        L96:
            r0.a = r7
            r0.b = r6
            r0.c = r6
            r0.d = r6
            r0.g = r4
            java.lang.Object r8 = r8.a(r9, r7, r0)
            if (r8 != r1) goto La7
            goto Lb6
        La7:
            ads_mobile_sdk.if1 r7 = r7.a
            r0.a = r6
            r0.g = r3
            r7.getClass()
            java.lang.Object r7 = kotlin.if1.d(r7, r0)
            if (r7 != r1) goto Lb7
        Lb6:
            return r1
        Lb7:
            kotlin.Unit r7 = p005kotlin.Unit.INSTANCE
            return r7
        Lba:
            r7 = move-exception
            r10.unlock(r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.md1.a(ads_mobile_sdk.md1, ads_mobile_sdk.i01, com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00ac, code lost:
    
        if (kotlin.if1.d(r9, r0) == r1) goto L34;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object a(kotlin.md1 r9, com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo r10, p005kotlin.coroutines.Continuation r11) {
        /*
            boolean r0 = r11 instanceof kotlin.hd1
            if (r0 == 0) goto L13
            r0 = r11
            ads_mobile_sdk.hd1 r0 = (kotlin.hd1) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.hd1 r0 = new ads_mobile_sdk.hd1
            r0.<init>(r9, r11)
        L18:
            java.lang.Object r11 = r0.d
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L4b
            if (r2 == r5) goto L3f
            if (r2 == r4) goto L39
            if (r2 != r3) goto L31
            p005kotlin.ResultKt.throwOnFailure(r11)
            goto Laf
        L31:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L39:
            ads_mobile_sdk.md1 r9 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r11)
            goto L9f
        L3f:
            kotlinx.coroutines.sync.Mutex r9 = r0.c
            com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo r10 = r0.b
            ads_mobile_sdk.md1 r2 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r11)
            r11 = r9
            r9 = r2
            goto L66
        L4b:
            p005kotlin.ResultKt.throwOnFailure(r11)
            boolean r11 = r9.x
            if (r11 != 0) goto L55
            kotlin.Unit r9 = p005kotlin.Unit.INSTANCE
            return r9
        L55:
            kotlinx.coroutines.sync.Mutex r11 = r9.k
            r0.a = r9
            r0.b = r10
            r0.c = r11
            r0.f = r5
            java.lang.Object r2 = r11.lock(r6, r0)
            if (r2 != r1) goto L66
            goto Lae
        L66:
            ads_mobile_sdk.ed1 r2 = kotlin.ed1.AD_LOADED     // Catch: java.lang.Throwable -> Lb2
            r9.l = r2     // Catch: java.lang.Throwable -> Lb2
            r9.v = r10     // Catch: java.lang.Throwable -> Lb2
            kotlin.time.Duration$Companion r10 = p005kotlin.time.Duration.INSTANCE     // Catch: java.lang.Throwable -> Lb2
            ads_mobile_sdk.tx r10 = r9.f     // Catch: java.lang.Throwable -> Lb2
            r10.getClass()     // Catch: java.lang.Throwable -> Lb2
            long r7 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> Lb2
            kotlin.time.DurationUnit r10 = p005kotlin.time.DurationUnit.MILLISECONDS     // Catch: java.lang.Throwable -> Lb2
            long r7 = p005kotlin.time.DurationKt.toDuration(r7, r10)     // Catch: java.lang.Throwable -> Lb2
            r9.w = r7     // Catch: java.lang.Throwable -> Lb2
            kotlin.Unit r10 = p005kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> Lb2
            r11.unlock(r6)
            ads_mobile_sdk.if1 r10 = r9.a
            java.lang.String r11 = r9.j
            if (r11 != 0) goto L90
            java.lang.String r11 = "adUnitId"
            p005kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r11)
            r11 = r6
        L90:
            r0.a = r9
            r0.b = r6
            r0.c = r6
            r0.f = r4
            java.lang.Object r10 = r10.a(r11, r9, r0)
            if (r10 != r1) goto L9f
            goto Lae
        L9f:
            ads_mobile_sdk.if1 r9 = r9.a
            r0.a = r6
            r0.f = r3
            r9.getClass()
            java.lang.Object r9 = kotlin.if1.d(r9, r0)
            if (r9 != r1) goto Laf
        Lae:
            return r1
        Laf:
            kotlin.Unit r9 = p005kotlin.Unit.INSTANCE
            return r9
        Lb2:
            r9 = move-exception
            r11.unlock(r6)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.md1.a(ads_mobile_sdk.md1, com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object a(md1 md1Var, Continuation continuation) {
        fd1 fd1Var;
        Mutex mutex;
        if (continuation instanceof fd1) {
            fd1Var = (fd1) continuation;
            int i = fd1Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                fd1Var.e = i - Integer.MIN_VALUE;
            } else {
                fd1Var = new fd1(md1Var, continuation);
            }
        } else {
            fd1Var = new fd1(md1Var, continuation);
        }
        Object obj = fd1Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = fd1Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = md1Var.k;
            fd1Var.a = md1Var;
            fd1Var.b = mutex;
            fd1Var.e = 1;
            if (mutex.lock(null, fd1Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = fd1Var.b;
            md1 md1Var2 = fd1Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            md1Var = md1Var2;
        }
        try {
            md1Var.n = true;
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object b(md1 md1Var, Continuation continuation) {
        jd1 jd1Var;
        md1 md1Var2;
        String str;
        if (continuation instanceof jd1) {
            jd1Var = (jd1) continuation;
            int i = jd1Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                jd1Var.e = i - Integer.MIN_VALUE;
            } else {
                jd1Var = new jd1(md1Var, continuation);
            }
        } else {
            jd1Var = new jd1(md1Var, continuation);
        }
        Object obj = jd1Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = jd1Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            BaseRequest baseRequest = (BaseRequest) OptionalsKt.getOrNull(md1Var.c);
            String adUnitId = baseRequest != null ? baseRequest.getAdUnitId() : null;
            boolean z = false;
            boolean z2 = adUnitId == null;
            SignalRequest signalRequest = (SignalRequest) OptionalsKt.getOrNull(md1Var.i);
            if (signalRequest == null) {
                Object orNull = OptionalsKt.getOrNull(md1Var.c);
                signalRequest = orNull instanceof SignalRequest ? (SignalRequest) orNull : null;
            }
            boolean z3 = (signalRequest != null ? signalRequest.getN() : null) == x11.SCAR_REQUEST_TYPE_GAM_S2S;
            if (md1Var.h.b() && z3) {
                z = true;
            }
            if (z2 && !z) {
                return p005kotlin.Unit.INSTANCE;
            }
            if1 if1Var = md1Var.a;
            jd1Var.a = md1Var;
            jd1Var.b = adUnitId;
            jd1Var.e = 1;
            Object objV = if1Var.v(jd1Var);
            if (objV == coroutine_suspended) {
                return coroutine_suspended;
            }
            md1Var2 = md1Var;
            str = adUnitId;
            obj = objV;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str = jd1Var.b;
            md1Var2 = jd1Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        if (((Boolean) obj).booleanValue()) {
            if (str == null) {
                str = "SERVER_TO_SERVER_AD_UNIT_" + md1Var2.b.name();
            }
            md1Var2.j = str;
            md1Var2.x = true;
        }
        return p005kotlin.Unit.INSTANCE;
    }

    public final JsonObject a(ResponseInfo responseInfo) {
        JsonObject jsonObject;
        JsonElement jsonElement;
        JsonObject jsonObject2 = new JsonObject();
        jsonObject2.addProperty("winningAdapterClassName", responseInfo.getAdapterClassName());
        jsonObject2.addProperty("responseSecsSinceEpoch", Long.valueOf(Duration.m4381getInWholeSecondsimpl(this.w)));
        jsonObject2.addProperty("responseId", responseInfo.getResponseId());
        jsonObject2.addProperty("adRequestUrl", this.p);
        jsonObject2.addProperty("postBody", this.r);
        jsonObject2.addProperty("adResponseBody", this.q);
        jsonObject2.addProperty("hasExceededMemoryLimit", Boolean.valueOf(this.m));
        jsonObject2.add("adResponseHeaders", this.t);
        jsonObject2.add("transactionExtras", this.s);
        jsonObject2.add("biddingData", this.o);
        JsonArray jsonArray = new JsonArray();
        for (AdSourceResponseInfo adSourceResponseInfo : responseInfo.getAdSourceResponses()) {
            JsonObject jsonObject3 = new JsonObject();
            jsonObject3.addProperty("adapterClassName", adSourceResponseInfo.getAdapterClassName());
            jsonObject3.addProperty("latencyMillis", Long.valueOf(adSourceResponseInfo.getLatencyMillis()));
            Bundle credentials = adSourceResponseInfo.getCredentials();
            ds1 ds1Var = ds1.a;
            try {
                Gson gson = this.g;
                jsonObject = (JsonObject) gson.fromJson(gson.toJson(credentials), JsonObject.class);
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
                jsonObject = new JsonObject();
            }
            jsonObject3.add("credentials", jsonObject);
            MediationAdError adError = adSourceResponseInfo.getAdError();
            if (adError == null) {
                jsonElement = JsonNull.INSTANCE;
            } else {
                JsonObject jsonObject4 = new JsonObject();
                jsonObject4.addProperty("errorDomain", adError.getDomain());
                jsonObject4.addProperty("errorCode", adError.getCode());
                jsonObject4.addProperty("errorDescription", adError.getCom.tapjoy.TJAdUnitConstants.String.MESSAGE java.lang.String());
                jsonObject4.add("underlyingError", JsonNull.INSTANCE);
                jsonElement = jsonObject4;
            }
            jsonObject3.add("error", jsonElement);
            jsonArray.add(jsonObject3);
        }
        jsonObject2.add("adNetworks", jsonArray);
        i01 i01Var = this.u;
        if (responseInfo.getAdSourceResponses().isEmpty() && i01Var != null) {
            JsonArray jsonArray2 = new JsonArray();
            JsonObject jsonObject5 = new JsonObject();
            jsonObject5.addProperty("errorDomain", "com.google.android.libraries.ads.mobile.sdk");
            jsonObject5.addProperty("errorCode", i01Var.a().d().name());
            jsonObject5.addProperty("errorDescription", h01.a(i01Var));
            jsonObject5.add("underlyingError", JsonNull.INSTANCE);
            jsonArray2.add(jsonObject5);
            jsonObject2.add("errors", jsonArray2);
        }
        return jsonObject2;
    }

    @Override // kotlin.li1
    public final Object a(ec3 ec3Var, i2 i2Var, ResponseInfo responseInfo, Continuation continuation) {
        return a(this, responseInfo, continuation);
    }

    @Override // kotlin.gj1
    public final Object a(ec3 ec3Var, Continuation continuation) {
        return a(this, ec3Var, continuation);
    }

    @Override // kotlin.li1
    public final Object a(i01 i01Var, ResponseInfo responseInfo, Continuation continuation) {
        return a(this, i01Var, responseInfo, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(Continuation continuation) {
        kd1 kd1Var;
        md1 md1Var;
        Mutex mutex;
        if (continuation instanceof kd1) {
            kd1Var = (kd1) continuation;
            int i = kd1Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                kd1Var.e = i - Integer.MIN_VALUE;
            } else {
                kd1Var = new kd1(this, continuation);
            }
        } else {
            kd1Var = new kd1(this, continuation);
        }
        Object obj = kd1Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = kd1Var.e;
        boolean z = true;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Mutex mutex2 = this.k;
            kd1Var.a = this;
            kd1Var.b = mutex2;
            kd1Var.e = 1;
            if (mutex2.lock(null, kd1Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            md1Var = this;
            mutex = mutex2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = kd1Var.b;
            md1Var = kd1Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            if (md1Var.l == ed1.AD_REQUESTED) {
                z = false;
            }
            return Boxing.boxBoolean(z);
        } finally {
            mutex.unlock(null);
        }
    }

    @Override // kotlin.gj1
    public final Object c(Continuation continuation) {
        return b(this, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object s(Continuation continuation) {
        ld1 ld1Var;
        md1 md1Var;
        Mutex mutex;
        if (continuation instanceof ld1) {
            ld1Var = (ld1) continuation;
            int i = ld1Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                ld1Var.e = i - Integer.MIN_VALUE;
            } else {
                ld1Var = new ld1(this, continuation);
            }
        } else {
            ld1Var = new ld1(this, continuation);
        }
        Object obj = ld1Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ld1Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Mutex mutex2 = this.k;
            ld1Var.a = this;
            ld1Var.b = mutex2;
            ld1Var.e = 1;
            if (mutex2.lock(null, ld1Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            md1Var = this;
            mutex = mutex2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = ld1Var.b;
            md1Var = ld1Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("state", md1Var.l.name());
            String upperCase = md1Var.b.a.toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
            jsonObject.addProperty("format", upperCase);
            jsonObject.addProperty("isOutOfContext", Boxing.boxBoolean(md1Var.e));
            if (md1Var.e) {
                jsonObject.addProperty("shown", Boxing.boxBoolean(md1Var.n));
            }
            ResponseInfo responseInfo = md1Var.v;
            if (responseInfo != null) {
                jsonObject.add("responseInfo", md1Var.a(responseInfo));
            }
            return jsonObject;
        } finally {
            mutex.unlock(null);
        }
    }
}

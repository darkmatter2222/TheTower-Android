package kotlin;

import android.os.SystemClock;
import androidx.webkit.internal.AssetHelper;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import com.google.common.net.HttpHeaders;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.ironsource.C3510b4;
import com.ironsource.Ue;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Map;
import java.util.Optional;
import java.util.concurrent.CancellationException;
import java.util.zip.GZIPOutputStream;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.optionals.OptionalsKt;
import p005kotlin.text.Charsets;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class ka2 {
    public final jb3 a;
    public final g30 b;
    public final e01 c;
    public final zw3 d;
    public final ex0 e;
    public final tx f;
    public final Gson g;
    public final ej1 h;
    public final Optional i;
    public final ur3 j;

    public ka2(jb3 javascriptEngine, g30 consentManager, e01 httpClient, zw3 userAgentProvider, ex0 flags, tx clock, Gson gson, ej1 internalAdRequestEventEmitter, Optional isPersistentCacheFillRequest, ur3 traceLogger) {
        Intrinsics.checkNotNullParameter(javascriptEngine, "javascriptEngine");
        Intrinsics.checkNotNullParameter(consentManager, "consentManager");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(userAgentProvider, "userAgentProvider");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(gson, "gson");
        Intrinsics.checkNotNullParameter(internalAdRequestEventEmitter, "internalAdRequestEventEmitter");
        Intrinsics.checkNotNullParameter(isPersistentCacheFillRequest, "isPersistentCacheFillRequest");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        this.a = javascriptEngine;
        this.b = consentManager;
        this.c = httpClient;
        this.d = userAgentProvider;
        this.e = flags;
        this.f = clock;
        this.g = gson;
        this.h = internalAdRequestEventEmitter;
        this.i = isPersistentCacheFillRequest;
        this.j = traceLogger;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0269 A[Catch: all -> 0x027a, TryCatch #7 {all -> 0x027a, blocks: (B:84:0x0244, B:86:0x024b, B:88:0x024f, B:90:0x0253, B:91:0x0256, B:93:0x025a, B:95:0x025e, B:97:0x0262, B:98:0x0263, B:99:0x0268, B:100:0x0269, B:101:0x0270, B:102:0x0271, B:103:0x0278, B:104:0x0279), top: B:156:0x0244 }] */
    /* JADX WARN: Code duplicated, block: B:102:0x0271 A[Catch: all -> 0x027a, TryCatch #7 {all -> 0x027a, blocks: (B:84:0x0244, B:86:0x024b, B:88:0x024f, B:90:0x0253, B:91:0x0256, B:93:0x025a, B:95:0x025e, B:97:0x0262, B:98:0x0263, B:99:0x0268, B:100:0x0269, B:101:0x0270, B:102:0x0271, B:103:0x0278, B:104:0x0279), top: B:156:0x0244 }] */
    /* JADX WARN: Code duplicated, block: B:104:0x0279 A[Catch: all -> 0x027a, TRY_LEAVE, TryCatch #7 {all -> 0x027a, blocks: (B:84:0x0244, B:86:0x024b, B:88:0x024f, B:90:0x0253, B:91:0x0256, B:93:0x025a, B:95:0x025e, B:97:0x0262, B:98:0x0263, B:99:0x0268, B:100:0x0269, B:101:0x0270, B:102:0x0271, B:103:0x0278, B:104:0x0279), top: B:156:0x0244 }] */
    /* JADX WARN: Code duplicated, block: B:121:0x02a9 A[Catch: all -> 0x02d8, TryCatch #5 {all -> 0x02d8, blocks: (B:119:0x02a2, B:121:0x02a9, B:123:0x02ad, B:125:0x02b1, B:126:0x02b4, B:128:0x02b8, B:130:0x02bc, B:132:0x02c0, B:133:0x02c1, B:134:0x02c6, B:135:0x02c7, B:136:0x02ce, B:137:0x02cf, B:138:0x02d6, B:139:0x02d7), top: B:155:0x02a2 }] */
    /* JADX WARN: Code duplicated, block: B:128:0x02b8 A[Catch: all -> 0x02d8, TryCatch #5 {all -> 0x02d8, blocks: (B:119:0x02a2, B:121:0x02a9, B:123:0x02ad, B:125:0x02b1, B:126:0x02b4, B:128:0x02b8, B:130:0x02bc, B:132:0x02c0, B:133:0x02c1, B:134:0x02c6, B:135:0x02c7, B:136:0x02ce, B:137:0x02cf, B:138:0x02d6, B:139:0x02d7), top: B:155:0x02a2 }] */
    /* JADX WARN: Code duplicated, block: B:130:0x02bc A[Catch: all -> 0x02d8, TryCatch #5 {all -> 0x02d8, blocks: (B:119:0x02a2, B:121:0x02a9, B:123:0x02ad, B:125:0x02b1, B:126:0x02b4, B:128:0x02b8, B:130:0x02bc, B:132:0x02c0, B:133:0x02c1, B:134:0x02c6, B:135:0x02c7, B:136:0x02ce, B:137:0x02cf, B:138:0x02d6, B:139:0x02d7), top: B:155:0x02a2 }] */
    /* JADX WARN: Code duplicated, block: B:132:0x02c0 A[Catch: all -> 0x02d8, TryCatch #5 {all -> 0x02d8, blocks: (B:119:0x02a2, B:121:0x02a9, B:123:0x02ad, B:125:0x02b1, B:126:0x02b4, B:128:0x02b8, B:130:0x02bc, B:132:0x02c0, B:133:0x02c1, B:134:0x02c6, B:135:0x02c7, B:136:0x02ce, B:137:0x02cf, B:138:0x02d6, B:139:0x02d7), top: B:155:0x02a2 }] */
    /* JADX WARN: Code duplicated, block: B:133:0x02c1 A[Catch: all -> 0x02d8, TryCatch #5 {all -> 0x02d8, blocks: (B:119:0x02a2, B:121:0x02a9, B:123:0x02ad, B:125:0x02b1, B:126:0x02b4, B:128:0x02b8, B:130:0x02bc, B:132:0x02c0, B:133:0x02c1, B:134:0x02c6, B:135:0x02c7, B:136:0x02ce, B:137:0x02cf, B:138:0x02d6, B:139:0x02d7), top: B:155:0x02a2 }] */
    /* JADX WARN: Code duplicated, block: B:135:0x02c7 A[Catch: all -> 0x02d8, TryCatch #5 {all -> 0x02d8, blocks: (B:119:0x02a2, B:121:0x02a9, B:123:0x02ad, B:125:0x02b1, B:126:0x02b4, B:128:0x02b8, B:130:0x02bc, B:132:0x02c0, B:133:0x02c1, B:134:0x02c6, B:135:0x02c7, B:136:0x02ce, B:137:0x02cf, B:138:0x02d6, B:139:0x02d7), top: B:155:0x02a2 }] */
    /* JADX WARN: Code duplicated, block: B:137:0x02cf A[Catch: all -> 0x02d8, TryCatch #5 {all -> 0x02d8, blocks: (B:119:0x02a2, B:121:0x02a9, B:123:0x02ad, B:125:0x02b1, B:126:0x02b4, B:128:0x02b8, B:130:0x02bc, B:132:0x02c0, B:133:0x02c1, B:134:0x02c6, B:135:0x02c7, B:136:0x02ce, B:137:0x02cf, B:138:0x02d6, B:139:0x02d7), top: B:155:0x02a2 }] */
    /* JADX WARN: Code duplicated, block: B:139:0x02d7 A[Catch: all -> 0x02d8, TRY_LEAVE, TryCatch #5 {all -> 0x02d8, blocks: (B:119:0x02a2, B:121:0x02a9, B:123:0x02ad, B:125:0x02b1, B:126:0x02b4, B:128:0x02b8, B:130:0x02bc, B:132:0x02c0, B:133:0x02c1, B:134:0x02c6, B:135:0x02c7, B:136:0x02ce, B:137:0x02cf, B:138:0x02d6, B:139:0x02d7), top: B:155:0x02a2 }] */
    /* JADX WARN: Code duplicated, block: B:161:0x00f6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:165:0x017f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:31:0x00ad A[Catch: all -> 0x0064, TRY_LEAVE, TryCatch #3 {all -> 0x0064, blocks: (B:20:0x0060, B:29:0x00a7, B:31:0x00ad, B:34:0x00b6, B:36:0x00c3), top: B:152:0x0060 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x00b6 A[Catch: all -> 0x0064, TRY_ENTER, TryCatch #3 {all -> 0x0064, blocks: (B:20:0x0060, B:29:0x00a7, B:31:0x00ad, B:34:0x00b6, B:36:0x00c3), top: B:152:0x0060 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x00c3 A[Catch: all -> 0x0064, TRY_LEAVE, TryCatch #3 {all -> 0x0064, blocks: (B:20:0x0060, B:29:0x00a7, B:31:0x00ad, B:34:0x00b6, B:36:0x00c3), top: B:152:0x0060 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:49:0x0162  */
    /* JADX WARN: Code duplicated, block: B:51:0x017a  */
    /* JADX WARN: Code duplicated, block: B:57:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:60:0x01d1 A[Catch: all -> 0x0045, TRY_LEAVE, TryCatch #4 {all -> 0x0045, blocks: (B:13:0x003f, B:58:0x01cb, B:60:0x01d1), top: B:153:0x003f }] */
    /* JADX WARN: Code duplicated, block: B:63:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:65:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:72:0x021b  */
    /* JADX WARN: Code duplicated, block: B:74:0x021e  */
    /* JADX WARN: Code duplicated, block: B:76:0x0231  */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Code duplicated, block: B:86:0x024b A[Catch: all -> 0x027a, TryCatch #7 {all -> 0x027a, blocks: (B:84:0x0244, B:86:0x024b, B:88:0x024f, B:90:0x0253, B:91:0x0256, B:93:0x025a, B:95:0x025e, B:97:0x0262, B:98:0x0263, B:99:0x0268, B:100:0x0269, B:101:0x0270, B:102:0x0271, B:103:0x0278, B:104:0x0279), top: B:156:0x0244 }] */
    /* JADX WARN: Code duplicated, block: B:93:0x025a A[Catch: all -> 0x027a, TryCatch #7 {all -> 0x027a, blocks: (B:84:0x0244, B:86:0x024b, B:88:0x024f, B:90:0x0253, B:91:0x0256, B:93:0x025a, B:95:0x025e, B:97:0x0262, B:98:0x0263, B:99:0x0268, B:100:0x0269, B:101:0x0270, B:102:0x0271, B:103:0x0278, B:104:0x0279), top: B:156:0x0244 }] */
    /* JADX WARN: Code duplicated, block: B:95:0x025e A[Catch: all -> 0x027a, TryCatch #7 {all -> 0x027a, blocks: (B:84:0x0244, B:86:0x024b, B:88:0x024f, B:90:0x0253, B:91:0x0256, B:93:0x025a, B:95:0x025e, B:97:0x0262, B:98:0x0263, B:99:0x0268, B:100:0x0269, B:101:0x0270, B:102:0x0271, B:103:0x0278, B:104:0x0279), top: B:156:0x0244 }] */
    /* JADX WARN: Code duplicated, block: B:97:0x0262 A[Catch: all -> 0x027a, TryCatch #7 {all -> 0x027a, blocks: (B:84:0x0244, B:86:0x024b, B:88:0x024f, B:90:0x0253, B:91:0x0256, B:93:0x025a, B:95:0x025e, B:97:0x0262, B:98:0x0263, B:99:0x0268, B:100:0x0269, B:101:0x0270, B:102:0x0271, B:103:0x0278, B:104:0x0279), top: B:156:0x0244 }] */
    /* JADX WARN: Code duplicated, block: B:98:0x0263 A[Catch: all -> 0x027a, TryCatch #7 {all -> 0x027a, blocks: (B:84:0x0244, B:86:0x024b, B:88:0x024f, B:90:0x0253, B:91:0x0256, B:93:0x025a, B:95:0x025e, B:97:0x0262, B:98:0x0263, B:99:0x0268, B:100:0x0269, B:101:0x0270, B:102:0x0271, B:103:0x0278, B:104:0x0279), top: B:156:0x0244 }] */
    /* JADX WARN: Multi-variable type inference failed */
    public static Object a(ka2 ka2Var, Signals signals, zt ztVar, Continuation continuation) {
        ia2 ia2Var;
        rr3 rr3VarA;
        rr3 rr3Var;
        Signals signals2;
        ka2 ka2Var2;
        zt ztVar2;
        long j;
        v01 v01Var;
        h81 h81Var;
        p53 p53Var;
        String strA;
        JsonObject jsonObject;
        rr3 rr3VarA2;
        rr3 rr3Var2;
        Object objA;
        h81 h81Var2;
        rr3 rr3Var3;
        ka2 ka2Var3;
        JsonArray jsonArrayE;
        v01 v01Var2;
        JsonObject json;
        Object j01Var;
        ac3 ac3Var;
        Boolean bool;
        if (continuation instanceof ia2) {
            ia2Var = (ia2) continuation;
            int i = ia2Var.i;
            if ((i & Integer.MIN_VALUE) != 0) {
                ia2Var.i = i - Integer.MIN_VALUE;
            } else {
                ia2Var = new ia2(ka2Var, continuation);
            }
        } else {
            ia2Var = new ia2(ka2Var, continuation);
        }
        Object obj = ia2Var.g;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ia2Var.i;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Duration.Companion companion = Duration.INSTANCE;
            ka2Var.f.getClass();
            long duration = DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS);
            rr3VarA = hs3.a(s11.CUI_NAME_ADREQUEST_REQUEST, CollectionsKt.emptyList(), true);
            try {
                ia2Var.a = ka2Var;
                ia2Var.b = signals;
                ia2Var.c = ztVar;
                ia2Var.d = rr3VarA;
                ia2Var.e = rr3VarA;
                ia2Var.f = duration;
                ia2Var.i = 1;
                Object objA2 = ka2Var.a(ztVar, ia2Var);
                if (objA2 != coroutine_suspended) {
                    signals2 = signals;
                    obj = objA2;
                    ka2Var2 = ka2Var;
                    ztVar2 = ztVar;
                    j = duration;
                    v01Var = (v01) obj;
                    if (v01Var instanceof i01) {
                        i01 i01Var = (i01) v01Var;
                        xs3.a(i01Var, false);
                        CloseableKt.closeFinally(rr3VarA, null);
                        return i01Var;
                    }
                    Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                    h81Var = (h81) ((q01) v01Var).b;
                    if (h81Var instanceof i01) {
                        xs3.a((i01) h81Var, false);
                    }
                    CloseableKt.closeFinally(rr3VarA, null);
                    Duration.Companion companion2 = Duration.INSTANCE;
                    ka2Var2.f.getClass();
                    long jM4395minusLRDsOJo = Duration.m4395minusLRDsOJo(DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS), j);
                    p53Var = h81Var.d;
                    if (p53Var != null) {
                    }
                    if (p53Var != null) {
                        strA = p53.a(p53Var);
                    } else {
                        strA = "<html><body></body></html>";
                    }
                    JsonObject jsonObject2 = new JsonObject();
                    JsonObject jsonObject3 = new JsonObject();
                    JsonObject jsonObject4 = new JsonObject();
                    jsonObject3.addProperty("ad_request_url", ztVar2.e);
                    jsonObject3.addProperty("ad_request_post_body", ztVar2.c);
                    jsonObject3.addProperty("base_url", ztVar2.b);
                    jsonObject3.add("signals", ka2Var2.g.toJsonTree(signals2).getAsJsonObject());
                    jsonObject4.addProperty(C3510b4.i.E0, strA);
                    jsonObject4.addProperty("response_code", Integer.valueOf(h81Var.a));
                    jsonObject4.addProperty("latency", Long.valueOf(Duration.m4378getInWholeMillisecondsimpl(jM4395minusLRDsOJo)));
                    jsonObject = new JsonObject();
                    for (Map.Entry entry : h81Var.c.entrySet()) {
                        String str = (String) entry.getKey();
                        String str2 = (String) entry.getValue();
                        jsonArrayE = ds1.e(jsonObject, str);
                        if (jsonArrayE == null) {
                            jsonArrayE = new JsonArray();
                        }
                        jsonArrayE.add(str2);
                        jsonObject.add(str, jsonArrayE);
                    }
                    jsonObject4.add("headers", jsonObject);
                    jsonObject2.add("request", jsonObject3);
                    jsonObject2.add(Ue.n, jsonObject4);
                    rr3VarA2 = hs3.a(s11.CUI_NAME_ADREQUEST_NORMALIZE_RESPONSE, CollectionsKt.emptyList(), true);
                    Object obj2 = ka2Var2.a;
                    ia2Var.a = ka2Var2;
                    ia2Var.b = h81Var;
                    ia2Var.c = rr3VarA2;
                    ia2Var.d = rr3VarA2;
                    ia2Var.e = null;
                    ia2Var.i = 2;
                    obj2.getClass();
                    String string = jsonObject2.toString();
                    Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                    objA = ((rp0) obj2).a("google.afma.response.normalize", string, ia2Var);
                    if (objA != coroutine_suspended) {
                        obj = objA;
                        h81Var2 = h81Var;
                        rr3Var3 = rr3VarA2;
                        ka2Var3 = ka2Var2;
                        v01Var2 = (v01) obj;
                        if (v01Var2 instanceof i01) {
                            xs3.a((i01) v01Var2, false);
                        }
                        CloseableKt.closeFinally(rr3VarA2, null);
                        if (v01Var2 instanceof i01) {
                            i01 i01Var2 = (i01) v01Var2;
                            xs3.a(i01Var2, false);
                            return i01Var2;
                        }
                        Intrinsics.checkNotNull(v01Var2, r7);
                        json = (JsonObject) ((q01) v01Var2).b;
                        Deferred deferred = h81Var2.e;
                        ex0 ex0Var = ka2Var3.e;
                        Intrinsics.checkNotNullParameter(json, "json");
                        zb3 block = new zb3(ex0Var, json, deferred);
                        Intrinsics.checkNotNullParameter(block, "block");
                        j01Var = new q01(block.invoke());
                        if (j01Var instanceof i01) {
                            return (i01) j01Var;
                        }
                        Intrinsics.checkNotNull(j01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                        ac3Var = (ac3) ((q01) j01Var).b;
                        bool = (Boolean) OptionalsKt.getOrNull(ka2Var3.i);
                        if (bool != null) {
                            ac3Var.d = json;
                        }
                        return new q01(ac3Var);
                    }
                }
                return coroutine_suspended;
            } catch (Throwable th) {
                th = th;
                rr3Var = rr3VarA;
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
        if (i2 != 1) {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            rr3VarA2 = ia2Var.d;
            rr3Var3 = (rr3) ia2Var.c;
            h81 h81Var3 = (h81) ia2Var.b;
            ka2Var3 = ia2Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj);
                h81Var2 = h81Var3;
                v01Var2 = (v01) obj;
                if (v01Var2 instanceof i01) {
                    xs3.a((i01) v01Var2, false);
                }
                CloseableKt.closeFinally(rr3VarA2, null);
                if (v01Var2 instanceof i01) {
                    i01 i01Var3 = (i01) v01Var2;
                    xs3.a(i01Var3, false);
                    return i01Var3;
                }
                Intrinsics.checkNotNull(v01Var2, r7);
                json = (JsonObject) ((q01) v01Var2).b;
                Deferred deferred2 = h81Var2.e;
                ex0 ex0Var2 = ka2Var3.e;
                Intrinsics.checkNotNullParameter(json, "json");
                zb3 block2 = new zb3(ex0Var2, json, deferred2);
                Intrinsics.checkNotNullParameter(block2, "block");
                try {
                    j01Var = new q01(block2.invoke());
                } catch (Exception e) {
                    j01Var = new j01(e, null, null, 6);
                }
                if (j01Var instanceof i01) {
                    return (i01) j01Var;
                }
                Intrinsics.checkNotNull(j01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                ac3Var = (ac3) ((q01) j01Var).b;
                bool = (Boolean) OptionalsKt.getOrNull(ka2Var3.i);
                if (bool != null && bool.booleanValue()) {
                    ac3Var.d = json;
                }
                return new q01(ac3Var);
            } catch (Throwable th2) {
                th = th2;
                rr3Var2 = rr3VarA2;
                rr3VarA2 = rr3Var3;
                try {
                    rr3VarA2.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        rr3VarA2.a(th);
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
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        CloseableKt.closeFinally(rr3Var2, th3);
                        throw th4;
                    }
                }
            }
        }
        j = ia2Var.f;
        rr3VarA = ia2Var.e;
        rr3Var = ia2Var.d;
        ztVar2 = (zt) ia2Var.c;
        signals2 = (Signals) ia2Var.b;
        ka2Var2 = ia2Var.a;
        try {
            p005kotlin.ResultKt.throwOnFailure(obj);
            v01Var = (v01) obj;
            if (v01Var instanceof i01) {
                i01 i01Var4 = (i01) v01Var;
                xs3.a(i01Var4, false);
                CloseableKt.closeFinally(rr3VarA, null);
                return i01Var4;
            }
            Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
            h81Var = (h81) ((q01) v01Var).b;
            if (h81Var instanceof i01) {
                xs3.a((i01) h81Var, false);
            }
            CloseableKt.closeFinally(rr3VarA, null);
            Duration.Companion companion3 = Duration.INSTANCE;
            ka2Var2.f.getClass();
            long jM4395minusLRDsOJo2 = Duration.m4395minusLRDsOJo(DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS), j);
            p53Var = h81Var.d;
            if (p53Var != null && h81Var.e == null) {
                return new m01("HTTP response body is null", kk1.INTERNAL_ERROR);
            }
            if (p53Var != null) {
                try {
                    strA = p53.a(p53Var);
                } catch (InterruptedException e2) {
                    Thread.currentThread().interrupt();
                    CancellationException cancellationException = new CancellationException("Thread interrupted while processing HTTP response body.");
                    cancellationException.initCause(e2);
                    throw cancellationException;
                } catch (Exception e3) {
                    return new j01(e3, kk1.NETWORK_ERROR, null, 4);
                }
            } else {
                strA = "<html><body></body></html>";
            }
            JsonObject jsonObject5 = new JsonObject();
            JsonObject jsonObject6 = new JsonObject();
            JsonObject jsonObject7 = new JsonObject();
            jsonObject6.addProperty("ad_request_url", ztVar2.e);
            jsonObject6.addProperty("ad_request_post_body", ztVar2.c);
            jsonObject6.addProperty("base_url", ztVar2.b);
            jsonObject6.add("signals", ka2Var2.g.toJsonTree(signals2).getAsJsonObject());
            jsonObject7.addProperty(C3510b4.i.E0, strA);
            jsonObject7.addProperty("response_code", Integer.valueOf(h81Var.a));
            jsonObject7.addProperty("latency", Long.valueOf(Duration.m4378getInWholeMillisecondsimpl(jM4395minusLRDsOJo2)));
            jsonObject = new JsonObject();
            while (r1.hasNext()) {
                String str3 = (String) entry.getKey();
                String str4 = (String) entry.getValue();
                jsonArrayE = ds1.e(jsonObject, str3);
                if (jsonArrayE == null) {
                    jsonArrayE = new JsonArray();
                }
                jsonArrayE.add(str4);
                jsonObject.add(str3, jsonArrayE);
            }
            jsonObject7.add("headers", jsonObject);
            jsonObject5.add("request", jsonObject6);
            jsonObject5.add(Ue.n, jsonObject7);
            rr3VarA2 = hs3.a(s11.CUI_NAME_ADREQUEST_NORMALIZE_RESPONSE, CollectionsKt.emptyList(), true);
            try {
                Object obj3 = ka2Var2.a;
                ia2Var.a = ka2Var2;
                ia2Var.b = h81Var;
                ia2Var.c = rr3VarA2;
                ia2Var.d = rr3VarA2;
                ia2Var.e = null;
                ia2Var.i = 2;
                obj3.getClass();
                String string2 = jsonObject5.toString();
                Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
                objA = ((rp0) obj3).a("google.afma.response.normalize", string2, ia2Var);
                if (objA != coroutine_suspended) {
                    obj = objA;
                    h81Var2 = h81Var;
                    rr3Var3 = rr3VarA2;
                    ka2Var3 = ka2Var2;
                    v01Var2 = (v01) obj;
                    if (v01Var2 instanceof i01) {
                        xs3.a((i01) v01Var2, false);
                    }
                    CloseableKt.closeFinally(rr3VarA2, null);
                    if (v01Var2 instanceof i01) {
                        i01 i01Var5 = (i01) v01Var2;
                        xs3.a(i01Var5, false);
                        return i01Var5;
                    }
                    Intrinsics.checkNotNull(v01Var2, r7);
                    json = (JsonObject) ((q01) v01Var2).b;
                    Deferred deferred3 = h81Var2.e;
                    ex0 ex0Var3 = ka2Var3.e;
                    Intrinsics.checkNotNullParameter(json, "json");
                    zb3 block3 = new zb3(ex0Var3, json, deferred3);
                    Intrinsics.checkNotNullParameter(block3, "block");
                    j01Var = new q01(block3.invoke());
                    if (j01Var instanceof i01) {
                        return (i01) j01Var;
                    }
                    Intrinsics.checkNotNull(j01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                    ac3Var = (ac3) ((q01) j01Var).b;
                    bool = (Boolean) OptionalsKt.getOrNull(ka2Var3.i);
                    if (bool != null) {
                        ac3Var.d = json;
                    }
                    return new q01(ac3Var);
                }
                return coroutine_suspended;
            } catch (Throwable th5) {
                th = th5;
                rr3Var2 = rr3VarA2;
                rr3VarA2.b(th);
                if (!(th instanceof v24)) {
                    throw th;
                }
                if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                    rr3VarA2.a(th);
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
                    CloseableKt.closeFinally(rr3VarA, th7);
                    throw th8;
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x009e  */
    /* JADX WARN: Code duplicated, block: B:36:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:42:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:47:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:51:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:54:0x00da  */
    /* JADX WARN: Code duplicated, block: B:68:0x0115  */
    /* JADX WARN: Code duplicated, block: B:69:0x0120  */
    /* JADX WARN: Code duplicated, block: B:70:0x012d  */
    /* JADX WARN: Code duplicated, block: B:73:0x0161  */
    /* JADX WARN: Code duplicated, block: B:76:0x0195 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:77:0x0196  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code duplicated, block: B:80:0x01cf A[RETURN] */
    public final Object a(zt ztVar, Continuation continuation) {
        ja2 ja2Var;
        String str;
        ka2 ka2Var;
        ka2 ka2Var2;
        String str2;
        e81 e81Var;
        Object objA;
        e81 e81Var2;
        String str3;
        zt ztVar2;
        e81 e81Var3;
        String str4;
        f81 f81VarA;
        ex0 ex0Var;
        Object objA2;
        Object objA3;
        String str5;
        String str6;
        String str7;
        byte[] byteArray;
        GZIPOutputStream gZIPOutputStream;
        if (continuation instanceof ja2) {
            ja2Var = (ja2) continuation;
            int i = ja2Var.i;
            if ((i & Integer.MIN_VALUE) != 0) {
                ja2Var.i = i - Integer.MIN_VALUE;
            } else {
                ja2Var = new ja2(this, continuation);
            }
        } else {
            ja2Var = new ja2(this, continuation);
        }
        ja2 ja2Var2 = ja2Var;
        Object objL = ja2Var2.g;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ja2Var2.i;
        if (i2 != 0) {
            if (i2 == 1) {
                ztVar = ja2Var2.b;
                ka2Var2 = ja2Var2.a;
                p005kotlin.ResultKt.throwOnFailure(objL);
            } else {
                if (i2 != 2) {
                    if (i2 == 3) {
                        p005kotlin.ResultKt.throwOnFailure(objL);
                        return objL;
                    }
                    if (i2 != 4) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    p005kotlin.ResultKt.throwOnFailure(objL);
                    return objL;
                }
                e81Var3 = ja2Var2.f;
                str3 = ja2Var2.e;
                e81Var2 = ja2Var2.d;
                str2 = ja2Var2.c;
                ztVar2 = ja2Var2.b;
                ka2Var = ja2Var2.a;
                p005kotlin.ResultKt.throwOnFailure(objL);
            }
            e81Var3.a(str3, (String) objL);
            if (str2 != null && str2.length() != 0) {
                e81Var2.a(HttpHeaders.COOKIE, str2);
            }
            str4 = ztVar2.c;
            if (str4 != null && str4.length() != 0) {
                str5 = ztVar2.i;
                if (str5 != null || str5.length() == 0) {
                    str6 = AssetHelper.DEFAULT_MIME_TYPE;
                } else {
                    str6 = ztVar2.i;
                }
                str7 = str6;
                if (ztVar2.h) {
                    byte[] bytes = str4.getBytes(Charsets.UTF_8);
                    Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                    ka2Var.getClass();
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                        try {
                            gZIPOutputStream.write(bytes);
                            gZIPOutputStream.finish();
                            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                            CloseableKt.closeFinally(gZIPOutputStream, null);
                            byteArray = byteArrayOutputStream.toByteArray();
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                CloseableKt.closeFinally(gZIPOutputStream, th);
                                throw th2;
                            }
                        }
                    } catch (IOException e) {
                        ((as3) ka2Var.j).a("gzip compression failed, sending uncompressed.", (Throwable) e);
                        byteArray = null;
                    }
                    if (byteArray != null) {
                        e81Var2.a(HttpHeaders.CONTENT_ENCODING, "gzip");
                        e81Var2.b(str7, byteArray);
                    } else {
                        byte[] bytes2 = str4.getBytes(Charsets.UTF_8);
                        Intrinsics.checkNotNullExpressionValue(bytes2, "getBytes(...)");
                        e81Var2.b(str7, bytes2);
                    }
                } else {
                    byte[] bytes3 = str4.getBytes(Charsets.UTF_8);
                    Intrinsics.checkNotNullExpressionValue(bytes3, "getBytes(...)");
                    e81Var2.b(str7, bytes3);
                }
            }
            e81Var2.f = ka2Var.h;
            f81VarA = e81Var2.a();
            ex0Var = ka2Var.e;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:ad_request_http_client_enabled", C3510b4.i.W);
            if (((Boolean) ex0Var.a("gads:ad_request_http_client_enabled", Boolean.TRUE, yr.b)).booleanValue()) {
                e01 e01Var = ka2Var.c;
                ex0 ex0Var2 = ka2Var.e;
                ex0Var2.getClass();
                Duration.Companion companion = Duration.INSTANCE;
                Duration durationM4365boximpl = Duration.m4365boximpl(((Duration) ex0Var2.a("gads:http_ad_request:timeout_millis", wm2.a(60, DurationUnit.SECONDS, "gads:http_ad_request:timeout_millis", C3510b4.i.W), yr.j)).getRawValue());
                ja2Var2.a = null;
                ja2Var2.b = null;
                ja2Var2.c = null;
                ja2Var2.d = null;
                ja2Var2.e = null;
                ja2Var2.f = null;
                ja2Var2.i = 3;
                objA3 = e01Var.a(f81VarA, durationM4365boximpl, ja2Var2);
                if (objA3 != coroutine_suspended) {
                    return objA3;
                }
            } else {
                e01 e01Var2 = ka2Var.c;
                ex0 ex0Var3 = ka2Var.e;
                ex0Var3.getClass();
                Duration.Companion companion2 = Duration.INSTANCE;
                Duration durationM4365boximpl2 = Duration.m4365boximpl(((Duration) ex0Var3.a("gads:http_ad_request:timeout_millis", wm2.a(60, DurationUnit.SECONDS, "gads:http_ad_request:timeout_millis", C3510b4.i.W), yr.j)).getRawValue());
                ja2Var2.a = null;
                ja2Var2.b = null;
                ja2Var2.c = null;
                ja2Var2.d = null;
                ja2Var2.e = null;
                ja2Var2.f = null;
                ja2Var2.i = 4;
                objA2 = e01.a(e01Var2, f81VarA, durationM4365boximpl2, false, (Continuation) ja2Var2, 28);
                if (objA2 != coroutine_suspended) {
                    return objA2;
                }
            }
            return coroutine_suspended;
        }
        p005kotlin.ResultKt.throwOnFailure(objL);
        if (ztVar.d) {
            g30 g30Var = this.b;
            ja2Var2.a = this;
            ja2Var2.b = ztVar;
            ja2Var2.i = 1;
            g30Var.getClass();
            objL = g30.l(g30Var, ja2Var2);
            if (objL != coroutine_suspended) {
                ka2Var2 = this;
            }
        } else {
            str = "";
            ka2Var = this;
            str2 = str;
            e81Var = new e81();
            e81Var.b(ztVar.e);
            zw3 zw3Var = ka2Var.d;
            ja2Var2.a = ka2Var;
            ja2Var2.b = ztVar;
            ja2Var2.c = str2;
            ja2Var2.d = e81Var;
            ja2Var2.e = HttpHeaders.USER_AGENT;
            ja2Var2.f = e81Var;
            ja2Var2.i = 2;
            objA = zw3Var.a(ja2Var2);
            if (objA != coroutine_suspended) {
                e81Var2 = e81Var;
                objL = objA;
                str3 = HttpHeaders.USER_AGENT;
                ztVar2 = ztVar;
                e81Var3 = e81Var2;
                e81Var3.a(str3, (String) objL);
                if (str2 != null) {
                    e81Var2.a(HttpHeaders.COOKIE, str2);
                }
                str4 = ztVar2.c;
                if (str4 != null) {
                    str5 = ztVar2.i;
                    if (str5 != null) {
                        str6 = AssetHelper.DEFAULT_MIME_TYPE;
                    } else {
                        str6 = AssetHelper.DEFAULT_MIME_TYPE;
                    }
                    str7 = str6;
                    if (ztVar2.h) {
                        byte[] bytes4 = str4.getBytes(Charsets.UTF_8);
                        Intrinsics.checkNotNullExpressionValue(bytes4, "getBytes(...)");
                        ka2Var.getClass();
                        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                        gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream2);
                        gZIPOutputStream.write(bytes4);
                        gZIPOutputStream.finish();
                        p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                        CloseableKt.closeFinally(gZIPOutputStream, null);
                        byteArray = byteArrayOutputStream2.toByteArray();
                        if (byteArray != null) {
                            e81Var2.a(HttpHeaders.CONTENT_ENCODING, "gzip");
                            e81Var2.b(str7, byteArray);
                        } else {
                            byte[] bytes5 = str4.getBytes(Charsets.UTF_8);
                            Intrinsics.checkNotNullExpressionValue(bytes5, "getBytes(...)");
                            e81Var2.b(str7, bytes5);
                        }
                    } else {
                        byte[] bytes6 = str4.getBytes(Charsets.UTF_8);
                        Intrinsics.checkNotNullExpressionValue(bytes6, "getBytes(...)");
                        e81Var2.b(str7, bytes6);
                    }
                }
                e81Var2.f = ka2Var.h;
                f81VarA = e81Var2.a();
                ex0Var = ka2Var.e;
                ex0Var.getClass();
                Intrinsics.checkNotNullParameter("gads:ad_request_http_client_enabled", C3510b4.i.W);
                if (((Boolean) ex0Var.a("gads:ad_request_http_client_enabled", Boolean.TRUE, yr.b)).booleanValue()) {
                    e01 e01Var3 = ka2Var.c;
                    ex0 ex0Var4 = ka2Var.e;
                    ex0Var4.getClass();
                    Duration.Companion companion3 = Duration.INSTANCE;
                    Duration durationM4365boximpl3 = Duration.m4365boximpl(((Duration) ex0Var4.a("gads:http_ad_request:timeout_millis", wm2.a(60, DurationUnit.SECONDS, "gads:http_ad_request:timeout_millis", C3510b4.i.W), yr.j)).getRawValue());
                    ja2Var2.a = null;
                    ja2Var2.b = null;
                    ja2Var2.c = null;
                    ja2Var2.d = null;
                    ja2Var2.e = null;
                    ja2Var2.f = null;
                    ja2Var2.i = 3;
                    objA3 = e01Var3.a(f81VarA, durationM4365boximpl3, ja2Var2);
                    if (objA3 != coroutine_suspended) {
                        return objA3;
                    }
                } else {
                    e01 e01Var4 = ka2Var.c;
                    ex0 ex0Var5 = ka2Var.e;
                    ex0Var5.getClass();
                    Duration.Companion companion4 = Duration.INSTANCE;
                    Duration durationM4365boximpl4 = Duration.m4365boximpl(((Duration) ex0Var5.a("gads:http_ad_request:timeout_millis", wm2.a(60, DurationUnit.SECONDS, "gads:http_ad_request:timeout_millis", C3510b4.i.W), yr.j)).getRawValue());
                    ja2Var2.a = null;
                    ja2Var2.b = null;
                    ja2Var2.c = null;
                    ja2Var2.d = null;
                    ja2Var2.e = null;
                    ja2Var2.f = null;
                    ja2Var2.i = 4;
                    objA2 = e01.a(e01Var4, f81VarA, durationM4365boximpl4, false, (Continuation) ja2Var2, 28);
                    if (objA2 != coroutine_suspended) {
                        return objA2;
                    }
                }
            }
        }
        return coroutine_suspended;
        str = (String) objL;
        ka2Var = ka2Var2;
        str2 = str;
        e81Var = new e81();
        e81Var.b(ztVar.e);
        zw3 zw3Var2 = ka2Var.d;
        ja2Var2.a = ka2Var;
        ja2Var2.b = ztVar;
        ja2Var2.c = str2;
        ja2Var2.d = e81Var;
        ja2Var2.e = HttpHeaders.USER_AGENT;
        ja2Var2.f = e81Var;
        ja2Var2.i = 2;
        objA = zw3Var2.a(ja2Var2);
        if (objA != coroutine_suspended) {
            e81Var2 = e81Var;
            objL = objA;
            str3 = HttpHeaders.USER_AGENT;
            ztVar2 = ztVar;
            e81Var3 = e81Var2;
            e81Var3.a(str3, (String) objL);
            if (str2 != null) {
                e81Var2.a(HttpHeaders.COOKIE, str2);
            }
            str4 = ztVar2.c;
            if (str4 != null) {
                str5 = ztVar2.i;
                if (str5 != null) {
                    str6 = AssetHelper.DEFAULT_MIME_TYPE;
                } else {
                    str6 = AssetHelper.DEFAULT_MIME_TYPE;
                }
                str7 = str6;
                if (ztVar2.h) {
                    byte[] bytes7 = str4.getBytes(Charsets.UTF_8);
                    Intrinsics.checkNotNullExpressionValue(bytes7, "getBytes(...)");
                    ka2Var.getClass();
                    ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
                    gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream3);
                    gZIPOutputStream.write(bytes7);
                    gZIPOutputStream.finish();
                    p005kotlin.Unit unit3 = p005kotlin.Unit.INSTANCE;
                    CloseableKt.closeFinally(gZIPOutputStream, null);
                    byteArray = byteArrayOutputStream3.toByteArray();
                    if (byteArray != null) {
                        e81Var2.a(HttpHeaders.CONTENT_ENCODING, "gzip");
                        e81Var2.b(str7, byteArray);
                    } else {
                        byte[] bytes8 = str4.getBytes(Charsets.UTF_8);
                        Intrinsics.checkNotNullExpressionValue(bytes8, "getBytes(...)");
                        e81Var2.b(str7, bytes8);
                    }
                } else {
                    byte[] bytes9 = str4.getBytes(Charsets.UTF_8);
                    Intrinsics.checkNotNullExpressionValue(bytes9, "getBytes(...)");
                    e81Var2.b(str7, bytes9);
                }
            }
            e81Var2.f = ka2Var.h;
            f81VarA = e81Var2.a();
            ex0Var = ka2Var.e;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:ad_request_http_client_enabled", C3510b4.i.W);
            if (((Boolean) ex0Var.a("gads:ad_request_http_client_enabled", Boolean.TRUE, yr.b)).booleanValue()) {
                e01 e01Var5 = ka2Var.c;
                ex0 ex0Var6 = ka2Var.e;
                ex0Var6.getClass();
                Duration.Companion companion5 = Duration.INSTANCE;
                Duration durationM4365boximpl5 = Duration.m4365boximpl(((Duration) ex0Var6.a("gads:http_ad_request:timeout_millis", wm2.a(60, DurationUnit.SECONDS, "gads:http_ad_request:timeout_millis", C3510b4.i.W), yr.j)).getRawValue());
                ja2Var2.a = null;
                ja2Var2.b = null;
                ja2Var2.c = null;
                ja2Var2.d = null;
                ja2Var2.e = null;
                ja2Var2.f = null;
                ja2Var2.i = 3;
                objA3 = e01Var5.a(f81VarA, durationM4365boximpl5, ja2Var2);
                if (objA3 != coroutine_suspended) {
                    return objA3;
                }
            } else {
                e01 e01Var6 = ka2Var.c;
                ex0 ex0Var7 = ka2Var.e;
                ex0Var7.getClass();
                Duration.Companion companion6 = Duration.INSTANCE;
                Duration durationM4365boximpl6 = Duration.m4365boximpl(((Duration) ex0Var7.a("gads:http_ad_request:timeout_millis", wm2.a(60, DurationUnit.SECONDS, "gads:http_ad_request:timeout_millis", C3510b4.i.W), yr.j)).getRawValue());
                ja2Var2.a = null;
                ja2Var2.b = null;
                ja2Var2.c = null;
                ja2Var2.d = null;
                ja2Var2.e = null;
                ja2Var2.f = null;
                ja2Var2.i = 4;
                objA2 = e01.a(e01Var6, f81VarA, durationM4365boximpl6, false, (Continuation) ja2Var2, 28);
                if (objA2 != coroutine_suspended) {
                    return objA2;
                }
            }
        }
        return coroutine_suspended;
    }

    public final Object a(Signals signals, zt ztVar, xa2 xa2Var) {
        return a(this, signals, ztVar, xa2Var);
    }
}

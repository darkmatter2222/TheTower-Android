package kotlin;

import android.net.Uri;
import android.os.SystemClock;
import com.google.android.libraries.ads.mobile.sdk.common.AdValue;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.JsonSyntaxException;
import com.ironsource.C3510b4;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class c63 {
    public final ex0 a;
    public final ac2 b;
    public final tx c;
    public final CoroutineScope d;
    public final e01 e;
    public final vw3 f;
    public final uv g;
    public final g83 h;
    public final ur3 i;

    public c63(ex0 flags, ac2 offlineDatabase, tx clock, CoroutineScope backgroundScope, e01 httpClient, vw3 urlPinger, uv chromeVariationsProvider, g83 rootTraceCreator, ur3 traceLogger) {
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(offlineDatabase, "offlineDatabase");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(urlPinger, "urlPinger");
        Intrinsics.checkNotNullParameter(chromeVariationsProvider, "chromeVariationsProvider");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        this.a = flags;
        this.b = offlineDatabase;
        this.c = clock;
        this.d = backgroundScope;
        this.e = httpClient;
        this.f = urlPinger;
        this.g = chromeVariationsProvider;
        this.h = rootTraceCreator;
        this.i = traceLogger;
    }

    public static final Map a(c63 c63Var, Uri uri) {
        return c63Var.g.a(uri);
    }

    public static void a(c63 c63Var, List uris, i2 adConfiguration, zy commonConfiguration, v3 v3Var, Boolean bool, int i) {
        if ((i & 8) != 0) {
            v3Var = null;
        }
        v3 v3Var2 = v3Var;
        if ((i & 16) != 0) {
            bool = Boolean.FALSE;
        }
        Boolean bool2 = bool;
        c63Var.getClass();
        Intrinsics.checkNotNullParameter(uris, "uris");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        Iterator it = uris.iterator();
        while (it.hasNext()) {
            c63Var.a((Uri) it.next(), adConfiguration, commonConfiguration, v3Var2, bool2, (ks3) null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(v3 v3Var, String str, Continuation continuation) {
        w53 w53Var;
        c63 c63Var;
        if (continuation instanceof w53) {
            w53Var = (w53) continuation;
            int i = w53Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                w53Var.e = i - Integer.MIN_VALUE;
            } else {
                w53Var = new w53(this, continuation);
            }
        } else {
            w53Var = new w53(this, continuation);
        }
        Object obj = w53Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = w53Var.e;
        if (i2 != 0) {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str = w53Var.b;
            c63Var = w53Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj);
                return p005kotlin.Unit.INSTANCE;
            } catch (JsonSyntaxException e) {
                e = e;
                xs3.a(new m01("Failed to parse ad event value from JSON: " + str), false);
                ((as3) c63Var.i).a("Failed to parse ad event value from JSON: " + str, (Throwable) e);
                return p005kotlin.Unit.INSTANCE;
            } catch (Exception e2) {
                e = e2;
                xs3.a(new m01("Failed while emitting ad paid event for " + str), false);
                ((as3) c63Var.i).a("Failed while emitting ad paid event for " + str, (Throwable) e);
                return p005kotlin.Unit.INSTANCE;
            }
        }
        p005kotlin.ResultKt.throwOnFailure(obj);
        if (str == null || str.length() == 0) {
            xs3.a(new m01("AdEventValueString is null or empty"), false);
            return p005kotlin.Unit.INSTANCE;
        }
        try {
            JsonObject asJsonObject = JsonParser.parseString(str).getAsJsonObject();
            Intrinsics.checkNotNull(asJsonObject);
            xc xcVarB = wc.b(asJsonObject);
            AdValue adValue = new AdValue(xcVarB.c, xcVarB.b, xcVarB.d);
            w53Var.a = this;
            w53Var.b = str;
            w53Var.e = 1;
            if (v3Var.a(adValue, w53Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return p005kotlin.Unit.INSTANCE;
        } catch (JsonSyntaxException e3) {
            e = e3;
            c63Var = this;
            xs3.a(new m01("Failed to parse ad event value from JSON: " + str), false);
            ((as3) c63Var.i).a("Failed to parse ad event value from JSON: " + str, (Throwable) e);
            return p005kotlin.Unit.INSTANCE;
        } catch (Exception e4) {
            e = e4;
            c63Var = this;
            xs3.a(new m01("Failed while emitting ad paid event for " + str), false);
            ((as3) c63Var.i).a("Failed while emitting ad paid event for " + str, (Throwable) e);
            return p005kotlin.Unit.INSTANCE;
        }
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 8241. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    public final java.lang.Object a(android.net.Uri r34, kotlin.ha2 r35, int r36, long r37, java.lang.String r39, java.util.Map r40, kotlin.v3 r41, kotlin.i2 r42, java.lang.Boolean r43, kotlin.ks3 r44, p005kotlin.coroutines.Continuation r45) {
        /*
            Method dump skipped, instruction units count: 824
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.c63.a(android.net.Uri, ads_mobile_sdk.ha2, int, long, java.lang.String, java.util.Map, ads_mobile_sdk.v3, ads_mobile_sdk.i2, java.lang.Boolean, ads_mobile_sdk.ks3, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:106:0x01ca A[Catch: all -> 0x01ea, TryCatch #4 {all -> 0x01ea, blocks: (B:97:0x01b4, B:99:0x01bb, B:101:0x01bf, B:103:0x01c3, B:104:0x01c6, B:106:0x01ca, B:108:0x01ce, B:110:0x01d2, B:111:0x01d3, B:112:0x01d8, B:113:0x01d9, B:114:0x01e0, B:115:0x01e1, B:116:0x01e8, B:117:0x01e9), top: B:129:0x01b4 }] */
    /* JADX WARN: Code duplicated, block: B:108:0x01ce A[Catch: all -> 0x01ea, TryCatch #4 {all -> 0x01ea, blocks: (B:97:0x01b4, B:99:0x01bb, B:101:0x01bf, B:103:0x01c3, B:104:0x01c6, B:106:0x01ca, B:108:0x01ce, B:110:0x01d2, B:111:0x01d3, B:112:0x01d8, B:113:0x01d9, B:114:0x01e0, B:115:0x01e1, B:116:0x01e8, B:117:0x01e9), top: B:129:0x01b4 }] */
    /* JADX WARN: Code duplicated, block: B:110:0x01d2 A[Catch: all -> 0x01ea, TryCatch #4 {all -> 0x01ea, blocks: (B:97:0x01b4, B:99:0x01bb, B:101:0x01bf, B:103:0x01c3, B:104:0x01c6, B:106:0x01ca, B:108:0x01ce, B:110:0x01d2, B:111:0x01d3, B:112:0x01d8, B:113:0x01d9, B:114:0x01e0, B:115:0x01e1, B:116:0x01e8, B:117:0x01e9), top: B:129:0x01b4 }] */
    /* JADX WARN: Code duplicated, block: B:111:0x01d3 A[Catch: all -> 0x01ea, TryCatch #4 {all -> 0x01ea, blocks: (B:97:0x01b4, B:99:0x01bb, B:101:0x01bf, B:103:0x01c3, B:104:0x01c6, B:106:0x01ca, B:108:0x01ce, B:110:0x01d2, B:111:0x01d3, B:112:0x01d8, B:113:0x01d9, B:114:0x01e0, B:115:0x01e1, B:116:0x01e8, B:117:0x01e9), top: B:129:0x01b4 }] */
    /* JADX WARN: Code duplicated, block: B:113:0x01d9 A[Catch: all -> 0x01ea, TryCatch #4 {all -> 0x01ea, blocks: (B:97:0x01b4, B:99:0x01bb, B:101:0x01bf, B:103:0x01c3, B:104:0x01c6, B:106:0x01ca, B:108:0x01ce, B:110:0x01d2, B:111:0x01d3, B:112:0x01d8, B:113:0x01d9, B:114:0x01e0, B:115:0x01e1, B:116:0x01e8, B:117:0x01e9), top: B:129:0x01b4 }] */
    /* JADX WARN: Code duplicated, block: B:115:0x01e1 A[Catch: all -> 0x01ea, TryCatch #4 {all -> 0x01ea, blocks: (B:97:0x01b4, B:99:0x01bb, B:101:0x01bf, B:103:0x01c3, B:104:0x01c6, B:106:0x01ca, B:108:0x01ce, B:110:0x01d2, B:111:0x01d3, B:112:0x01d8, B:113:0x01d9, B:114:0x01e0, B:115:0x01e1, B:116:0x01e8, B:117:0x01e9), top: B:129:0x01b4 }] */
    /* JADX WARN: Code duplicated, block: B:117:0x01e9 A[Catch: all -> 0x01ea, TRY_LEAVE, TryCatch #4 {all -> 0x01ea, blocks: (B:97:0x01b4, B:99:0x01bb, B:101:0x01bf, B:103:0x01c3, B:104:0x01c6, B:106:0x01ca, B:108:0x01ce, B:110:0x01d2, B:111:0x01d3, B:112:0x01d8, B:113:0x01d9, B:114:0x01e0, B:115:0x01e1, B:116:0x01e8, B:117:0x01e9), top: B:129:0x01b4 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00e6 A[Catch: all -> 0x0054, TRY_LEAVE, TryCatch #2 {all -> 0x0054, blocks: (B:20:0x004f, B:41:0x00d7, B:42:0x00e0, B:44:0x00e6), top: B:126:0x004f }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00fb A[Catch: all -> 0x012a, TryCatch #3 {all -> 0x012a, blocks: (B:49:0x00f4, B:51:0x00fb, B:53:0x00ff, B:55:0x0103, B:56:0x0106, B:58:0x010a, B:60:0x010e, B:62:0x0112, B:63:0x0113, B:64:0x0118, B:65:0x0119, B:66:0x0120, B:67:0x0121, B:68:0x0128, B:69:0x0129), top: B:128:0x00f4 }] */
    /* JADX WARN: Code duplicated, block: B:58:0x010a A[Catch: all -> 0x012a, TryCatch #3 {all -> 0x012a, blocks: (B:49:0x00f4, B:51:0x00fb, B:53:0x00ff, B:55:0x0103, B:56:0x0106, B:58:0x010a, B:60:0x010e, B:62:0x0112, B:63:0x0113, B:64:0x0118, B:65:0x0119, B:66:0x0120, B:67:0x0121, B:68:0x0128, B:69:0x0129), top: B:128:0x00f4 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x010e A[Catch: all -> 0x012a, TryCatch #3 {all -> 0x012a, blocks: (B:49:0x00f4, B:51:0x00fb, B:53:0x00ff, B:55:0x0103, B:56:0x0106, B:58:0x010a, B:60:0x010e, B:62:0x0112, B:63:0x0113, B:64:0x0118, B:65:0x0119, B:66:0x0120, B:67:0x0121, B:68:0x0128, B:69:0x0129), top: B:128:0x00f4 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x0112 A[Catch: all -> 0x012a, TryCatch #3 {all -> 0x012a, blocks: (B:49:0x00f4, B:51:0x00fb, B:53:0x00ff, B:55:0x0103, B:56:0x0106, B:58:0x010a, B:60:0x010e, B:62:0x0112, B:63:0x0113, B:64:0x0118, B:65:0x0119, B:66:0x0120, B:67:0x0121, B:68:0x0128, B:69:0x0129), top: B:128:0x00f4 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x0113 A[Catch: all -> 0x012a, TryCatch #3 {all -> 0x012a, blocks: (B:49:0x00f4, B:51:0x00fb, B:53:0x00ff, B:55:0x0103, B:56:0x0106, B:58:0x010a, B:60:0x010e, B:62:0x0112, B:63:0x0113, B:64:0x0118, B:65:0x0119, B:66:0x0120, B:67:0x0121, B:68:0x0128, B:69:0x0129), top: B:128:0x00f4 }] */
    /* JADX WARN: Code duplicated, block: B:65:0x0119 A[Catch: all -> 0x012a, TryCatch #3 {all -> 0x012a, blocks: (B:49:0x00f4, B:51:0x00fb, B:53:0x00ff, B:55:0x0103, B:56:0x0106, B:58:0x010a, B:60:0x010e, B:62:0x0112, B:63:0x0113, B:64:0x0118, B:65:0x0119, B:66:0x0120, B:67:0x0121, B:68:0x0128, B:69:0x0129), top: B:128:0x00f4 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x0121 A[Catch: all -> 0x012a, TryCatch #3 {all -> 0x012a, blocks: (B:49:0x00f4, B:51:0x00fb, B:53:0x00ff, B:55:0x0103, B:56:0x0106, B:58:0x010a, B:60:0x010e, B:62:0x0112, B:63:0x0113, B:64:0x0118, B:65:0x0119, B:66:0x0120, B:67:0x0121, B:68:0x0128, B:69:0x0129), top: B:128:0x00f4 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x0129 A[Catch: all -> 0x012a, TRY_LEAVE, TryCatch #3 {all -> 0x012a, blocks: (B:49:0x00f4, B:51:0x00fb, B:53:0x00ff, B:55:0x0103, B:56:0x0106, B:58:0x010a, B:60:0x010e, B:62:0x0112, B:63:0x0113, B:64:0x0118, B:65:0x0119, B:66:0x0120, B:67:0x0121, B:68:0x0128, B:69:0x0129), top: B:128:0x00f4 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x001d  */
    /* JADX WARN: Code duplicated, block: B:90:0x01a5 A[Catch: all -> 0x003e, TRY_LEAVE, TryCatch #7 {all -> 0x003e, blocks: (B:13:0x0039, B:87:0x0196, B:88:0x019f, B:90:0x01a5), top: B:134:0x0039 }] */
    /* JADX WARN: Code duplicated, block: B:99:0x01bb A[Catch: all -> 0x01ea, TryCatch #4 {all -> 0x01ea, blocks: (B:97:0x01b4, B:99:0x01bb, B:101:0x01bf, B:103:0x01c3, B:104:0x01c6, B:106:0x01ca, B:108:0x01ce, B:110:0x01d2, B:111:0x01d3, B:112:0x01d8, B:113:0x01d9, B:114:0x01e0, B:115:0x01e1, B:116:0x01e8, B:117:0x01e9), top: B:129:0x01b4 }] */
    public final Object a(Uri uri, q01 q01Var, v3 v3Var, ks3 ks3Var, Continuation continuation) {
        y53 y53Var;
        rr3 rr3VarA;
        rr3 rr3Var;
        q01 q01Var2;
        rr3 rr3Var2;
        rr3 rr3VarA2;
        rr3 rr3Var3;
        q01 q01Var3;
        rr3 rr3Var4;
        Object obj;
        Object obj2;
        if (continuation instanceof y53) {
            y53Var = (y53) continuation;
            int i = y53Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                y53Var.f = i - Integer.MIN_VALUE;
            } else {
                y53Var = new y53(this, continuation);
            }
        } else {
            y53Var = new y53(this, continuation);
        }
        Object obj3 = y53Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = y53Var.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj3);
            g83 g83Var = this.h;
            s11 s11Var = s11.CUI_NAME_PING_AND_EMIT_PAID_EVENT;
            List listEmptyList = CollectionsKt.emptyList();
            ks3 ks3VarA = ks3Var == null ? js3.a() : ks3Var;
            if (hs3.c() == null) {
                rr3VarA2 = g83.a(g83Var, s11Var, listEmptyList, ks3VarA);
                try {
                    if (a(uri)) {
                        String str = (String) ((h81) q01Var.a()).c().get("X-Afma-Ad-Event-Value");
                        if (str == null) {
                            str = (String) ((h81) q01Var.a()).c().get("X-Ad-Event-Value");
                        }
                        y53Var.a = q01Var;
                        y53Var.b = rr3VarA2;
                        y53Var.c = rr3VarA2;
                        y53Var.f = 1;
                        if (a(v3Var, str, y53Var) != coroutine_suspended) {
                            q01Var3 = q01Var;
                            rr3Var3 = rr3VarA2;
                            rr3Var4 = rr3Var3;
                            ((h81) q01Var3.a()).getClass();
                        }
                    } else {
                        xs3.a(new m01("Untrusted domain for ad event value: " + uri), false);
                        ((h81) q01Var.a()).getClass();
                        rr3Var3 = rr3VarA2;
                        rr3Var4 = rr3Var3;
                    }
                    obj = p005kotlin.Unit.INSTANCE;
                    if (obj instanceof i01) {
                        xs3.a((i01) obj, false);
                    }
                    CloseableKt.closeFinally(rr3Var3, null);
                } catch (Throwable th) {
                    th = th;
                    rr3Var3 = rr3VarA2;
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
            } else {
                rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                try {
                    if (a(uri)) {
                        String str2 = (String) ((h81) q01Var.a()).c().get("X-Afma-Ad-Event-Value");
                        if (str2 == null) {
                            str2 = (String) ((h81) q01Var.a()).c().get("X-Ad-Event-Value");
                        }
                        y53Var.a = q01Var;
                        y53Var.b = rr3VarA;
                        y53Var.c = rr3VarA;
                        y53Var.f = 2;
                        if (a(v3Var, str2, y53Var) != coroutine_suspended) {
                            q01Var2 = q01Var;
                            rr3Var = rr3VarA;
                            rr3Var2 = rr3Var;
                            ((h81) q01Var2.a()).getClass();
                        }
                    } else {
                        xs3.a(new m01("Untrusted domain for ad event value: " + uri), false);
                        ((h81) q01Var.a()).getClass();
                        rr3Var = rr3VarA;
                        rr3Var2 = rr3Var;
                    }
                    obj2 = p005kotlin.Unit.INSTANCE;
                    if (obj2 instanceof i01) {
                        xs3.a((i01) obj2, false);
                    }
                    CloseableKt.closeFinally(rr3Var, null);
                } catch (Throwable th2) {
                    th = th2;
                    rr3Var = rr3VarA;
                    rr3VarA.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        rr3VarA.a(th);
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
        if (i2 == 1) {
            rr3Var3 = y53Var.c;
            rr3Var4 = y53Var.b;
            q01Var3 = y53Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj3);
                ((h81) q01Var3.a()).getClass();
                obj = p005kotlin.Unit.INSTANCE;
                if (obj instanceof i01) {
                    xs3.a((i01) obj, false);
                }
                CloseableKt.closeFinally(rr3Var3, null);
            } catch (Throwable th3) {
                th = th3;
                rr3VarA2 = rr3Var4;
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
                } catch (Throwable th4) {
                    try {
                        throw th4;
                    } catch (Throwable th5) {
                        CloseableKt.closeFinally(rr3Var3, th4);
                        throw th5;
                    }
                }
            }
        } else {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            rr3Var = y53Var.c;
            rr3Var2 = y53Var.b;
            q01Var2 = y53Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj3);
                ((h81) q01Var2.a()).getClass();
                obj2 = p005kotlin.Unit.INSTANCE;
                if (obj2 instanceof i01) {
                    xs3.a((i01) obj2, false);
                }
                CloseableKt.closeFinally(rr3Var, null);
            } catch (Throwable th6) {
                th = th6;
                rr3VarA = rr3Var2;
                try {
                    rr3VarA.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        rr3VarA.a(th);
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
                        CloseableKt.closeFinally(rr3Var, th7);
                        throw th8;
                    }
                }
            }
        }
        return p005kotlin.Unit.INSTANCE;
    }

    public final String a(Uri uri, int i) {
        if (this.a.Z()) {
            return uri.buildUpon().clearQuery().appendQueryParameter("pa", String.valueOf(i)).build() + C3510b4.j.c + uri.getEncodedQuery();
        }
        String string = uri.toString();
        Intrinsics.checkNotNull(string);
        return string;
    }

    public final void a(Uri uri, ha2 ha2Var, int i, long j, String str, Map map, v3 v3Var, i2 i2Var, Boolean bool, ks3 ks3Var) {
        if (i < ha2Var.a) {
            BuildersKt__Builders_commonKt.launch$default(this.d, null, null, new b63(i, j, uri, i2Var, v3Var, ha2Var, ks3Var, this, bool, str, map, null), 3, null);
            return;
        }
        if (ha2Var.c) {
            ac2 ac2Var = this.b;
            this.c.getClass();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            String strA = a(uri, i + 1);
            rb2 rb2Var = rb2.READY_TO_PING;
            sb2 pingRecord = new sb2(jElapsedRealtime, str, strA);
            ac2Var.getClass();
            Intrinsics.checkNotNullParameter(pingRecord, "pingRecord");
            BuildersKt__Builders_commonKt.launch$default(ac2Var.a, null, null, new xb2(ac2Var, new wb2(ac2Var, pingRecord, null), null), 3, null);
        }
    }

    public final void a(Uri uri, i2 adConfiguration, zy commonConfiguration, v3 v3Var, Boolean bool, ks3 ks3Var) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        ex0 ex0Var = this.a;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:use_retry_strategy:enabled", C3510b4.i.W);
        Boolean bool2 = Boolean.TRUE;
        ir irVar = yr.b;
        if (((Boolean) ex0Var.a("gads:use_retry_strategy:enabled", bool2, irVar)).booleanValue() && adConfiguration.x0 != null) {
            BuildersKt__Builders_commonKt.launch$default(this.d, null, null, new a63(this, uri, adConfiguration, commonConfiguration, v3Var, bool, ks3Var, null), 3, null);
            return;
        }
        if (v3Var != null && Intrinsics.areEqual(bool, bool2)) {
            ex0 ex0Var2 = this.a;
            ex0Var2.getClass();
            Intrinsics.checkNotNullParameter("gads:ad_events_for_scar:enabled", C3510b4.i.W);
            if (((Boolean) ex0Var2.a("gads:ad_events_for_scar:enabled", bool2, irVar)).booleanValue() && adConfiguration.B0) {
                BuildersKt__Builders_commonKt.launch$default(this.d, null, null, new z53(this, uri, v3Var, ks3Var, null), 3, null);
                return;
            }
        }
        vw3 vw3Var = this.f;
        Map mapA = this.g.a(uri);
        vw3Var.getClass();
        Intrinsics.checkNotNullParameter(uri, "uri");
        vw3Var.e.mo4525trySendJP2dKIU(new p005kotlin.Pair(uri, mapA));
    }

    public final void a(List uris) {
        Intrinsics.checkNotNullParameter(uris, "uris");
        vw3 vw3Var = this.f;
        ArrayList<p005kotlin.Pair> urisAndHeaders = new ArrayList(CollectionsKt.collectionSizeOrDefault(uris, 10));
        Iterator it = uris.iterator();
        while (it.hasNext()) {
            Uri uri = (Uri) it.next();
            urisAndHeaders.add(new p005kotlin.Pair(uri, this.g.a(uri)));
        }
        vw3Var.getClass();
        Intrinsics.checkNotNullParameter(urisAndHeaders, "urisAndHeaders");
        for (p005kotlin.Pair pair : urisAndHeaders) {
            vw3Var.e.mo4525trySendJP2dKIU(new p005kotlin.Pair((Uri) pair.component1(), (Map) pair.component2()));
        }
    }

    public final boolean a(Uri uri) {
        if (!this.a.O0()) {
            return true;
        }
        String host = uri.getHost();
        if (host == null) {
            return false;
        }
        List listA = this.a.a();
        if (!(listA instanceof Collection) || !listA.isEmpty()) {
            Iterator it = listA.iterator();
            while (it.hasNext()) {
                String strRemovePrefix = StringsKt.removePrefix((String) it.next(), (CharSequence) ".");
                if (Intrinsics.areEqual(host, strRemovePrefix) || StringsKt.endsWith$default(host, "." + strRemovePrefix, false, 2, (Object) null)) {
                    return true;
                }
            }
        }
        return false;
    }
}

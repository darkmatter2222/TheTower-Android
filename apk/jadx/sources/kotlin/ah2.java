package kotlin;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.browser.customtabs.CustomTabsSession;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import androidx.webkit.ProxyConfig;
import com.google.common.base.Splitter;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.ironsource.C3510b4;
import java.net.URISyntaxException;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.Regex;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class ah2 implements r41 {
    public final Context a;
    public final ex0 b;
    public final o21 c;
    public final rb d;
    public final v3 e;
    public final f0 f;
    public final cw2 g;
    public final cw2 h;
    public final bz1 i;
    public final j53 j;
    public final zc0 k;
    public final qs0 l;
    public final i2 m;
    public final s93 n;
    public final gc2 o;
    public final ap2 p;
    public final p61 q;
    public final ur3 r;
    public final zy s;
    public final CoroutineScope t;

    public ah2(Context applicationContext, ex0 flags, o21 gmaUtil, rb adSpamClient, v3 adEventEmitter, f0 activityTracker, dw2 onePieceExpandableContentPresenter, dw2 twoPieceExpandableContentPresenter, bz1 mraidResizeHandler, j53 requestType, zc0 customTabsConnection, qs0 firebaseAnalyticsEventHandler, i2 adConfiguration, s93 safeBrowsingManager, gc2 offlineOpenHandler, ap2 postClickLifecycleMonitor, p61 hsdpDeepLinkServiceWrapper, ur3 traceLogger, zy commonConfiguration, CoroutineScope backgroundScope) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        Intrinsics.checkNotNullParameter(adSpamClient, "adSpamClient");
        Intrinsics.checkNotNullParameter(adEventEmitter, "adEventEmitter");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(onePieceExpandableContentPresenter, "onePieceExpandableContentPresenter");
        Intrinsics.checkNotNullParameter(twoPieceExpandableContentPresenter, "twoPieceExpandableContentPresenter");
        Intrinsics.checkNotNullParameter(mraidResizeHandler, "mraidResizeHandler");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(customTabsConnection, "customTabsConnection");
        Intrinsics.checkNotNullParameter(firebaseAnalyticsEventHandler, "firebaseAnalyticsEventHandler");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(safeBrowsingManager, "safeBrowsingManager");
        Intrinsics.checkNotNullParameter(offlineOpenHandler, "offlineOpenHandler");
        Intrinsics.checkNotNullParameter(postClickLifecycleMonitor, "postClickLifecycleMonitor");
        Intrinsics.checkNotNullParameter(hsdpDeepLinkServiceWrapper, "hsdpDeepLinkServiceWrapper");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        this.a = applicationContext;
        this.b = flags;
        this.c = gmaUtil;
        this.d = adSpamClient;
        this.e = adEventEmitter;
        this.f = activityTracker;
        this.g = onePieceExpandableContentPresenter;
        this.h = twoPieceExpandableContentPresenter;
        this.i = mraidResizeHandler;
        this.j = requestType;
        this.k = customTabsConnection;
        this.l = firebaseAnalyticsEventHandler;
        this.m = adConfiguration;
        this.n = safeBrowsingManager;
        this.o = offlineOpenHandler;
        this.p = postClickLifecycleMonitor;
        this.q = hsdpDeepLinkServiceWrapper;
        this.r = traceLogger;
        this.s = commonConfiguration;
        this.t = backgroundScope;
    }

    public static int b(Map map) {
        String str = (String) map.get("o");
        if (str == null) {
            return -1;
        }
        int iHashCode = str.hashCode();
        if (iHashCode == 99) {
            return !str.equals("c") ? -1 : 14;
        }
        if (iHashCode != 108) {
            return (iHashCode == 112 && str.equals("p")) ? 7 : -1;
        }
        return str.equals("l") ? 6 : -1;
    }

    public final Intent a(String str, Map map, r31 r31Var) {
        String str2 = (String) map.get("m");
        String str3 = (String) map.get("p");
        String str4 = (String) map.get("c");
        String str5 = (String) map.get("f");
        Intent intent = new Intent();
        Uri uriA = this.d.a(Uri.parse(str), r31Var);
        if (str2 == null || StringsKt.isBlank(str2)) {
            intent.setData(uriA);
        } else {
            intent.setDataAndType(uriA, str2);
        }
        intent.setAction("android.intent.action.VIEW");
        if (str3 != null && !StringsKt.isBlank(str3)) {
            intent.setPackage(str3);
        }
        if (str4 != null && !StringsKt.isBlank(str4)) {
            String[] strArr = (String[]) new Regex(DomExceptionUtils.SEPARATOR).split(str4, 2).toArray(new String[0]);
            if (strArr.length < 2) {
                xs3.a("Could not parse component name from open GMSG: " + str4, null, 6);
                return null;
            }
            intent.setClassName(strArr[0], strArr[1]);
        }
        if (str5 != null && !StringsKt.isBlank(str5)) {
            try {
                intent.addFlags(Integer.parseInt(str5));
                return intent;
            } catch (NumberFormatException e) {
                xs3.a("Could not parse intent flags (" + str5 + "): " + e);
            }
        }
        return intent;
    }

    public final Intent a(Map map) {
        String str = (String) map.get("p");
        if (str != null) {
            return this.a.getPackageManager().getLaunchIntentForPackage(str);
        }
        xs3.a("Package name missing from open app action: " + map, null, 6);
        return null;
    }

    public final Intent a(Map map, r31 r31Var) {
        Intent uri;
        String str = (String) map.get("intent_url");
        if (str == null || StringsKt.isBlank(str)) {
            uri = null;
        } else {
            try {
                uri = Intent.parseUri(str, 0);
                try {
                    Uri data = uri.getData();
                    if (data != null) {
                        uri.setDataAndType(this.d.a(data, r31Var), uri.getType());
                    }
                } catch (URISyntaxException e) {
                    e = e;
                    xs3.a("Error parsing the intent url (" + str + "): " + e);
                }
            } catch (URISyntaxException e2) {
                e = e2;
                uri = null;
            }
        }
        if (uri != null) {
            return uri;
        }
        String str2 = (String) map.get("u");
        if (str2 != null && !StringsKt.isBlank(str2)) {
            return a(str2, map, r31Var);
        }
        xs3.a("Blank URL and invalid intent URL for an open GMSG: " + map, null, 6);
        return uri;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0033 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:14:0x0034 A[RETURN] */
    public final ResolveInfo a(Intent intent, List list) {
        ResolveInfo resolveInfoResolveActivity = this.a.getPackageManager().resolveActivity(intent, 65536);
        if (resolveInfoResolveActivity == null) {
            return null;
        }
        for (Object obj : list) {
            if (Intrinsics.areEqual(((ResolveInfo) obj).activityInfo.name, resolveInfoResolveActivity.activityInfo.name)) {
                if (obj != null) {
                    return resolveInfoResolveActivity;
                }
                return null;
            }
        }
        obj = null;
        if (obj != null) {
            return resolveInfoResolveActivity;
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Boolean a(r31 webView, String str, Continuation continuation) {
        wg2 wg2Var;
        if (continuation instanceof wg2) {
            wg2Var = (wg2) continuation;
            int i = wg2Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                wg2Var.c = i - Integer.MIN_VALUE;
            } else {
                wg2Var = new wg2(this, continuation);
            }
        } else {
            wg2Var = new wg2(this, continuation);
        }
        Object obj = wg2Var.a;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = wg2Var.c;
        boolean z = true;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            gc2 gc2Var = this.o;
            gc2Var.getClass();
            Intrinsics.checkNotNullParameter(webView, "webView");
            if (str != null && gc2Var.a.f()) {
                s11 s11Var = s11.CUI_NAME_OFFLINE_OPEN;
                WeakHashMap weakHashMap = hs3.a;
                rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                try {
                    if (gc2Var.c.l.get()) {
                        ac2 ac2Var = gc2Var.d;
                        String gwsQueryId = gc2Var.b.h;
                        ac2Var.getClass();
                        Intrinsics.checkNotNullParameter(gwsQueryId, "gwsQueryId");
                        BuildersKt__Builders_commonKt.launch$default(ac2Var.a, null, null, new xb2(ac2Var, new zb2(ac2Var, gwsQueryId, null), null), 3, null);
                    } else {
                        i2 i2Var = gc2Var.a;
                        qb2 qb2Var = i2Var.u0;
                        boolean z2 = qb2Var != null ? qb2Var.c : false;
                        uo2 uo2Var = i2Var.w0;
                        if (uo2Var == null || !uo2Var.a || uo2Var.b.length() <= 0 || !uo2Var.c) {
                            z = false;
                        }
                        if (z2 && z) {
                            ex0 ex0Var = gc2Var.e;
                            ex0Var.getClass();
                            Intrinsics.checkNotNullParameter("gads:skip_offline_notification_flow:enabled", C3510b4.i.W);
                            ((Boolean) ex0Var.a("gads:skip_offline_notification_flow:enabled", Boolean.FALSE, yr.b)).getClass();
                        }
                    }
                    Object obj2 = Boolean.FALSE;
                    if (obj2 instanceof i01) {
                        xs3.a((i01) obj2, false);
                    }
                    CloseableKt.closeFinally(rr3VarA, null);
                } catch (Throwable th) {
                    try {
                        rr3VarA.b(th);
                        if (th instanceof v24) {
                            throw th;
                        }
                        if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                            rr3VarA.a(th);
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
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        return Boxing.boxBoolean(false);
    }

    /* JADX WARN: Code duplicated, block: B:122:0x034d  */
    /* JADX WARN: Code duplicated, block: B:124:0x0359  */
    /* JADX WARN: Code duplicated, block: B:154:0x03e3  */
    /* JADX WARN: Code duplicated, block: B:157:0x040a  */
    /* JADX WARN: Code duplicated, block: B:159:0x040e  */
    /* JADX WARN: Code duplicated, block: B:161:0x0416  */
    /* JADX WARN: Code duplicated, block: B:169:0x044d  */
    /* JADX WARN: Code duplicated, block: B:170:0x0456  */
    /* JADX WARN: Code duplicated, block: B:171:0x0458  */
    /* JADX WARN: Code duplicated, block: B:174:0x0463  */
    /* JADX WARN: Code duplicated, block: B:178:0x0481  */
    /* JADX WARN: Code duplicated, block: B:181:0x048d  */
    /* JADX WARN: Code duplicated, block: B:183:0x0490  */
    /* JADX WARN: Code duplicated, block: B:185:0x0498  */
    /* JADX WARN: Code duplicated, block: B:187:0x049f  */
    /* JADX WARN: Code duplicated, block: B:188:0x04a1  */
    /* JADX WARN: Code duplicated, block: B:192:0x04c0  */
    /* JADX WARN: Code duplicated, block: B:195:0x04ce  */
    /* JADX WARN: Code duplicated, block: B:197:0x04d1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:198:0x04d3  */
    /* JADX WARN: Code duplicated, block: B:199:0x04d5  */
    /* JADX WARN: Code duplicated, block: B:201:0x04d8  */
    /* JADX WARN: Code duplicated, block: B:202:0x04db  */
    /* JADX WARN: Code duplicated, block: B:206:0x0503  */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x037a, code lost:
    
        if (a(r1, r2, r3, r4, r20, r5) == r12) goto L208;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x043e, code lost:
    
        if (r11.a(r10, r5) == r12) goto L208;
     */
    /* JADX WARN: Code restructure failed: missing block: B:207:0x0505, code lost:
    
        if (r1 == r12) goto L208;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0138, code lost:
    
        if (r2.b(r1, r5) == r12) goto L208;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0277, code lost:
    
        if (r1 == r12) goto L208;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0294, code lost:
    
        if (b(r1, r2, r3, r20, r5) == r12) goto L208;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v17 */
    /* JADX WARN: Type inference failed for: r10v18 */
    /* JADX WARN: Type inference failed for: r10v20 */
    /* JADX WARN: Type inference failed for: r10v31 */
    /* JADX WARN: Type inference failed for: r10v32 */
    /* JADX WARN: Type inference failed for: r10v33 */
    /* JADX WARN: Type inference failed for: r10v34 */
    /* JADX WARN: Type inference failed for: r10v35 */
    /* JADX WARN: Type inference failed for: r10v36 */
    /* JADX WARN: Type inference failed for: r10v37 */
    /* JADX WARN: Type inference failed for: r1v41 */
    /* JADX WARN: Type inference failed for: r1v46, types: [int] */
    /* JADX WARN: Type inference failed for: r1v48, types: [int] */
    /* JADX WARN: Type inference failed for: r1v51 */
    /* JADX WARN: Type inference failed for: r1v62 */
    /* JADX WARN: Type inference failed for: r1v63 */
    /* JADX WARN: Type inference failed for: r1v64 */
    /* JADX WARN: Type inference failed for: r1v65 */
    /* JADX WARN: Type inference failed for: r1v66 */
    /* JADX WARN: Type inference failed for: r2v38 */
    /* JADX WARN: Type inference failed for: r2v39 */
    /* JADX WARN: Type inference failed for: r2v40, types: [int] */
    /* JADX WARN: Type inference failed for: r2v42 */
    /* JADX WARN: Type inference failed for: r2v43 */
    /* JADX WARN: Type inference failed for: r2v44 */
    /* JADX WARN: Type inference failed for: r2v55 */
    /* JADX WARN: Type inference failed for: r2v56 */
    /* JADX WARN: Type inference failed for: r2v57 */
    /* JADX WARN: Type inference failed for: r2v58 */
    /* JADX WARN: Type inference failed for: r2v59 */
    /* JADX WARN: Type inference failed for: r2v60 */
    /* JADX WARN: Type inference failed for: r2v61 */
    /* JADX WARN: Type inference failed for: r3v32 */
    /* JADX WARN: Type inference failed for: r3v34, types: [int] */
    /* JADX WARN: Type inference failed for: r3v37 */
    /* JADX WARN: Type inference failed for: r4v33 */
    /* JADX WARN: Type inference failed for: r4v36 */
    /* JADX WARN: Type inference failed for: r4v41 */
    /* JADX WARN: Type inference failed for: r6v33, types: [int] */
    /* JADX WARN: Type inference failed for: r6v39, types: [int] */
    /* JADX WARN: Type inference failed for: r6v62 */
    /* JADX WARN: Type inference failed for: r6v63 */
    @Override // kotlin.r41
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlin.r31 r20, java.util.Map r21, p005kotlin.coroutines.Continuation r22) {
        /*
            Method dump skipped, instruction units count: 1340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ah2.a(ads_mobile_sdk.r31, java.util.Map, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:137:0x0262  */
    /* JADX WARN: Code duplicated, block: B:139:0x0265  */
    /* JADX WARN: Code duplicated, block: B:140:0x0266 A[Catch: all -> 0x025e, TRY_LEAVE, TryCatch #22 {all -> 0x025e, blocks: (B:134:0x0259, B:150:0x02a3, B:153:0x02bd, B:156:0x02c7, B:140:0x0266, B:142:0x0270, B:144:0x0278, B:148:0x028f), top: B:219:0x0259 }] */
    /* JADX WARN: Code duplicated, block: B:146:0x027e  */
    /* JADX WARN: Code duplicated, block: B:153:0x02bd A[Catch: all -> 0x025e, TRY_ENTER, TRY_LEAVE, TryCatch #22 {all -> 0x025e, blocks: (B:134:0x0259, B:150:0x02a3, B:153:0x02bd, B:156:0x02c7, B:140:0x0266, B:142:0x0270, B:144:0x0278, B:148:0x028f), top: B:219:0x0259 }] */
    /* JADX WARN: Code duplicated, block: B:156:0x02c7 A[Catch: all -> 0x025e, TRY_ENTER, TRY_LEAVE, TryCatch #22 {all -> 0x025e, blocks: (B:134:0x0259, B:150:0x02a3, B:153:0x02bd, B:156:0x02c7, B:140:0x0266, B:142:0x0270, B:144:0x0278, B:148:0x028f), top: B:219:0x0259 }] */
    /* JADX WARN: Code duplicated, block: B:160:0x02d6 A[Catch: all -> 0x02e0, TRY_LEAVE, TryCatch #0 {all -> 0x02e0, blocks: (B:158:0x02d0, B:160:0x02d6), top: B:199:0x02d0 }] */
    /* JADX WARN: Code duplicated, block: B:171:0x02f1 A[Catch: all -> 0x0320, TryCatch #1 {all -> 0x0320, blocks: (B:169:0x02ea, B:171:0x02f1, B:173:0x02f5, B:175:0x02f9, B:176:0x02fc, B:178:0x0300, B:180:0x0304, B:182:0x0308, B:183:0x0309, B:184:0x030e, B:185:0x030f, B:186:0x0316, B:187:0x0317, B:188:0x031e, B:189:0x031f), top: B:201:0x02ea }] */
    /* JADX WARN: Code duplicated, block: B:173:0x02f5 A[Catch: all -> 0x0320, TryCatch #1 {all -> 0x0320, blocks: (B:169:0x02ea, B:171:0x02f1, B:173:0x02f5, B:175:0x02f9, B:176:0x02fc, B:178:0x0300, B:180:0x0304, B:182:0x0308, B:183:0x0309, B:184:0x030e, B:185:0x030f, B:186:0x0316, B:187:0x0317, B:188:0x031e, B:189:0x031f), top: B:201:0x02ea }] */
    /* JADX WARN: Code duplicated, block: B:178:0x0300 A[Catch: all -> 0x0320, TryCatch #1 {all -> 0x0320, blocks: (B:169:0x02ea, B:171:0x02f1, B:173:0x02f5, B:175:0x02f9, B:176:0x02fc, B:178:0x0300, B:180:0x0304, B:182:0x0308, B:183:0x0309, B:184:0x030e, B:185:0x030f, B:186:0x0316, B:187:0x0317, B:188:0x031e, B:189:0x031f), top: B:201:0x02ea }] */
    /* JADX WARN: Code duplicated, block: B:180:0x0304 A[Catch: all -> 0x0320, TryCatch #1 {all -> 0x0320, blocks: (B:169:0x02ea, B:171:0x02f1, B:173:0x02f5, B:175:0x02f9, B:176:0x02fc, B:178:0x0300, B:180:0x0304, B:182:0x0308, B:183:0x0309, B:184:0x030e, B:185:0x030f, B:186:0x0316, B:187:0x0317, B:188:0x031e, B:189:0x031f), top: B:201:0x02ea }] */
    /* JADX WARN: Code duplicated, block: B:182:0x0308 A[Catch: all -> 0x0320, TryCatch #1 {all -> 0x0320, blocks: (B:169:0x02ea, B:171:0x02f1, B:173:0x02f5, B:175:0x02f9, B:176:0x02fc, B:178:0x0300, B:180:0x0304, B:182:0x0308, B:183:0x0309, B:184:0x030e, B:185:0x030f, B:186:0x0316, B:187:0x0317, B:188:0x031e, B:189:0x031f), top: B:201:0x02ea }] */
    /* JADX WARN: Code duplicated, block: B:183:0x0309 A[Catch: all -> 0x0320, TryCatch #1 {all -> 0x0320, blocks: (B:169:0x02ea, B:171:0x02f1, B:173:0x02f5, B:175:0x02f9, B:176:0x02fc, B:178:0x0300, B:180:0x0304, B:182:0x0308, B:183:0x0309, B:184:0x030e, B:185:0x030f, B:186:0x0316, B:187:0x0317, B:188:0x031e, B:189:0x031f), top: B:201:0x02ea }] */
    /* JADX WARN: Code duplicated, block: B:185:0x030f A[Catch: all -> 0x0320, TryCatch #1 {all -> 0x0320, blocks: (B:169:0x02ea, B:171:0x02f1, B:173:0x02f5, B:175:0x02f9, B:176:0x02fc, B:178:0x0300, B:180:0x0304, B:182:0x0308, B:183:0x0309, B:184:0x030e, B:185:0x030f, B:186:0x0316, B:187:0x0317, B:188:0x031e, B:189:0x031f), top: B:201:0x02ea }] */
    /* JADX WARN: Code duplicated, block: B:187:0x0317 A[Catch: all -> 0x0320, TryCatch #1 {all -> 0x0320, blocks: (B:169:0x02ea, B:171:0x02f1, B:173:0x02f5, B:175:0x02f9, B:176:0x02fc, B:178:0x0300, B:180:0x0304, B:182:0x0308, B:183:0x0309, B:184:0x030e, B:185:0x030f, B:186:0x0316, B:187:0x0317, B:188:0x031e, B:189:0x031f), top: B:201:0x02ea }] */
    /* JADX WARN: Code duplicated, block: B:189:0x031f A[Catch: all -> 0x0320, TRY_LEAVE, TryCatch #1 {all -> 0x0320, blocks: (B:169:0x02ea, B:171:0x02f1, B:173:0x02f5, B:175:0x02f9, B:176:0x02fc, B:178:0x0300, B:180:0x0304, B:182:0x0308, B:183:0x0309, B:184:0x030e, B:185:0x030f, B:186:0x0316, B:187:0x0317, B:188:0x031e, B:189:0x031f), top: B:201:0x02ea }] */
    /* JADX WARN: Code duplicated, block: B:211:0x0180 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:219:0x0259 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:76:0x0184 A[Catch: all -> 0x019b, Exception -> 0x01a0, TRY_LEAVE, TryCatch #13 {Exception -> 0x01a0, blocks: (B:74:0x0180, B:76:0x0184, B:77:0x0186, B:78:0x0188, B:80:0x018e), top: B:211:0x0180 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    /* JADX WARN: Code duplicated, block: B:93:0x01b2 A[Catch: all -> 0x01b7, Exception -> 0x01e4, TryCatch #21 {Exception -> 0x01e4, all -> 0x01b7, blocks: (B:91:0x01aa, B:93:0x01b2, B:100:0x01db, B:99:0x01be), top: B:226:0x01aa }] */
    /* JADX WARN: Code duplicated, block: B:96:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:98:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:99:0x01be A[Catch: all -> 0x01b7, Exception -> 0x01e4, TryCatch #21 {Exception -> 0x01e4, all -> 0x01b7, blocks: (B:91:0x01aa, B:93:0x01b2, B:100:0x01db, B:99:0x01be), top: B:226:0x01aa }] */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x017a, code lost:
    
        if (r5.o(r10) == r4) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0194, code lost:
    
        if (r6.a(r10) == r4) goto L82;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(java.util.Map r18, boolean r19, boolean r20, kotlin.r31 r21, p005kotlin.coroutines.Continuation r22) {
        /*
            Method dump skipped, instruction units count: 814
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ah2.a(java.util.Map, boolean, boolean, ads_mobile_sdk.r31, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0113  */
    /* JADX WARN: Code duplicated, block: B:37:0x011c  */
    /* JADX WARN: Code duplicated, block: B:40:0x013f  */
    /* JADX WARN: Code duplicated, block: B:43:0x0154  */
    /* JADX WARN: Code duplicated, block: B:45:0x0157  */
    /* JADX WARN: Code duplicated, block: B:47:0x015f  */
    /* JADX WARN: Code duplicated, block: B:49:0x0165  */
    /* JADX WARN: Code duplicated, block: B:53:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:59:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:61:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:64:0x021b  */
    /* JADX WARN: Code duplicated, block: B:70:0x0235  */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x01d7, code lost:
    
        if (r4.a(r5, true, r7, r8, r9, r10, r11) == r3) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x022f, code lost:
    
        if (r4.a(r5, true, r7, r8, r9, r10, r11) == r3) goto L67;
     */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v22, types: [ads_mobile_sdk.ah2, ads_mobile_sdk.r31, java.util.Map] */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v24, types: [ads_mobile_sdk.ah2, ads_mobile_sdk.r31, java.util.Map] */
    /* JADX WARN: Type inference failed for: r2v26 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(java.util.Map r20, boolean r21, boolean r22, boolean r23, kotlin.r31 r24, p005kotlin.coroutines.Continuation r25) {
        /*
            Method dump skipped, instruction units count: 604
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ah2.a(java.util.Map, boolean, boolean, boolean, ads_mobile_sdk.r31, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:33:0x008c  */
    /* JADX WARN: Code duplicated, block: B:38:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0084, code lost:
    
        if (r10.a(r0) == r1) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00af, code lost:
    
        if (r9.a(r7, "openIntentAsync", r0) == r1) goto L35;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(java.util.Map r7, boolean r8, boolean r9, boolean r10, boolean r11, kotlin.r31 r12, p005kotlin.coroutines.Continuation r13) {
        /*
            r6 = this;
            boolean r0 = r13 instanceof kotlin.yg2
            if (r0 == 0) goto L13
            r0 = r13
            ads_mobile_sdk.yg2 r0 = (kotlin.yg2) r0
            int r1 = r0.h
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.h = r1
            goto L18
        L13:
            ads_mobile_sdk.yg2 r0 = new ads_mobile_sdk.yg2
            r0.<init>(r6, r13)
        L18:
            java.lang.Object r13 = r0.f
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.h
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L52
            if (r2 == r5) goto L44
            if (r2 == r4) goto L38
            if (r2 != r3) goto L30
            p005kotlin.ResultKt.throwOnFailure(r13)
            goto Lb2
        L30:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L38:
            boolean r7 = r0.d
            boolean r8 = r0.c
            ads_mobile_sdk.r31 r9 = r0.b
            java.util.Map r10 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r13)
            goto L8a
        L44:
            boolean r11 = r0.e
            boolean r9 = r0.d
            boolean r8 = r0.c
            ads_mobile_sdk.r31 r12 = r0.b
            java.util.Map r7 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r13)
            goto L6e
        L52:
            p005kotlin.ResultKt.throwOnFailure(r13)
            if (r8 == 0) goto L6e
            if (r10 == 0) goto L6e
            ads_mobile_sdk.v3 r10 = r6.e
            r0.a = r7
            r0.b = r12
            r0.c = r8
            r0.d = r9
            r0.e = r11
            r0.h = r5
            java.lang.Object r10 = r10.o(r0)
            if (r10 != r1) goto L6e
            goto Lb1
        L6e:
            if (r8 == 0) goto L87
            if (r11 == 0) goto L87
            ads_mobile_sdk.ay0 r10 = r12.p
            if (r10 == 0) goto L87
            r0.a = r7
            r0.b = r12
            r0.c = r8
            r0.d = r9
            r0.h = r4
            kotlin.Unit r10 = r10.a(r0)
            if (r10 != r1) goto L87
            goto Lb1
        L87:
            r10 = r7
            r7 = r9
            r9 = r12
        L8a:
            if (r7 == 0) goto Lb5
            com.google.gson.JsonObject r7 = new com.google.gson.JsonObject
            r7.<init>()
            java.lang.String r11 = "event_id"
            java.lang.Object r10 = r10.get(r11)
            java.lang.String r10 = (java.lang.String) r10
            java.lang.Boolean r8 = p005kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r8)
            r7.addProperty(r10, r8)
            kotlin.Unit r8 = p005kotlin.Unit.INSTANCE
            r8 = 0
            r0.a = r8
            r0.b = r8
            r0.h = r3
            java.lang.String r8 = "openIntentAsync"
            java.lang.Object r7 = r9.a(r7, r8, r0)
            if (r7 != r1) goto Lb2
        Lb1:
            return r1
        Lb2:
            kotlin.Unit r7 = p005kotlin.Unit.INSTANCE
            return r7
        Lb5:
            kotlin.Unit r7 = p005kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ah2.a(java.util.Map, boolean, boolean, boolean, boolean, ads_mobile_sdk.r31, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void a(CustomTabsSession customTabsSession, Activity activity, Uri uri, String str, Map map) {
        CustomTabsIntent.Builder builder = new CustomTabsIntent.Builder(customTabsSession);
        ex0 ex0Var = this.b;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:cct_v2_partial_custom_tab_config:enabled", C3510b4.i.W);
        if (((Boolean) ex0Var.a("gads:cct_v2_partial_custom_tab_config:enabled", Boolean.TRUE, yr.b)).booleanValue()) {
            String str2 = (String) map.get("cct_init_h");
            String str3 = (String) map.get("cct_bp");
            if (str2 != null && !StringsKt.isBlank(str2) && Integer.parseInt(str2) > 0) {
                builder.setInitialActivityHeightPx(Integer.parseInt(str2));
            }
            if (str3 != null && !StringsKt.isBlank(str3) && Integer.parseInt(str3) >= 0 && Integer.parseInt(str3) <= 2) {
                builder.setCloseButtonPosition(Integer.parseInt(str3));
            }
        }
        CustomTabsIntent customTabsIntentBuild = builder.build();
        Intrinsics.checkNotNullExpressionValue(customTabsIntentBuild, "build(...)");
        customTabsIntentBuild.intent.setPackage(str);
        customTabsIntentBuild.launchUrl(activity, uri);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(r31 r31Var, Map map, Continuation continuation) {
        rg2 rg2Var;
        ah2 ah2Var;
        Uri uriBuild;
        if (continuation instanceof rg2) {
            rg2Var = (rg2) continuation;
            int i = rg2Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                rg2Var.f = i - Integer.MIN_VALUE;
            } else {
                rg2Var = new rg2(this, continuation);
            }
        } else {
            rg2Var = new rg2(this, continuation);
        }
        Object objA = rg2Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = rg2Var.f;
        Object obj = null;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            String str = (String) map.get("u");
            if (str == null || StringsKt.isBlank(str)) {
                xs3.a("Blank URL for browser open GMSG.", null, 6);
                return null;
            }
            qs0 qs0Var = this.l;
            Uri uri = Uri.parse(str);
            is0 is0Var = is0.b;
            Bundle bundle = this.m.q;
            rg2Var.a = this;
            rg2Var.b = map;
            rg2Var.c = r31Var;
            rg2Var.f = 1;
            objA = qs0Var.a(uri, is0Var, bundle, rg2Var);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
            ah2Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            r31Var = rg2Var.c;
            map = rg2Var.b;
            ah2Var = rg2Var.a;
            p005kotlin.ResultKt.throwOnFailure(objA);
        }
        Uri uriA = ah2Var.d.a((Uri) objA, r31Var);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(268435456);
        intent.setData(uriA);
        intent.setAction("android.intent.action.VIEW");
        List<ResolveInfo> listQueryIntentActivities = ah2Var.a.getPackageManager().queryIntentActivities(intent, 65536);
        Intrinsics.checkNotNullExpressionValue(listQueryIntentActivities, "queryIntentActivities(...)");
        ResolveInfo resolveInfoA = ah2Var.a(intent, listQueryIntentActivities);
        if (resolveInfoA != null) {
            Intent intent2 = new Intent(intent);
            ActivityInfo activityInfo = resolveInfoA.activityInfo;
            intent2.setClassName(activityInfo.packageName, activityInfo.name);
            return intent2;
        }
        if (!StringsKt.equals(ProxyConfig.MATCH_HTTP, uriA.getScheme(), true)) {
            if (StringsKt.equals("https", uriA.getScheme(), true)) {
                uriBuild = uriA.buildUpon().scheme(ProxyConfig.MATCH_HTTP).build();
            }
            return intent;
        }
        uriBuild = uriA.buildUpon().scheme("https").build();
        Intrinsics.checkNotNull(uriBuild);
        Intent intent3 = new Intent("android.intent.action.VIEW");
        intent3.addFlags(268435456);
        intent3.setData(uriBuild);
        intent3.setAction("android.intent.action.VIEW");
        List<ResolveInfo> listQueryIntentActivities2 = ah2Var.a.getPackageManager().queryIntentActivities(intent3, 65536);
        Intrinsics.checkNotNullExpressionValue(listQueryIntentActivities2, "queryIntentActivities(...)");
        ResolveInfo resolveInfoA2 = ah2Var.a(intent3, listQueryIntentActivities2);
        if (resolveInfoA2 != null) {
            Intent intent4 = new Intent(intent3);
            ActivityInfo activityInfo2 = resolveInfoA2.activityInfo;
            intent4.setClassName(activityInfo2.packageName, activityInfo2.name);
            List<ResolveInfo> listQueryIntentActivities3 = ah2Var.a.getPackageManager().queryIntentActivities(intent4, 65536);
            Intrinsics.checkNotNullExpressionValue(listQueryIntentActivities3, "queryIntentActivities(...)");
            if (ah2Var.a(intent4, listQueryIntentActivities3) != null) {
                return intent4;
            }
        }
        if (!listQueryIntentActivities.isEmpty()) {
            if (Boolean.parseBoolean((String) map.get("use_running_process"))) {
                List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) ah2Var.a.getSystemService(ActivityManager.class)).getRunningAppProcesses();
                loop0: for (Object obj2 : listQueryIntentActivities) {
                    ResolveInfo resolveInfo = (ResolveInfo) obj2;
                    Intrinsics.checkNotNull(runningAppProcesses);
                    if (!(runningAppProcesses instanceof Collection) || !runningAppProcesses.isEmpty()) {
                        Iterator<T> it = runningAppProcesses.iterator();
                        while (it.hasNext()) {
                            if (Intrinsics.areEqual(resolveInfo.activityInfo.packageName, ((ActivityManager.RunningAppProcessInfo) it.next()).processName)) {
                                obj = obj2;
                                break loop0;
                            }
                        }
                    }
                }
                ResolveInfo resolveInfo2 = (ResolveInfo) obj;
                if (resolveInfo2 != null) {
                    Intent intent5 = new Intent(intent);
                    ActivityInfo activityInfo3 = resolveInfo2.activityInfo;
                    intent5.setClassName(activityInfo3.packageName, activityInfo3.name);
                    return intent5;
                }
            }
            if (Boolean.parseBoolean((String) map.get("use_first_package"))) {
                ResolveInfo resolveInfo3 = listQueryIntentActivities.get(0);
                Intrinsics.checkNotNullExpressionValue(resolveInfo3, "get(...)");
                Intent intent6 = new Intent(intent);
                ActivityInfo activityInfo4 = resolveInfo3.activityInfo;
                intent6.setClassName(activityInfo4.packageName, activityInfo4.name);
                return intent6;
            }
        }
        return intent;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00e9, code lost:
    
        if (kotlin.s93.a(r4, r15, r14) == r3) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0114, code lost:
    
        if (r4.a(r8, r6, r10, r15, r9, r12, r11, r7, r13, r14) == r3) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0116, code lost:
    
        return r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(java.util.Map r18, boolean r19, boolean r20, kotlin.r31 r21, p005kotlin.coroutines.Continuation r22) {
        /*
            Method dump skipped, instruction units count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ah2.b(java.util.Map, boolean, boolean, ads_mobile_sdk.r31, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Map b(String str) {
        if (str.length() == 0) {
            return MapsKt.emptyMap();
        }
        try {
            ds1 ds1Var = ds1.a;
            Intrinsics.checkNotNullParameter(str, "<this>");
            Object objFromJson = new Gson().fromJson(str, (Class<Object>) JsonObject.class);
            Intrinsics.checkNotNullExpressionValue(objFromJson, "fromJson(...)");
            JsonObject jsonObject = (JsonObject) objFromJson;
            Intrinsics.checkNotNullParameter(jsonObject, "<this>");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry<String, JsonElement> entry : jsonObject.entrySet()) {
                Intrinsics.checkNotNull(entry);
                String key = entry.getKey();
                JsonElement value = entry.getValue();
                Intrinsics.checkNotNull(key);
                String asString = value.getAsString();
                Intrinsics.checkNotNullExpressionValue(asString, "getAsString(...)");
                linkedHashMap.put(key, asString);
            }
            return linkedHashMap;
        } catch (Exception e) {
            Splitter splitter = f01.a;
            f01.b("Failed to parse extra query params", e);
            ((as3) this.r).a("OpenGmsgHandler.parseHsdpExtraQueryParams", (Throwable) e);
            return MapsKt.emptyMap();
        }
    }

    @Override // kotlin.r41
    public final u11 g() {
        return u11.GMSG_NAME_OPEN;
    }
}

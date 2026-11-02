package kotlin;

import android.content.Context;
import android.util.DisplayMetrics;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialRequest;
import java.io.Closeable;
import java.util.WeakHashMap;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.flow.FlowKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
public final class dn3 extends n2 implements at0 {
    public final Context l;
    public final cw2 m;
    public final mb0 n;
    public final iz3 o;
    public final CoroutineScope p;
    public final w61 q;
    public final km r;
    public final SwipeableInterstitialRequest s;

    /* JADX WARN: Illegal instructions before constructor call */
    public dn3(Context context, dw2 adComponentProvider, mb0 csiTicker, iz3 webViewFactory, CoroutineScope uiScope, w61 htmlUtil, km appSettings, ks3 traceMetaSet, BaseRequest baseRequest, j53 requestType, long j, int i, i2 adConfiguration, zy commonConfiguration, ec3 serverTransaction, String renderId, SwipeableInterstitialRequest swipeableInterstitialRequest, dw2 placementIdWrapperProvider) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adComponentProvider, "adComponentProvider");
        Intrinsics.checkNotNullParameter(csiTicker, "csiTicker");
        Intrinsics.checkNotNullParameter(webViewFactory, "webViewFactory");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(htmlUtil, "htmlUtil");
        Intrinsics.checkNotNullParameter(appSettings, "appSettings");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        Intrinsics.checkNotNullParameter(serverTransaction, "serverTransaction");
        Intrinsics.checkNotNullParameter(renderId, "renderId");
        Intrinsics.checkNotNullParameter(swipeableInterstitialRequest, "swipeableInterstitialRequest");
        Intrinsics.checkNotNullParameter(placementIdWrapperProvider, "placementIdWrapperProvider");
        Object obj = placementIdWrapperProvider.get();
        Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
        super(traceMetaSet, baseRequest, requestType, j, i, adConfiguration, commonConfiguration, serverTransaction, renderId, (eo2) obj);
        this.l = context;
        this.m = adComponentProvider;
        this.n = csiTicker;
        this.o = webViewFactory;
        this.p = uiScope;
        this.q = htmlUtil;
        this.r = appSettings;
        this.s = swipeableInterstitialRequest;
    }

    @Override // kotlin.at0
    public final km a() {
        return this.r;
    }

    /* JADX WARN: Code duplicated, block: B:104:0x02d3 A[Catch: all -> 0x02f3, TryCatch #0 {all -> 0x02f3, blocks: (B:95:0x02bd, B:97:0x02c4, B:99:0x02c8, B:101:0x02cc, B:102:0x02cf, B:104:0x02d3, B:106:0x02d7, B:108:0x02db, B:109:0x02dc, B:110:0x02e1, B:111:0x02e2, B:112:0x02e9, B:113:0x02ea, B:114:0x02f1, B:115:0x02f2), top: B:154:0x02bd }] */
    /* JADX WARN: Code duplicated, block: B:106:0x02d7 A[Catch: all -> 0x02f3, TryCatch #0 {all -> 0x02f3, blocks: (B:95:0x02bd, B:97:0x02c4, B:99:0x02c8, B:101:0x02cc, B:102:0x02cf, B:104:0x02d3, B:106:0x02d7, B:108:0x02db, B:109:0x02dc, B:110:0x02e1, B:111:0x02e2, B:112:0x02e9, B:113:0x02ea, B:114:0x02f1, B:115:0x02f2), top: B:154:0x02bd }] */
    /* JADX WARN: Code duplicated, block: B:108:0x02db A[Catch: all -> 0x02f3, TryCatch #0 {all -> 0x02f3, blocks: (B:95:0x02bd, B:97:0x02c4, B:99:0x02c8, B:101:0x02cc, B:102:0x02cf, B:104:0x02d3, B:106:0x02d7, B:108:0x02db, B:109:0x02dc, B:110:0x02e1, B:111:0x02e2, B:112:0x02e9, B:113:0x02ea, B:114:0x02f1, B:115:0x02f2), top: B:154:0x02bd }] */
    /* JADX WARN: Code duplicated, block: B:109:0x02dc A[Catch: all -> 0x02f3, TryCatch #0 {all -> 0x02f3, blocks: (B:95:0x02bd, B:97:0x02c4, B:99:0x02c8, B:101:0x02cc, B:102:0x02cf, B:104:0x02d3, B:106:0x02d7, B:108:0x02db, B:109:0x02dc, B:110:0x02e1, B:111:0x02e2, B:112:0x02e9, B:113:0x02ea, B:114:0x02f1, B:115:0x02f2), top: B:154:0x02bd }] */
    /* JADX WARN: Code duplicated, block: B:111:0x02e2 A[Catch: all -> 0x02f3, TryCatch #0 {all -> 0x02f3, blocks: (B:95:0x02bd, B:97:0x02c4, B:99:0x02c8, B:101:0x02cc, B:102:0x02cf, B:104:0x02d3, B:106:0x02d7, B:108:0x02db, B:109:0x02dc, B:110:0x02e1, B:111:0x02e2, B:112:0x02e9, B:113:0x02ea, B:114:0x02f1, B:115:0x02f2), top: B:154:0x02bd }] */
    /* JADX WARN: Code duplicated, block: B:113:0x02ea A[Catch: all -> 0x02f3, TryCatch #0 {all -> 0x02f3, blocks: (B:95:0x02bd, B:97:0x02c4, B:99:0x02c8, B:101:0x02cc, B:102:0x02cf, B:104:0x02d3, B:106:0x02d7, B:108:0x02db, B:109:0x02dc, B:110:0x02e1, B:111:0x02e2, B:112:0x02e9, B:113:0x02ea, B:114:0x02f1, B:115:0x02f2), top: B:154:0x02bd }] */
    /* JADX WARN: Code duplicated, block: B:115:0x02f2 A[Catch: all -> 0x02f3, TRY_LEAVE, TryCatch #0 {all -> 0x02f3, blocks: (B:95:0x02bd, B:97:0x02c4, B:99:0x02c8, B:101:0x02cc, B:102:0x02cf, B:104:0x02d3, B:106:0x02d7, B:108:0x02db, B:109:0x02dc, B:110:0x02e1, B:111:0x02e2, B:112:0x02e9, B:113:0x02ea, B:114:0x02f1, B:115:0x02f2), top: B:154:0x02bd }] */
    /* JADX WARN: Code duplicated, block: B:129:0x030a A[Catch: all -> 0x0339, TryCatch #4 {all -> 0x0339, blocks: (B:127:0x0303, B:129:0x030a, B:131:0x030e, B:133:0x0312, B:134:0x0315, B:136:0x0319, B:138:0x031d, B:140:0x0321, B:141:0x0322, B:142:0x0327, B:143:0x0328, B:144:0x032f, B:145:0x0330, B:146:0x0337, B:147:0x0338), top: B:161:0x0303 }] */
    /* JADX WARN: Code duplicated, block: B:136:0x0319 A[Catch: all -> 0x0339, TryCatch #4 {all -> 0x0339, blocks: (B:127:0x0303, B:129:0x030a, B:131:0x030e, B:133:0x0312, B:134:0x0315, B:136:0x0319, B:138:0x031d, B:140:0x0321, B:141:0x0322, B:142:0x0327, B:143:0x0328, B:144:0x032f, B:145:0x0330, B:146:0x0337, B:147:0x0338), top: B:161:0x0303 }] */
    /* JADX WARN: Code duplicated, block: B:138:0x031d A[Catch: all -> 0x0339, TryCatch #4 {all -> 0x0339, blocks: (B:127:0x0303, B:129:0x030a, B:131:0x030e, B:133:0x0312, B:134:0x0315, B:136:0x0319, B:138:0x031d, B:140:0x0321, B:141:0x0322, B:142:0x0327, B:143:0x0328, B:144:0x032f, B:145:0x0330, B:146:0x0337, B:147:0x0338), top: B:161:0x0303 }] */
    /* JADX WARN: Code duplicated, block: B:140:0x0321 A[Catch: all -> 0x0339, TryCatch #4 {all -> 0x0339, blocks: (B:127:0x0303, B:129:0x030a, B:131:0x030e, B:133:0x0312, B:134:0x0315, B:136:0x0319, B:138:0x031d, B:140:0x0321, B:141:0x0322, B:142:0x0327, B:143:0x0328, B:144:0x032f, B:145:0x0330, B:146:0x0337, B:147:0x0338), top: B:161:0x0303 }] */
    /* JADX WARN: Code duplicated, block: B:141:0x0322 A[Catch: all -> 0x0339, TryCatch #4 {all -> 0x0339, blocks: (B:127:0x0303, B:129:0x030a, B:131:0x030e, B:133:0x0312, B:134:0x0315, B:136:0x0319, B:138:0x031d, B:140:0x0321, B:141:0x0322, B:142:0x0327, B:143:0x0328, B:144:0x032f, B:145:0x0330, B:146:0x0337, B:147:0x0338), top: B:161:0x0303 }] */
    /* JADX WARN: Code duplicated, block: B:143:0x0328 A[Catch: all -> 0x0339, TryCatch #4 {all -> 0x0339, blocks: (B:127:0x0303, B:129:0x030a, B:131:0x030e, B:133:0x0312, B:134:0x0315, B:136:0x0319, B:138:0x031d, B:140:0x0321, B:141:0x0322, B:142:0x0327, B:143:0x0328, B:144:0x032f, B:145:0x0330, B:146:0x0337, B:147:0x0338), top: B:161:0x0303 }] */
    /* JADX WARN: Code duplicated, block: B:145:0x0330 A[Catch: all -> 0x0339, TryCatch #4 {all -> 0x0339, blocks: (B:127:0x0303, B:129:0x030a, B:131:0x030e, B:133:0x0312, B:134:0x0315, B:136:0x0319, B:138:0x031d, B:140:0x0321, B:141:0x0322, B:142:0x0327, B:143:0x0328, B:144:0x032f, B:145:0x0330, B:146:0x0337, B:147:0x0338), top: B:161:0x0303 }] */
    /* JADX WARN: Code duplicated, block: B:147:0x0338 A[Catch: all -> 0x0339, TRY_LEAVE, TryCatch #4 {all -> 0x0339, blocks: (B:127:0x0303, B:129:0x030a, B:131:0x030e, B:133:0x0312, B:134:0x0315, B:136:0x0319, B:138:0x031d, B:140:0x0321, B:141:0x0322, B:142:0x0327, B:143:0x0328, B:144:0x032f, B:145:0x0330, B:146:0x0337, B:147:0x0338), top: B:161:0x0303 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:62:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:64:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:66:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:69:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:72:0x0205  */
    /* JADX WARN: Code duplicated, block: B:79:0x0259  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:82:0x0266 A[Catch: all -> 0x0067, TRY_LEAVE, TryCatch #3 {all -> 0x0067, blocks: (B:19:0x005d, B:80:0x0260, B:82:0x0266), top: B:159:0x005d }] */
    /* JADX WARN: Code duplicated, block: B:85:0x0273 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:86:0x0274  */
    /* JADX WARN: Code duplicated, block: B:89:0x02a9  */
    /* JADX WARN: Code duplicated, block: B:97:0x02c4 A[Catch: all -> 0x02f3, TryCatch #0 {all -> 0x02f3, blocks: (B:95:0x02bd, B:97:0x02c4, B:99:0x02c8, B:101:0x02cc, B:102:0x02cf, B:104:0x02d3, B:106:0x02d7, B:108:0x02db, B:109:0x02dc, B:110:0x02e1, B:111:0x02e2, B:112:0x02e9, B:113:0x02ea, B:114:0x02f1, B:115:0x02f2), top: B:154:0x02bd }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v45, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v5, types: [kotlin.jvm.internal.Ref$ObjectRef] */
    /* JADX WARN: Type inference failed for: r11v6, types: [java.lang.Object, java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r5v7, types: [ads_mobile_sdk.m40, ads_mobile_sdk.pr1] */
    /* JADX WARN: Type inference failed for: r5v9, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13, types: [ads_mobile_sdk.nr1] */
    /* JADX WARN: Type inference failed for: r6v15, types: [ads_mobile_sdk.km0] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v22, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r6v29 */
    /* JADX WARN: Type inference failed for: r6v30 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v7, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    @Override // kotlin.n2
    public final Object a(boolean z, Continuation continuation) throws Throwable {
        an3 an3Var;
        rr3 rr3Var;
        Closeable closeable;
        ?? r6;
        boolean z2;
        Throwable th;
        AdSize adSize;
        dn3 dn3Var;
        ?? km0Var;
        h41 h41Var;
        r31 r31Var;
        om3 om3Var;
        a04 a04Var;
        Throwable th2;
        vc1 vc1Var;
        Ref.ObjectRef objectRef;
        ?? r5;
        Object objA;
        h41 h41Var2;
        dn3 dn3Var2;
        om3 om3Var2;
        Ref.ObjectRef objectRef2;
        r31 r31Var2;
        vc1 vc1Var2;
        ?? r11;
        rr3 rr3VarA;
        Closeable closeable2;
        om3 om3Var3;
        h41 h41Var3;
        rr3 rr3Var2;
        dn3 dn3Var3;
        String script;
        rr3 rr3Var3;
        Closeable closeable3;
        ?? r12;
        v01 v01Var;
        zn1 zn1Var;
        CoroutineContext coroutineContext;
        cn3 cn3Var;
        zn1 zn1Var2;
        if (continuation instanceof an3) {
            an3Var = (an3) continuation;
            int i = an3Var.i;
            if ((i & Integer.MIN_VALUE) != 0) {
                an3Var.i = i - Integer.MIN_VALUE;
            } else {
                an3Var = new an3(this, continuation);
            }
        } else {
            an3Var = new an3(this, continuation);
        }
        an3 an3Var2 = an3Var;
        Object objA2 = an3Var2.g;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = an3Var2.i;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA2);
            AdSize adSize2 = this.s.getCom.ironsource.b4.i.O java.lang.String();
            if (adSize2 == null) {
                DisplayMetrics displayMetrics = this.l.getResources().getDisplayMetrics();
                float f = displayMetrics.widthPixels;
                float f2 = displayMetrics.density;
                adSize2 = new AdSize((int) (f / f2), (int) (displayMetrics.heightPixels / f2));
            }
            v14 v14VarA = t14.a(this.l, adSize2);
            s11 s11Var = s11.CUI_NAME_CREATIVE_WEBVIEW_INITIALIZATION;
            WeakHashMap weakHashMap = hs3.a;
            rr3 rr3VarA2 = hs3.a(s11Var, CollectionsKt.emptyList(), true);
            try {
                iz3 iz3Var = this.o;
                ks3 ks3Var = this.a;
                mb0 mb0Var = this.n;
                eo2 eo2Var = this.j;
                an3Var2.a = this;
                an3Var2.b = adSize2;
                an3Var2.c = rr3VarA2;
                an3Var2.d = rr3VarA2;
                an3Var2.i = 1;
                rr3Var = rr3VarA2;
                z2 = true;
                th = null;
                try {
                    Object objA3 = iz3.a(iz3Var, v14VarA, ks3Var, mb0Var, eo2Var, (t91) null, an3Var2, 48);
                    an3Var2 = an3Var2;
                    if (objA3 != coroutine_suspended) {
                        adSize = adSize2;
                        dn3Var = this;
                        objA2 = objA3;
                        closeable = rr3Var;
                        r6 = closeable;
                    }
                    return coroutine_suspended;
                } catch (Throwable th3) {
                    th = th3;
                    closeable = rr3Var;
                    r6 = closeable;
                    r6.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        r6.a(th);
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
            } catch (Throwable th4) {
                th = th4;
                rr3Var = rr3VarA2;
            }
        } else {
            if (i2 != 1) {
                if (i2 == 2) {
                    om3Var = (om3) an3Var2.d;
                    r31Var = (r31) an3Var2.c;
                    h41Var = (h41) an3Var2.b;
                    dn3Var = (dn3) an3Var2.a;
                    p005kotlin.ResultKt.throwOnFailure(objA2);
                    z2 = true;
                    th2 = null;
                    vc1Var = dn3Var.f.J;
                    if (vc1Var == null) {
                        return new m01("First party ad configuration has no inline ad field.", kk1.INTERNAL_ERROR);
                    }
                    objectRef = new Ref.ObjectRef();
                    r5 = vc1Var.a;
                    if (r5 == 0) {
                        return new m01("First party ad configuration has no inline HTML field.", kk1.INTERNAL_ERROR);
                    }
                    objectRef.element = r5;
                    ze2 ze2Var = (ze2) ((xi0) om3Var).U.get();
                    an3Var2.a = dn3Var;
                    an3Var2.b = h41Var;
                    an3Var2.c = r31Var;
                    an3Var2.d = om3Var;
                    an3Var2.e = vc1Var;
                    an3Var2.f = objectRef;
                    an3Var2.i = 3;
                    ze2Var.getClass();
                    objA = ze2.a(ze2Var, r31Var, z2, an3Var2);
                    if (objA != coroutine_suspended) {
                        h41Var2 = h41Var;
                        dn3Var2 = dn3Var;
                        om3Var2 = om3Var;
                        objectRef2 = objectRef;
                        r31Var2 = r31Var;
                        vc1Var2 = vc1Var;
                        objA2 = objA;
                        r11 = th2;
                        if (((Boolean) objA2).booleanValue()) {
                            w61 w61Var = dn3Var2.q;
                            String html = (String) objectRef2.element;
                            w61Var.getClass();
                            Intrinsics.checkNotNullParameter(html, "html");
                            Intrinsics.checkNotNullParameter(script, "script");
                            objectRef2.element = w61.a(html, CollectionsKt.listOf(script));
                        }
                        s11 s11Var2 = s11.CUI_NAME_CREATIVE_WEBVIEW_LOAD;
                        WeakHashMap weakHashMap2 = hs3.a;
                        rr3VarA = hs3.a(s11Var2, CollectionsKt.emptyList(), z2);
                        String str = (String) objectRef2.element;
                        String str2 = vc1Var2.c;
                        an3Var2.a = dn3Var2;
                        an3Var2.b = h41Var2;
                        an3Var2.c = om3Var2;
                        an3Var2.d = rr3VarA;
                        an3Var2.e = rr3VarA;
                        an3Var2.f = r11;
                        an3Var2.i = 4;
                        objA2 = r31.a(r31Var2, str, str2, true, (Continuation) an3Var2, 12);
                        if (objA2 != coroutine_suspended) {
                            om3Var3 = om3Var2;
                            h41Var3 = h41Var2;
                            rr3 rr3Var4 = rr3VarA;
                            rr3Var2 = rr3Var4;
                            dn3Var3 = dn3Var2;
                            closeable3 = rr3Var4;
                            r12 = r11;
                            v01Var = (v01) objA2;
                            if (v01Var instanceof i01) {
                                xs3.a((i01) v01Var, false);
                            }
                            CloseableKt.closeFinally(closeable3, r12);
                            if (v01Var instanceof i01) {
                                return v01Var;
                            }
                            zn1Var = (zn1) ((xi0) om3Var3).Z.get();
                            coroutineContext = dn3Var3.p.getCoroutineContext();
                            cn3Var = new cn3(dn3Var3, h41Var3, om3Var3, zn1Var, null);
                            an3Var2.a = zn1Var;
                            an3Var2.b = r12;
                            an3Var2.c = r12;
                            an3Var2.d = r12;
                            an3Var2.e = r12;
                            an3Var2.i = 5;
                            if (BuildersKt.withContext(coroutineContext, cn3Var, an3Var2) != coroutine_suspended) {
                                zn1Var2 = zn1Var;
                                return new q01(FlowKt.flowOf(new q01(zn1Var2)));
                            }
                        }
                    }
                    return coroutine_suspended;
                }
                if (i2 != 3) {
                    if (i2 == 4) {
                        closeable3 = (Closeable) an3Var2.e;
                        rr3Var2 = (rr3) an3Var2.d;
                        om3 om3Var4 = (om3) an3Var2.c;
                        h41 h41Var4 = (h41) an3Var2.b;
                        dn3Var3 = (dn3) an3Var2.a;
                        try {
                            p005kotlin.ResultKt.throwOnFailure(objA2);
                            r12 = 0;
                            om3Var3 = om3Var4;
                            h41Var3 = h41Var4;
                            closeable3 = closeable3;
                            rr3Var2 = rr3Var2;
                            v01Var = (v01) objA2;
                            if (v01Var instanceof i01) {
                                xs3.a((i01) v01Var, false);
                            }
                            CloseableKt.closeFinally(closeable3, r12);
                            if (v01Var instanceof i01) {
                                return v01Var;
                            }
                            zn1Var = (zn1) ((xi0) om3Var3).Z.get();
                            coroutineContext = dn3Var3.p.getCoroutineContext();
                            cn3Var = new cn3(dn3Var3, h41Var3, om3Var3, zn1Var, null);
                            an3Var2.a = zn1Var;
                            an3Var2.b = r12;
                            an3Var2.c = r12;
                            an3Var2.d = r12;
                            an3Var2.e = r12;
                            an3Var2.i = 5;
                            if (BuildersKt.withContext(coroutineContext, cn3Var, an3Var2) != coroutine_suspended) {
                                zn1Var2 = zn1Var;
                            }
                            return coroutine_suspended;
                        } catch (Throwable th5) {
                            th = th5;
                            rr3Var3 = rr3Var2;
                            closeable2 = closeable3;
                            try {
                                rr3Var3.b(th);
                                if (!(th instanceof v24)) {
                                    throw th;
                                }
                                if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                    rr3Var3.a(th);
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
                            } catch (Throwable th6) {
                                try {
                                    throw th6;
                                } catch (Throwable th7) {
                                    CloseableKt.closeFinally(closeable2, th6);
                                    throw th7;
                                }
                            }
                        }
                    }
                    if (i2 != 5) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    zn1Var2 = (zn1) an3Var2.a;
                    p005kotlin.ResultKt.throwOnFailure(objA2);
                    return new q01(FlowKt.flowOf(new q01(zn1Var2)));
                }
                objectRef2 = an3Var2.f;
                vc1Var2 = (vc1) an3Var2.e;
                om3 om3Var5 = (om3) an3Var2.d;
                r31 r31Var3 = (r31) an3Var2.c;
                h41Var2 = (h41) an3Var2.b;
                dn3Var2 = (dn3) an3Var2.a;
                p005kotlin.ResultKt.throwOnFailure(objA2);
                z2 = true;
                r11 = 0;
                r31Var2 = r31Var3;
                om3Var2 = om3Var5;
                if (((Boolean) objA2).booleanValue() && (script = dn3Var2.q.a(dn3Var2.f)) != null) {
                    w61 w61Var2 = dn3Var2.q;
                    String html2 = (String) objectRef2.element;
                    w61Var2.getClass();
                    Intrinsics.checkNotNullParameter(html2, "html");
                    Intrinsics.checkNotNullParameter(script, "script");
                    objectRef2.element = w61.a(html2, CollectionsKt.listOf(script));
                }
                s11 s11Var3 = s11.CUI_NAME_CREATIVE_WEBVIEW_LOAD;
                WeakHashMap weakHashMap3 = hs3.a;
                rr3VarA = hs3.a(s11Var3, CollectionsKt.emptyList(), z2);
                try {
                    String str3 = (String) objectRef2.element;
                    String str4 = vc1Var2.c;
                    an3Var2.a = dn3Var2;
                    an3Var2.b = h41Var2;
                    an3Var2.c = om3Var2;
                    an3Var2.d = rr3VarA;
                    an3Var2.e = rr3VarA;
                    an3Var2.f = r11;
                    an3Var2.i = 4;
                    objA2 = r31.a(r31Var2, str3, str4, true, (Continuation) an3Var2, 12);
                    if (objA2 != coroutine_suspended) {
                        om3Var3 = om3Var2;
                        h41Var3 = h41Var2;
                        rr3 rr3Var5 = rr3VarA;
                        rr3Var2 = rr3Var5;
                        dn3Var3 = dn3Var2;
                        closeable3 = rr3Var5;
                        r12 = r11;
                        v01Var = (v01) objA2;
                        if (v01Var instanceof i01) {
                            xs3.a((i01) v01Var, false);
                        }
                        CloseableKt.closeFinally(closeable3, r12);
                        if (v01Var instanceof i01) {
                            return v01Var;
                        }
                        zn1Var = (zn1) ((xi0) om3Var3).Z.get();
                        coroutineContext = dn3Var3.p.getCoroutineContext();
                        cn3Var = new cn3(dn3Var3, h41Var3, om3Var3, zn1Var, null);
                        an3Var2.a = zn1Var;
                        an3Var2.b = r12;
                        an3Var2.c = r12;
                        an3Var2.d = r12;
                        an3Var2.e = r12;
                        an3Var2.i = 5;
                        if (BuildersKt.withContext(coroutineContext, cn3Var, an3Var2) != coroutine_suspended) {
                            zn1Var2 = zn1Var;
                            return new q01(FlowKt.flowOf(new q01(zn1Var2)));
                        }
                    }
                    return coroutine_suspended;
                } catch (Throwable th8) {
                    th = th8;
                    closeable2 = rr3VarA;
                    rr3Var3 = rr3VarA;
                    rr3Var3.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        rr3Var3.a(th);
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
            closeable = (Closeable) an3Var2.d;
            r6 = (rr3) an3Var2.c;
            adSize = (AdSize) an3Var2.b;
            dn3Var = (dn3) an3Var2.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(objA2);
                z2 = true;
                th = null;
                r6 = r6;
            } catch (Throwable th9) {
                th = th9;
                try {
                    r6.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        r6.a(th);
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
                } catch (Throwable th10) {
                    try {
                        throw th10;
                    } catch (Throwable th11) {
                        CloseableKt.closeFinally(closeable, th10);
                        throw th11;
                    }
                }
            }
        }
        v01 v01Var2 = (v01) objA2;
        if (v01Var2 instanceof i01) {
            xs3.a((i01) v01Var2, false);
        }
        CloseableKt.closeFinally(closeable, th);
        if (v01Var2 instanceof i01) {
            return (i01) v01Var2;
        }
        Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
        h41 h41Var5 = (h41) ((q01) v01Var2).b;
        r31 r31Var4 = h41Var5.a;
        Object obj = dn3Var.m.get();
        Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
        wi0 wi0Var = (wi0) ((nm3) dn3Var.a((w1) obj, false));
        wi0Var.q = h41Var5;
        r31Var4.getClass();
        wi0Var.p = r31Var4;
        wi0Var.s = h41Var5;
        mb0 mb0Var2 = dn3Var.n;
        mb0Var2.getClass();
        wi0Var.t = mb0Var2;
        adSize.getClass();
        wi0Var.u = adSize;
        SwipeableInterstitialRequest swipeableInterstitialRequest = dn3Var.s;
        swipeableInterstitialRequest.getClass();
        wi0Var.r = swipeableInterstitialRequest;
        xi0 xi0VarA = wi0Var.a();
        ?? r7 = (m40) xi0VarA.i1.get();
        nr1 nr1VarC = r31Var4.c();
        if (nr1VarC instanceof a04) {
            a04Var = (a04) nr1VarC;
        } else {
            km0Var = th;
        }
        if (km0Var == 0) {
            km0Var = a04Var;
            km0Var = new km0(r31Var4);
        }
        km0Var = a04Var;
        an3Var2.a = dn3Var;
        an3Var2.b = h41Var5;
        an3Var2.c = r31Var4;
        an3Var2.d = xi0VarA;
        an3Var2.i = 2;
        if (r7.a(km0Var, an3Var2) != coroutine_suspended) {
            h41Var = h41Var5;
            r31Var = r31Var4;
            om3Var = xi0VarA;
            th2 = th;
            vc1Var = dn3Var.f.J;
            if (vc1Var == null) {
                return new m01("First party ad configuration has no inline ad field.", kk1.INTERNAL_ERROR);
            }
            objectRef = new Ref.ObjectRef();
            r5 = vc1Var.a;
            if (r5 == 0) {
                return new m01("First party ad configuration has no inline HTML field.", kk1.INTERNAL_ERROR);
            }
            objectRef.element = r5;
            ze2 ze2Var2 = (ze2) ((xi0) om3Var).U.get();
            an3Var2.a = dn3Var;
            an3Var2.b = h41Var;
            an3Var2.c = r31Var;
            an3Var2.d = om3Var;
            an3Var2.e = vc1Var;
            an3Var2.f = objectRef;
            an3Var2.i = 3;
            ze2Var2.getClass();
            objA = ze2.a(ze2Var2, r31Var, z2, an3Var2);
            if (objA != coroutine_suspended) {
                h41Var2 = h41Var;
                dn3Var2 = dn3Var;
                om3Var2 = om3Var;
                objectRef2 = objectRef;
                r31Var2 = r31Var;
                vc1Var2 = vc1Var;
                objA2 = objA;
                r11 = th2;
                if (((Boolean) objA2).booleanValue()) {
                    w61 w61Var3 = dn3Var2.q;
                    String html3 = (String) objectRef2.element;
                    w61Var3.getClass();
                    Intrinsics.checkNotNullParameter(html3, "html");
                    Intrinsics.checkNotNullParameter(script, "script");
                    objectRef2.element = w61.a(html3, CollectionsKt.listOf(script));
                }
                s11 s11Var4 = s11.CUI_NAME_CREATIVE_WEBVIEW_LOAD;
                WeakHashMap weakHashMap4 = hs3.a;
                rr3VarA = hs3.a(s11Var4, CollectionsKt.emptyList(), z2);
                String str5 = (String) objectRef2.element;
                String str6 = vc1Var2.c;
                an3Var2.a = dn3Var2;
                an3Var2.b = h41Var2;
                an3Var2.c = om3Var2;
                an3Var2.d = rr3VarA;
                an3Var2.e = rr3VarA;
                an3Var2.f = r11;
                an3Var2.i = 4;
                objA2 = r31.a(r31Var2, str5, str6, true, (Continuation) an3Var2, 12);
                if (objA2 != coroutine_suspended) {
                    om3Var3 = om3Var2;
                    h41Var3 = h41Var2;
                    rr3 rr3Var6 = rr3VarA;
                    rr3Var2 = rr3Var6;
                    dn3Var3 = dn3Var2;
                    closeable3 = rr3Var6;
                    r12 = r11;
                    v01Var = (v01) objA2;
                    if (v01Var instanceof i01) {
                        xs3.a((i01) v01Var, false);
                    }
                    CloseableKt.closeFinally(closeable3, r12);
                    if (v01Var instanceof i01) {
                        return v01Var;
                    }
                    zn1Var = (zn1) ((xi0) om3Var3).Z.get();
                    coroutineContext = dn3Var3.p.getCoroutineContext();
                    cn3Var = new cn3(dn3Var3, h41Var3, om3Var3, zn1Var, null);
                    an3Var2.a = zn1Var;
                    an3Var2.b = r12;
                    an3Var2.c = r12;
                    an3Var2.d = r12;
                    an3Var2.e = r12;
                    an3Var2.i = 5;
                    if (BuildersKt.withContext(coroutineContext, cn3Var, an3Var2) != coroutine_suspended) {
                        zn1Var2 = zn1Var;
                        return new q01(FlowKt.flowOf(new q01(zn1Var2)));
                    }
                }
            }
        }
        return coroutine_suspended;
    }

    @Override // kotlin.j2
    public final boolean b() {
        vc1 vc1Var = this.f.J;
        return (vc1Var != null ? vc1Var.a : null) != null;
    }
}

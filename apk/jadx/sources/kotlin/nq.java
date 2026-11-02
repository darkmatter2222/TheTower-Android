package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
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
public abstract class nq extends n2 implements at0 {
    public final cw2 l;
    public final mb0 m;
    public final iz3 n;
    public final CoroutineScope o;
    public final w61 p;
    public final km q;

    public /* synthetic */ nq(dw2 dw2Var, mb0 mb0Var, iz3 iz3Var, CoroutineScope coroutineScope, w61 w61Var, km kmVar, ks3 ks3Var, BaseRequest baseRequest, j53 j53Var, long j, int i, i2 i2Var, zy zyVar, ec3 ec3Var, String str, eo2 eo2Var) {
        this(dw2Var, mb0Var, iz3Var, coroutineScope, w61Var, kmVar, ks3Var, baseRequest, j53Var, j, i, i2Var, zyVar, ec3Var, str, eo2Var, new t91());
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nq(dw2 adComponentProvider, mb0 csiTicker, iz3 webViewFactory, CoroutineScope uiScope, w61 htmlUtil, km appSettings, ks3 traceMetaSet, BaseRequest baseRequest, j53 requestType, long j, int i, i2 adConfiguration, zy commonConfiguration, ec3 serverTransaction, String renderId, eo2 placementIdWrapper, t91 impressionDataWrapper) {
        super(traceMetaSet, baseRequest, requestType, j, i, adConfiguration, commonConfiguration, serverTransaction, renderId, placementIdWrapper, impressionDataWrapper);
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
        Intrinsics.checkNotNullParameter(placementIdWrapper, "placementIdWrapper");
        Intrinsics.checkNotNullParameter(impressionDataWrapper, "impressionDataWrapper");
        this.l = adComponentProvider;
        this.m = csiTicker;
        this.n = webViewFactory;
        this.o = uiScope;
        this.p = htmlUtil;
        this.q = appSettings;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x02bc A[Catch: all -> 0x02cd, TryCatch #6 {all -> 0x02cd, blocks: (B:85:0x0297, B:87:0x029e, B:89:0x02a2, B:91:0x02a6, B:92:0x02a9, B:94:0x02ad, B:96:0x02b1, B:98:0x02b5, B:99:0x02b6, B:100:0x02bb, B:101:0x02bc, B:102:0x02c3, B:103:0x02c4, B:104:0x02cb, B:105:0x02cc), top: B:153:0x0297 }] */
    /* JADX WARN: Code duplicated, block: B:103:0x02c4 A[Catch: all -> 0x02cd, TryCatch #6 {all -> 0x02cd, blocks: (B:85:0x0297, B:87:0x029e, B:89:0x02a2, B:91:0x02a6, B:92:0x02a9, B:94:0x02ad, B:96:0x02b1, B:98:0x02b5, B:99:0x02b6, B:100:0x02bb, B:101:0x02bc, B:102:0x02c3, B:103:0x02c4, B:104:0x02cb, B:105:0x02cc), top: B:153:0x0297 }] */
    /* JADX WARN: Code duplicated, block: B:105:0x02cc A[Catch: all -> 0x02cd, TRY_LEAVE, TryCatch #6 {all -> 0x02cd, blocks: (B:85:0x0297, B:87:0x029e, B:89:0x02a2, B:91:0x02a6, B:92:0x02a9, B:94:0x02ad, B:96:0x02b1, B:98:0x02b5, B:99:0x02b6, B:100:0x02bb, B:101:0x02bc, B:102:0x02c3, B:103:0x02c4, B:104:0x02cb, B:105:0x02cc), top: B:153:0x0297 }] */
    /* JADX WARN: Code duplicated, block: B:116:0x02df A[Catch: all -> 0x030e, TryCatch #7 {all -> 0x030e, blocks: (B:114:0x02d8, B:116:0x02df, B:118:0x02e3, B:120:0x02e7, B:121:0x02ea, B:123:0x02ee, B:125:0x02f2, B:127:0x02f6, B:128:0x02f7, B:129:0x02fc, B:130:0x02fd, B:131:0x0304, B:132:0x0305, B:133:0x030c, B:134:0x030d), top: B:154:0x02d8 }] */
    /* JADX WARN: Code duplicated, block: B:123:0x02ee A[Catch: all -> 0x030e, TryCatch #7 {all -> 0x030e, blocks: (B:114:0x02d8, B:116:0x02df, B:118:0x02e3, B:120:0x02e7, B:121:0x02ea, B:123:0x02ee, B:125:0x02f2, B:127:0x02f6, B:128:0x02f7, B:129:0x02fc, B:130:0x02fd, B:131:0x0304, B:132:0x0305, B:133:0x030c, B:134:0x030d), top: B:154:0x02d8 }] */
    /* JADX WARN: Code duplicated, block: B:125:0x02f2 A[Catch: all -> 0x030e, TryCatch #7 {all -> 0x030e, blocks: (B:114:0x02d8, B:116:0x02df, B:118:0x02e3, B:120:0x02e7, B:121:0x02ea, B:123:0x02ee, B:125:0x02f2, B:127:0x02f6, B:128:0x02f7, B:129:0x02fc, B:130:0x02fd, B:131:0x0304, B:132:0x0305, B:133:0x030c, B:134:0x030d), top: B:154:0x02d8 }] */
    /* JADX WARN: Code duplicated, block: B:127:0x02f6 A[Catch: all -> 0x030e, TryCatch #7 {all -> 0x030e, blocks: (B:114:0x02d8, B:116:0x02df, B:118:0x02e3, B:120:0x02e7, B:121:0x02ea, B:123:0x02ee, B:125:0x02f2, B:127:0x02f6, B:128:0x02f7, B:129:0x02fc, B:130:0x02fd, B:131:0x0304, B:132:0x0305, B:133:0x030c, B:134:0x030d), top: B:154:0x02d8 }] */
    /* JADX WARN: Code duplicated, block: B:128:0x02f7 A[Catch: all -> 0x030e, TryCatch #7 {all -> 0x030e, blocks: (B:114:0x02d8, B:116:0x02df, B:118:0x02e3, B:120:0x02e7, B:121:0x02ea, B:123:0x02ee, B:125:0x02f2, B:127:0x02f6, B:128:0x02f7, B:129:0x02fc, B:130:0x02fd, B:131:0x0304, B:132:0x0305, B:133:0x030c, B:134:0x030d), top: B:154:0x02d8 }] */
    /* JADX WARN: Code duplicated, block: B:130:0x02fd A[Catch: all -> 0x030e, TryCatch #7 {all -> 0x030e, blocks: (B:114:0x02d8, B:116:0x02df, B:118:0x02e3, B:120:0x02e7, B:121:0x02ea, B:123:0x02ee, B:125:0x02f2, B:127:0x02f6, B:128:0x02f7, B:129:0x02fc, B:130:0x02fd, B:131:0x0304, B:132:0x0305, B:133:0x030c, B:134:0x030d), top: B:154:0x02d8 }] */
    /* JADX WARN: Code duplicated, block: B:132:0x0305 A[Catch: all -> 0x030e, TryCatch #7 {all -> 0x030e, blocks: (B:114:0x02d8, B:116:0x02df, B:118:0x02e3, B:120:0x02e7, B:121:0x02ea, B:123:0x02ee, B:125:0x02f2, B:127:0x02f6, B:128:0x02f7, B:129:0x02fc, B:130:0x02fd, B:131:0x0304, B:132:0x0305, B:133:0x030c, B:134:0x030d), top: B:154:0x02d8 }] */
    /* JADX WARN: Code duplicated, block: B:134:0x030d A[Catch: all -> 0x030e, TRY_LEAVE, TryCatch #7 {all -> 0x030e, blocks: (B:114:0x02d8, B:116:0x02df, B:118:0x02e3, B:120:0x02e7, B:121:0x02ea, B:123:0x02ee, B:125:0x02f2, B:127:0x02f6, B:128:0x02f7, B:129:0x02fc, B:130:0x02fd, B:131:0x0304, B:132:0x0305, B:133:0x030c, B:134:0x030d), top: B:154:0x02d8 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x010a A[Catch: all -> 0x00c3, TRY_LEAVE, TryCatch #3 {all -> 0x00c3, blocks: (B:22:0x00bf, B:32:0x0104, B:34:0x010a), top: B:147:0x00bf }] */
    /* JADX WARN: Code duplicated, block: B:37:0x0117  */
    /* JADX WARN: Code duplicated, block: B:39:0x011a  */
    /* JADX WARN: Code duplicated, block: B:41:0x0164  */
    /* JADX WARN: Code duplicated, block: B:42:0x0167  */
    /* JADX WARN: Code duplicated, block: B:44:0x016a  */
    /* JADX WARN: Code duplicated, block: B:48:0x0182  */
    /* JADX WARN: Code duplicated, block: B:52:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:55:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:57:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:60:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:63:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:70:0x023b  */
    /* JADX WARN: Code duplicated, block: B:73:0x024b A[Catch: all -> 0x0061, TRY_LEAVE, TryCatch #2 {all -> 0x0061, blocks: (B:14:0x0056, B:71:0x0245, B:73:0x024b), top: B:145:0x0056 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x0258 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:77:0x0259  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:80:0x0280  */
    /* JADX WARN: Code duplicated, block: B:87:0x029e A[Catch: all -> 0x02cd, TryCatch #6 {all -> 0x02cd, blocks: (B:85:0x0297, B:87:0x029e, B:89:0x02a2, B:91:0x02a6, B:92:0x02a9, B:94:0x02ad, B:96:0x02b1, B:98:0x02b5, B:99:0x02b6, B:100:0x02bb, B:101:0x02bc, B:102:0x02c3, B:103:0x02c4, B:104:0x02cb, B:105:0x02cc), top: B:153:0x0297 }] */
    /* JADX WARN: Code duplicated, block: B:94:0x02ad A[Catch: all -> 0x02cd, TryCatch #6 {all -> 0x02cd, blocks: (B:85:0x0297, B:87:0x029e, B:89:0x02a2, B:91:0x02a6, B:92:0x02a9, B:94:0x02ad, B:96:0x02b1, B:98:0x02b5, B:99:0x02b6, B:100:0x02bb, B:101:0x02bc, B:102:0x02c3, B:103:0x02c4, B:104:0x02cb, B:105:0x02cc), top: B:153:0x0297 }] */
    /* JADX WARN: Code duplicated, block: B:96:0x02b1 A[Catch: all -> 0x02cd, TryCatch #6 {all -> 0x02cd, blocks: (B:85:0x0297, B:87:0x029e, B:89:0x02a2, B:91:0x02a6, B:92:0x02a9, B:94:0x02ad, B:96:0x02b1, B:98:0x02b5, B:99:0x02b6, B:100:0x02bb, B:101:0x02bc, B:102:0x02c3, B:103:0x02c4, B:104:0x02cb, B:105:0x02cc), top: B:153:0x0297 }] */
    /* JADX WARN: Code duplicated, block: B:98:0x02b5 A[Catch: all -> 0x02cd, TryCatch #6 {all -> 0x02cd, blocks: (B:85:0x0297, B:87:0x029e, B:89:0x02a2, B:91:0x02a6, B:92:0x02a9, B:94:0x02ad, B:96:0x02b1, B:98:0x02b5, B:99:0x02b6, B:100:0x02bb, B:101:0x02bc, B:102:0x02c3, B:103:0x02c4, B:104:0x02cb, B:105:0x02cc), top: B:153:0x0297 }] */
    /* JADX WARN: Code duplicated, block: B:99:0x02b6 A[Catch: all -> 0x02cd, TryCatch #6 {all -> 0x02cd, blocks: (B:85:0x0297, B:87:0x029e, B:89:0x02a2, B:91:0x02a6, B:92:0x02a9, B:94:0x02ad, B:96:0x02b1, B:98:0x02b5, B:99:0x02b6, B:100:0x02bb, B:101:0x02bc, B:102:0x02c3, B:103:0x02c4, B:104:0x02cb, B:105:0x02cc), top: B:153:0x0297 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v26, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v35, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v22, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r4v3, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r4v31 */
    /* JADX WARN: Type inference failed for: r4v33 */
    /* JADX WARN: Type inference failed for: r4v36, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r4v37 */
    /* JADX WARN: Type inference failed for: r4v38 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v40, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r4v41 */
    /* JADX WARN: Type inference failed for: r4v42 */
    /* JADX WARN: Type inference failed for: r4v43 */
    /* JADX WARN: Type inference failed for: r4v5 */
    public static Object a(nq nqVar, Continuation continuation) throws Throwable {
        lq lqVar;
        Closeable closeable;
        ?? r4;
        v01 v01Var;
        h41 h41Var;
        r31 r31Var;
        ot0 ot0Var;
        m40 m40VarC;
        nr1 nr1VarC;
        a04 km0Var;
        nq nqVar2;
        h41 h41Var2;
        Ref.ObjectRef objectRef;
        r31 r31Var2;
        Ref.ObjectRef objectRef2;
        v01 v01Var2;
        Object objA;
        Ref.ObjectRef objectRef3;
        h41 h41Var3;
        nq nqVar3;
        Object obj;
        ot0 ot0Var2;
        r31 r31Var3;
        rr3 rr3VarA;
        Closeable closeable2;
        ?? r5;
        r31 r31Var4;
        Object objA2;
        ot0 ot0Var3;
        r31 r31Var5;
        h41 h41Var4;
        nq nqVar4;
        String script;
        v01 v01Var3;
        CoroutineContext coroutineContext;
        mq mqVar;
        ot0 ot0Var4;
        ot0 ot0Var5;
        nq nqVar5 = nqVar;
        if (continuation instanceof lq) {
            lqVar = (lq) continuation;
            int i = lqVar.i;
            if ((i & Integer.MIN_VALUE) != 0) {
                lqVar.i = i - Integer.MIN_VALUE;
            } else {
                lqVar = new lq(nqVar5, continuation);
            }
        } else {
            lqVar = new lq(nqVar5, continuation);
        }
        lq lqVar2 = lqVar;
        Object objA3 = lqVar2.g;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (lqVar2.i) {
            case 0:
                p005kotlin.ResultKt.throwOnFailure(objA3);
                s11 s11Var = s11.CUI_NAME_CREATIVE_WEBVIEW_INITIALIZATION;
                WeakHashMap weakHashMap = hs3.a;
                rr3 rr3VarA2 = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                try {
                    iz3 iz3Var = nqVar5.n;
                    v14 v14Var = new v14(u14.FULLSCREEN, 0, 0, 14);
                    ks3 ks3Var = nqVar5.a;
                    mb0 mb0Var = nqVar5.m;
                    eo2 eo2Var = nqVar5.j;
                    t91 t91Var = nqVar5.k;
                    lqVar2.a = nqVar5;
                    lqVar2.b = rr3VarA2;
                    lqVar2.c = rr3VarA2;
                    lqVar2.i = 1;
                    Object objA4 = iz3.a(iz3Var, v14Var, ks3Var, mb0Var, eo2Var, t91Var, lqVar2, 32);
                    lqVar2 = lqVar2;
                    if (objA4 != coroutine_suspended) {
                        rr3 rr3Var = rr3VarA2;
                        objA3 = objA4;
                        closeable = rr3Var;
                        r4 = rr3Var;
                        v01Var = (v01) objA3;
                        if (v01Var instanceof i01) {
                            xs3.a((i01) v01Var, false);
                        }
                        CloseableKt.closeFinally(closeable, null);
                        if (v01Var instanceof i01) {
                            return (i01) v01Var;
                        }
                        Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                        h41Var = (h41) ((q01) v01Var).b;
                        r31Var = h41Var.a;
                        Object obj2 = nqVar5.l.get();
                        Intrinsics.checkNotNullExpressionValue(obj2, "get(...)");
                        ot0Var = (ot0) ((nt0) ((nt0) ((nt0) ((nt0) ((nt0) nqVar5.a((w1) obj2, false)).a(r31Var)).a(nqVar5.m)).b(h41Var)).a(h41Var)).a();
                        m40VarC = ot0Var.c();
                        nr1VarC = r31Var.c();
                        if (nr1VarC instanceof a04) {
                            km0Var = (a04) nr1VarC;
                        } else {
                            km0Var = null;
                        }
                        if (km0Var == null) {
                            km0Var = new km0(r31Var);
                        }
                        lqVar2.a = nqVar5;
                        lqVar2.b = h41Var;
                        lqVar2.c = r31Var;
                        lqVar2.d = ot0Var;
                        lqVar2.i = 2;
                        if (m40VarC.a(km0Var, lqVar2) != coroutine_suspended) {
                            nqVar2 = nqVar5;
                            h41Var2 = h41Var;
                            objectRef = new Ref.ObjectRef();
                            lqVar2.a = nqVar2;
                            lqVar2.b = h41Var2;
                            lqVar2.c = r31Var;
                            lqVar2.d = ot0Var;
                            lqVar2.e = objectRef;
                            lqVar2.f = objectRef;
                            lqVar2.i = 3;
                            objA3 = nqVar2.a(lqVar2);
                            if (objA3 != coroutine_suspended) {
                                r31Var2 = r31Var;
                                objectRef2 = objectRef;
                                v01Var2 = (v01) objA3;
                                if (v01Var2 instanceof i01) {
                                    return (i01) v01Var2;
                                }
                                Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                objectRef.element = ((q01) v01Var2).b;
                                ze2 ze2VarE = ot0Var.e();
                                lqVar2.a = nqVar2;
                                lqVar2.b = h41Var2;
                                lqVar2.c = r31Var2;
                                lqVar2.d = ot0Var;
                                lqVar2.e = objectRef2;
                                lqVar2.f = null;
                                lqVar2.i = 4;
                                ze2VarE.getClass();
                                objA = ze2.a(ze2VarE, r31Var2, true, lqVar2);
                                if (objA != coroutine_suspended) {
                                    objectRef3 = objectRef2;
                                    h41Var3 = h41Var2;
                                    nqVar3 = nqVar2;
                                    obj = objA;
                                    ot0Var2 = ot0Var;
                                    r31Var3 = r31Var2;
                                    if (((Boolean) obj).booleanValue() && (script = nqVar3.p.a(nqVar3.f)) != null) {
                                        w61 w61Var = nqVar3.p;
                                        String html = (String) objectRef3.element;
                                        w61Var.getClass();
                                        Intrinsics.checkNotNullParameter(html, "html");
                                        Intrinsics.checkNotNullParameter(script, "script");
                                        objectRef3.element = w61.a(html, CollectionsKt.listOf(script));
                                    }
                                    s11 s11Var2 = s11.CUI_NAME_CREATIVE_WEBVIEW_LOAD;
                                    WeakHashMap weakHashMap2 = hs3.a;
                                    rr3VarA = hs3.a(s11Var2, CollectionsKt.emptyList(), true);
                                    try {
                                        String str = (String) objectRef3.element;
                                        vc1 vc1Var = nqVar3.f.J;
                                        Intrinsics.checkNotNull(vc1Var);
                                        String str2 = vc1Var.c;
                                        lqVar2.a = nqVar3;
                                        lqVar2.b = h41Var3;
                                        lqVar2.c = r31Var3;
                                        lqVar2.d = ot0Var2;
                                        lqVar2.e = rr3VarA;
                                        lqVar2.f = rr3VarA;
                                        lqVar2.i = 5;
                                        r31Var4 = r31Var3;
                                        objA2 = r31.a(r31Var4, str, str2, true, (Continuation) lqVar2, 12);
                                        if (objA2 != coroutine_suspended) {
                                            ot0Var3 = ot0Var2;
                                            r31Var5 = r31Var4;
                                            h41Var4 = h41Var3;
                                            nqVar4 = nqVar3;
                                            closeable2 = rr3VarA;
                                            r5 = closeable2;
                                            objA3 = objA2;
                                            v01Var3 = (v01) objA3;
                                            if (v01Var3 instanceof i01) {
                                                xs3.a((i01) v01Var3, false);
                                            }
                                            CloseableKt.closeFinally(closeable2, null);
                                            if (v01Var3 instanceof i01) {
                                                return v01Var3;
                                            }
                                            coroutineContext = nqVar4.o.getCoroutineContext();
                                            mqVar = new mq(nqVar4, h41Var4, ot0Var3, r31Var5, null);
                                            ot0Var4 = ot0Var3;
                                            lqVar2.a = ot0Var4;
                                            lqVar2.b = null;
                                            lqVar2.c = null;
                                            lqVar2.d = null;
                                            lqVar2.e = null;
                                            lqVar2.f = null;
                                            lqVar2.i = 6;
                                            if (BuildersKt.withContext(coroutineContext, mqVar, lqVar2) != coroutine_suspended) {
                                                ot0Var5 = ot0Var4;
                                                return new q01(FlowKt.flowOf(new q01(ot0Var5.a())));
                                            }
                                        }
                                        break;
                                    } catch (Throwable th) {
                                        th = th;
                                        closeable2 = rr3VarA;
                                        r5 = closeable2;
                                        try {
                                            r5.b(th);
                                            if (!(th instanceof v24)) {
                                                throw th;
                                            }
                                            if (!(th instanceof TimeoutCancellationException)) {
                                                r5.a(th);
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
                                                CloseableKt.closeFinally(closeable2, th2);
                                                throw th3;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        break;
                    }
                    return coroutine_suspended;
                } catch (Throwable th4) {
                    th = th4;
                    closeable = rr3VarA2;
                    r4 = closeable;
                    try {
                        r4.b(th);
                        if (!(th instanceof v24)) {
                            throw th;
                        }
                        if (!(th instanceof TimeoutCancellationException)) {
                            r4.a(th);
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
                            CloseableKt.closeFinally(closeable, th5);
                            throw th6;
                        }
                    }
                }
            case 1:
                closeable = (Closeable) lqVar2.c;
                r4 = (rr3) lqVar2.b;
                nqVar5 = (nq) lqVar2.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(objA3);
                    closeable = closeable;
                    r4 = r4;
                    v01Var = (v01) objA3;
                    if (v01Var instanceof i01) {
                        xs3.a((i01) v01Var, false);
                        break;
                    }
                    CloseableKt.closeFinally(closeable, null);
                    if (v01Var instanceof i01) {
                        return (i01) v01Var;
                    }
                    Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                    h41Var = (h41) ((q01) v01Var).b;
                    r31Var = h41Var.a;
                    Object obj3 = nqVar5.l.get();
                    Intrinsics.checkNotNullExpressionValue(obj3, "get(...)");
                    ot0Var = (ot0) ((nt0) ((nt0) ((nt0) ((nt0) ((nt0) nqVar5.a((w1) obj3, false)).a(r31Var)).a(nqVar5.m)).b(h41Var)).a(h41Var)).a();
                    m40VarC = ot0Var.c();
                    nr1VarC = r31Var.c();
                    if (nr1VarC instanceof a04) {
                        km0Var = (a04) nr1VarC;
                    } else {
                        km0Var = null;
                    }
                    if (km0Var == null) {
                        km0Var = new km0(r31Var);
                    }
                    lqVar2.a = nqVar5;
                    lqVar2.b = h41Var;
                    lqVar2.c = r31Var;
                    lqVar2.d = ot0Var;
                    lqVar2.i = 2;
                    if (m40VarC.a(km0Var, lqVar2) != coroutine_suspended) {
                        nqVar2 = nqVar5;
                        h41Var2 = h41Var;
                        objectRef = new Ref.ObjectRef();
                        lqVar2.a = nqVar2;
                        lqVar2.b = h41Var2;
                        lqVar2.c = r31Var;
                        lqVar2.d = ot0Var;
                        lqVar2.e = objectRef;
                        lqVar2.f = objectRef;
                        lqVar2.i = 3;
                        objA3 = nqVar2.a(lqVar2);
                        if (objA3 != coroutine_suspended) {
                            r31Var2 = r31Var;
                            objectRef2 = objectRef;
                            v01Var2 = (v01) objA3;
                            if (v01Var2 instanceof i01) {
                                return (i01) v01Var2;
                            }
                            Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                            objectRef.element = ((q01) v01Var2).b;
                            ze2 ze2VarE2 = ot0Var.e();
                            lqVar2.a = nqVar2;
                            lqVar2.b = h41Var2;
                            lqVar2.c = r31Var2;
                            lqVar2.d = ot0Var;
                            lqVar2.e = objectRef2;
                            lqVar2.f = null;
                            lqVar2.i = 4;
                            ze2VarE2.getClass();
                            objA = ze2.a(ze2VarE2, r31Var2, true, lqVar2);
                            if (objA != coroutine_suspended) {
                                objectRef3 = objectRef2;
                                h41Var3 = h41Var2;
                                nqVar3 = nqVar2;
                                obj = objA;
                                ot0Var2 = ot0Var;
                                r31Var3 = r31Var2;
                                if (((Boolean) obj).booleanValue()) {
                                    w61 w61Var2 = nqVar3.p;
                                    String html2 = (String) objectRef3.element;
                                    w61Var2.getClass();
                                    Intrinsics.checkNotNullParameter(html2, "html");
                                    Intrinsics.checkNotNullParameter(script, "script");
                                    objectRef3.element = w61.a(html2, CollectionsKt.listOf(script));
                                }
                                s11 s11Var3 = s11.CUI_NAME_CREATIVE_WEBVIEW_LOAD;
                                WeakHashMap weakHashMap3 = hs3.a;
                                rr3VarA = hs3.a(s11Var3, CollectionsKt.emptyList(), true);
                                String str3 = (String) objectRef3.element;
                                vc1 vc1Var2 = nqVar3.f.J;
                                Intrinsics.checkNotNull(vc1Var2);
                                String str4 = vc1Var2.c;
                                lqVar2.a = nqVar3;
                                lqVar2.b = h41Var3;
                                lqVar2.c = r31Var3;
                                lqVar2.d = ot0Var2;
                                lqVar2.e = rr3VarA;
                                lqVar2.f = rr3VarA;
                                lqVar2.i = 5;
                                r31Var4 = r31Var3;
                                objA2 = r31.a(r31Var4, str3, str4, true, (Continuation) lqVar2, 12);
                                if (objA2 != coroutine_suspended) {
                                    ot0Var3 = ot0Var2;
                                    r31Var5 = r31Var4;
                                    h41Var4 = h41Var3;
                                    nqVar4 = nqVar3;
                                    closeable2 = rr3VarA;
                                    r5 = closeable2;
                                    objA3 = objA2;
                                    v01Var3 = (v01) objA3;
                                    if (v01Var3 instanceof i01) {
                                        xs3.a((i01) v01Var3, false);
                                    }
                                    CloseableKt.closeFinally(closeable2, null);
                                    if (v01Var3 instanceof i01) {
                                        return v01Var3;
                                    }
                                    coroutineContext = nqVar4.o.getCoroutineContext();
                                    mqVar = new mq(nqVar4, h41Var4, ot0Var3, r31Var5, null);
                                    ot0Var4 = ot0Var3;
                                    lqVar2.a = ot0Var4;
                                    lqVar2.b = null;
                                    lqVar2.c = null;
                                    lqVar2.d = null;
                                    lqVar2.e = null;
                                    lqVar2.f = null;
                                    lqVar2.i = 6;
                                    if (BuildersKt.withContext(coroutineContext, mqVar, lqVar2) != coroutine_suspended) {
                                        ot0Var5 = ot0Var4;
                                        return new q01(FlowKt.flowOf(new q01(ot0Var5.a())));
                                    }
                                }
                            }
                        }
                        break;
                    }
                    return coroutine_suspended;
                } catch (Throwable th7) {
                    th = th7;
                    r4.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        r4.a(th);
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
            case 2:
                ot0 ot0Var6 = lqVar2.d;
                r31Var = (r31) lqVar2.c;
                h41 h41Var5 = (h41) lqVar2.b;
                nq nqVar6 = (nq) lqVar2.a;
                p005kotlin.ResultKt.throwOnFailure(objA3);
                h41Var2 = h41Var5;
                nqVar2 = nqVar6;
                ot0Var = ot0Var6;
                objectRef = new Ref.ObjectRef();
                lqVar2.a = nqVar2;
                lqVar2.b = h41Var2;
                lqVar2.c = r31Var;
                lqVar2.d = ot0Var;
                lqVar2.e = objectRef;
                lqVar2.f = objectRef;
                lqVar2.i = 3;
                objA3 = nqVar2.a(lqVar2);
                if (objA3 != coroutine_suspended) {
                    r31Var2 = r31Var;
                    objectRef2 = objectRef;
                    v01Var2 = (v01) objA3;
                    if (v01Var2 instanceof i01) {
                        return (i01) v01Var2;
                    }
                    Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                    objectRef.element = ((q01) v01Var2).b;
                    ze2 ze2VarE3 = ot0Var.e();
                    lqVar2.a = nqVar2;
                    lqVar2.b = h41Var2;
                    lqVar2.c = r31Var2;
                    lqVar2.d = ot0Var;
                    lqVar2.e = objectRef2;
                    lqVar2.f = null;
                    lqVar2.i = 4;
                    ze2VarE3.getClass();
                    objA = ze2.a(ze2VarE3, r31Var2, true, lqVar2);
                    if (objA != coroutine_suspended) {
                        objectRef3 = objectRef2;
                        h41Var3 = h41Var2;
                        nqVar3 = nqVar2;
                        obj = objA;
                        ot0Var2 = ot0Var;
                        r31Var3 = r31Var2;
                        if (((Boolean) obj).booleanValue()) {
                            w61 w61Var3 = nqVar3.p;
                            String html3 = (String) objectRef3.element;
                            w61Var3.getClass();
                            Intrinsics.checkNotNullParameter(html3, "html");
                            Intrinsics.checkNotNullParameter(script, "script");
                            objectRef3.element = w61.a(html3, CollectionsKt.listOf(script));
                        }
                        s11 s11Var4 = s11.CUI_NAME_CREATIVE_WEBVIEW_LOAD;
                        WeakHashMap weakHashMap4 = hs3.a;
                        rr3VarA = hs3.a(s11Var4, CollectionsKt.emptyList(), true);
                        String str5 = (String) objectRef3.element;
                        vc1 vc1Var3 = nqVar3.f.J;
                        Intrinsics.checkNotNull(vc1Var3);
                        String str6 = vc1Var3.c;
                        lqVar2.a = nqVar3;
                        lqVar2.b = h41Var3;
                        lqVar2.c = r31Var3;
                        lqVar2.d = ot0Var2;
                        lqVar2.e = rr3VarA;
                        lqVar2.f = rr3VarA;
                        lqVar2.i = 5;
                        r31Var4 = r31Var3;
                        objA2 = r31.a(r31Var4, str5, str6, true, (Continuation) lqVar2, 12);
                        if (objA2 != coroutine_suspended) {
                            ot0Var3 = ot0Var2;
                            r31Var5 = r31Var4;
                            h41Var4 = h41Var3;
                            nqVar4 = nqVar3;
                            closeable2 = rr3VarA;
                            r5 = closeable2;
                            objA3 = objA2;
                            v01Var3 = (v01) objA3;
                            if (v01Var3 instanceof i01) {
                                xs3.a((i01) v01Var3, false);
                            }
                            CloseableKt.closeFinally(closeable2, null);
                            if (v01Var3 instanceof i01) {
                                return v01Var3;
                            }
                            coroutineContext = nqVar4.o.getCoroutineContext();
                            mqVar = new mq(nqVar4, h41Var4, ot0Var3, r31Var5, null);
                            ot0Var4 = ot0Var3;
                            lqVar2.a = ot0Var4;
                            lqVar2.b = null;
                            lqVar2.c = null;
                            lqVar2.d = null;
                            lqVar2.e = null;
                            lqVar2.f = null;
                            lqVar2.i = 6;
                            if (BuildersKt.withContext(coroutineContext, mqVar, lqVar2) != coroutine_suspended) {
                                ot0Var5 = ot0Var4;
                                return new q01(FlowKt.flowOf(new q01(ot0Var5.a())));
                            }
                        }
                    }
                    break;
                }
                return coroutine_suspended;
            case 3:
                objectRef = (Ref.ObjectRef) lqVar2.f;
                objectRef2 = (Ref.ObjectRef) lqVar2.e;
                ot0Var = lqVar2.d;
                r31Var2 = (r31) lqVar2.c;
                h41Var2 = (h41) lqVar2.b;
                nqVar2 = (nq) lqVar2.a;
                p005kotlin.ResultKt.throwOnFailure(objA3);
                v01Var2 = (v01) objA3;
                if (v01Var2 instanceof i01) {
                    return (i01) v01Var2;
                }
                Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                objectRef.element = ((q01) v01Var2).b;
                ze2 ze2VarE4 = ot0Var.e();
                lqVar2.a = nqVar2;
                lqVar2.b = h41Var2;
                lqVar2.c = r31Var2;
                lqVar2.d = ot0Var;
                lqVar2.e = objectRef2;
                lqVar2.f = null;
                lqVar2.i = 4;
                ze2VarE4.getClass();
                objA = ze2.a(ze2VarE4, r31Var2, true, lqVar2);
                if (objA != coroutine_suspended) {
                    objectRef3 = objectRef2;
                    h41Var3 = h41Var2;
                    nqVar3 = nqVar2;
                    obj = objA;
                    ot0Var2 = ot0Var;
                    r31Var3 = r31Var2;
                    if (((Boolean) obj).booleanValue()) {
                        w61 w61Var4 = nqVar3.p;
                        String html4 = (String) objectRef3.element;
                        w61Var4.getClass();
                        Intrinsics.checkNotNullParameter(html4, "html");
                        Intrinsics.checkNotNullParameter(script, "script");
                        objectRef3.element = w61.a(html4, CollectionsKt.listOf(script));
                    }
                    s11 s11Var5 = s11.CUI_NAME_CREATIVE_WEBVIEW_LOAD;
                    WeakHashMap weakHashMap5 = hs3.a;
                    rr3VarA = hs3.a(s11Var5, CollectionsKt.emptyList(), true);
                    String str7 = (String) objectRef3.element;
                    vc1 vc1Var4 = nqVar3.f.J;
                    Intrinsics.checkNotNull(vc1Var4);
                    String str8 = vc1Var4.c;
                    lqVar2.a = nqVar3;
                    lqVar2.b = h41Var3;
                    lqVar2.c = r31Var3;
                    lqVar2.d = ot0Var2;
                    lqVar2.e = rr3VarA;
                    lqVar2.f = rr3VarA;
                    lqVar2.i = 5;
                    r31Var4 = r31Var3;
                    objA2 = r31.a(r31Var4, str7, str8, true, (Continuation) lqVar2, 12);
                    if (objA2 != coroutine_suspended) {
                        ot0Var3 = ot0Var2;
                        r31Var5 = r31Var4;
                        h41Var4 = h41Var3;
                        nqVar4 = nqVar3;
                        closeable2 = rr3VarA;
                        r5 = closeable2;
                        objA3 = objA2;
                        v01Var3 = (v01) objA3;
                        if (v01Var3 instanceof i01) {
                            xs3.a((i01) v01Var3, false);
                        }
                        CloseableKt.closeFinally(closeable2, null);
                        if (v01Var3 instanceof i01) {
                            return v01Var3;
                        }
                        coroutineContext = nqVar4.o.getCoroutineContext();
                        mqVar = new mq(nqVar4, h41Var4, ot0Var3, r31Var5, null);
                        ot0Var4 = ot0Var3;
                        lqVar2.a = ot0Var4;
                        lqVar2.b = null;
                        lqVar2.c = null;
                        lqVar2.d = null;
                        lqVar2.e = null;
                        lqVar2.f = null;
                        lqVar2.i = 6;
                        if (BuildersKt.withContext(coroutineContext, mqVar, lqVar2) != coroutine_suspended) {
                            ot0Var5 = ot0Var4;
                            return new q01(FlowKt.flowOf(new q01(ot0Var5.a())));
                        }
                    }
                    break;
                }
                return coroutine_suspended;
            case 4:
                objectRef3 = (Ref.ObjectRef) lqVar2.e;
                ot0 ot0Var7 = lqVar2.d;
                r31Var3 = (r31) lqVar2.c;
                h41 h41Var6 = (h41) lqVar2.b;
                nq nqVar7 = (nq) lqVar2.a;
                p005kotlin.ResultKt.throwOnFailure(objA3);
                obj = objA3;
                ot0Var2 = ot0Var7;
                h41Var3 = h41Var6;
                nqVar3 = nqVar7;
                if (((Boolean) obj).booleanValue()) {
                    w61 w61Var5 = nqVar3.p;
                    String html5 = (String) objectRef3.element;
                    w61Var5.getClass();
                    Intrinsics.checkNotNullParameter(html5, "html");
                    Intrinsics.checkNotNullParameter(script, "script");
                    objectRef3.element = w61.a(html5, CollectionsKt.listOf(script));
                }
                s11 s11Var6 = s11.CUI_NAME_CREATIVE_WEBVIEW_LOAD;
                WeakHashMap weakHashMap6 = hs3.a;
                rr3VarA = hs3.a(s11Var6, CollectionsKt.emptyList(), true);
                String str9 = (String) objectRef3.element;
                vc1 vc1Var5 = nqVar3.f.J;
                Intrinsics.checkNotNull(vc1Var5);
                String str10 = vc1Var5.c;
                lqVar2.a = nqVar3;
                lqVar2.b = h41Var3;
                lqVar2.c = r31Var3;
                lqVar2.d = ot0Var2;
                lqVar2.e = rr3VarA;
                lqVar2.f = rr3VarA;
                lqVar2.i = 5;
                r31Var4 = r31Var3;
                objA2 = r31.a(r31Var4, str9, str10, true, (Continuation) lqVar2, 12);
                if (objA2 != coroutine_suspended) {
                    ot0Var3 = ot0Var2;
                    r31Var5 = r31Var4;
                    h41Var4 = h41Var3;
                    nqVar4 = nqVar3;
                    closeable2 = rr3VarA;
                    r5 = closeable2;
                    objA3 = objA2;
                    v01Var3 = (v01) objA3;
                    if (v01Var3 instanceof i01) {
                        xs3.a((i01) v01Var3, false);
                    }
                    CloseableKt.closeFinally(closeable2, null);
                    if (v01Var3 instanceof i01) {
                        return v01Var3;
                    }
                    coroutineContext = nqVar4.o.getCoroutineContext();
                    mqVar = new mq(nqVar4, h41Var4, ot0Var3, r31Var5, null);
                    ot0Var4 = ot0Var3;
                    lqVar2.a = ot0Var4;
                    lqVar2.b = null;
                    lqVar2.c = null;
                    lqVar2.d = null;
                    lqVar2.e = null;
                    lqVar2.f = null;
                    lqVar2.i = 6;
                    if (BuildersKt.withContext(coroutineContext, mqVar, lqVar2) != coroutine_suspended) {
                        ot0Var5 = ot0Var4;
                        return new q01(FlowKt.flowOf(new q01(ot0Var5.a())));
                    }
                    break;
                }
                return coroutine_suspended;
            case 5:
                closeable2 = (Closeable) lqVar2.f;
                r5 = (rr3) lqVar2.e;
                ot0 ot0Var8 = lqVar2.d;
                r31 r31Var6 = (r31) lqVar2.c;
                h41 h41Var7 = (h41) lqVar2.b;
                nqVar4 = (nq) lqVar2.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(objA3);
                    ot0Var3 = ot0Var8;
                    r31Var5 = r31Var6;
                    h41Var4 = h41Var7;
                    r5 = r5;
                    v01Var3 = (v01) objA3;
                    if (v01Var3 instanceof i01) {
                        xs3.a((i01) v01Var3, false);
                        break;
                    }
                    CloseableKt.closeFinally(closeable2, null);
                    if (v01Var3 instanceof i01) {
                        return v01Var3;
                    }
                    coroutineContext = nqVar4.o.getCoroutineContext();
                    mqVar = new mq(nqVar4, h41Var4, ot0Var3, r31Var5, null);
                    ot0Var4 = ot0Var3;
                    lqVar2.a = ot0Var4;
                    lqVar2.b = null;
                    lqVar2.c = null;
                    lqVar2.d = null;
                    lqVar2.e = null;
                    lqVar2.f = null;
                    lqVar2.i = 6;
                    if (BuildersKt.withContext(coroutineContext, mqVar, lqVar2) != coroutine_suspended) {
                        ot0Var5 = ot0Var4;
                        return new q01(FlowKt.flowOf(new q01(ot0Var5.a())));
                    }
                    return coroutine_suspended;
                } catch (Throwable th8) {
                    th = th8;
                    r5.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        r5.a(th);
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
            case 6:
                ot0Var5 = (ot0) lqVar2.a;
                p005kotlin.ResultKt.throwOnFailure(objA3);
                return new q01(FlowKt.flowOf(new q01(ot0Var5.a())));
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @Override // kotlin.at0
    public final km a() {
        return this.q;
    }

    @Override // kotlin.n2
    public final Object a(boolean z, Continuation continuation) {
        return a(this, continuation);
    }

    @Override // kotlin.j2
    public final boolean b() {
        vc1 vc1Var = this.f.J;
        if ((vc1Var != null ? vc1Var.a : null) == null) {
            return (vc1Var != null ? vc1Var.b : null) != null;
        }
        return true;
    }
}

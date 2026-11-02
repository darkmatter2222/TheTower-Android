package kotlin;

import com.ironsource.C3510b4;
import java.io.Closeable;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.NonCancellable;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class mk3 extends rp0 implements q52 {
    public final CoroutineScope d;
    public final CoroutineScope e;
    public final ex0 f;
    public final iz3 g;
    public final v52 h;
    public final nk3 i;
    public final g83 j;

    public mk3(CoroutineScope uiScope, CoroutineScope backgroundScope, ex0 flags, iz3 webViewFactory, v52 jsContext, nk3 singletonNativeJavascriptEngineConfigurator, g83 rootTraceCreator) {
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(webViewFactory, "webViewFactory");
        Intrinsics.checkNotNullParameter(jsContext, "jsContext");
        Intrinsics.checkNotNullParameter(singletonNativeJavascriptEngineConfigurator, "singletonNativeJavascriptEngineConfigurator");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        this.d = uiScope;
        this.e = backgroundScope;
        this.f = flags;
        this.g = webViewFactory;
        this.h = jsContext;
        this.i = singletonNativeJavascriptEngineConfigurator;
        this.j = rootTraceCreator;
    }

    /* JADX WARN: Code duplicated, block: B:107:0x0204 A[Catch: all -> 0x0066, TRY_LEAVE, TryCatch #5 {all -> 0x0066, blocks: (B:23:0x0061, B:105:0x01fe, B:107:0x0204, B:110:0x0212), top: B:164:0x0061 }] */
    /* JADX WARN: Code duplicated, block: B:110:0x0212 A[Catch: all -> 0x0066, TRY_ENTER, TRY_LEAVE, TryCatch #5 {all -> 0x0066, blocks: (B:23:0x0061, B:105:0x01fe, B:107:0x0204, B:110:0x0212), top: B:164:0x0061 }] */
    /* JADX WARN: Code duplicated, block: B:113:0x0235  */
    /* JADX WARN: Code duplicated, block: B:117:0x025d  */
    /* JADX WARN: Code duplicated, block: B:120:0x0266 A[Catch: all -> 0x0046, TryCatch #7 {all -> 0x0046, blocks: (B:13:0x0041, B:118:0x0260, B:120:0x0266, B:122:0x027f), top: B:167:0x0041 }] */
    /* JADX WARN: Code duplicated, block: B:122:0x027f A[Catch: all -> 0x0046, TRY_LEAVE, TryCatch #7 {all -> 0x0046, blocks: (B:13:0x0041, B:118:0x0260, B:120:0x0266, B:122:0x027f), top: B:167:0x0041 }] */
    /* JADX WARN: Code duplicated, block: B:131:0x02b0 A[Catch: all -> 0x02df, TryCatch #11 {all -> 0x02df, blocks: (B:129:0x02a9, B:131:0x02b0, B:133:0x02b4, B:135:0x02b8, B:136:0x02bb, B:138:0x02bf, B:140:0x02c3, B:142:0x02c7, B:143:0x02c8, B:144:0x02cd, B:145:0x02ce, B:146:0x02d5, B:147:0x02d6, B:148:0x02dd, B:149:0x02de), top: B:173:0x02a9 }] */
    /* JADX WARN: Code duplicated, block: B:133:0x02b4 A[Catch: all -> 0x02df, TryCatch #11 {all -> 0x02df, blocks: (B:129:0x02a9, B:131:0x02b0, B:133:0x02b4, B:135:0x02b8, B:136:0x02bb, B:138:0x02bf, B:140:0x02c3, B:142:0x02c7, B:143:0x02c8, B:144:0x02cd, B:145:0x02ce, B:146:0x02d5, B:147:0x02d6, B:148:0x02dd, B:149:0x02de), top: B:173:0x02a9 }] */
    /* JADX WARN: Code duplicated, block: B:138:0x02bf A[Catch: all -> 0x02df, TryCatch #11 {all -> 0x02df, blocks: (B:129:0x02a9, B:131:0x02b0, B:133:0x02b4, B:135:0x02b8, B:136:0x02bb, B:138:0x02bf, B:140:0x02c3, B:142:0x02c7, B:143:0x02c8, B:144:0x02cd, B:145:0x02ce, B:146:0x02d5, B:147:0x02d6, B:148:0x02dd, B:149:0x02de), top: B:173:0x02a9 }] */
    /* JADX WARN: Code duplicated, block: B:140:0x02c3 A[Catch: all -> 0x02df, TryCatch #11 {all -> 0x02df, blocks: (B:129:0x02a9, B:131:0x02b0, B:133:0x02b4, B:135:0x02b8, B:136:0x02bb, B:138:0x02bf, B:140:0x02c3, B:142:0x02c7, B:143:0x02c8, B:144:0x02cd, B:145:0x02ce, B:146:0x02d5, B:147:0x02d6, B:148:0x02dd, B:149:0x02de), top: B:173:0x02a9 }] */
    /* JADX WARN: Code duplicated, block: B:142:0x02c7 A[Catch: all -> 0x02df, TryCatch #11 {all -> 0x02df, blocks: (B:129:0x02a9, B:131:0x02b0, B:133:0x02b4, B:135:0x02b8, B:136:0x02bb, B:138:0x02bf, B:140:0x02c3, B:142:0x02c7, B:143:0x02c8, B:144:0x02cd, B:145:0x02ce, B:146:0x02d5, B:147:0x02d6, B:148:0x02dd, B:149:0x02de), top: B:173:0x02a9 }] */
    /* JADX WARN: Code duplicated, block: B:143:0x02c8 A[Catch: all -> 0x02df, TryCatch #11 {all -> 0x02df, blocks: (B:129:0x02a9, B:131:0x02b0, B:133:0x02b4, B:135:0x02b8, B:136:0x02bb, B:138:0x02bf, B:140:0x02c3, B:142:0x02c7, B:143:0x02c8, B:144:0x02cd, B:145:0x02ce, B:146:0x02d5, B:147:0x02d6, B:148:0x02dd, B:149:0x02de), top: B:173:0x02a9 }] */
    /* JADX WARN: Code duplicated, block: B:145:0x02ce A[Catch: all -> 0x02df, TryCatch #11 {all -> 0x02df, blocks: (B:129:0x02a9, B:131:0x02b0, B:133:0x02b4, B:135:0x02b8, B:136:0x02bb, B:138:0x02bf, B:140:0x02c3, B:142:0x02c7, B:143:0x02c8, B:144:0x02cd, B:145:0x02ce, B:146:0x02d5, B:147:0x02d6, B:148:0x02dd, B:149:0x02de), top: B:173:0x02a9 }] */
    /* JADX WARN: Code duplicated, block: B:147:0x02d6 A[Catch: all -> 0x02df, TryCatch #11 {all -> 0x02df, blocks: (B:129:0x02a9, B:131:0x02b0, B:133:0x02b4, B:135:0x02b8, B:136:0x02bb, B:138:0x02bf, B:140:0x02c3, B:142:0x02c7, B:143:0x02c8, B:144:0x02cd, B:145:0x02ce, B:146:0x02d5, B:147:0x02d6, B:148:0x02dd, B:149:0x02de), top: B:173:0x02a9 }] */
    /* JADX WARN: Code duplicated, block: B:149:0x02de A[Catch: all -> 0x02df, TRY_LEAVE, TryCatch #11 {all -> 0x02df, blocks: (B:129:0x02a9, B:131:0x02b0, B:133:0x02b4, B:135:0x02b8, B:136:0x02bb, B:138:0x02bf, B:140:0x02c3, B:142:0x02c7, B:143:0x02c8, B:144:0x02cd, B:145:0x02ce, B:146:0x02d5, B:147:0x02d6, B:148:0x02dd, B:149:0x02de), top: B:173:0x02a9 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00f3 A[Catch: all -> 0x0095, TRY_LEAVE, TryCatch #2 {all -> 0x0095, blocks: (B:38:0x0091, B:49:0x00ed, B:51:0x00f3, B:54:0x0101), top: B:160:0x0091 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x0101 A[Catch: all -> 0x0095, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x0095, blocks: (B:38:0x0091, B:49:0x00ed, B:51:0x00f3, B:54:0x0101), top: B:160:0x0091 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x0125  */
    /* JADX WARN: Code duplicated, block: B:61:0x014e  */
    /* JADX WARN: Code duplicated, block: B:64:0x0157 A[Catch: all -> 0x0076, TryCatch #4 {all -> 0x0076, blocks: (B:28:0x0071, B:62:0x0151, B:64:0x0157, B:66:0x0170), top: B:163:0x0071 }] */
    /* JADX WARN: Code duplicated, block: B:66:0x0170 A[Catch: all -> 0x0076, TRY_LEAVE, TryCatch #4 {all -> 0x0076, blocks: (B:28:0x0071, B:62:0x0151, B:64:0x0157, B:66:0x0170), top: B:163:0x0071 }] */
    /* JADX WARN: Code duplicated, block: B:75:0x01a0 A[Catch: all -> 0x01cf, TryCatch #10 {all -> 0x01cf, blocks: (B:73:0x0199, B:75:0x01a0, B:77:0x01a4, B:79:0x01a8, B:80:0x01ab, B:82:0x01af, B:84:0x01b3, B:86:0x01b7, B:87:0x01b8, B:88:0x01bd, B:89:0x01be, B:90:0x01c5, B:91:0x01c6, B:92:0x01cd, B:93:0x01ce), top: B:172:0x0199 }] */
    /* JADX WARN: Code duplicated, block: B:77:0x01a4 A[Catch: all -> 0x01cf, TryCatch #10 {all -> 0x01cf, blocks: (B:73:0x0199, B:75:0x01a0, B:77:0x01a4, B:79:0x01a8, B:80:0x01ab, B:82:0x01af, B:84:0x01b3, B:86:0x01b7, B:87:0x01b8, B:88:0x01bd, B:89:0x01be, B:90:0x01c5, B:91:0x01c6, B:92:0x01cd, B:93:0x01ce), top: B:172:0x0199 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:82:0x01af A[Catch: all -> 0x01cf, TryCatch #10 {all -> 0x01cf, blocks: (B:73:0x0199, B:75:0x01a0, B:77:0x01a4, B:79:0x01a8, B:80:0x01ab, B:82:0x01af, B:84:0x01b3, B:86:0x01b7, B:87:0x01b8, B:88:0x01bd, B:89:0x01be, B:90:0x01c5, B:91:0x01c6, B:92:0x01cd, B:93:0x01ce), top: B:172:0x0199 }] */
    /* JADX WARN: Code duplicated, block: B:84:0x01b3 A[Catch: all -> 0x01cf, TryCatch #10 {all -> 0x01cf, blocks: (B:73:0x0199, B:75:0x01a0, B:77:0x01a4, B:79:0x01a8, B:80:0x01ab, B:82:0x01af, B:84:0x01b3, B:86:0x01b7, B:87:0x01b8, B:88:0x01bd, B:89:0x01be, B:90:0x01c5, B:91:0x01c6, B:92:0x01cd, B:93:0x01ce), top: B:172:0x0199 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x01b7 A[Catch: all -> 0x01cf, TryCatch #10 {all -> 0x01cf, blocks: (B:73:0x0199, B:75:0x01a0, B:77:0x01a4, B:79:0x01a8, B:80:0x01ab, B:82:0x01af, B:84:0x01b3, B:86:0x01b7, B:87:0x01b8, B:88:0x01bd, B:89:0x01be, B:90:0x01c5, B:91:0x01c6, B:92:0x01cd, B:93:0x01ce), top: B:172:0x0199 }] */
    /* JADX WARN: Code duplicated, block: B:87:0x01b8 A[Catch: all -> 0x01cf, TryCatch #10 {all -> 0x01cf, blocks: (B:73:0x0199, B:75:0x01a0, B:77:0x01a4, B:79:0x01a8, B:80:0x01ab, B:82:0x01af, B:84:0x01b3, B:86:0x01b7, B:87:0x01b8, B:88:0x01bd, B:89:0x01be, B:90:0x01c5, B:91:0x01c6, B:92:0x01cd, B:93:0x01ce), top: B:172:0x0199 }] */
    /* JADX WARN: Code duplicated, block: B:89:0x01be A[Catch: all -> 0x01cf, TryCatch #10 {all -> 0x01cf, blocks: (B:73:0x0199, B:75:0x01a0, B:77:0x01a4, B:79:0x01a8, B:80:0x01ab, B:82:0x01af, B:84:0x01b3, B:86:0x01b7, B:87:0x01b8, B:88:0x01bd, B:89:0x01be, B:90:0x01c5, B:91:0x01c6, B:92:0x01cd, B:93:0x01ce), top: B:172:0x0199 }] */
    /* JADX WARN: Code duplicated, block: B:91:0x01c6 A[Catch: all -> 0x01cf, TryCatch #10 {all -> 0x01cf, blocks: (B:73:0x0199, B:75:0x01a0, B:77:0x01a4, B:79:0x01a8, B:80:0x01ab, B:82:0x01af, B:84:0x01b3, B:86:0x01b7, B:87:0x01b8, B:88:0x01bd, B:89:0x01be, B:90:0x01c5, B:91:0x01c6, B:92:0x01cd, B:93:0x01ce), top: B:172:0x0199 }] */
    /* JADX WARN: Code duplicated, block: B:93:0x01ce A[Catch: all -> 0x01cf, TRY_LEAVE, TryCatch #10 {all -> 0x01cf, blocks: (B:73:0x0199, B:75:0x01a0, B:77:0x01a4, B:79:0x01a8, B:80:0x01ab, B:82:0x01af, B:84:0x01b3, B:86:0x01b7, B:87:0x01b8, B:88:0x01bd, B:89:0x01be, B:90:0x01c5, B:91:0x01c6, B:92:0x01cd, B:93:0x01ce), top: B:172:0x0199 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v11, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r13v12, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r13v13, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r13v14 */
    /* JADX WARN: Type inference failed for: r13v15 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v12, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v13, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r4v16, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v17, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v2, types: [ads_mobile_sdk.rr3, java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v20, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v22, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v23, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v24 */
    /* JADX WARN: Type inference failed for: r4v25 */
    /* JADX WARN: Type inference failed for: r4v26, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r4v27 */
    /* JADX WARN: Type inference failed for: r4v28 */
    /* JADX WARN: Type inference failed for: r4v29 */
    /* JADX WARN: Type inference failed for: r4v30 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r8v13, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r8v14 */
    public static Object a(mk3 mk3Var, Continuation continuation) {
        kk3 kk3Var;
        ?? A;
        ?? r13;
        ?? r14;
        rr3 rr3VarA;
        Closeable closeable;
        rr3 rr3Var;
        Closeable closeable2;
        v01 v01Var;
        r31 r31Var;
        nk3 nk3Var;
        v52 v52Var;
        mk3 mk3Var2;
        r31 r31Var2;
        rr3 rr3Var2;
        rr3 rr3Var3;
        mk3 mk3Var3;
        Object q01Var;
        ?? r4;
        v01 v01Var2;
        r31 r31Var3;
        nk3 nk3Var2;
        v52 v52Var2;
        mk3 mk3Var4;
        r31 r31Var4;
        ?? r8;
        ?? r5;
        ?? r3;
        ?? r6;
        ?? r7;
        mk3 mk3Var5;
        Object q01Var2;
        mk3 mk3Var6 = mk3Var;
        if (continuation instanceof kk3) {
            kk3Var = (kk3) continuation;
            int i = kk3Var.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                kk3Var.g = i - Integer.MIN_VALUE;
            } else {
                kk3Var = new kk3(mk3Var6, continuation);
            }
        } else {
            kk3Var = new kk3(mk3Var6, continuation);
        }
        Object objA = kk3Var.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (kk3Var.g) {
            case 0:
                p005kotlin.ResultKt.throwOnFailure(objA);
                g83 g83Var = mk3Var6.j;
                s11 s11Var = s11.CUI_NAME_LOAD_NATIVE_JS_ENGINE;
                List listEmptyList = CollectionsKt.emptyList();
                ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
                if (hs3.b().a == null) {
                    rr3VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                    try {
                        iz3 iz3Var = mk3Var6.g;
                        v14 v14Var = new v14(u14.DEFAULT, 0, 0, 14);
                        v52 v52Var3 = mk3Var6.h;
                        kk3Var.a = mk3Var6;
                        kk3Var.b = rr3VarA;
                        kk3Var.c = rr3VarA;
                        kk3Var.g = 1;
                        Object objA2 = iz3Var.a(v14Var, v52Var3, false, kk3Var);
                        if (objA2 != coroutine_suspended) {
                            rr3Var = rr3VarA;
                            objA = objA2;
                            closeable2 = rr3Var;
                            v01Var = (v01) objA;
                            if (v01Var instanceof i01) {
                                i01 i01Var = (i01) v01Var;
                                xs3.a(i01Var, false);
                                xs3.a(i01Var, false);
                                CloseableKt.closeFinally(closeable2, null);
                                return i01Var;
                            }
                            Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                            r31Var = (r31) ((q01) v01Var).b;
                            r31Var.setWillNotDraw(true);
                            nk3Var = mk3Var6.i;
                            v52Var = mk3Var6.h;
                            kk3Var.a = mk3Var6;
                            kk3Var.b = rr3Var;
                            kk3Var.c = closeable2;
                            kk3Var.d = r31Var;
                            kk3Var.g = 2;
                            if (nk3Var.a(v52Var, kk3Var) != coroutine_suspended) {
                                mk3Var2 = mk3Var6;
                                r31Var2 = r31Var;
                                rr3Var2 = rr3Var;
                                ex0 ex0Var = mk3Var2.f;
                                ex0Var.getClass();
                                Intrinsics.checkNotNullParameter("gads:native:engine_url_with_protocol", C3510b4.i.W);
                                Intrinsics.checkNotNullParameter("https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/native_ads.html", "defaultValue");
                                String str = (String) ex0Var.a("gads:native:engine_url_with_protocol", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/native_ads.html", yr.o);
                                kk3Var.a = mk3Var2;
                                kk3Var.b = rr3Var2;
                                kk3Var.c = closeable2;
                                kk3Var.d = r31Var2;
                                kk3Var.g = 3;
                                objA = r31Var2.c(str, kk3Var);
                                if (objA != coroutine_suspended) {
                                    closeable = closeable2;
                                    mk3Var3 = mk3Var2;
                                    q01Var = (v01) objA;
                                    if (q01Var instanceof i01) {
                                        BuildersKt__Builders_commonKt.launch$default(mk3Var3.d, NonCancellable.INSTANCE, null, new lk3(r31Var2, null), 2, null);
                                        xs3.a((i01) q01Var, false);
                                    } else {
                                        q01Var = new q01(new fl1(r31Var2, mk3Var3.d, mk3Var3.e, mk3Var3.j, mk3Var3.f, false));
                                    }
                                    CloseableKt.closeFinally(closeable, null);
                                    return q01Var;
                                }
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        closeable = rr3VarA;
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
                        } catch (Throwable th2) {
                            try {
                                throw th2;
                            } catch (Throwable th3) {
                                CloseableKt.closeFinally(closeable, th2);
                                throw th3;
                            }
                        }
                    }
                } else {
                    A = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                    try {
                        iz3 iz3Var2 = mk3Var6.g;
                        v14 v14Var2 = new v14(u14.DEFAULT, 0, 0, 14);
                        v52 v52Var4 = mk3Var6.h;
                        kk3Var.a = mk3Var6;
                        kk3Var.b = A;
                        kk3Var.c = A;
                        kk3Var.g = 4;
                        objA = iz3Var2.a(v14Var2, v52Var4, false, kk3Var);
                        if (objA != coroutine_suspended) {
                            r14 = A;
                            r4 = A;
                            v01Var2 = (v01) objA;
                            if (v01Var2 instanceof i01) {
                                i01 i01Var2 = (i01) v01Var2;
                                xs3.a(i01Var2, false);
                                xs3.a(i01Var2, false);
                                CloseableKt.closeFinally(r4, null);
                                return i01Var2;
                            }
                            Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                            r31Var3 = (r31) ((q01) v01Var2).b;
                            r31Var3.setWillNotDraw(true);
                            nk3Var2 = mk3Var6.i;
                            v52Var2 = mk3Var6.h;
                            kk3Var.a = mk3Var6;
                            kk3Var.b = r14;
                            kk3Var.c = r4;
                            kk3Var.d = r31Var3;
                            kk3Var.g = 5;
                            if (nk3Var2.a(v52Var2, kk3Var) != coroutine_suspended) {
                                mk3Var4 = mk3Var6;
                                r31Var4 = r31Var3;
                                r8 = r14;
                                r5 = r4;
                                ex0 ex0Var2 = mk3Var4.f;
                                ex0Var2.getClass();
                                Intrinsics.checkNotNullParameter("gads:native:engine_url_with_protocol", C3510b4.i.W);
                                Intrinsics.checkNotNullParameter("https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/native_ads.html", "defaultValue");
                                String str2 = (String) ex0Var2.a("gads:native:engine_url_with_protocol", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/native_ads.html", yr.o);
                                kk3Var.a = mk3Var4;
                                kk3Var.b = r8;
                                kk3Var.c = r5;
                                kk3Var.d = r31Var4;
                                kk3Var.g = 6;
                                objA = r31Var4.c(str2, kk3Var);
                                if (objA != coroutine_suspended) {
                                    r7 = r5;
                                    mk3Var5 = mk3Var4;
                                    q01Var2 = (v01) objA;
                                    if (q01Var2 instanceof i01) {
                                        BuildersKt__Builders_commonKt.launch$default(mk3Var5.d, NonCancellable.INSTANCE, null, new lk3(r31Var4, null), 2, null);
                                        xs3.a((i01) q01Var2, false);
                                    } else {
                                        q01Var2 = new q01(new fl1(r31Var4, mk3Var5.d, mk3Var5.e, mk3Var5.j, mk3Var5.f, false));
                                    }
                                    CloseableKt.closeFinally(r7, null);
                                    return q01Var2;
                                }
                            }
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        r13 = A;
                        try {
                            r13.b(th);
                            if (!(th instanceof v24)) {
                                throw th;
                            }
                            if (!(th instanceof TimeoutCancellationException)) {
                                r13.a(th);
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
                return coroutine_suspended;
            case 1:
                closeable2 = kk3Var.c;
                rr3Var = kk3Var.b;
                mk3Var6 = kk3Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(objA);
                    v01Var = (v01) objA;
                    if (v01Var instanceof i01) {
                        i01 i01Var3 = (i01) v01Var;
                        xs3.a(i01Var3, false);
                        xs3.a(i01Var3, false);
                        CloseableKt.closeFinally(closeable2, null);
                        return i01Var3;
                    }
                    Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                    r31Var = (r31) ((q01) v01Var).b;
                    r31Var.setWillNotDraw(true);
                    nk3Var = mk3Var6.i;
                    v52Var = mk3Var6.h;
                    kk3Var.a = mk3Var6;
                    kk3Var.b = rr3Var;
                    kk3Var.c = closeable2;
                    kk3Var.d = r31Var;
                    kk3Var.g = 2;
                    if (nk3Var.a(v52Var, kk3Var) != coroutine_suspended) {
                        mk3Var2 = mk3Var6;
                        r31Var2 = r31Var;
                        rr3Var2 = rr3Var;
                        ex0 ex0Var3 = mk3Var2.f;
                        ex0Var3.getClass();
                        Intrinsics.checkNotNullParameter("gads:native:engine_url_with_protocol", C3510b4.i.W);
                        Intrinsics.checkNotNullParameter("https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/native_ads.html", "defaultValue");
                        String str3 = (String) ex0Var3.a("gads:native:engine_url_with_protocol", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/native_ads.html", yr.o);
                        kk3Var.a = mk3Var2;
                        kk3Var.b = rr3Var2;
                        kk3Var.c = closeable2;
                        kk3Var.d = r31Var2;
                        kk3Var.g = 3;
                        objA = r31Var2.c(str3, kk3Var);
                        if (objA != coroutine_suspended) {
                            closeable = closeable2;
                            mk3Var3 = mk3Var2;
                            q01Var = (v01) objA;
                            if (q01Var instanceof i01) {
                                BuildersKt__Builders_commonKt.launch$default(mk3Var3.d, NonCancellable.INSTANCE, null, new lk3(r31Var2, null), 2, null);
                                xs3.a((i01) q01Var, false);
                            } else {
                                q01Var = new q01(new fl1(r31Var2, mk3Var3.d, mk3Var3.e, mk3Var3.j, mk3Var3.f, false));
                            }
                            CloseableKt.closeFinally(closeable, null);
                            return q01Var;
                        }
                    }
                    return coroutine_suspended;
                } catch (Throwable th7) {
                    th = th7;
                    closeable = closeable2;
                    rr3Var3 = rr3Var;
                    rr3VarA = rr3Var3;
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
            case 2:
                r31Var2 = kk3Var.d;
                closeable2 = kk3Var.c;
                rr3Var2 = kk3Var.b;
                mk3Var2 = kk3Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(objA);
                    ex0 ex0Var4 = mk3Var2.f;
                    ex0Var4.getClass();
                    Intrinsics.checkNotNullParameter("gads:native:engine_url_with_protocol", C3510b4.i.W);
                    Intrinsics.checkNotNullParameter("https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/native_ads.html", "defaultValue");
                    String str4 = (String) ex0Var4.a("gads:native:engine_url_with_protocol", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/native_ads.html", yr.o);
                    kk3Var.a = mk3Var2;
                    kk3Var.b = rr3Var2;
                    kk3Var.c = closeable2;
                    kk3Var.d = r31Var2;
                    kk3Var.g = 3;
                    objA = r31Var2.c(str4, kk3Var);
                    if (objA != coroutine_suspended) {
                        closeable = closeable2;
                        mk3Var3 = mk3Var2;
                        q01Var = (v01) objA;
                        if (q01Var instanceof i01) {
                            BuildersKt__Builders_commonKt.launch$default(mk3Var3.d, NonCancellable.INSTANCE, null, new lk3(r31Var2, null), 2, null);
                            xs3.a((i01) q01Var, false);
                        } else {
                            q01Var = new q01(new fl1(r31Var2, mk3Var3.d, mk3Var3.e, mk3Var3.j, mk3Var3.f, false));
                        }
                        CloseableKt.closeFinally(closeable, null);
                        return q01Var;
                    }
                    return coroutine_suspended;
                } catch (Throwable th8) {
                    th = th8;
                    closeable = closeable2;
                    rr3Var3 = rr3Var2;
                    rr3VarA = rr3Var3;
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
                }
            case 3:
                r31Var2 = kk3Var.d;
                closeable = kk3Var.c;
                rr3Var3 = kk3Var.b;
                mk3Var3 = kk3Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(objA);
                    q01Var = (v01) objA;
                    if (q01Var instanceof i01) {
                        BuildersKt__Builders_commonKt.launch$default(mk3Var3.d, NonCancellable.INSTANCE, null, new lk3(r31Var2, null), 2, null);
                        xs3.a((i01) q01Var, false);
                    } else {
                        q01Var = new q01(new fl1(r31Var2, mk3Var3.d, mk3Var3.e, mk3Var3.j, mk3Var3.f, false));
                    }
                    CloseableKt.closeFinally(closeable, null);
                    return q01Var;
                } catch (Throwable th9) {
                    th = th9;
                    rr3VarA = rr3Var3;
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
                }
            case 4:
                A = kk3Var.c;
                r13 = kk3Var.b;
                mk3Var6 = kk3Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(objA);
                    r4 = A;
                    r14 = r13;
                    v01Var2 = (v01) objA;
                    if (v01Var2 instanceof i01) {
                        i01 i01Var4 = (i01) v01Var2;
                        xs3.a(i01Var4, false);
                        xs3.a(i01Var4, false);
                        CloseableKt.closeFinally(r4, null);
                        return i01Var4;
                    }
                    Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                    r31Var3 = (r31) ((q01) v01Var2).b;
                    r31Var3.setWillNotDraw(true);
                    nk3Var2 = mk3Var6.i;
                    v52Var2 = mk3Var6.h;
                    kk3Var.a = mk3Var6;
                    kk3Var.b = r14;
                    kk3Var.c = r4;
                    kk3Var.d = r31Var3;
                    kk3Var.g = 5;
                    if (nk3Var2.a(v52Var2, kk3Var) != coroutine_suspended) {
                        mk3Var4 = mk3Var6;
                        r31Var4 = r31Var3;
                        r8 = r14;
                        r5 = r4;
                        ex0 ex0Var5 = mk3Var4.f;
                        ex0Var5.getClass();
                        Intrinsics.checkNotNullParameter("gads:native:engine_url_with_protocol", C3510b4.i.W);
                        Intrinsics.checkNotNullParameter("https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/native_ads.html", "defaultValue");
                        String str5 = (String) ex0Var5.a("gads:native:engine_url_with_protocol", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/native_ads.html", yr.o);
                        kk3Var.a = mk3Var4;
                        kk3Var.b = r8;
                        kk3Var.c = r5;
                        kk3Var.d = r31Var4;
                        kk3Var.g = 6;
                        objA = r31Var4.c(str5, kk3Var);
                        if (objA != coroutine_suspended) {
                            r7 = r5;
                            mk3Var5 = mk3Var4;
                            q01Var2 = (v01) objA;
                            if (q01Var2 instanceof i01) {
                                BuildersKt__Builders_commonKt.launch$default(mk3Var5.d, NonCancellable.INSTANCE, null, new lk3(r31Var4, null), 2, null);
                                xs3.a((i01) q01Var2, false);
                            } else {
                                q01Var2 = new q01(new fl1(r31Var4, mk3Var5.d, mk3Var5.e, mk3Var5.j, mk3Var5.f, false));
                            }
                            CloseableKt.closeFinally(r7, null);
                            return q01Var2;
                        }
                    }
                    return coroutine_suspended;
                } catch (Throwable th10) {
                    th = th10;
                    r13.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        r13.a(th);
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
                r31Var4 = kk3Var.d;
                r5 = kk3Var.c;
                r8 = kk3Var.b;
                mk3Var4 = kk3Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(objA);
                    r5 = r5;
                    r8 = r8;
                    ex0 ex0Var6 = mk3Var4.f;
                    ex0Var6.getClass();
                    Intrinsics.checkNotNullParameter("gads:native:engine_url_with_protocol", C3510b4.i.W);
                    Intrinsics.checkNotNullParameter("https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/native_ads.html", "defaultValue");
                    String str6 = (String) ex0Var6.a("gads:native:engine_url_with_protocol", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/native_ads.html", yr.o);
                    kk3Var.a = mk3Var4;
                    kk3Var.b = r8;
                    kk3Var.c = r5;
                    kk3Var.d = r31Var4;
                    kk3Var.g = 6;
                    objA = r31Var4.c(str6, kk3Var);
                    if (objA != coroutine_suspended) {
                        r7 = r5;
                        mk3Var5 = mk3Var4;
                        q01Var2 = (v01) objA;
                        if (q01Var2 instanceof i01) {
                            BuildersKt__Builders_commonKt.launch$default(mk3Var5.d, NonCancellable.INSTANCE, null, new lk3(r31Var4, null), 2, null);
                            xs3.a((i01) q01Var2, false);
                        } else {
                            q01Var2 = new q01(new fl1(r31Var4, mk3Var5.d, mk3Var5.e, mk3Var5.j, mk3Var5.f, false));
                        }
                        CloseableKt.closeFinally(r7, null);
                        return q01Var2;
                    }
                    return coroutine_suspended;
                } catch (Throwable th11) {
                    th = th11;
                    r3 = r5;
                    r6 = r8;
                    r13 = r6;
                    A = r3;
                    r13.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        r13.a(th);
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
                r31Var4 = kk3Var.d;
                r3 = kk3Var.c;
                r6 = kk3Var.b;
                mk3Var5 = kk3Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(objA);
                    r7 = r3;
                    q01Var2 = (v01) objA;
                    if (q01Var2 instanceof i01) {
                        BuildersKt__Builders_commonKt.launch$default(mk3Var5.d, NonCancellable.INSTANCE, null, new lk3(r31Var4, null), 2, null);
                        xs3.a((i01) q01Var2, false);
                    } else {
                        q01Var2 = new q01(new fl1(r31Var4, mk3Var5.d, mk3Var5.e, mk3Var5.j, mk3Var5.f, false));
                    }
                    CloseableKt.closeFinally(r7, null);
                    return q01Var2;
                } catch (Throwable th12) {
                    th = th12;
                    r13 = r6;
                    A = r3;
                    r13.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        r13.a(th);
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

    @Override // kotlin.q52
    public final nr1 a() {
        return this.h;
    }

    @Override // kotlin.rp0
    public final Object a(String str, Continuation continuation) {
        return a(this, continuation);
    }
}

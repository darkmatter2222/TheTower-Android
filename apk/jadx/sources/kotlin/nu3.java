package kotlin;

import android.content.Context;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.Toolbar;
import com.ironsource.C3510b4;
import java.io.Closeable;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class nu3 extends ez0 {
    public static final /* synthetic */ int b0 = 0;
    public final mb0 T;
    public final ks3 U;
    public final iz3 V;
    public final pu3 W;
    public final g83 X;
    public r31 Y;
    public boolean Z;
    public String a0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nu3(Context applicationContext, CoroutineScope uiScope, CoroutineContext uiContext, CoroutineScope backgroundScope, CoroutineContext backgroundContext, ex0 flags, ur3 traceLogger, String afmaVersion, j53 requestType, zy commonConfiguration, i2 adConfiguration, f0 activityTracker, v3 adEventEmitter, df2 omidMonitor, o21 gmaUtil, mb0 csiTicker, ks3 traceMetaSet, iz3 webViewFactory, pu3 twoPieceExpandedWebViewConfigurator, j1 backButtonStateDelegate, g83 rootTraceCreator) {
        super(applicationContext, uiScope, uiContext, backgroundScope, backgroundContext, flags, traceLogger, afmaVersion, requestType, commonConfiguration, adConfiguration, activityTracker, adEventEmitter, omidMonitor, gmaUtil, backButtonStateDelegate);
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(backgroundContext, "backgroundContext");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(afmaVersion, "afmaVersion");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(adEventEmitter, "adEventEmitter");
        Intrinsics.checkNotNullParameter(omidMonitor, "omidMonitor");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        Intrinsics.checkNotNullParameter(csiTicker, "csiTicker");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(webViewFactory, "webViewFactory");
        Intrinsics.checkNotNullParameter(twoPieceExpandedWebViewConfigurator, "twoPieceExpandedWebViewConfigurator");
        Intrinsics.checkNotNullParameter(backButtonStateDelegate, "backButtonStateDelegate");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        this.T = csiTicker;
        this.U = traceMetaSet;
        this.V = webViewFactory;
        this.W = twoPieceExpandedWebViewConfigurator;
        this.X = rootTraceCreator;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0073 A[PHI: r13
  0x0073: PHI (r13v2 ads_mobile_sdk.nu3) = (r13v1 ads_mobile_sdk.nu3), (r13v1 ads_mobile_sdk.nu3), (r13v1 ads_mobile_sdk.nu3), (r13v6 ads_mobile_sdk.nu3) binds: [B:22:0x0058, B:27:0x0066, B:29:0x0070, B:16:0x0039] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a5, code lost:
    
        if (kotlinx.coroutines.BuildersKt.withContext(r14, r15, r0) == r1) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object a(kotlin.nu3 r13, android.view.View r14, p005kotlin.coroutines.Continuation r15) {
        /*
            boolean r0 = r15 instanceof kotlin.hu3
            if (r0 == 0) goto L13
            r0 = r15
            ads_mobile_sdk.hu3 r0 = (kotlin.hu3) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.hu3 r0 = new ads_mobile_sdk.hu3
            r0.<init>(r13, r15)
        L18:
            java.lang.Object r15 = r0.b
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L45
            if (r2 == r5) goto L3f
            if (r2 == r4) goto L39
            if (r2 != r3) goto L31
            p005kotlin.ResultKt.throwOnFailure(r15)
            goto La8
        L31:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r14)
            throw r13
        L39:
            ads_mobile_sdk.nu3 r13 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r15)
            goto L73
        L3f:
            ads_mobile_sdk.nu3 r13 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r15)
            goto L56
        L45:
            p005kotlin.ResultKt.throwOnFailure(r15)
            r0.a = r13
            r0.d = r5
            r13.getClass()
            java.lang.Object r14 = kotlin.ez0.a(r13, r14, r0)
            if (r14 != r1) goto L56
            goto La7
        L56:
            boolean r14 = r13.Z
            if (r14 == 0) goto L73
            ads_mobile_sdk.r31 r14 = r13.Y
            if (r14 != 0) goto L64
            java.lang.String r14 = "previousWebView"
            p005kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r14)
            r14 = r6
        L64:
            ads_mobile_sdk.ay0 r14 = r14.p
            if (r14 == 0) goto L73
            r0.a = r13
            r0.d = r4
            kotlin.Unit r14 = r14.a(r0)
            if (r14 != r1) goto L73
            goto La7
        L73:
            kotlinx.coroutines.CoroutineScope r7 = r13.d
            ads_mobile_sdk.iu3 r14 = new ads_mobile_sdk.iu3
            r14.<init>(r13, r6)
            kotlin.coroutines.EmptyCoroutineContext r8 = p005kotlin.coroutines.EmptyCoroutineContext.INSTANCE
            java.lang.String r15 = "<this>"
            p005kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r15)
            java.lang.String r15 = "context"
            p005kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r15)
            java.lang.String r15 = "block"
            p005kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r14, r15)
            ads_mobile_sdk.ws3 r10 = new ads_mobile_sdk.ws3
            r10.<init>(r14, r6)
            r11 = 2
            r12 = 0
            r9 = 0
            kotlinx.coroutines.BuildersKt.launch$default(r7, r8, r9, r10, r11, r12)
            kotlin.coroutines.CoroutineContext r14 = r13.c
            ads_mobile_sdk.ju3 r15 = new ads_mobile_sdk.ju3
            r15.<init>(r13, r6)
            r0.a = r6
            r0.d = r3
            java.lang.Object r13 = kotlinx.coroutines.BuildersKt.withContext(r14, r15, r0)
            if (r13 != r1) goto La8
        La7:
            return r1
        La8:
            kotlin.Unit r13 = p005kotlin.Unit.INSTANCE
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.nu3.a(ads_mobile_sdk.nu3, android.view.View, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005c, code lost:
    
        if (r5.a(r0) == r1) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object a(kotlin.nu3 r5, p005kotlin.coroutines.Continuation r6) {
        /*
            boolean r0 = r6 instanceof kotlin.du3
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.du3 r0 = (kotlin.du3) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.du3 r0 = new ads_mobile_sdk.du3
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.b
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3a
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            p005kotlin.ResultKt.throwOnFailure(r6)
            goto L5f
        L2c:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L34:
            ads_mobile_sdk.nu3 r5 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r6)
            goto L4b
        L3a:
            p005kotlin.ResultKt.throwOnFailure(r6)
            r0.a = r5
            r0.d = r4
            r5.getClass()
            java.lang.Object r6 = kotlin.ez0.a(r5, r0)
            if (r6 != r1) goto L4b
            goto L5e
        L4b:
            kotlin.Lazy r5 = r5.J
            java.lang.Object r5 = r5.getValue()
            ads_mobile_sdk.r31 r5 = (kotlin.r31) r5
            r6 = 0
            r0.a = r6
            r0.d = r3
            java.lang.Object r5 = r5.a(r0)
            if (r5 != r1) goto L5f
        L5e:
            return r1
        L5f:
            kotlin.Unit r5 = p005kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.nu3.a(ads_mobile_sdk.nu3, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0066, code lost:
    
        if (r5.a(r6, (p005kotlin.coroutines.Continuation) r0) == r1) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object b(kotlin.nu3 r5, p005kotlin.coroutines.Continuation r6) throws java.lang.Throwable {
        /*
            boolean r0 = r6 instanceof kotlin.eu3
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.eu3 r0 = (kotlin.eu3) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.eu3 r0 = new ads_mobile_sdk.eu3
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.b
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3a
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            p005kotlin.ResultKt.throwOnFailure(r6)
            goto L6a
        L2c:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L34:
            ads_mobile_sdk.nu3 r5 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r6)
            goto L4b
        L3a:
            p005kotlin.ResultKt.throwOnFailure(r6)
            r0.a = r5
            r0.d = r4
            r5.getClass()
            java.lang.Object r6 = kotlin.ez0.b(r5, r0)
            if (r6 != r1) goto L4b
            goto L68
        L4b:
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            boolean r6 = r6.booleanValue()
            if (r6 == 0) goto L69
            ads_mobile_sdk.r31 r6 = r5.Y
            r2 = 0
            if (r6 != 0) goto L5e
            java.lang.String r6 = "previousWebView"
            p005kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r6)
            r6 = r2
        L5e:
            r0.a = r2
            r0.d = r3
            java.lang.Object r5 = r5.a(r6, r0)
            if (r5 != r1) goto L6a
        L68:
            return r1
        L69:
            r4 = 0
        L6a:
            java.lang.Boolean r5 = p005kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r4)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.nu3.b(ads_mobile_sdk.nu3, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlin.yy0
    public final Toolbar a(RelativeLayout expandableLayout) {
        Intrinsics.checkNotNullParameter(expandableLayout, "expandableLayout");
        return a(expandableLayout, this.a0);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0180 A[Catch: all -> 0x01a0, TryCatch #0 {all -> 0x01a0, blocks: (B:91:0x016a, B:93:0x0171, B:95:0x0175, B:97:0x0179, B:98:0x017c, B:100:0x0180, B:102:0x0184, B:104:0x0188, B:105:0x0189, B:106:0x018e, B:107:0x018f, B:108:0x0196, B:109:0x0197, B:110:0x019e, B:111:0x019f), top: B:195:0x016a }] */
    /* JADX WARN: Code duplicated, block: B:102:0x0184 A[Catch: all -> 0x01a0, TryCatch #0 {all -> 0x01a0, blocks: (B:91:0x016a, B:93:0x0171, B:95:0x0175, B:97:0x0179, B:98:0x017c, B:100:0x0180, B:102:0x0184, B:104:0x0188, B:105:0x0189, B:106:0x018e, B:107:0x018f, B:108:0x0196, B:109:0x0197, B:110:0x019e, B:111:0x019f), top: B:195:0x016a }] */
    /* JADX WARN: Code duplicated, block: B:104:0x0188 A[Catch: all -> 0x01a0, TryCatch #0 {all -> 0x01a0, blocks: (B:91:0x016a, B:93:0x0171, B:95:0x0175, B:97:0x0179, B:98:0x017c, B:100:0x0180, B:102:0x0184, B:104:0x0188, B:105:0x0189, B:106:0x018e, B:107:0x018f, B:108:0x0196, B:109:0x0197, B:110:0x019e, B:111:0x019f), top: B:195:0x016a }] */
    /* JADX WARN: Code duplicated, block: B:105:0x0189 A[Catch: all -> 0x01a0, TryCatch #0 {all -> 0x01a0, blocks: (B:91:0x016a, B:93:0x0171, B:95:0x0175, B:97:0x0179, B:98:0x017c, B:100:0x0180, B:102:0x0184, B:104:0x0188, B:105:0x0189, B:106:0x018e, B:107:0x018f, B:108:0x0196, B:109:0x0197, B:110:0x019e, B:111:0x019f), top: B:195:0x016a }] */
    /* JADX WARN: Code duplicated, block: B:107:0x018f A[Catch: all -> 0x01a0, TryCatch #0 {all -> 0x01a0, blocks: (B:91:0x016a, B:93:0x0171, B:95:0x0175, B:97:0x0179, B:98:0x017c, B:100:0x0180, B:102:0x0184, B:104:0x0188, B:105:0x0189, B:106:0x018e, B:107:0x018f, B:108:0x0196, B:109:0x0197, B:110:0x019e, B:111:0x019f), top: B:195:0x016a }] */
    /* JADX WARN: Code duplicated, block: B:109:0x0197 A[Catch: all -> 0x01a0, TryCatch #0 {all -> 0x01a0, blocks: (B:91:0x016a, B:93:0x0171, B:95:0x0175, B:97:0x0179, B:98:0x017c, B:100:0x0180, B:102:0x0184, B:104:0x0188, B:105:0x0189, B:106:0x018e, B:107:0x018f, B:108:0x0196, B:109:0x0197, B:110:0x019e, B:111:0x019f), top: B:195:0x016a }] */
    /* JADX WARN: Code duplicated, block: B:111:0x019f A[Catch: all -> 0x01a0, TRY_LEAVE, TryCatch #0 {all -> 0x01a0, blocks: (B:91:0x016a, B:93:0x0171, B:95:0x0175, B:97:0x0179, B:98:0x017c, B:100:0x0180, B:102:0x0184, B:104:0x0188, B:105:0x0189, B:106:0x018e, B:107:0x018f, B:108:0x0196, B:109:0x0197, B:110:0x019e, B:111:0x019f), top: B:195:0x016a }] */
    /* JADX WARN: Code duplicated, block: B:139:0x01ff A[Catch: all -> 0x023d, TRY_LEAVE, TryCatch #15 {all -> 0x023d, blocks: (B:137:0x01fb, B:139:0x01ff, B:141:0x0204, B:147:0x0212, B:149:0x021f), top: B:215:0x01fb }] */
    /* JADX WARN: Code duplicated, block: B:144:0x020c A[Catch: all -> 0x01ca, TRY_ENTER, TryCatch #6 {all -> 0x01ca, blocks: (B:140:0x0201, B:144:0x020c, B:146:0x0210, B:148:0x021b, B:124:0x01c7), top: B:204:0x01c7 }] */
    /* JADX WARN: Code duplicated, block: B:146:0x0210 A[Catch: all -> 0x01ca, TRY_LEAVE, TryCatch #6 {all -> 0x01ca, blocks: (B:140:0x0201, B:144:0x020c, B:146:0x0210, B:148:0x021b, B:124:0x01c7), top: B:204:0x01c7 }] */
    /* JADX WARN: Code duplicated, block: B:152:0x0228  */
    /* JADX WARN: Code duplicated, block: B:154:0x022f  */
    /* JADX WARN: Code duplicated, block: B:170:0x025b A[Catch: all -> 0x028a, TryCatch #7 {all -> 0x028a, blocks: (B:168:0x0254, B:170:0x025b, B:172:0x025f, B:174:0x0263, B:175:0x0266, B:177:0x026a, B:179:0x026e, B:181:0x0272, B:182:0x0273, B:183:0x0278, B:184:0x0279, B:185:0x0280, B:186:0x0281, B:187:0x0288, B:188:0x0289), top: B:205:0x0254 }] */
    /* JADX WARN: Code duplicated, block: B:172:0x025f A[Catch: all -> 0x028a, TryCatch #7 {all -> 0x028a, blocks: (B:168:0x0254, B:170:0x025b, B:172:0x025f, B:174:0x0263, B:175:0x0266, B:177:0x026a, B:179:0x026e, B:181:0x0272, B:182:0x0273, B:183:0x0278, B:184:0x0279, B:185:0x0280, B:186:0x0281, B:187:0x0288, B:188:0x0289), top: B:205:0x0254 }] */
    /* JADX WARN: Code duplicated, block: B:177:0x026a A[Catch: all -> 0x028a, TryCatch #7 {all -> 0x028a, blocks: (B:168:0x0254, B:170:0x025b, B:172:0x025f, B:174:0x0263, B:175:0x0266, B:177:0x026a, B:179:0x026e, B:181:0x0272, B:182:0x0273, B:183:0x0278, B:184:0x0279, B:185:0x0280, B:186:0x0281, B:187:0x0288, B:188:0x0289), top: B:205:0x0254 }] */
    /* JADX WARN: Code duplicated, block: B:179:0x026e A[Catch: all -> 0x028a, TryCatch #7 {all -> 0x028a, blocks: (B:168:0x0254, B:170:0x025b, B:172:0x025f, B:174:0x0263, B:175:0x0266, B:177:0x026a, B:179:0x026e, B:181:0x0272, B:182:0x0273, B:183:0x0278, B:184:0x0279, B:185:0x0280, B:186:0x0281, B:187:0x0288, B:188:0x0289), top: B:205:0x0254 }] */
    /* JADX WARN: Code duplicated, block: B:181:0x0272 A[Catch: all -> 0x028a, TryCatch #7 {all -> 0x028a, blocks: (B:168:0x0254, B:170:0x025b, B:172:0x025f, B:174:0x0263, B:175:0x0266, B:177:0x026a, B:179:0x026e, B:181:0x0272, B:182:0x0273, B:183:0x0278, B:184:0x0279, B:185:0x0280, B:186:0x0281, B:187:0x0288, B:188:0x0289), top: B:205:0x0254 }] */
    /* JADX WARN: Code duplicated, block: B:182:0x0273 A[Catch: all -> 0x028a, TryCatch #7 {all -> 0x028a, blocks: (B:168:0x0254, B:170:0x025b, B:172:0x025f, B:174:0x0263, B:175:0x0266, B:177:0x026a, B:179:0x026e, B:181:0x0272, B:182:0x0273, B:183:0x0278, B:184:0x0279, B:185:0x0280, B:186:0x0281, B:187:0x0288, B:188:0x0289), top: B:205:0x0254 }] */
    /* JADX WARN: Code duplicated, block: B:184:0x0279 A[Catch: all -> 0x028a, TryCatch #7 {all -> 0x028a, blocks: (B:168:0x0254, B:170:0x025b, B:172:0x025f, B:174:0x0263, B:175:0x0266, B:177:0x026a, B:179:0x026e, B:181:0x0272, B:182:0x0273, B:183:0x0278, B:184:0x0279, B:185:0x0280, B:186:0x0281, B:187:0x0288, B:188:0x0289), top: B:205:0x0254 }] */
    /* JADX WARN: Code duplicated, block: B:186:0x0281 A[Catch: all -> 0x028a, TryCatch #7 {all -> 0x028a, blocks: (B:168:0x0254, B:170:0x025b, B:172:0x025f, B:174:0x0263, B:175:0x0266, B:177:0x026a, B:179:0x026e, B:181:0x0272, B:182:0x0273, B:183:0x0278, B:184:0x0279, B:185:0x0280, B:186:0x0281, B:187:0x0288, B:188:0x0289), top: B:205:0x0254 }] */
    /* JADX WARN: Code duplicated, block: B:188:0x0289 A[Catch: all -> 0x028a, TRY_LEAVE, TryCatch #7 {all -> 0x028a, blocks: (B:168:0x0254, B:170:0x025b, B:172:0x025f, B:174:0x0263, B:175:0x0266, B:177:0x026a, B:179:0x026e, B:181:0x0272, B:182:0x0273, B:183:0x0278, B:184:0x0279, B:185:0x0280, B:186:0x0281, B:187:0x0288, B:188:0x0289), top: B:205:0x0254 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x0113 A[Catch: all -> 0x0153, TRY_LEAVE, TryCatch #11 {all -> 0x0153, blocks: (B:59:0x010f, B:61:0x0113, B:63:0x0118, B:69:0x0126, B:72:0x0134), top: B:209:0x010f }] */
    /* JADX WARN: Code duplicated, block: B:66:0x0120 A[Catch: all -> 0x00dd, TRY_ENTER, TryCatch #13 {all -> 0x00dd, blocks: (B:62:0x0115, B:66:0x0120, B:68:0x0124, B:70:0x012f, B:46:0x00da), top: B:212:0x00da }] */
    /* JADX WARN: Code duplicated, block: B:68:0x0124 A[Catch: all -> 0x00dd, TRY_LEAVE, TryCatch #13 {all -> 0x00dd, blocks: (B:62:0x0115, B:66:0x0120, B:68:0x0124, B:70:0x012f, B:46:0x00da), top: B:212:0x00da }] */
    /* JADX WARN: Code duplicated, block: B:75:0x013e  */
    /* JADX WARN: Code duplicated, block: B:77:0x0145  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:93:0x0171 A[Catch: all -> 0x01a0, TryCatch #0 {all -> 0x01a0, blocks: (B:91:0x016a, B:93:0x0171, B:95:0x0175, B:97:0x0179, B:98:0x017c, B:100:0x0180, B:102:0x0184, B:104:0x0188, B:105:0x0189, B:106:0x018e, B:107:0x018f, B:108:0x0196, B:109:0x0197, B:110:0x019e, B:111:0x019f), top: B:195:0x016a }] */
    /* JADX WARN: Code duplicated, block: B:95:0x0175 A[Catch: all -> 0x01a0, TryCatch #0 {all -> 0x01a0, blocks: (B:91:0x016a, B:93:0x0171, B:95:0x0175, B:97:0x0179, B:98:0x017c, B:100:0x0180, B:102:0x0184, B:104:0x0188, B:105:0x0189, B:106:0x018e, B:107:0x018f, B:108:0x0196, B:109:0x0197, B:110:0x019e, B:111:0x019f), top: B:195:0x016a }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v30 */
    /* JADX WARN: Type inference failed for: r0v35 */
    /* JADX WARN: Type inference failed for: r0v49 */
    /* JADX WARN: Type inference failed for: r0v70 */
    /* JADX WARN: Type inference failed for: r0v79 */
    /* JADX WARN: Type inference failed for: r0v80 */
    /* JADX WARN: Type inference failed for: r15v0, types: [ads_mobile_sdk.r31, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r15v11 */
    /* JADX WARN: Type inference failed for: r15v19 */
    /* JADX WARN: Type inference failed for: r15v22 */
    /* JADX WARN: Type inference failed for: r15v24, types: [ads_mobile_sdk.r31] */
    /* JADX WARN: Type inference failed for: r15v26 */
    /* JADX WARN: Type inference failed for: r15v29 */
    /* JADX WARN: Type inference failed for: r15v33 */
    /* JADX WARN: Type inference failed for: r15v35 */
    /* JADX WARN: Type inference failed for: r15v36, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r15v37 */
    /* JADX WARN: Type inference failed for: r15v39, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r15v40 */
    /* JADX WARN: Type inference failed for: r15v43 */
    /* JADX WARN: Type inference failed for: r15v45, types: [ads_mobile_sdk.r31] */
    /* JADX WARN: Type inference failed for: r15v47 */
    /* JADX WARN: Type inference failed for: r15v49 */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* JADX WARN: Type inference failed for: r15v53 */
    /* JADX WARN: Type inference failed for: r15v55 */
    /* JADX WARN: Type inference failed for: r15v56, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r15v57 */
    /* JADX WARN: Type inference failed for: r15v59, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r15v61 */
    /* JADX WARN: Type inference failed for: r15v62 */
    /* JADX WARN: Type inference failed for: r15v64 */
    /* JADX WARN: Type inference failed for: r15v65 */
    /* JADX WARN: Type inference failed for: r15v66 */
    /* JADX WARN: Type inference failed for: r15v67 */
    /* JADX WARN: Type inference failed for: r15v69 */
    /* JADX WARN: Type inference failed for: r15v70 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v2, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v36 */
    /* JADX WARN: Type inference failed for: r1v39 */
    /* JADX WARN: Type inference failed for: r1v4, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v23, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v29 */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r2v31 */
    /* JADX WARN: Type inference failed for: r2v33, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v36 */
    /* JADX WARN: Type inference failed for: r2v37 */
    /* JADX WARN: Type inference failed for: r2v38 */
    /* JADX WARN: Type inference failed for: r2v39 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v0, types: [int] */
    public final Object a(r31 r31Var, String str, String str2, String str3, Continuation continuation) {
        fu3 fu3Var;
        ?? r2;
        ?? r3;
        TimeoutCancellationException timeoutCancellationException;
        ?? r4;
        ?? r1;
        TimeoutCancellationException timeoutCancellationException2;
        ?? r5;
        ?? r6;
        nu3 nu3Var;
        ?? r0;
        rr3 rr3Var;
        Object objC;
        rr3 rr3Var2;
        nu3 nu3Var2;
        ?? r7;
        rr3 rr3Var3;
        Object objC2;
        rr3 rr3Var4;
        ?? r15;
        rr3 rr3Var5;
        v01 v01Var;
        rr3 rr3Var6;
        rr3 rr3Var7;
        ?? r16;
        rr3 rr3Var8;
        rr3 rr3Var9;
        Toolbar toolbar;
        Object objWithContext;
        ?? r17;
        ?? r8;
        rr3 rr3Var10;
        ?? r18;
        rr3 rr3Var11;
        v01 v01Var2;
        rr3 rr3Var12;
        rr3 rr3Var13;
        ?? r19;
        rr3 rr3Var14;
        rr3 rr3Var15;
        Toolbar toolbar2;
        Object objWithContext2;
        ?? r110;
        ?? r9;
        rr3 rr3Var16;
        if (continuation instanceof fu3) {
            fu3Var = (fu3) continuation;
            int i = fu3Var.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                fu3Var.g = i - Integer.MIN_VALUE;
            } else {
                fu3Var = new fu3(this, continuation);
            }
        } else {
            fu3Var = new fu3(this, continuation);
        }
        fu3 fu3Var2 = fu3Var;
        Object obj = fu3Var2.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? r10 = fu3Var2.g;
        try {
            try {
                switch (r10) {
                    case 0:
                        p005kotlin.ResultKt.throwOnFailure(obj);
                        g83 g83Var = this.X;
                        s11 s11Var = s11.CUI_NAME_TWO_PIECE_EXPANDABLE_LOAD;
                        ks3 ks3Var = this.U;
                        List listEmptyList = CollectionsKt.emptyList();
                        if (hs3.b().a == null) {
                            tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                            try {
                                if (str != null) {
                                    fu3Var2.a = this;
                                    fu3Var2.b = r31Var;
                                    fu3Var2.c = tu2VarA;
                                    fu3Var2.d = tu2VarA;
                                    fu3Var2.g = 1;
                                    objC2 = r31Var.c(str, fu3Var2);
                                    if (objC2 != coroutine_suspended) {
                                        nu3Var2 = this;
                                        rr3Var4 = tu2VarA;
                                        rr3Var5 = tu2VarA;
                                        r15 = r31Var;
                                        try {
                                            v01Var = (v01) objC2;
                                            rr3Var9 = rr3Var5;
                                            rr3Var8 = rr3Var4;
                                            r16 = r15;
                                            try {
                                                if (v01Var instanceof i01) {
                                                    xs3.a((i01) v01Var, false);
                                                    Boolean boolBoxBoolean = Boxing.boxBoolean(false);
                                                    CloseableKt.closeFinally(rr3Var9, null);
                                                    return boolBoxBoolean;
                                                }
                                                toolbar = nu3Var2.t;
                                                if (toolbar != null) {
                                                    CoroutineContext coroutineContext = nu3Var2.c;
                                                    gu3 gu3Var = new gu3(r16, toolbar, null);
                                                    fu3Var2.a = rr3Var8;
                                                    fu3Var2.b = rr3Var9;
                                                    fu3Var2.c = null;
                                                    fu3Var2.d = null;
                                                    fu3Var2.g = 3;
                                                    objWithContext = BuildersKt.withContext(coroutineContext, gu3Var, fu3Var2);
                                                    if (objWithContext != coroutine_suspended) {
                                                        rr3 rr3Var17 = rr3Var9;
                                                        obj = objWithContext;
                                                        r17 = rr3Var17;
                                                        r8 = rr3Var8;
                                                        r3 = r8;
                                                        r31Var = r17;
                                                    }
                                                } else {
                                                    r31Var = rr3Var9;
                                                    r3 = rr3Var8;
                                                }
                                                Boolean boolBoxBoolean2 = Boxing.boxBoolean(true);
                                                CloseableKt.closeFinally(r31Var, null);
                                                return boolBoxBoolean2;
                                            } catch (Throwable th) {
                                                timeoutCancellationException = th;
                                                rr3Var7 = rr3Var9;
                                                rr3Var6 = rr3Var8;
                                                r1 = rr3Var6;
                                                r4 = rr3Var7;
                                                try {
                                                    r1.b(timeoutCancellationException);
                                                    if (timeoutCancellationException instanceof v24) {
                                                        throw timeoutCancellationException;
                                                    }
                                                    if (!(timeoutCancellationException instanceof TimeoutCancellationException)) {
                                                        r1.a(timeoutCancellationException);
                                                    }
                                                    if (timeoutCancellationException instanceof TimeoutCancellationException) {
                                                        throw new i21(timeoutCancellationException);
                                                    }
                                                    if (timeoutCancellationException instanceof CancellationException) {
                                                        throw new wz0(timeoutCancellationException);
                                                    }
                                                    if (timeoutCancellationException instanceof w01) {
                                                        throw timeoutCancellationException;
                                                    }
                                                    throw new b01(timeoutCancellationException);
                                                } catch (Throwable th2) {
                                                    try {
                                                        throw th2;
                                                    } catch (Throwable th3) {
                                                        CloseableKt.closeFinally(r4, th2);
                                                        throw th3;
                                                    }
                                                }
                                            }
                                        } catch (Throwable th4) {
                                            timeoutCancellationException = th4;
                                            r4 = rr3Var5;
                                            r1 = rr3Var4;
                                            r1.b(timeoutCancellationException);
                                            if (timeoutCancellationException instanceof v24) {
                                                throw timeoutCancellationException;
                                            }
                                            if (!(timeoutCancellationException instanceof TimeoutCancellationException)) {
                                                r1.a(timeoutCancellationException);
                                            }
                                            if (timeoutCancellationException instanceof TimeoutCancellationException) {
                                                throw new i21(timeoutCancellationException);
                                            }
                                            if (timeoutCancellationException instanceof CancellationException) {
                                                throw new wz0(timeoutCancellationException);
                                            }
                                            if (timeoutCancellationException instanceof w01) {
                                                throw timeoutCancellationException;
                                            }
                                            throw new b01(timeoutCancellationException);
                                        }
                                    }
                                } else {
                                    if (str2 == null) {
                                        xs3.a("Cannot open two piece expandable with no url or html", null, 6);
                                        Boolean boolBoxBoolean3 = Boxing.boxBoolean(false);
                                        CloseableKt.closeFinally(tu2VarA, null);
                                        return boolBoxBoolean3;
                                    }
                                    fu3Var2.a = this;
                                    fu3Var2.b = r31Var;
                                    fu3Var2.c = tu2VarA;
                                    fu3Var2.d = tu2VarA;
                                    fu3Var2.g = 2;
                                    Object objA = r31.a((r31) r31Var, str2, str3, false, (Continuation) fu3Var2, 12);
                                    if (objA != coroutine_suspended) {
                                        nu3Var2 = this;
                                        tu2 tu2Var = tu2VarA;
                                        obj = objA;
                                        r7 = r31Var;
                                        rr3Var3 = tu2Var;
                                        rr3Var10 = tu2Var;
                                        try {
                                            v01 v01Var3 = (v01) obj;
                                            rr3Var9 = rr3Var3;
                                            r16 = r7;
                                            v01Var = v01Var3;
                                            rr3Var8 = rr3Var10;
                                            if (v01Var instanceof i01) {
                                                xs3.a((i01) v01Var, false);
                                                Boolean boolBoxBoolean4 = Boxing.boxBoolean(false);
                                                CloseableKt.closeFinally(rr3Var9, null);
                                                return boolBoxBoolean4;
                                            }
                                            toolbar = nu3Var2.t;
                                            if (toolbar != null) {
                                                CoroutineContext coroutineContext2 = nu3Var2.c;
                                                gu3 gu3Var2 = new gu3(r16, toolbar, null);
                                                fu3Var2.a = rr3Var8;
                                                fu3Var2.b = rr3Var9;
                                                fu3Var2.c = null;
                                                fu3Var2.d = null;
                                                fu3Var2.g = 3;
                                                objWithContext = BuildersKt.withContext(coroutineContext2, gu3Var2, fu3Var2);
                                                if (objWithContext != coroutine_suspended) {
                                                    rr3 rr3Var18 = rr3Var9;
                                                    obj = objWithContext;
                                                    r17 = rr3Var18;
                                                    r8 = rr3Var8;
                                                    r3 = r8;
                                                    r31Var = r17;
                                                }
                                            } else {
                                                r31Var = rr3Var9;
                                                r3 = rr3Var8;
                                            }
                                            Boolean boolBoxBoolean5 = Boxing.boxBoolean(true);
                                            CloseableKt.closeFinally(r31Var, null);
                                            return boolBoxBoolean5;
                                        } catch (Throwable th5) {
                                            rr3Var7 = rr3Var3;
                                            timeoutCancellationException = th5;
                                            rr3Var6 = rr3Var10;
                                            r1 = rr3Var6;
                                            r4 = rr3Var7;
                                            r1.b(timeoutCancellationException);
                                            if (timeoutCancellationException instanceof v24) {
                                                throw timeoutCancellationException;
                                            }
                                            if (!(timeoutCancellationException instanceof TimeoutCancellationException)) {
                                                r1.a(timeoutCancellationException);
                                            }
                                            if (timeoutCancellationException instanceof TimeoutCancellationException) {
                                                throw new i21(timeoutCancellationException);
                                            }
                                            if (timeoutCancellationException instanceof CancellationException) {
                                                throw new wz0(timeoutCancellationException);
                                            }
                                            if (timeoutCancellationException instanceof w01) {
                                                throw timeoutCancellationException;
                                            }
                                            throw new b01(timeoutCancellationException);
                                        }
                                    }
                                }
                            } catch (Throwable th6) {
                                timeoutCancellationException = th6;
                                r4 = tu2VarA;
                                r1 = tu2VarA;
                                r1.b(timeoutCancellationException);
                                if (timeoutCancellationException instanceof v24) {
                                    throw timeoutCancellationException;
                                }
                                if (!(timeoutCancellationException instanceof TimeoutCancellationException) && !(timeoutCancellationException instanceof CancellationException)) {
                                    r1.a(timeoutCancellationException);
                                }
                                if (timeoutCancellationException instanceof TimeoutCancellationException) {
                                    throw new i21(timeoutCancellationException);
                                }
                                if (timeoutCancellationException instanceof CancellationException) {
                                    throw new wz0(timeoutCancellationException);
                                }
                                if (timeoutCancellationException instanceof w01) {
                                    throw timeoutCancellationException;
                                }
                                throw new b01(timeoutCancellationException);
                            }
                        } else {
                            rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                            try {
                                if (str != null) {
                                    fu3Var2.a = this;
                                    fu3Var2.b = r31Var;
                                    fu3Var2.c = rr3VarA;
                                    fu3Var2.d = rr3VarA;
                                    fu3Var2.g = 4;
                                    objC = r31Var.c(str, fu3Var2);
                                    if (objC != coroutine_suspended) {
                                        nu3Var = this;
                                        rr3Var2 = rr3VarA;
                                        rr3Var11 = rr3VarA;
                                        r18 = r31Var;
                                        try {
                                            v01Var2 = (v01) objC;
                                            rr3Var15 = rr3Var11;
                                            rr3Var14 = rr3Var2;
                                            r19 = r18;
                                            try {
                                                if (v01Var2 instanceof i01) {
                                                    xs3.a((i01) v01Var2, false);
                                                    Boolean boolBoxBoolean6 = Boxing.boxBoolean(false);
                                                    CloseableKt.closeFinally(rr3Var15, null);
                                                    return boolBoxBoolean6;
                                                }
                                                toolbar2 = nu3Var.t;
                                                if (toolbar2 != null) {
                                                    CoroutineContext coroutineContext3 = nu3Var.c;
                                                    gu3 gu3Var3 = new gu3(r19, toolbar2, null);
                                                    fu3Var2.a = rr3Var14;
                                                    fu3Var2.b = rr3Var15;
                                                    fu3Var2.c = null;
                                                    fu3Var2.d = null;
                                                    fu3Var2.g = 6;
                                                    objWithContext2 = BuildersKt.withContext(coroutineContext3, gu3Var3, fu3Var2);
                                                    if (objWithContext2 != coroutine_suspended) {
                                                        rr3 rr3Var19 = rr3Var15;
                                                        obj = objWithContext2;
                                                        r110 = rr3Var19;
                                                        r9 = rr3Var14;
                                                        r2 = r9;
                                                        r31Var = r110;
                                                    }
                                                } else {
                                                    r31Var = rr3Var15;
                                                    r2 = rr3Var14;
                                                }
                                                Boolean boolBoxBoolean7 = Boxing.boxBoolean(true);
                                                CloseableKt.closeFinally(r31Var, null);
                                                return boolBoxBoolean7;
                                            } catch (Throwable th7) {
                                                timeoutCancellationException2 = th7;
                                                rr3Var13 = rr3Var15;
                                                rr3Var12 = rr3Var14;
                                                r6 = rr3Var12;
                                                r5 = rr3Var13;
                                                try {
                                                    r6.b(timeoutCancellationException2);
                                                    if (timeoutCancellationException2 instanceof v24) {
                                                        throw timeoutCancellationException2;
                                                    }
                                                    if (!(timeoutCancellationException2 instanceof TimeoutCancellationException)) {
                                                        r6.a(timeoutCancellationException2);
                                                    }
                                                    if (timeoutCancellationException2 instanceof TimeoutCancellationException) {
                                                        throw new i21(timeoutCancellationException2);
                                                    }
                                                    if (timeoutCancellationException2 instanceof CancellationException) {
                                                        throw new wz0(timeoutCancellationException2);
                                                    }
                                                    if (timeoutCancellationException2 instanceof w01) {
                                                        throw timeoutCancellationException2;
                                                    }
                                                    throw new b01(timeoutCancellationException2);
                                                } catch (Throwable th8) {
                                                    try {
                                                        throw th8;
                                                    } catch (Throwable th9) {
                                                        CloseableKt.closeFinally(r5, th8);
                                                        throw th9;
                                                    }
                                                }
                                            }
                                        } catch (Throwable th10) {
                                            timeoutCancellationException2 = th10;
                                            r5 = rr3Var11;
                                            r6 = rr3Var2;
                                            r6.b(timeoutCancellationException2);
                                            if (timeoutCancellationException2 instanceof v24) {
                                                throw timeoutCancellationException2;
                                            }
                                            if (!(timeoutCancellationException2 instanceof TimeoutCancellationException)) {
                                                r6.a(timeoutCancellationException2);
                                            }
                                            if (timeoutCancellationException2 instanceof TimeoutCancellationException) {
                                                throw new i21(timeoutCancellationException2);
                                            }
                                            if (timeoutCancellationException2 instanceof CancellationException) {
                                                throw new wz0(timeoutCancellationException2);
                                            }
                                            if (timeoutCancellationException2 instanceof w01) {
                                                throw timeoutCancellationException2;
                                            }
                                            throw new b01(timeoutCancellationException2);
                                        }
                                    }
                                } else {
                                    if (str2 == null) {
                                        xs3.a("Cannot open two piece expandable with no url or html", null, 6);
                                        Boolean boolBoxBoolean8 = Boxing.boxBoolean(false);
                                        CloseableKt.closeFinally(rr3VarA, null);
                                        return boolBoxBoolean8;
                                    }
                                    fu3Var2.a = this;
                                    fu3Var2.b = r31Var;
                                    fu3Var2.c = rr3VarA;
                                    fu3Var2.d = rr3VarA;
                                    fu3Var2.g = 5;
                                    Object objA2 = r31.a((r31) r31Var, str2, str3, false, (Continuation) fu3Var2, 12);
                                    if (objA2 != coroutine_suspended) {
                                        nu3Var = this;
                                        rr3 rr3Var20 = rr3VarA;
                                        obj = objA2;
                                        r0 = r31Var;
                                        rr3Var = rr3Var20;
                                        rr3Var16 = rr3Var20;
                                        try {
                                            v01 v01Var4 = (v01) obj;
                                            rr3Var15 = rr3Var;
                                            r19 = r0;
                                            v01Var2 = v01Var4;
                                            rr3Var14 = rr3Var16;
                                            if (v01Var2 instanceof i01) {
                                                xs3.a((i01) v01Var2, false);
                                                Boolean boolBoxBoolean9 = Boxing.boxBoolean(false);
                                                CloseableKt.closeFinally(rr3Var15, null);
                                                return boolBoxBoolean9;
                                            }
                                            toolbar2 = nu3Var.t;
                                            if (toolbar2 != null) {
                                                CoroutineContext coroutineContext4 = nu3Var.c;
                                                gu3 gu3Var4 = new gu3(r19, toolbar2, null);
                                                fu3Var2.a = rr3Var14;
                                                fu3Var2.b = rr3Var15;
                                                fu3Var2.c = null;
                                                fu3Var2.d = null;
                                                fu3Var2.g = 6;
                                                objWithContext2 = BuildersKt.withContext(coroutineContext4, gu3Var4, fu3Var2);
                                                if (objWithContext2 != coroutine_suspended) {
                                                    rr3 rr3Var110 = rr3Var15;
                                                    obj = objWithContext2;
                                                    r110 = rr3Var110;
                                                    r9 = rr3Var14;
                                                    r2 = r9;
                                                    r31Var = r110;
                                                }
                                            } else {
                                                r31Var = rr3Var15;
                                                r2 = rr3Var14;
                                            }
                                            Boolean boolBoxBoolean10 = Boxing.boxBoolean(true);
                                            CloseableKt.closeFinally(r31Var, null);
                                            return boolBoxBoolean10;
                                        } catch (Throwable th11) {
                                            rr3Var13 = rr3Var;
                                            timeoutCancellationException2 = th11;
                                            rr3Var12 = rr3Var16;
                                            r6 = rr3Var12;
                                            r5 = rr3Var13;
                                            r6.b(timeoutCancellationException2);
                                            if (timeoutCancellationException2 instanceof v24) {
                                                throw timeoutCancellationException2;
                                            }
                                            if (!(timeoutCancellationException2 instanceof TimeoutCancellationException) && !(timeoutCancellationException2 instanceof CancellationException)) {
                                                r6.a(timeoutCancellationException2);
                                            }
                                            if (timeoutCancellationException2 instanceof TimeoutCancellationException) {
                                                throw new i21(timeoutCancellationException2);
                                            }
                                            if (timeoutCancellationException2 instanceof CancellationException) {
                                                throw new wz0(timeoutCancellationException2);
                                            }
                                            if (timeoutCancellationException2 instanceof w01) {
                                                throw timeoutCancellationException2;
                                            }
                                            throw new b01(timeoutCancellationException2);
                                        }
                                    }
                                }
                            } catch (Throwable th12) {
                                timeoutCancellationException2 = th12;
                                r5 = rr3VarA;
                                r6 = rr3VarA;
                                r6.b(timeoutCancellationException2);
                                if (timeoutCancellationException2 instanceof v24) {
                                    throw timeoutCancellationException2;
                                }
                                if (!(timeoutCancellationException2 instanceof TimeoutCancellationException)) {
                                    r6.a(timeoutCancellationException2);
                                }
                                if (timeoutCancellationException2 instanceof TimeoutCancellationException) {
                                    throw new i21(timeoutCancellationException2);
                                }
                                if (timeoutCancellationException2 instanceof CancellationException) {
                                    throw new wz0(timeoutCancellationException2);
                                }
                                if (timeoutCancellationException2 instanceof w01) {
                                    throw timeoutCancellationException2;
                                }
                                throw new b01(timeoutCancellationException2);
                            }
                        }
                        return coroutine_suspended;
                    case 1:
                        rr3 rr3Var21 = fu3Var2.d;
                        rr3 rr3Var22 = fu3Var2.c;
                        r31 r31Var2 = (r31) fu3Var2.b;
                        nu3Var2 = (nu3) fu3Var2.a;
                        p005kotlin.ResultKt.throwOnFailure(obj);
                        rr3Var5 = rr3Var21;
                        r15 = r31Var2;
                        objC2 = obj;
                        rr3Var4 = rr3Var22;
                        v01Var = (v01) objC2;
                        rr3Var9 = rr3Var5;
                        rr3Var8 = rr3Var4;
                        r16 = r15;
                        if (v01Var instanceof i01) {
                            xs3.a((i01) v01Var, false);
                            Boolean boolBoxBoolean11 = Boxing.boxBoolean(false);
                            CloseableKt.closeFinally(rr3Var9, null);
                            return boolBoxBoolean11;
                        }
                        toolbar = nu3Var2.t;
                        if (toolbar != null) {
                            CoroutineContext coroutineContext5 = nu3Var2.c;
                            gu3 gu3Var5 = new gu3(r16, toolbar, null);
                            fu3Var2.a = rr3Var8;
                            fu3Var2.b = rr3Var9;
                            fu3Var2.c = null;
                            fu3Var2.d = null;
                            fu3Var2.g = 3;
                            objWithContext = BuildersKt.withContext(coroutineContext5, gu3Var5, fu3Var2);
                            if (objWithContext != coroutine_suspended) {
                                rr3 rr3Var111 = rr3Var9;
                                obj = objWithContext;
                                r17 = rr3Var111;
                                r8 = rr3Var8;
                                r3 = r8;
                                r31Var = r17;
                            }
                            return coroutine_suspended;
                        }
                        r31Var = rr3Var9;
                        r3 = rr3Var8;
                        Boolean boolBoxBoolean12 = Boxing.boxBoolean(true);
                        CloseableKt.closeFinally(r31Var, null);
                        return boolBoxBoolean12;
                    case 2:
                        rr3 rr3Var23 = fu3Var2.d;
                        rr3 rr3Var24 = fu3Var2.c;
                        r31 r31Var3 = (r31) fu3Var2.b;
                        nu3Var2 = (nu3) fu3Var2.a;
                        p005kotlin.ResultKt.throwOnFailure(obj);
                        r7 = r31Var3;
                        rr3Var10 = rr3Var24;
                        rr3Var3 = rr3Var23;
                        v01 v01Var5 = (v01) obj;
                        rr3Var9 = rr3Var3;
                        r16 = r7;
                        v01Var = v01Var5;
                        rr3Var8 = rr3Var10;
                        if (v01Var instanceof i01) {
                            xs3.a((i01) v01Var, false);
                            Boolean boolBoxBoolean13 = Boxing.boxBoolean(false);
                            CloseableKt.closeFinally(rr3Var9, null);
                            return boolBoxBoolean13;
                        }
                        toolbar = nu3Var2.t;
                        if (toolbar != null) {
                            CoroutineContext coroutineContext6 = nu3Var2.c;
                            gu3 gu3Var6 = new gu3(r16, toolbar, null);
                            fu3Var2.a = rr3Var8;
                            fu3Var2.b = rr3Var9;
                            fu3Var2.c = null;
                            fu3Var2.d = null;
                            fu3Var2.g = 3;
                            objWithContext = BuildersKt.withContext(coroutineContext6, gu3Var6, fu3Var2);
                            if (objWithContext != coroutine_suspended) {
                                rr3 rr3Var112 = rr3Var9;
                                obj = objWithContext;
                                r17 = rr3Var112;
                                r8 = rr3Var8;
                                r3 = r8;
                                r31Var = r17;
                            }
                            return coroutine_suspended;
                        }
                        r31Var = rr3Var9;
                        r3 = rr3Var8;
                        Boolean boolBoxBoolean14 = Boxing.boxBoolean(true);
                        CloseableKt.closeFinally(r31Var, null);
                        return boolBoxBoolean14;
                    case 3:
                        r31Var = (Closeable) fu3Var2.b;
                        r3 = (rr3) fu3Var2.a;
                        try {
                            p005kotlin.ResultKt.throwOnFailure(obj);
                            r8 = r3;
                            r17 = r31Var;
                            r3 = r8;
                            r31Var = r17;
                            Boolean boolBoxBoolean15 = Boxing.boxBoolean(true);
                            CloseableKt.closeFinally(r31Var, null);
                            return boolBoxBoolean15;
                        } catch (Throwable th13) {
                            th = th13;
                            r1 = r3;
                            r4 = r31Var;
                            timeoutCancellationException = th;
                            r1.b(timeoutCancellationException);
                            if (timeoutCancellationException instanceof v24) {
                                throw timeoutCancellationException;
                            }
                            if (!(timeoutCancellationException instanceof TimeoutCancellationException)) {
                                r1.a(timeoutCancellationException);
                            }
                            if (timeoutCancellationException instanceof TimeoutCancellationException) {
                                throw new i21(timeoutCancellationException);
                            }
                            if (timeoutCancellationException instanceof CancellationException) {
                                throw new wz0(timeoutCancellationException);
                            }
                            if (timeoutCancellationException instanceof w01) {
                                throw timeoutCancellationException;
                            }
                            throw new b01(timeoutCancellationException);
                        }
                    case 4:
                        rr3 rr3Var25 = fu3Var2.d;
                        rr3 rr3Var26 = fu3Var2.c;
                        r31 r31Var4 = (r31) fu3Var2.b;
                        nu3Var = (nu3) fu3Var2.a;
                        p005kotlin.ResultKt.throwOnFailure(obj);
                        rr3Var11 = rr3Var25;
                        r18 = r31Var4;
                        objC = obj;
                        rr3Var2 = rr3Var26;
                        v01Var2 = (v01) objC;
                        rr3Var15 = rr3Var11;
                        rr3Var14 = rr3Var2;
                        r19 = r18;
                        if (v01Var2 instanceof i01) {
                            xs3.a((i01) v01Var2, false);
                            Boolean boolBoxBoolean16 = Boxing.boxBoolean(false);
                            CloseableKt.closeFinally(rr3Var15, null);
                            return boolBoxBoolean16;
                        }
                        toolbar2 = nu3Var.t;
                        if (toolbar2 != null) {
                            CoroutineContext coroutineContext7 = nu3Var.c;
                            gu3 gu3Var7 = new gu3(r19, toolbar2, null);
                            fu3Var2.a = rr3Var14;
                            fu3Var2.b = rr3Var15;
                            fu3Var2.c = null;
                            fu3Var2.d = null;
                            fu3Var2.g = 6;
                            objWithContext2 = BuildersKt.withContext(coroutineContext7, gu3Var7, fu3Var2);
                            if (objWithContext2 != coroutine_suspended) {
                                rr3 rr3Var113 = rr3Var15;
                                obj = objWithContext2;
                                r110 = rr3Var113;
                                r9 = rr3Var14;
                                r2 = r9;
                                r31Var = r110;
                            }
                            return coroutine_suspended;
                        }
                        r31Var = rr3Var15;
                        r2 = rr3Var14;
                        Boolean boolBoxBoolean17 = Boxing.boxBoolean(true);
                        CloseableKt.closeFinally(r31Var, null);
                        return boolBoxBoolean17;
                    case 5:
                        rr3 rr3Var27 = fu3Var2.d;
                        rr3 rr3Var28 = fu3Var2.c;
                        r31 r31Var5 = (r31) fu3Var2.b;
                        nu3Var = (nu3) fu3Var2.a;
                        p005kotlin.ResultKt.throwOnFailure(obj);
                        r0 = r31Var5;
                        rr3Var16 = rr3Var28;
                        rr3Var = rr3Var27;
                        v01 v01Var6 = (v01) obj;
                        rr3Var15 = rr3Var;
                        r19 = r0;
                        v01Var2 = v01Var6;
                        rr3Var14 = rr3Var16;
                        if (v01Var2 instanceof i01) {
                            xs3.a((i01) v01Var2, false);
                            Boolean boolBoxBoolean18 = Boxing.boxBoolean(false);
                            CloseableKt.closeFinally(rr3Var15, null);
                            return boolBoxBoolean18;
                        }
                        toolbar2 = nu3Var.t;
                        if (toolbar2 != null) {
                            CoroutineContext coroutineContext8 = nu3Var.c;
                            gu3 gu3Var8 = new gu3(r19, toolbar2, null);
                            fu3Var2.a = rr3Var14;
                            fu3Var2.b = rr3Var15;
                            fu3Var2.c = null;
                            fu3Var2.d = null;
                            fu3Var2.g = 6;
                            objWithContext2 = BuildersKt.withContext(coroutineContext8, gu3Var8, fu3Var2);
                            if (objWithContext2 != coroutine_suspended) {
                                rr3 rr3Var114 = rr3Var15;
                                obj = objWithContext2;
                                r110 = rr3Var114;
                                r9 = rr3Var14;
                                r2 = r9;
                                r31Var = r110;
                            }
                            return coroutine_suspended;
                        }
                        r31Var = rr3Var15;
                        r2 = rr3Var14;
                        Boolean boolBoxBoolean19 = Boxing.boxBoolean(true);
                        CloseableKt.closeFinally(r31Var, null);
                        return boolBoxBoolean19;
                    case 6:
                        r31Var = (Closeable) fu3Var2.b;
                        r2 = (rr3) fu3Var2.a;
                        try {
                            p005kotlin.ResultKt.throwOnFailure(obj);
                            r9 = r2;
                            r110 = r31Var;
                            r2 = r9;
                            r31Var = r110;
                            Boolean boolBoxBoolean110 = Boxing.boxBoolean(true);
                            CloseableKt.closeFinally(r31Var, null);
                            return boolBoxBoolean110;
                        } catch (Throwable th14) {
                            th = th14;
                            r6 = r2;
                            r5 = r31Var;
                            timeoutCancellationException2 = th;
                            r6.b(timeoutCancellationException2);
                            if (timeoutCancellationException2 instanceof v24) {
                                throw timeoutCancellationException2;
                            }
                            if (!(timeoutCancellationException2 instanceof TimeoutCancellationException)) {
                                r6.a(timeoutCancellationException2);
                            }
                            if (timeoutCancellationException2 instanceof TimeoutCancellationException) {
                                throw new i21(timeoutCancellationException2);
                            }
                            if (timeoutCancellationException2 instanceof CancellationException) {
                                throw new wz0(timeoutCancellationException2);
                            }
                            if (timeoutCancellationException2 instanceof w01) {
                                throw timeoutCancellationException2;
                            }
                            throw new b01(timeoutCancellationException2);
                        }
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } catch (Throwable th15) {
                th = th15;
                r3 = r10;
            }
        } catch (Throwable th16) {
            th = th16;
            r2 = r10;
        }
    }

    @Override // kotlin.ez0, kotlin.yx0, kotlin.yy0
    public final Object a(View view, Continuation continuation) {
        return a(this, view, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:43:0x0179  */
    /* JADX WARN: Code duplicated, block: B:44:0x01be  */
    /* JADX WARN: Code duplicated, block: B:47:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:50:0x0204  */
    /* JADX WARN: Code duplicated, block: B:52:0x0207  */
    /* JADX WARN: Code duplicated, block: B:55:0x0211  */
    /* JADX WARN: Code duplicated, block: B:57:0x0215  */
    /* JADX WARN: Code duplicated, block: B:60:0x0221  */
    /* JADX WARN: Code duplicated, block: B:61:0x0223  */
    /* JADX WARN: Code duplicated, block: B:64:0x0228  */
    /* JADX WARN: Code duplicated, block: B:66:0x022c  */
    /* JADX WARN: Code duplicated, block: B:69:0x0238  */
    /* JADX WARN: Code duplicated, block: B:70:0x023a  */
    /* JADX WARN: Code duplicated, block: B:73:0x0241  */
    /* JADX WARN: Code duplicated, block: B:76:0x024d  */
    /* JADX WARN: Code duplicated, block: B:78:0x0251  */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Code duplicated, block: B:81:0x0269  */
    /* JADX WARN: Code duplicated, block: B:82:0x026b  */
    /* JADX WARN: Code duplicated, block: B:87:0x0280  */
    public final Object a(boolean z, int i, boolean z2, String str, String str2, String str3, r31 r31Var, boolean z3, boolean z4, Continuation continuation) {
        ku3 ku3Var;
        nu3 nu3Var;
        boolean z5;
        int i2;
        boolean z6;
        String str4;
        String str5;
        boolean z7;
        String str6;
        boolean z8;
        h41 h41Var;
        ex0 ex0Var;
        h41 h41Var2;
        String str7;
        boolean z9;
        boolean z10;
        nu3 nu3Var2;
        int i3;
        boolean z11;
        boolean z12;
        boolean z13;
        r31 r31Var2;
        boolean z14;
        boolean z15;
        Context contextG;
        r31 r31Var3;
        r31 r31Var4;
        r31 r31Var5;
        boolean z16;
        if (continuation instanceof ku3) {
            ku3Var = (ku3) continuation;
            int i4 = ku3Var.m;
            if ((i4 & Integer.MIN_VALUE) != 0) {
                ku3Var.m = i4 - Integer.MIN_VALUE;
            } else {
                ku3Var = new ku3(this, continuation);
            }
        } else {
            ku3Var = new ku3(this, continuation);
        }
        ku3 ku3Var2 = ku3Var;
        Object objA = ku3Var2.k;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i5 = ku3Var2.m;
        String str8 = "block";
        String str9 = "<this>";
        if (i5 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            this.a0 = str;
            this.Y = r31Var;
            iz3 iz3Var = this.V;
            v14 v14Var = new v14(u14.FULLSCREEN, 0, 0, 14);
            ks3 ks3Var = this.U;
            mb0 mb0Var = this.T;
            ku3Var2.a = this;
            ku3Var2.b = str;
            ku3Var2.c = str2;
            ku3Var2.d = str3;
            ku3Var2.f = z;
            ku3Var2.j = i;
            ku3Var2.g = z2;
            ku3Var2.h = z3;
            ku3Var2.i = z4;
            ku3Var2.m = 1;
            Object objA2 = iz3.a(iz3Var, v14Var, ks3Var, mb0Var, (eo2) null, (t91) null, ku3Var2, 56);
            if (objA2 != coroutine_suspended) {
                nu3Var = this;
                z5 = z;
                i2 = i;
                z6 = z2;
                str4 = str2;
                objA = objA2;
                str5 = str3;
                z7 = z3;
                str6 = str;
                z8 = z4;
            }
            return coroutine_suspended;
        }
        if (i5 == 1) {
            z8 = ku3Var2.i;
            z7 = ku3Var2.h;
            z6 = ku3Var2.g;
            i2 = ku3Var2.j;
            z5 = ku3Var2.f;
            str5 = ku3Var2.d;
            str4 = ku3Var2.c;
            str6 = (String) ku3Var2.b;
            nu3Var = ku3Var2.a;
            p005kotlin.ResultKt.throwOnFailure(objA);
        } else {
            if (i5 == 2) {
                z16 = ku3Var2.i;
                z7 = ku3Var2.h;
                boolean z17 = ku3Var2.g;
                int i6 = ku3Var2.j;
                boolean z18 = ku3Var2.f;
                h41 h41Var3 = ku3Var2.e;
                String str10 = ku3Var2.d;
                String str11 = ku3Var2.c;
                str6 = (String) ku3Var2.b;
                nu3 nu3Var3 = ku3Var2.a;
                p005kotlin.ResultKt.throwOnFailure(objA);
                h41Var = h41Var3;
                str5 = str10;
                i2 = i6;
                str4 = str11;
                z5 = z18;
                z6 = z17;
                nu3Var = nu3Var3;
                if (str6 != null && str4 == null) {
                    xs3.a("Cannot open two piece expandable with no url or html", null, 6);
                    return p005kotlin.Unit.INSTANCE;
                }
                z8 = z16;
                ex0Var = nu3Var.e;
                ex0Var.getClass();
                Intrinsics.checkNotNullParameter("gads:should_show_two_piece_activity_before_load", C3510b4.i.W);
                if (!((Boolean) ex0Var.a("gads:should_show_two_piece_activity_before_load", Boolean.TRUE, yr.b)).booleanValue()) {
                    String str12 = str4;
                    h41Var2 = h41Var;
                    str7 = r13;
                    r31 r31Var6 = h41Var2.a;
                    ku3Var2.a = nu3Var;
                    ku3Var2.b = h41Var2;
                    ku3Var2.c = null;
                    ku3Var2.d = null;
                    ku3Var2.e = null;
                    ku3Var2.f = z5;
                    ku3Var2.j = i2;
                    ku3Var2.g = z6;
                    ku3Var2.h = z7;
                    ku3Var2.i = z8;
                    ku3Var2.m = 3;
                    objA = nu3Var.a(r31Var6, str6, str12, str5, ku3Var2);
                    if (objA != coroutine_suspended) {
                        z9 = z7;
                        z10 = z6;
                        nu3Var2 = nu3Var;
                        i3 = i2;
                        z11 = z5;
                    }
                    return coroutine_suspended;
                }
                CoroutineScope coroutineScope = nu3Var.d;
                h41 h41Var4 = h41Var;
                lu3 lu3Var = new lu3(nu3Var, h41Var4, str6, str4, str5, null);
                h41Var2 = h41Var4;
                EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
                str9 = str9;
                Intrinsics.checkNotNullParameter(coroutineScope, str9);
                str7 = "context";
                Intrinsics.checkNotNullParameter(emptyCoroutineContext, str7);
                str8 = str8;
                Intrinsics.checkNotNullParameter(lu3Var, str8);
                BuildersKt__Builders_commonKt.launch$default(coroutineScope, emptyCoroutineContext, null, new ws3(lu3Var, null), 2, null);
                h41 h41Var5 = h41Var2;
                if (z6) {
                    r31Var5 = nu3Var.Y;
                    if (r31Var5 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("previousWebView");
                        r31Var5 = null;
                    }
                    if (r31Var5.o.get()) {
                        z12 = false;
                    } else {
                        z12 = true;
                    }
                } else {
                    z12 = false;
                }
                nu3Var.R = z12;
                if (z8) {
                    r31Var4 = nu3Var.Y;
                    if (r31Var4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("previousWebView");
                        r31Var4 = null;
                    }
                    if (r31Var4.o.get()) {
                        z13 = false;
                    } else {
                        z13 = true;
                    }
                } else {
                    z13 = false;
                }
                nu3Var.Z = z13;
                r31Var2 = nu3Var.Y;
                if (r31Var2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("previousWebView");
                    r31Var2 = null;
                }
                if (!r31Var2.o.get()) {
                    r31Var3 = nu3Var.Y;
                    if (r31Var3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("previousWebView");
                        r31Var3 = null;
                    }
                    z14 = false;
                    if (!Intrinsics.areEqual(r31Var3.e(), new v14(u14.FULLSCREEN, 0, 0, 14))) {
                        z15 = true;
                    }
                    nu3Var.S = z15;
                    nu3Var.u = z5;
                    nu3Var.L = i2;
                    nu3Var.v = z14;
                    nu3Var.x = z7;
                    contextG = nu3Var.P.g();
                    if (contextG == null) {
                        contextG = nu3Var.a;
                    }
                    Intrinsics.checkNotNullParameter(h41Var5, "<set-?>");
                    nu3Var.r = h41Var5;
                    Intrinsics.checkNotNullParameter(h41Var5, "<set-?>");
                    nu3Var.I = h41Var5;
                    CoroutineScope coroutineScope2 = nu3Var.b;
                    mu3 mu3Var = new mu3(nu3Var, contextG, null);
                    EmptyCoroutineContext emptyCoroutineContext2 = EmptyCoroutineContext.INSTANCE;
                    Intrinsics.checkNotNullParameter(coroutineScope2, str9);
                    Intrinsics.checkNotNullParameter(emptyCoroutineContext2, str7);
                    Intrinsics.checkNotNullParameter(mu3Var, str8);
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope2, emptyCoroutineContext2, null, new ws3(mu3Var, null), 2, null);
                    return p005kotlin.Unit.INSTANCE;
                }
                z14 = false;
                z15 = z14;
                nu3Var.S = z15;
                nu3Var.u = z5;
                nu3Var.L = i2;
                nu3Var.v = z14;
                nu3Var.x = z7;
                contextG = nu3Var.P.g();
                if (contextG == null) {
                    contextG = nu3Var.a;
                }
                Intrinsics.checkNotNullParameter(h41Var5, "<set-?>");
                nu3Var.r = h41Var5;
                Intrinsics.checkNotNullParameter(h41Var5, "<set-?>");
                nu3Var.I = h41Var5;
                CoroutineScope coroutineScope3 = nu3Var.b;
                mu3 mu3Var2 = new mu3(nu3Var, contextG, null);
                EmptyCoroutineContext emptyCoroutineContext3 = EmptyCoroutineContext.INSTANCE;
                Intrinsics.checkNotNullParameter(coroutineScope3, str9);
                Intrinsics.checkNotNullParameter(emptyCoroutineContext3, str7);
                Intrinsics.checkNotNullParameter(mu3Var2, str8);
                BuildersKt__Builders_commonKt.launch$default(coroutineScope3, emptyCoroutineContext3, null, new ws3(mu3Var2, null), 2, null);
                return p005kotlin.Unit.INSTANCE;
            }
            if (i5 != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            z8 = ku3Var2.i;
            z9 = ku3Var2.h;
            z10 = ku3Var2.g;
            i3 = ku3Var2.j;
            z11 = ku3Var2.f;
            h41Var2 = (h41) ku3Var2.b;
            nu3Var2 = ku3Var2.a;
            p005kotlin.ResultKt.throwOnFailure(objA);
            str7 = "context";
        }
        if (!((Boolean) objA).booleanValue()) {
            return p005kotlin.Unit.INSTANCE;
        }
        i2 = i3;
        z5 = z11;
        nu3Var = nu3Var2;
        z6 = z10;
        z7 = z9;
        h41 h41Var6 = h41Var2;
        if (z6) {
            z12 = false;
        } else {
            r31Var5 = nu3Var.Y;
            if (r31Var5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("previousWebView");
                r31Var5 = null;
            }
            if (r31Var5.o.get()) {
                z12 = true;
            } else {
                z12 = false;
            }
        }
        nu3Var.R = z12;
        if (z8) {
            z13 = false;
        } else {
            r31Var4 = nu3Var.Y;
            if (r31Var4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("previousWebView");
                r31Var4 = null;
            }
            if (r31Var4.o.get()) {
                z13 = true;
            } else {
                z13 = false;
            }
        }
        nu3Var.Z = z13;
        r31Var2 = nu3Var.Y;
        if (r31Var2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previousWebView");
            r31Var2 = null;
        }
        if (!r31Var2.o.get()) {
            r31Var3 = nu3Var.Y;
            if (r31Var3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("previousWebView");
                r31Var3 = null;
            }
            z14 = false;
            if (!Intrinsics.areEqual(r31Var3.e(), new v14(u14.FULLSCREEN, 0, 0, 14))) {
                z15 = true;
            }
            nu3Var.S = z15;
            nu3Var.u = z5;
            nu3Var.L = i2;
            nu3Var.v = z14;
            nu3Var.x = z7;
            contextG = nu3Var.P.g();
            if (contextG == null) {
                contextG = nu3Var.a;
            }
            Intrinsics.checkNotNullParameter(h41Var6, "<set-?>");
            nu3Var.r = h41Var6;
            Intrinsics.checkNotNullParameter(h41Var6, "<set-?>");
            nu3Var.I = h41Var6;
            CoroutineScope coroutineScope4 = nu3Var.b;
            mu3 mu3Var3 = new mu3(nu3Var, contextG, null);
            EmptyCoroutineContext emptyCoroutineContext4 = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope4, str9);
            Intrinsics.checkNotNullParameter(emptyCoroutineContext4, str7);
            Intrinsics.checkNotNullParameter(mu3Var3, str8);
            BuildersKt__Builders_commonKt.launch$default(coroutineScope4, emptyCoroutineContext4, null, new ws3(mu3Var3, null), 2, null);
            return p005kotlin.Unit.INSTANCE;
        }
        z14 = false;
        z15 = z14;
        nu3Var.S = z15;
        nu3Var.u = z5;
        nu3Var.L = i2;
        nu3Var.v = z14;
        nu3Var.x = z7;
        contextG = nu3Var.P.g();
        if (contextG == null) {
            contextG = nu3Var.a;
        }
        Intrinsics.checkNotNullParameter(h41Var6, "<set-?>");
        nu3Var.r = h41Var6;
        Intrinsics.checkNotNullParameter(h41Var6, "<set-?>");
        nu3Var.I = h41Var6;
        CoroutineScope coroutineScope5 = nu3Var.b;
        mu3 mu3Var4 = new mu3(nu3Var, contextG, null);
        EmptyCoroutineContext emptyCoroutineContext5 = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope5, str9);
        Intrinsics.checkNotNullParameter(emptyCoroutineContext5, str7);
        Intrinsics.checkNotNullParameter(mu3Var4, str8);
        BuildersKt__Builders_commonKt.launch$default(coroutineScope5, emptyCoroutineContext5, null, new ws3(mu3Var4, null), 2, null);
        return p005kotlin.Unit.INSTANCE;
        v01 v01Var = (v01) objA;
        if (v01Var instanceof i01) {
            xs3.a((i01) v01Var, false);
            return p005kotlin.Unit.INSTANCE;
        }
        if (!(v01Var instanceof q01)) {
            throw new p005kotlin.NoWhenBranchMatchedException();
        }
        h41Var = (h41) ((q01) v01Var).b;
        r31 r31Var7 = h41Var.a;
        pu3 pu3Var = nu3Var.W;
        nr1 nr1VarC = r31Var7.c();
        a04 km0Var = nr1VarC instanceof a04 ? (a04) nr1VarC : null;
        if (km0Var == null) {
            km0Var = new km0(r31Var7);
        }
        ku3Var2.a = nu3Var;
        ku3Var2.b = str6;
        ku3Var2.c = str4;
        ku3Var2.d = str5;
        ku3Var2.e = h41Var;
        ku3Var2.f = z5;
        ku3Var2.j = i2;
        ku3Var2.g = z6;
        ku3Var2.h = z7;
        ku3Var2.i = z8;
        ku3Var2.m = 2;
        if (pu3Var.a(km0Var, ku3Var2) != coroutine_suspended) {
            if (str6 != null) {
            }
            z8 = z16;
            ex0Var = nu3Var.e;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:should_show_two_piece_activity_before_load", C3510b4.i.W);
            if (!((Boolean) ex0Var.a("gads:should_show_two_piece_activity_before_load", Boolean.TRUE, yr.b)).booleanValue()) {
                CoroutineScope coroutineScope6 = nu3Var.d;
                h41 h41Var7 = h41Var;
                lu3 lu3Var2 = new lu3(nu3Var, h41Var7, str6, str4, str5, null);
                h41Var2 = h41Var7;
                EmptyCoroutineContext emptyCoroutineContext6 = EmptyCoroutineContext.INSTANCE;
                str9 = str9;
                Intrinsics.checkNotNullParameter(coroutineScope6, str9);
                str7 = "context";
                Intrinsics.checkNotNullParameter(emptyCoroutineContext6, str7);
                str8 = str8;
                Intrinsics.checkNotNullParameter(lu3Var2, str8);
                BuildersKt__Builders_commonKt.launch$default(coroutineScope6, emptyCoroutineContext6, null, new ws3(lu3Var2, null), 2, null);
            } else {
                String str13 = str4;
                h41Var2 = h41Var;
                str7 = r13;
                r31 r31Var8 = h41Var2.a;
                ku3Var2.a = nu3Var;
                ku3Var2.b = h41Var2;
                ku3Var2.c = null;
                ku3Var2.d = null;
                ku3Var2.e = null;
                ku3Var2.f = z5;
                ku3Var2.j = i2;
                ku3Var2.g = z6;
                ku3Var2.h = z7;
                ku3Var2.i = z8;
                ku3Var2.m = 3;
                objA = nu3Var.a(r31Var8, str6, str13, str5, ku3Var2);
                if (objA != coroutine_suspended) {
                    z9 = z7;
                    z10 = z6;
                    nu3Var2 = nu3Var;
                    i3 = i2;
                    z11 = z5;
                    if (!((Boolean) objA).booleanValue()) {
                        return p005kotlin.Unit.INSTANCE;
                    }
                    i2 = i3;
                    z5 = z11;
                    nu3Var = nu3Var2;
                    z6 = z10;
                    z7 = z9;
                }
            }
            h41 h41Var8 = h41Var2;
            if (z6) {
                z12 = false;
            } else {
                r31Var5 = nu3Var.Y;
                if (r31Var5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("previousWebView");
                    r31Var5 = null;
                }
                if (r31Var5.o.get()) {
                    z12 = true;
                } else {
                    z12 = false;
                }
            }
            nu3Var.R = z12;
            if (z8) {
                z13 = false;
            } else {
                r31Var4 = nu3Var.Y;
                if (r31Var4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("previousWebView");
                    r31Var4 = null;
                }
                if (r31Var4.o.get()) {
                    z13 = true;
                } else {
                    z13 = false;
                }
            }
            nu3Var.Z = z13;
            r31Var2 = nu3Var.Y;
            if (r31Var2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("previousWebView");
                r31Var2 = null;
            }
            if (!r31Var2.o.get()) {
                r31Var3 = nu3Var.Y;
                if (r31Var3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("previousWebView");
                    r31Var3 = null;
                }
                z14 = false;
                if (!Intrinsics.areEqual(r31Var3.e(), new v14(u14.FULLSCREEN, 0, 0, 14))) {
                    z15 = true;
                }
                nu3Var.S = z15;
                nu3Var.u = z5;
                nu3Var.L = i2;
                nu3Var.v = z14;
                nu3Var.x = z7;
                contextG = nu3Var.P.g();
                if (contextG == null) {
                    contextG = nu3Var.a;
                }
                Intrinsics.checkNotNullParameter(h41Var8, "<set-?>");
                nu3Var.r = h41Var8;
                Intrinsics.checkNotNullParameter(h41Var8, "<set-?>");
                nu3Var.I = h41Var8;
                CoroutineScope coroutineScope7 = nu3Var.b;
                mu3 mu3Var5 = new mu3(nu3Var, contextG, null);
                EmptyCoroutineContext emptyCoroutineContext7 = EmptyCoroutineContext.INSTANCE;
                Intrinsics.checkNotNullParameter(coroutineScope7, str9);
                Intrinsics.checkNotNullParameter(emptyCoroutineContext7, str7);
                Intrinsics.checkNotNullParameter(mu3Var5, str8);
                BuildersKt__Builders_commonKt.launch$default(coroutineScope7, emptyCoroutineContext7, null, new ws3(mu3Var5, null), 2, null);
                return p005kotlin.Unit.INSTANCE;
            }
            z14 = false;
            z15 = z14;
            nu3Var.S = z15;
            nu3Var.u = z5;
            nu3Var.L = i2;
            nu3Var.v = z14;
            nu3Var.x = z7;
            contextG = nu3Var.P.g();
            if (contextG == null) {
                contextG = nu3Var.a;
            }
            Intrinsics.checkNotNullParameter(h41Var8, "<set-?>");
            nu3Var.r = h41Var8;
            Intrinsics.checkNotNullParameter(h41Var8, "<set-?>");
            nu3Var.I = h41Var8;
            CoroutineScope coroutineScope8 = nu3Var.b;
            mu3 mu3Var6 = new mu3(nu3Var, contextG, null);
            EmptyCoroutineContext emptyCoroutineContext8 = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope8, str9);
            Intrinsics.checkNotNullParameter(emptyCoroutineContext8, str7);
            Intrinsics.checkNotNullParameter(mu3Var6, str8);
            BuildersKt__Builders_commonKt.launch$default(coroutineScope8, emptyCoroutineContext8, null, new ws3(mu3Var6, null), 2, null);
            return p005kotlin.Unit.INSTANCE;
        }
        return coroutine_suspended;
    }

    @Override // kotlin.ez0, kotlin.yy0
    public final Object b(Continuation continuation) {
        return a(this, continuation);
    }

    @Override // kotlin.yy0
    public final Object c(Continuation continuation) {
        return b(this, continuation);
    }
}

package kotlin;

import android.net.Uri;
import android.os.SystemClock;
import com.google.android.libraries.ads.mobile.sdk.common.FullScreenContentError;
import com.google.android.libraries.ads.mobile.sdk.common.MediationAdError;
import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardItem;
import com.google.android.libraries.ads.mobile.sdk.rewarded.ServerSideVerificationOptions;
import com.ironsource.C3510b4;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.reflect.KProperty;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class lt3 implements ai1, h73 {
    public final g83 a;
    public final du1 b;
    public final rb c;
    public final d63 d;
    public final Optional e;
    public final ec3 f;
    public final i2 g;
    public final ks3 h;
    public final int i;
    public final tx j;
    public final bc3 k;
    public final qs0 l;
    public final eo2 m;
    public final cw2 n;
    public final vn o;
    public final Set p;
    public final ex0 q;
    public final t91 r;
    public final p02 s;

    public lt3(g83 rootTraceCreator, du1 macroExpander, rb adSpamClient, d63 retryingUrlPinger, Optional view, ec3 serverTransaction, i2 adConfiguration, ks3 traceMetaSet, int i, tx clock, bc3 serverSideVerificationOptionsHolder, qs0 firebaseAnalyticsEventHandler, eo2 placementIdWrapper, dw2 adEventEmitterProvider, vn appStatsTracker, Set requestTypes, ex0 flags, t91 impressionDataWrapper) {
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(macroExpander, "macroExpander");
        Intrinsics.checkNotNullParameter(adSpamClient, "adSpamClient");
        Intrinsics.checkNotNullParameter(retryingUrlPinger, "retryingUrlPinger");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(serverTransaction, "serverTransaction");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(serverSideVerificationOptionsHolder, "serverSideVerificationOptionsHolder");
        Intrinsics.checkNotNullParameter(firebaseAnalyticsEventHandler, "firebaseAnalyticsEventHandler");
        Intrinsics.checkNotNullParameter(placementIdWrapper, "placementIdWrapper");
        Intrinsics.checkNotNullParameter(adEventEmitterProvider, "adEventEmitterProvider");
        Intrinsics.checkNotNullParameter(appStatsTracker, "appStatsTracker");
        Intrinsics.checkNotNullParameter(requestTypes, "requestTypes");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(impressionDataWrapper, "impressionDataWrapper");
        this.a = rootTraceCreator;
        this.b = macroExpander;
        this.c = adSpamClient;
        this.d = retryingUrlPinger;
        this.e = view;
        this.f = serverTransaction;
        this.g = adConfiguration;
        this.h = traceMetaSet;
        this.i = i;
        this.j = clock;
        this.k = serverSideVerificationOptionsHolder;
        this.l = firebaseAnalyticsEventHandler;
        this.m = placementIdWrapper;
        this.n = adEventEmitterProvider;
        this.o = appStatsTracker;
        this.p = requestTypes;
        this.q = flags;
        this.r = impressionDataWrapper;
        this.s = new p02(null);
    }

    public static void a(lt3 lt3Var, List uris) {
        Boolean bool = Boolean.FALSE;
        d63 d63Var = lt3Var.d;
        d63Var.getClass();
        Intrinsics.checkNotNullParameter(uris, "uris");
        c63.a(d63Var.c, uris, d63Var.a, d63Var.b, null, bool, 32);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    @Override // kotlin.ai1
    public final Object a(FullScreenContentError fullScreenContentError, Continuation continuation) {
        ft3 ft3Var;
        lt3 lt3Var;
        if (continuation instanceof ft3) {
            ft3Var = (ft3) continuation;
            int i = ft3Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                ft3Var.d = i - Integer.MIN_VALUE;
            } else {
                ft3Var = new ft3(this, continuation);
            }
        } else {
            ft3Var = new ft3(this, continuation);
        }
        Object obj = ft3Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ft3Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            MediationAdError mediationAdError = fullScreenContentError.getMediationAdError();
            int iIntValue = mediationAdError != null ? mediationAdError.getCode().intValue() : fullScreenContentError.getCode().getValue();
            List list = this.g.X;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String string = ((Uri) it.next()).toString();
                Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                arrayList.add(Uri.parse(StringsKt.replace$default(string, "@gw_mpe@", "2." + iIntValue, false, 4, (Object) null)));
            }
            du1 du1Var = this.b;
            ec3 ec3Var = this.f;
            i2 i2Var = this.g;
            Integer numBoxInt = Boxing.boxInt(this.i);
            ft3Var.a = this;
            ft3Var.d = 1;
            Object objA = du1Var.a(arrayList, ec3Var, i2Var, (4080 & 8) != 0 ? null : numBoxInt, (4080 & 16) != 0 ? null : null, (4080 & 32) != 0 ? null : null, (4080 & 64) != 0 ? "" : null, (4080 & 128) != 0 ? null : null, (4080 & 256) != 0 ? null : null, (4080 & 512) != 0 ? null : null, (4080 & 1024) != 0 ? null : null, (4080 & 2048) != 0 ? null : null, ft3Var);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
            obj = objA;
            lt3Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            lt3Var = ft3Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        a(lt3Var, (List) obj);
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.h73
    public final Object a(RewardItem rewardItem, Continuation continuation) {
        du1 du1Var = this.b;
        List uris = this.g.g0;
        this.j.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        bc3 bc3Var = this.k;
        tn3 tn3Var = bc3Var.a;
        KProperty[] kPropertyArr = bc3.b;
        ServerSideVerificationOptions serverSideVerificationOptions = (ServerSideVerificationOptions) tn3Var.getValue(bc3Var, kPropertyArr[0]);
        String userId = serverSideVerificationOptions != null ? serverSideVerificationOptions.getUserId() : null;
        bc3 bc3Var2 = this.k;
        ServerSideVerificationOptions serverSideVerificationOptions2 = (ServerSideVerificationOptions) bc3Var2.a.getValue(bc3Var2, kPropertyArr[0]);
        String customData = serverSideVerificationOptions2 != null ? serverSideVerificationOptions2.getCustomData() : null;
        du1Var.getClass();
        Intrinsics.checkNotNullParameter(uris, "uris");
        Intrinsics.checkNotNullParameter(rewardItem, "rewardItem");
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(uris, 10));
        Iterator it = uris.iterator();
        while (it.hasNext()) {
            String string = ((Uri) it.next()).toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            String str = "";
            String strEncode = Uri.encode(userId == null ? "" : userId);
            Intrinsics.checkNotNullExpressionValue(strEncode, "encode(...)");
            Iterator it2 = it;
            String strReplace$default = StringsKt.replace$default(string, "@gw_rwd_userid@", strEncode, false, 4, (Object) null);
            if (customData != null) {
                str = customData;
            }
            String strEncode2 = Uri.encode(str);
            Intrinsics.checkNotNullExpressionValue(strEncode2, "encode(...)");
            String strReplace$default2 = StringsKt.replace$default(StringsKt.replace$default(strReplace$default, "@gw_rwd_custom_data@", strEncode2, false, 4, (Object) null), "@gw_tmstmp@", String.valueOf(jElapsedRealtime), false, 4, (Object) null);
            String strEncode3 = Uri.encode(rewardItem.getType());
            Intrinsics.checkNotNullExpressionValue(strEncode3, "encode(...)");
            arrayList.add(Uri.parse(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(strReplace$default2, "@gw_rwd_itm@", strEncode3, false, 4, (Object) null), "@gw_rwd_amt@", String.valueOf(rewardItem.getAmount()), false, 4, (Object) null), "@gw_sdkver@", du1Var.b, false, 4, (Object) null)));
            it = it2;
        }
        a(this, arrayList);
        return p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    @Override // kotlin.h73
    public final Object g(Continuation continuation) {
        jt3 jt3Var;
        lt3 lt3Var;
        if (continuation instanceof jt3) {
            jt3Var = (jt3) continuation;
            int i = jt3Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                jt3Var.d = i - Integer.MIN_VALUE;
            } else {
                jt3Var = new jt3(this, continuation);
            }
        } else {
            jt3Var = new jt3(this, continuation);
        }
        Object obj = jt3Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = jt3Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            du1 du1Var = this.b;
            i2 i2Var = this.g;
            List list = i2Var.j0;
            ec3 ec3Var = this.f;
            Integer numBoxInt = Boxing.boxInt(this.i);
            jt3Var.a = this;
            jt3Var.d = 1;
            Object objA = du1Var.a(list, ec3Var, i2Var, (4080 & 8) != 0 ? null : numBoxInt, (4080 & 16) != 0 ? null : null, (4080 & 32) != 0 ? null : null, (4080 & 64) != 0 ? "" : null, (4080 & 128) != 0 ? null : null, (4080 & 256) != 0 ? null : null, (4080 & 512) != 0 ? null : null, (4080 & 1024) != 0 ? null : null, (4080 & 2048) != 0 ? null : null, jt3Var);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
            obj = objA;
            lt3Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            lt3Var = jt3Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        a(lt3Var, (List) obj);
        return p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x01a1 A[Catch: all -> 0x01c1, TryCatch #1 {all -> 0x01c1, blocks: (B:93:0x018b, B:95:0x0192, B:97:0x0196, B:99:0x019a, B:100:0x019d, B:102:0x01a1, B:104:0x01a5, B:106:0x01a9, B:107:0x01aa, B:108:0x01af, B:109:0x01b0, B:110:0x01b7, B:111:0x01b8, B:112:0x01bf, B:113:0x01c0), top: B:121:0x018b }] */
    /* JADX WARN: Code duplicated, block: B:104:0x01a5 A[Catch: all -> 0x01c1, TryCatch #1 {all -> 0x01c1, blocks: (B:93:0x018b, B:95:0x0192, B:97:0x0196, B:99:0x019a, B:100:0x019d, B:102:0x01a1, B:104:0x01a5, B:106:0x01a9, B:107:0x01aa, B:108:0x01af, B:109:0x01b0, B:110:0x01b7, B:111:0x01b8, B:112:0x01bf, B:113:0x01c0), top: B:121:0x018b }] */
    /* JADX WARN: Code duplicated, block: B:106:0x01a9 A[Catch: all -> 0x01c1, TryCatch #1 {all -> 0x01c1, blocks: (B:93:0x018b, B:95:0x0192, B:97:0x0196, B:99:0x019a, B:100:0x019d, B:102:0x01a1, B:104:0x01a5, B:106:0x01a9, B:107:0x01aa, B:108:0x01af, B:109:0x01b0, B:110:0x01b7, B:111:0x01b8, B:112:0x01bf, B:113:0x01c0), top: B:121:0x018b }] */
    /* JADX WARN: Code duplicated, block: B:107:0x01aa A[Catch: all -> 0x01c1, TryCatch #1 {all -> 0x01c1, blocks: (B:93:0x018b, B:95:0x0192, B:97:0x0196, B:99:0x019a, B:100:0x019d, B:102:0x01a1, B:104:0x01a5, B:106:0x01a9, B:107:0x01aa, B:108:0x01af, B:109:0x01b0, B:110:0x01b7, B:111:0x01b8, B:112:0x01bf, B:113:0x01c0), top: B:121:0x018b }] */
    /* JADX WARN: Code duplicated, block: B:109:0x01b0 A[Catch: all -> 0x01c1, TryCatch #1 {all -> 0x01c1, blocks: (B:93:0x018b, B:95:0x0192, B:97:0x0196, B:99:0x019a, B:100:0x019d, B:102:0x01a1, B:104:0x01a5, B:106:0x01a9, B:107:0x01aa, B:108:0x01af, B:109:0x01b0, B:110:0x01b7, B:111:0x01b8, B:112:0x01bf, B:113:0x01c0), top: B:121:0x018b }] */
    /* JADX WARN: Code duplicated, block: B:111:0x01b8 A[Catch: all -> 0x01c1, TryCatch #1 {all -> 0x01c1, blocks: (B:93:0x018b, B:95:0x0192, B:97:0x0196, B:99:0x019a, B:100:0x019d, B:102:0x01a1, B:104:0x01a5, B:106:0x01a9, B:107:0x01aa, B:108:0x01af, B:109:0x01b0, B:110:0x01b7, B:111:0x01b8, B:112:0x01bf, B:113:0x01c0), top: B:121:0x018b }] */
    /* JADX WARN: Code duplicated, block: B:113:0x01c0 A[Catch: all -> 0x01c1, TRY_LEAVE, TryCatch #1 {all -> 0x01c1, blocks: (B:93:0x018b, B:95:0x0192, B:97:0x0196, B:99:0x019a, B:100:0x019d, B:102:0x01a1, B:104:0x01a5, B:106:0x01a9, B:107:0x01aa, B:108:0x01af, B:109:0x01b0, B:110:0x01b7, B:111:0x01b8, B:112:0x01bf, B:113:0x01c0), top: B:121:0x018b }] */
    /* JADX WARN: Code duplicated, block: B:35:0x00bf A[Catch: all -> 0x00ca, TRY_LEAVE, TryCatch #9 {all -> 0x00ca, blocks: (B:33:0x00b4, B:35:0x00bf), top: B:136:0x00b4 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x00e2 A[Catch: all -> 0x0111, TryCatch #0 {all -> 0x0111, blocks: (B:45:0x00db, B:47:0x00e2, B:49:0x00e6, B:51:0x00ea, B:52:0x00ed, B:54:0x00f1, B:56:0x00f5, B:58:0x00f9, B:59:0x00fa, B:60:0x00ff, B:61:0x0100, B:62:0x0107, B:63:0x0108, B:64:0x010f, B:65:0x0110), top: B:120:0x00db }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00e6 A[Catch: all -> 0x0111, TryCatch #0 {all -> 0x0111, blocks: (B:45:0x00db, B:47:0x00e2, B:49:0x00e6, B:51:0x00ea, B:52:0x00ed, B:54:0x00f1, B:56:0x00f5, B:58:0x00f9, B:59:0x00fa, B:60:0x00ff, B:61:0x0100, B:62:0x0107, B:63:0x0108, B:64:0x010f, B:65:0x0110), top: B:120:0x00db }] */
    /* JADX WARN: Code duplicated, block: B:54:0x00f1 A[Catch: all -> 0x0111, TryCatch #0 {all -> 0x0111, blocks: (B:45:0x00db, B:47:0x00e2, B:49:0x00e6, B:51:0x00ea, B:52:0x00ed, B:54:0x00f1, B:56:0x00f5, B:58:0x00f9, B:59:0x00fa, B:60:0x00ff, B:61:0x0100, B:62:0x0107, B:63:0x0108, B:64:0x010f, B:65:0x0110), top: B:120:0x00db }] */
    /* JADX WARN: Code duplicated, block: B:56:0x00f5 A[Catch: all -> 0x0111, TryCatch #0 {all -> 0x0111, blocks: (B:45:0x00db, B:47:0x00e2, B:49:0x00e6, B:51:0x00ea, B:52:0x00ed, B:54:0x00f1, B:56:0x00f5, B:58:0x00f9, B:59:0x00fa, B:60:0x00ff, B:61:0x0100, B:62:0x0107, B:63:0x0108, B:64:0x010f, B:65:0x0110), top: B:120:0x00db }] */
    /* JADX WARN: Code duplicated, block: B:58:0x00f9 A[Catch: all -> 0x0111, TryCatch #0 {all -> 0x0111, blocks: (B:45:0x00db, B:47:0x00e2, B:49:0x00e6, B:51:0x00ea, B:52:0x00ed, B:54:0x00f1, B:56:0x00f5, B:58:0x00f9, B:59:0x00fa, B:60:0x00ff, B:61:0x0100, B:62:0x0107, B:63:0x0108, B:64:0x010f, B:65:0x0110), top: B:120:0x00db }] */
    /* JADX WARN: Code duplicated, block: B:59:0x00fa A[Catch: all -> 0x0111, TryCatch #0 {all -> 0x0111, blocks: (B:45:0x00db, B:47:0x00e2, B:49:0x00e6, B:51:0x00ea, B:52:0x00ed, B:54:0x00f1, B:56:0x00f5, B:58:0x00f9, B:59:0x00fa, B:60:0x00ff, B:61:0x0100, B:62:0x0107, B:63:0x0108, B:64:0x010f, B:65:0x0110), top: B:120:0x00db }] */
    /* JADX WARN: Code duplicated, block: B:61:0x0100 A[Catch: all -> 0x0111, TryCatch #0 {all -> 0x0111, blocks: (B:45:0x00db, B:47:0x00e2, B:49:0x00e6, B:51:0x00ea, B:52:0x00ed, B:54:0x00f1, B:56:0x00f5, B:58:0x00f9, B:59:0x00fa, B:60:0x00ff, B:61:0x0100, B:62:0x0107, B:63:0x0108, B:64:0x010f, B:65:0x0110), top: B:120:0x00db }] */
    /* JADX WARN: Code duplicated, block: B:63:0x0108 A[Catch: all -> 0x0111, TryCatch #0 {all -> 0x0111, blocks: (B:45:0x00db, B:47:0x00e2, B:49:0x00e6, B:51:0x00ea, B:52:0x00ed, B:54:0x00f1, B:56:0x00f5, B:58:0x00f9, B:59:0x00fa, B:60:0x00ff, B:61:0x0100, B:62:0x0107, B:63:0x0108, B:64:0x010f, B:65:0x0110), top: B:120:0x00db }] */
    /* JADX WARN: Code duplicated, block: B:65:0x0110 A[Catch: all -> 0x0111, TRY_LEAVE, TryCatch #0 {all -> 0x0111, blocks: (B:45:0x00db, B:47:0x00e2, B:49:0x00e6, B:51:0x00ea, B:52:0x00ed, B:54:0x00f1, B:56:0x00f5, B:58:0x00f9, B:59:0x00fa, B:60:0x00ff, B:61:0x0100, B:62:0x0107, B:63:0x0108, B:64:0x010f, B:65:0x0110), top: B:120:0x00db }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:81:0x016e A[Catch: all -> 0x017a, TRY_LEAVE, TryCatch #10 {all -> 0x017a, blocks: (B:79:0x0163, B:81:0x016e), top: B:138:0x0163 }] */
    /* JADX WARN: Code duplicated, block: B:95:0x0192 A[Catch: all -> 0x01c1, TryCatch #1 {all -> 0x01c1, blocks: (B:93:0x018b, B:95:0x0192, B:97:0x0196, B:99:0x019a, B:100:0x019d, B:102:0x01a1, B:104:0x01a5, B:106:0x01a9, B:107:0x01aa, B:108:0x01af, B:109:0x01b0, B:110:0x01b7, B:111:0x01b8, B:112:0x01bf, B:113:0x01c0), top: B:121:0x018b }] */
    /* JADX WARN: Code duplicated, block: B:97:0x0196 A[Catch: all -> 0x01c1, TryCatch #1 {all -> 0x01c1, blocks: (B:93:0x018b, B:95:0x0192, B:97:0x0196, B:99:0x019a, B:100:0x019d, B:102:0x01a1, B:104:0x01a5, B:106:0x01a9, B:107:0x01aa, B:108:0x01af, B:109:0x01b0, B:110:0x01b7, B:111:0x01b8, B:112:0x01bf, B:113:0x01c0), top: B:121:0x018b }] */
    @Override // kotlin.ai1
    public final Object k(Continuation continuation) {
        ht3 ht3Var;
        boolean z;
        Object obj;
        rr3 rr3Var;
        rr3 rr3Var2;
        rr3 rr3Var3;
        rr3 rr3Var4;
        lt3 lt3Var;
        rr3 rr3Var5;
        rr3 rr3Var6;
        rr3 rr3Var7;
        boolean z2;
        rr3 rr3Var8;
        lt3 lt3Var2;
        Object obj2;
        Object obj3;
        if (continuation instanceof ht3) {
            ht3Var = (ht3) continuation;
            int i = ht3Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                ht3Var.f = i - Integer.MIN_VALUE;
            } else {
                ht3Var = new ht3(this, continuation);
            }
        } else {
            ht3Var = new ht3(this, continuation);
        }
        Object obj4 = ht3Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ht3Var.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj4);
            g83 g83Var = this.a;
            s11 s11Var = s11.CUI_NAME_PRESENTATION;
            List listEmptyList = CollectionsKt.emptyList();
            ks3 ks3Var = this.h;
            if (hs3.b().a == null) {
                tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                obj = coroutine_suspended;
                try {
                    du1 du1Var = this.b;
                    i2 i2Var = this.g;
                    List list = i2Var.V;
                    ec3 ec3Var = this.f;
                    Integer numBoxInt = Boxing.boxInt(this.i);
                    ht3Var.a = tu2VarA;
                    ht3Var.b = tu2VarA;
                    ht3Var.c = this;
                    ht3Var.f = 1;
                    rr3Var5 = tu2VarA;
                    ht3 ht3Var2 = ht3Var;
                    z2 = false;
                    try {
                        Object objA = du1Var.a(list, ec3Var, i2Var, (4080 & 8) != 0 ? null : numBoxInt, (4080 & 16) != 0 ? null : null, (4080 & 32) != 0 ? null : null, (4080 & 64) != 0 ? "" : null, (4080 & 128) != 0 ? null : null, (4080 & 256) != 0 ? null : null, (4080 & 512) != 0 ? null : null, (4080 & 1024) != 0 ? null : null, (4080 & 2048) != 0 ? null : null, ht3Var2);
                        if (objA != obj) {
                            obj4 = objA;
                            rr3Var8 = rr3Var5;
                            lt3Var2 = this;
                            a(lt3Var2, (List) obj4);
                            obj2 = p005kotlin.Unit.INSTANCE;
                            if (obj2 instanceof i01) {
                                xs3.a((i01) obj2, z2);
                            }
                            CloseableKt.closeFinally(rr3Var8, null);
                            return p005kotlin.Unit.INSTANCE;
                        }
                    } catch (Throwable th) {
                        th = th;
                        rr3Var6 = rr3Var5;
                        rr3Var7 = rr3Var6;
                        rr3Var7.b(th);
                        if (th instanceof v24) {
                            throw th;
                        }
                        if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                            rr3Var7.a(th);
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
                    }
                } catch (Throwable th2) {
                    th = th2;
                    rr3Var5 = tu2VarA;
                }
            } else {
                ht3 ht3Var3 = ht3Var;
                z = false;
                obj = coroutine_suspended;
                rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                try {
                    du1 du1Var2 = this.b;
                    i2 i2Var2 = this.g;
                    List list2 = i2Var2.V;
                    ec3 ec3Var2 = this.f;
                    Integer numBoxInt2 = Boxing.boxInt(this.i);
                    ht3Var3.a = rr3VarA;
                    ht3Var3.b = rr3VarA;
                    ht3Var3.c = this;
                    ht3Var3.f = 2;
                    rr3Var = rr3VarA;
                    try {
                        Object objA2 = du1Var2.a(list2, ec3Var2, i2Var2, (4080 & 8) != 0 ? null : numBoxInt2, (4080 & 16) != 0 ? null : null, (4080 & 32) != 0 ? null : null, (4080 & 64) != 0 ? "" : null, (4080 & 128) != 0 ? null : null, (4080 & 256) != 0 ? null : null, (4080 & 512) != 0 ? null : null, (4080 & 1024) != 0 ? null : null, (4080 & 2048) != 0 ? null : null, ht3Var3);
                        if (objA2 != obj) {
                            obj4 = objA2;
                            rr3Var4 = rr3Var;
                            lt3Var = this;
                            a(lt3Var, (List) obj4);
                            obj3 = p005kotlin.Unit.INSTANCE;
                            if (obj3 instanceof i01) {
                                xs3.a((i01) obj3, z);
                            }
                            CloseableKt.closeFinally(rr3Var4, null);
                            return p005kotlin.Unit.INSTANCE;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        rr3Var2 = rr3Var;
                        rr3Var3 = rr3Var2;
                        rr3Var3.b(th);
                        if (th instanceof v24) {
                            throw th;
                        }
                        if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                            rr3Var3.a(th);
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
                    }
                } catch (Throwable th4) {
                    th = th4;
                    rr3Var = rr3VarA;
                }
            }
            return obj;
        }
        if (i2 == 1) {
            lt3Var2 = ht3Var.c;
            rr3Var8 = ht3Var.b;
            rr3 rr3Var9 = ht3Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj4);
                rr3Var5 = rr3Var9;
                z2 = false;
                try {
                    a(lt3Var2, (List) obj4);
                    obj2 = p005kotlin.Unit.INSTANCE;
                    if (obj2 instanceof i01) {
                        xs3.a((i01) obj2, z2);
                    }
                    CloseableKt.closeFinally(rr3Var8, null);
                    return p005kotlin.Unit.INSTANCE;
                } catch (Throwable th5) {
                    th = th5;
                    rr3Var9 = rr3Var5;
                    rr3 rr3Var10 = rr3Var8;
                    rr3Var7 = rr3Var9;
                    rr3Var6 = rr3Var10;
                    try {
                        rr3Var7.b(th);
                        if (th instanceof v24) {
                            throw th;
                        }
                        if (!(th instanceof TimeoutCancellationException)) {
                            rr3Var7.a(th);
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
                    } catch (Throwable th6) {
                        try {
                            throw th6;
                        } catch (Throwable th7) {
                            CloseableKt.closeFinally(rr3Var6, th6);
                            throw th7;
                        }
                    }
                }
            } catch (Throwable th8) {
                th = th8;
                rr3 rr3Var11 = rr3Var8;
                rr3Var7 = rr3Var9;
                rr3Var6 = rr3Var11;
                rr3Var7.b(th);
                if (th instanceof v24) {
                    throw th;
                }
                if (!(th instanceof TimeoutCancellationException)) {
                    rr3Var7.a(th);
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
            }
        }
        if (i2 != 2) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        lt3Var = ht3Var.c;
        rr3Var4 = ht3Var.b;
        rr3 rr3Var12 = ht3Var.a;
        try {
            p005kotlin.ResultKt.throwOnFailure(obj4);
            rr3Var = rr3Var12;
            z = false;
            try {
                a(lt3Var, (List) obj4);
                obj3 = p005kotlin.Unit.INSTANCE;
                if (obj3 instanceof i01) {
                    xs3.a((i01) obj3, z);
                }
                CloseableKt.closeFinally(rr3Var4, null);
                return p005kotlin.Unit.INSTANCE;
            } catch (Throwable th9) {
                th = th9;
                rr3Var12 = rr3Var;
                rr3 rr3Var13 = rr3Var4;
                rr3Var3 = rr3Var12;
                rr3Var2 = rr3Var13;
                try {
                    rr3Var3.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        rr3Var3.a(th);
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
                } catch (Throwable th10) {
                    try {
                        throw th10;
                    } catch (Throwable th11) {
                        CloseableKt.closeFinally(rr3Var2, th10);
                        throw th11;
                    }
                }
            }
        } catch (Throwable th12) {
            th = th12;
            rr3 rr3Var14 = rr3Var4;
            rr3Var3 = rr3Var12;
            rr3Var2 = rr3Var14;
            rr3Var3.b(th);
            if (th instanceof v24) {
                throw th;
            }
            if (!(th instanceof TimeoutCancellationException)) {
                rr3Var3.a(th);
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
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    @Override // kotlin.h73
    public final Object l(Continuation continuation) {
        kt3 kt3Var;
        lt3 lt3Var;
        if (continuation instanceof kt3) {
            kt3Var = (kt3) continuation;
            int i = kt3Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                kt3Var.d = i - Integer.MIN_VALUE;
            } else {
                kt3Var = new kt3(this, continuation);
            }
        } else {
            kt3Var = new kt3(this, continuation);
        }
        Object obj = kt3Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = kt3Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            du1 du1Var = this.b;
            i2 i2Var = this.g;
            List list = i2Var.k0;
            ec3 ec3Var = this.f;
            Integer numBoxInt = Boxing.boxInt(this.i);
            kt3Var.a = this;
            kt3Var.d = 1;
            Object objA = du1Var.a(list, ec3Var, i2Var, (4080 & 8) != 0 ? null : numBoxInt, (4080 & 16) != 0 ? null : null, (4080 & 32) != 0 ? null : null, (4080 & 64) != 0 ? "" : null, (4080 & 128) != 0 ? null : null, (4080 & 256) != 0 ? null : null, (4080 & 512) != 0 ? null : null, (4080 & 1024) != 0 ? null : null, (4080 & 2048) != 0 ? null : null, kt3Var);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
            obj = objA;
            lt3Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            lt3Var = kt3Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        a(lt3Var, (List) obj);
        return p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:59:0x010b  */
    /* JADX WARN: Code duplicated, block: B:62:0x012c  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:62:0x012c -> B:63:0x0130). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.ai1
    public final java.lang.Object o(p005kotlin.coroutines.Continuation r24) {
        /*
            Method dump skipped, instruction units count: 434
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.lt3.o(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    @Override // kotlin.ai1
    public final Object q(Continuation continuation) {
        it3 it3Var;
        lt3 lt3Var;
        du1 du1Var;
        List list;
        ec3 ec3Var;
        i2 i2Var;
        Integer num;
        lt3 lt3Var2;
        lt3 lt3Var3;
        if (continuation instanceof it3) {
            it3Var = (it3) continuation;
            int i = it3Var.j;
            if ((i & Integer.MIN_VALUE) != 0) {
                it3Var.j = i - Integer.MIN_VALUE;
            } else {
                it3Var = new it3(this, continuation);
            }
        } else {
            it3Var = new it3(this, continuation);
        }
        Object obj = it3Var.h;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = it3Var.j;
        if (i2 != 0) {
            if (i2 == 1) {
                Integer num2 = it3Var.g;
                i2 i2Var2 = it3Var.f;
                ec3 ec3Var2 = it3Var.e;
                List list2 = it3Var.d;
                du1 du1Var2 = it3Var.c;
                lt3 lt3Var4 = it3Var.b;
                lt3Var = it3Var.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
                du1Var = du1Var2;
                list = list2;
                ec3Var = ec3Var2;
                i2Var = i2Var2;
                num = num2;
                lt3Var2 = lt3Var4;
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                lt3Var3 = it3Var.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
            }
            a(lt3Var3, (List) obj);
            return p005kotlin.Unit.INSTANCE;
        }
        p005kotlin.ResultKt.throwOnFailure(obj);
        du1 du1Var3 = this.b;
        i2 i2Var3 = this.g;
        List list3 = i2Var3.R;
        ec3 ec3Var3 = this.f;
        Integer numBoxInt = Boxing.boxInt(this.i);
        it3Var.a = this;
        it3Var.b = this;
        it3Var.c = du1Var3;
        it3Var.d = list3;
        it3Var.e = ec3Var3;
        it3Var.f = i2Var3;
        it3Var.g = numBoxInt;
        it3Var.j = 1;
        ex0 ex0Var = this.q;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:enable_impression_sequence:enabled", C3510b4.i.W);
        Object objA = !((Boolean) ex0Var.a("gads:enable_impression_sequence:enabled", Boolean.FALSE, yr.b)).booleanValue() ? null : this.s.a(ct3.a, new dt3(this, null), it3Var);
        if (objA == coroutine_suspended) {
            return coroutine_suspended;
        }
        lt3Var = this;
        du1Var = du1Var3;
        list = list3;
        ec3Var = ec3Var3;
        i2Var = i2Var3;
        obj = objA;
        num = numBoxInt;
        lt3Var2 = lt3Var;
        t91 t91Var = lt3Var.r;
        it3Var.a = lt3Var2;
        it3Var.b = null;
        it3Var.c = null;
        it3Var.d = null;
        it3Var.e = null;
        it3Var.f = null;
        it3Var.g = null;
        it3Var.j = 2;
        ec3 ec3Var4 = ec3Var;
        lt3 lt3Var5 = lt3Var2;
        List list4 = list;
        it3 it3Var2 = it3Var;
        lt3Var3 = lt3Var5;
        Object objA2 = du1Var.a(list4, ec3Var4, i2Var, (4080 & 8) != 0 ? null : num, (4080 & 16) != 0 ? null : null, (4080 & 32) != 0 ? null : null, (4080 & 64) != 0 ? "" : null, (4080 & 128) != 0 ? null : null, (4080 & 256) != 0 ? null : (w91) obj, (4080 & 512) != 0 ? null : t91Var, (4080 & 1024) != 0 ? null : null, (4080 & 2048) != 0 ? null : null, it3Var2);
        if (objA2 == coroutine_suspended) {
            return coroutine_suspended;
        }
        obj = objA2;
        a(lt3Var3, (List) obj);
        return p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:62:0x0140  */
    /* JADX WARN: Code duplicated, block: B:65:0x0162  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v34 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r23v0 */
    /* JADX WARN: Type inference failed for: r23v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r23v2 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:65:0x0162 -> B:66:0x0165). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.ai1
    public final java.lang.Object r(p005kotlin.coroutines.Continuation r32) {
        /*
            Method dump skipped, instruction units count: 607
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.lt3.r(kotlin.coroutines.Continuation):java.lang.Object");
    }
}

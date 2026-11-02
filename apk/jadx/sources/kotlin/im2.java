package kotlin;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import androidx.datastore.core.DataStore;
import com.google.android.libraries.ads.mobile.sdk.appopen.AppOpenAdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.iconad.IconAdRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdRequest;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.ironsource.C3510b4;
import com.ironsource.adapters.facebook.FacebookConstants;
import java.io.Closeable;
import java.io.File;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ConcurrentHashMap;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.NonCancellable;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.collections.ArraysKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.Charsets;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class im2 {
    public final r1 a;
    public final e9 b;
    public final cl2 c;
    public final tx d;
    public final Context e;
    public final xw0 f;
    public final g83 g;
    public final cw2 h;
    public final cw2 i;
    public final Mutex j;
    public volatile boolean k;
    public final ConcurrentHashMap l;

    public im2(r1 dataStore, e9 fileStore, cl2 flags, tx clock, Context context, xw0 flagValueProvider, g83 rootTraceCreator, dw2 consentStringsProvider, dw2 persistentCacheAutoRefreshManager) {
        Intrinsics.checkNotNullParameter(dataStore, "dataStore");
        Intrinsics.checkNotNullParameter(fileStore, "fileStore");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(flagValueProvider, "flagValueProvider");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(consentStringsProvider, "consentStringsProvider");
        Intrinsics.checkNotNullParameter(persistentCacheAutoRefreshManager, "persistentCacheAutoRefreshManager");
        this.a = dataStore;
        this.b = fileStore;
        this.c = flags;
        this.d = clock;
        this.e = context;
        this.f = flagValueProvider;
        this.g = rootTraceCreator;
        this.h = consentStringsProvider;
        this.i = persistentCacheAutoRefreshManager;
        this.j = MutexKt.Mutex$default(false, 1, null);
        this.l = new ConcurrentHashMap();
    }

    public static o1 a(o1 o1Var, String key, String key2, String str) {
        j9 j9Var;
        rx0 rx0Var = (rx0) o1Var.A().get(key);
        if (rx0Var == null || (j9Var = (j9) rx0Var.v().get(key2)) == null) {
            return o1Var;
        }
        List listY = j9Var.y();
        Intrinsics.checkNotNullExpressionValue(listY, "getResponsesList(...)");
        ArrayList values = new ArrayList();
        for (Object obj : listY) {
            if (!Intrinsics.areEqual(((d9) obj).x(), str)) {
                values.add(obj);
            }
        }
        vz0.a aVarU = o1Var.u();
        Intrinsics.checkNotNullExpressionValue(aVarU, "toBuilder(...)");
        n1 builder = (n1) aVarU;
        Intrinsics.checkNotNullParameter(builder, "builder");
        if (values.isEmpty()) {
            vz0.a aVarU2 = rx0Var.u();
            Intrinsics.checkNotNullExpressionValue(aVarU2, "toBuilder(...)");
            qx0 builder2 = (qx0) aVarU2;
            Intrinsics.checkNotNullParameter(builder2, "builder");
            Map mapI = builder2.i();
            Intrinsics.checkNotNullExpressionValue(mapI, "getAdResponseListsMap(...)");
            Intrinsics.checkNotNullParameter(new no0(mapI), "<this>");
            Intrinsics.checkNotNullParameter(key2, "key");
            builder2.a(key2);
            vz0 vz0VarB = builder2.b();
            Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
            rx0 value = (rx0) vz0VarB;
            if (value.v().isEmpty()) {
                Map mapI2 = builder.i();
                Intrinsics.checkNotNullExpressionValue(mapI2, "getPoolsMap(...)");
                Intrinsics.checkNotNullParameter(new no0(mapI2), "<this>");
                Intrinsics.checkNotNullParameter(key, "key");
                builder.a(key);
            } else {
                Map mapI3 = builder.i();
                Intrinsics.checkNotNullExpressionValue(mapI3, "getPoolsMap(...)");
                Intrinsics.checkNotNullParameter(new no0(mapI3), "<this>");
                Intrinsics.checkNotNullParameter(key, "key");
                Intrinsics.checkNotNullParameter(value, "value");
                builder.a(key, value);
            }
        } else {
            Map mapI4 = builder.i();
            Intrinsics.checkNotNullExpressionValue(mapI4, "getPoolsMap(...)");
            no0 no0Var = new no0(mapI4);
            vz0.a aVarU3 = rx0Var.u();
            Intrinsics.checkNotNullExpressionValue(aVarU3, "toBuilder(...)");
            qx0 builder3 = (qx0) aVarU3;
            Intrinsics.checkNotNullParameter(builder3, "builder");
            Map mapI5 = builder3.i();
            Intrinsics.checkNotNullExpressionValue(mapI5, "getAdResponseListsMap(...)");
            no0 no0Var2 = new no0(mapI5);
            vz0.a aVarU4 = j9Var.u();
            Intrinsics.checkNotNullExpressionValue(aVarU4, "toBuilder(...)");
            i9 builder4 = (i9) aVarU4;
            Intrinsics.checkNotNullParameter(builder4, "builder");
            List listI = builder4.i();
            Intrinsics.checkNotNullExpressionValue(listI, "getResponsesList(...)");
            Intrinsics.checkNotNullParameter(new lo0(listI), "<this>");
            builder4.h();
            List listI2 = builder4.i();
            Intrinsics.checkNotNullExpressionValue(listI2, "getResponsesList(...)");
            Intrinsics.checkNotNullParameter(new lo0(listI2), "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            builder4.a(values);
            vz0 vz0VarB2 = builder4.b();
            Intrinsics.checkNotNullExpressionValue(vz0VarB2, "build(...)");
            j9 value2 = (j9) vz0VarB2;
            Intrinsics.checkNotNullParameter(no0Var2, "<this>");
            Intrinsics.checkNotNullParameter(key2, "key");
            Intrinsics.checkNotNullParameter(value2, "value");
            builder3.a(key2, value2);
            vz0 vz0VarB3 = builder3.b();
            Intrinsics.checkNotNullExpressionValue(vz0VarB3, "build(...)");
            rx0 value3 = (rx0) vz0VarB3;
            Intrinsics.checkNotNullParameter(no0Var, "<this>");
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value3, "value");
            builder.a(key, value3);
        }
        vz0 vz0VarB4 = builder.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB4, "build(...)");
        return (o1) vz0VarB4;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x0115 A[Catch: all -> 0x0066, TryCatch #1 {all -> 0x0066, blocks: (B:14:0x0042, B:46:0x0146, B:41:0x010f, B:43:0x0115, B:47:0x0149, B:48:0x0153, B:50:0x0157, B:19:0x0061, B:40:0x0107), top: B:87:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x0149 A[Catch: all -> 0x0066, TryCatch #1 {all -> 0x0066, blocks: (B:14:0x0042, B:46:0x0146, B:41:0x010f, B:43:0x0115, B:47:0x0149, B:48:0x0153, B:50:0x0157, B:19:0x0061, B:40:0x0107), top: B:87:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x0157 A[Catch: all -> 0x0066, TRY_LEAVE, TryCatch #1 {all -> 0x0066, blocks: (B:14:0x0042, B:46:0x0146, B:41:0x010f, B:43:0x0115, B:47:0x0149, B:48:0x0153, B:50:0x0157, B:19:0x0061, B:40:0x0107), top: B:87:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0143, code lost:
    
        if (r1 == r3) goto L45;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v20 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x0143 -> B:46:0x0146). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object a(kotlin.im2 r20, kotlin.j53 r21, java.lang.String r22, java.lang.String r23, p005kotlin.coroutines.Continuation r24) {
        /*
            Method dump skipped, instruction units count: 428
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.im2.a(ads_mobile_sdk.im2, ads_mobile_sdk.j53, java.lang.String, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static Object a(im2 im2Var, jk2 jk2Var, Continuation continuation) {
        im2Var.getClass();
        return a(im2Var, jk2Var, false, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x024a A[Catch: all -> 0x0262, TryCatch #0 {all -> 0x0262, blocks: (B:87:0x022c, B:89:0x0233, B:91:0x0237, B:93:0x023b, B:94:0x023e, B:96:0x0242, B:98:0x0246, B:100:0x024a, B:101:0x024b, B:102:0x0250, B:103:0x0251, B:104:0x0258, B:105:0x0259, B:106:0x0260, B:107:0x0261), top: B:169:0x022c }] */
    /* JADX WARN: Code duplicated, block: B:101:0x024b A[Catch: all -> 0x0262, TryCatch #0 {all -> 0x0262, blocks: (B:87:0x022c, B:89:0x0233, B:91:0x0237, B:93:0x023b, B:94:0x023e, B:96:0x0242, B:98:0x0246, B:100:0x024a, B:101:0x024b, B:102:0x0250, B:103:0x0251, B:104:0x0258, B:105:0x0259, B:106:0x0260, B:107:0x0261), top: B:169:0x022c }] */
    /* JADX WARN: Code duplicated, block: B:103:0x0251 A[Catch: all -> 0x0262, TryCatch #0 {all -> 0x0262, blocks: (B:87:0x022c, B:89:0x0233, B:91:0x0237, B:93:0x023b, B:94:0x023e, B:96:0x0242, B:98:0x0246, B:100:0x024a, B:101:0x024b, B:102:0x0250, B:103:0x0251, B:104:0x0258, B:105:0x0259, B:106:0x0260, B:107:0x0261), top: B:169:0x022c }] */
    /* JADX WARN: Code duplicated, block: B:105:0x0259 A[Catch: all -> 0x0262, TryCatch #0 {all -> 0x0262, blocks: (B:87:0x022c, B:89:0x0233, B:91:0x0237, B:93:0x023b, B:94:0x023e, B:96:0x0242, B:98:0x0246, B:100:0x024a, B:101:0x024b, B:102:0x0250, B:103:0x0251, B:104:0x0258, B:105:0x0259, B:106:0x0260, B:107:0x0261), top: B:169:0x022c }] */
    /* JADX WARN: Code duplicated, block: B:107:0x0261 A[Catch: all -> 0x0262, TRY_LEAVE, TryCatch #0 {all -> 0x0262, blocks: (B:87:0x022c, B:89:0x0233, B:91:0x0237, B:93:0x023b, B:94:0x023e, B:96:0x0242, B:98:0x0246, B:100:0x024a, B:101:0x024b, B:102:0x0250, B:103:0x0251, B:104:0x0258, B:105:0x0259, B:106:0x0260, B:107:0x0261), top: B:169:0x022c }] */
    /* JADX WARN: Code duplicated, block: B:114:0x026a  */
    /* JADX WARN: Code duplicated, block: B:117:0x029b A[Catch: all -> 0x030c, TRY_LEAVE, TryCatch #5 {all -> 0x030c, blocks: (B:115:0x0273, B:117:0x029b, B:125:0x02c8), top: B:179:0x0273 }] */
    /* JADX WARN: Code duplicated, block: B:120:0x02ab  */
    /* JADX WARN: Code duplicated, block: B:124:0x02c5  */
    /* JADX WARN: Code duplicated, block: B:125:0x02c8 A[Catch: all -> 0x030c, TRY_ENTER, TRY_LEAVE, TryCatch #5 {all -> 0x030c, blocks: (B:115:0x0273, B:117:0x029b, B:125:0x02c8), top: B:179:0x0273 }] */
    /* JADX WARN: Code duplicated, block: B:128:0x02dc  */
    /* JADX WARN: Code duplicated, block: B:132:0x02ee A[Catch: all -> 0x004d, LOOP:0: B:130:0x02e8->B:132:0x02ee, LOOP_END, TryCatch #6 {all -> 0x004d, blocks: (B:15:0x0048, B:129:0x02de, B:130:0x02e8, B:132:0x02ee, B:133:0x02f8, B:135:0x02fe), top: B:181:0x0048 }] */
    /* JADX WARN: Code duplicated, block: B:135:0x02fe A[Catch: all -> 0x004d, TRY_LEAVE, TryCatch #6 {all -> 0x004d, blocks: (B:15:0x0048, B:129:0x02de, B:130:0x02e8, B:132:0x02ee, B:133:0x02f8, B:135:0x02fe), top: B:181:0x0048 }] */
    /* JADX WARN: Code duplicated, block: B:144:0x0315 A[Catch: all -> 0x0344, TryCatch #1 {all -> 0x0344, blocks: (B:142:0x030e, B:144:0x0315, B:146:0x0319, B:148:0x031d, B:149:0x0320, B:151:0x0324, B:153:0x0328, B:155:0x032c, B:156:0x032d, B:157:0x0332, B:158:0x0333, B:159:0x033a, B:160:0x033b, B:161:0x0342, B:162:0x0343), top: B:170:0x030e }] */
    /* JADX WARN: Code duplicated, block: B:146:0x0319 A[Catch: all -> 0x0344, TryCatch #1 {all -> 0x0344, blocks: (B:142:0x030e, B:144:0x0315, B:146:0x0319, B:148:0x031d, B:149:0x0320, B:151:0x0324, B:153:0x0328, B:155:0x032c, B:156:0x032d, B:157:0x0332, B:158:0x0333, B:159:0x033a, B:160:0x033b, B:161:0x0342, B:162:0x0343), top: B:170:0x030e }] */
    /* JADX WARN: Code duplicated, block: B:151:0x0324 A[Catch: all -> 0x0344, TryCatch #1 {all -> 0x0344, blocks: (B:142:0x030e, B:144:0x0315, B:146:0x0319, B:148:0x031d, B:149:0x0320, B:151:0x0324, B:153:0x0328, B:155:0x032c, B:156:0x032d, B:157:0x0332, B:158:0x0333, B:159:0x033a, B:160:0x033b, B:161:0x0342, B:162:0x0343), top: B:170:0x030e }] */
    /* JADX WARN: Code duplicated, block: B:153:0x0328 A[Catch: all -> 0x0344, TryCatch #1 {all -> 0x0344, blocks: (B:142:0x030e, B:144:0x0315, B:146:0x0319, B:148:0x031d, B:149:0x0320, B:151:0x0324, B:153:0x0328, B:155:0x032c, B:156:0x032d, B:157:0x0332, B:158:0x0333, B:159:0x033a, B:160:0x033b, B:161:0x0342, B:162:0x0343), top: B:170:0x030e }] */
    /* JADX WARN: Code duplicated, block: B:155:0x032c A[Catch: all -> 0x0344, TryCatch #1 {all -> 0x0344, blocks: (B:142:0x030e, B:144:0x0315, B:146:0x0319, B:148:0x031d, B:149:0x0320, B:151:0x0324, B:153:0x0328, B:155:0x032c, B:156:0x032d, B:157:0x0332, B:158:0x0333, B:159:0x033a, B:160:0x033b, B:161:0x0342, B:162:0x0343), top: B:170:0x030e }] */
    /* JADX WARN: Code duplicated, block: B:156:0x032d A[Catch: all -> 0x0344, TryCatch #1 {all -> 0x0344, blocks: (B:142:0x030e, B:144:0x0315, B:146:0x0319, B:148:0x031d, B:149:0x0320, B:151:0x0324, B:153:0x0328, B:155:0x032c, B:156:0x032d, B:157:0x0332, B:158:0x0333, B:159:0x033a, B:160:0x033b, B:161:0x0342, B:162:0x0343), top: B:170:0x030e }] */
    /* JADX WARN: Code duplicated, block: B:158:0x0333 A[Catch: all -> 0x0344, TryCatch #1 {all -> 0x0344, blocks: (B:142:0x030e, B:144:0x0315, B:146:0x0319, B:148:0x031d, B:149:0x0320, B:151:0x0324, B:153:0x0328, B:155:0x032c, B:156:0x032d, B:157:0x0332, B:158:0x0333, B:159:0x033a, B:160:0x033b, B:161:0x0342, B:162:0x0343), top: B:170:0x030e }] */
    /* JADX WARN: Code duplicated, block: B:160:0x033b A[Catch: all -> 0x0344, TryCatch #1 {all -> 0x0344, blocks: (B:142:0x030e, B:144:0x0315, B:146:0x0319, B:148:0x031d, B:149:0x0320, B:151:0x0324, B:153:0x0328, B:155:0x032c, B:156:0x032d, B:157:0x0332, B:158:0x0333, B:159:0x033a, B:160:0x033b, B:161:0x0342, B:162:0x0343), top: B:170:0x030e }] */
    /* JADX WARN: Code duplicated, block: B:162:0x0343 A[Catch: all -> 0x0344, TRY_LEAVE, TryCatch #1 {all -> 0x0344, blocks: (B:142:0x030e, B:144:0x0315, B:146:0x0319, B:148:0x031d, B:149:0x0320, B:151:0x0324, B:153:0x0328, B:155:0x032c, B:156:0x032d, B:157:0x0332, B:158:0x0333, B:159:0x033a, B:160:0x033b, B:161:0x0342, B:162:0x0343), top: B:170:0x030e }] */
    /* JADX WARN: Code duplicated, block: B:54:0x0133  */
    /* JADX WARN: Code duplicated, block: B:57:0x014c A[LOOP:3: B:55:0x0146->B:57:0x014c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:61:0x018b  */
    /* JADX WARN: Code duplicated, block: B:64:0x01b7 A[Catch: all -> 0x022a, TRY_LEAVE, TryCatch #4 {all -> 0x022a, blocks: (B:62:0x018f, B:64:0x01b7, B:72:0x01e6), top: B:176:0x018f }] */
    /* JADX WARN: Code duplicated, block: B:67:0x01c8  */
    /* JADX WARN: Code duplicated, block: B:71:0x01e3  */
    /* JADX WARN: Code duplicated, block: B:72:0x01e6 A[Catch: all -> 0x022a, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x022a, blocks: (B:62:0x018f, B:64:0x01b7, B:72:0x01e6), top: B:176:0x018f }] */
    /* JADX WARN: Code duplicated, block: B:75:0x01fb  */
    /* JADX WARN: Code duplicated, block: B:79:0x020d A[Catch: all -> 0x007e, LOOP:1: B:77:0x0207->B:79:0x020d, LOOP_END, TryCatch #7 {all -> 0x007e, blocks: (B:27:0x0079, B:76:0x01fd, B:77:0x0207, B:79:0x020d, B:80:0x0217, B:82:0x021d), top: B:183:0x0079 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:82:0x021d A[Catch: all -> 0x007e, TRY_LEAVE, TryCatch #7 {all -> 0x007e, blocks: (B:27:0x0079, B:76:0x01fd, B:77:0x0207, B:79:0x020d, B:80:0x0217, B:82:0x021d), top: B:183:0x0079 }] */
    /* JADX WARN: Code duplicated, block: B:89:0x0233 A[Catch: all -> 0x0262, TryCatch #0 {all -> 0x0262, blocks: (B:87:0x022c, B:89:0x0233, B:91:0x0237, B:93:0x023b, B:94:0x023e, B:96:0x0242, B:98:0x0246, B:100:0x024a, B:101:0x024b, B:102:0x0250, B:103:0x0251, B:104:0x0258, B:105:0x0259, B:106:0x0260, B:107:0x0261), top: B:169:0x022c }] */
    /* JADX WARN: Code duplicated, block: B:91:0x0237 A[Catch: all -> 0x0262, TryCatch #0 {all -> 0x0262, blocks: (B:87:0x022c, B:89:0x0233, B:91:0x0237, B:93:0x023b, B:94:0x023e, B:96:0x0242, B:98:0x0246, B:100:0x024a, B:101:0x024b, B:102:0x0250, B:103:0x0251, B:104:0x0258, B:105:0x0259, B:106:0x0260, B:107:0x0261), top: B:169:0x022c }] */
    /* JADX WARN: Code duplicated, block: B:96:0x0242 A[Catch: all -> 0x0262, TryCatch #0 {all -> 0x0262, blocks: (B:87:0x022c, B:89:0x0233, B:91:0x0237, B:93:0x023b, B:94:0x023e, B:96:0x0242, B:98:0x0246, B:100:0x024a, B:101:0x024b, B:102:0x0250, B:103:0x0251, B:104:0x0258, B:105:0x0259, B:106:0x0260, B:107:0x0261), top: B:169:0x022c }] */
    /* JADX WARN: Code duplicated, block: B:98:0x0246 A[Catch: all -> 0x0262, TryCatch #0 {all -> 0x0262, blocks: (B:87:0x022c, B:89:0x0233, B:91:0x0237, B:93:0x023b, B:94:0x023e, B:96:0x0242, B:98:0x0246, B:100:0x024a, B:101:0x024b, B:102:0x0250, B:103:0x0251, B:104:0x0258, B:105:0x0259, B:106:0x0260, B:107:0x0261), top: B:169:0x022c }] */
    public static Object a(im2 im2Var, jk2 jk2Var, boolean z, Continuation continuation) {
        ol2 ol2Var;
        int i;
        Object obj;
        jk2 value;
        Iterator it;
        int i2;
        g83 g83Var;
        s11 s11Var;
        List listEmptyList;
        ks3 ks3Var;
        rr3 rr3VarA;
        r1 r1Var;
        ql2 ql2Var;
        rr3 rr3Var;
        Closeable closeable;
        rr3 rr3VarA2;
        r1 r1Var2;
        ql2 ql2Var2;
        rr3 rr3Var2;
        Closeable closeable2;
        Iterator it2;
        int iX;
        rr3 rr3Var3;
        Closeable closeable3;
        Closeable closeable4;
        r1 r1Var3;
        pl2 pl2Var;
        Closeable closeable5;
        im2 im2Var2;
        rr3 rr3Var4;
        Iterator it3;
        Object obj2;
        rr3 rr3Var5;
        Closeable closeable6;
        Closeable closeable7;
        r1 r1Var4;
        pl2 pl2Var2;
        Closeable closeable8;
        im2 im2Var3;
        rr3 rr3Var6;
        Iterator it4;
        Object obj3;
        im2 im2Var4 = im2Var;
        if (continuation instanceof ol2) {
            ol2Var = (ol2) continuation;
            int i3 = ol2Var.g;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                ol2Var.g = i3 - Integer.MIN_VALUE;
            } else {
                ol2Var = new ol2(im2Var4, continuation);
            }
        } else {
            ol2Var = new ol2(im2Var4, continuation);
        }
        Object objA = ol2Var.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (ol2Var.g) {
            case 0:
                p005kotlin.ResultKt.throwOnFailure(objA);
                ek2 ek2Var = (ek2) ((zj2) im2Var4.i.get());
                Iterator it5 = ek2Var.g.values().iterator();
                while (it5.hasNext()) {
                    Job.DefaultImpls.cancel$default(((ko) it5.next()).h, (CancellationException) null, 1, (Object) null);
                }
                ek2Var.g.clear();
                i = (z && ((k30) ((hr) im2Var4.f).k.get()).w().w().contains(s00.API_PERSISTENT_CACHE)) ? 1 : 0;
                Flow data = ((DataStore) im2Var4.a.a.get()).getData();
                ol2Var.a = im2Var4;
                ol2Var.b = jk2Var;
                ol2Var.d = i;
                ol2Var.g = 1;
                Object objFirst = FlowKt.first(data, ol2Var);
                if (objFirst != coroutine_suspended) {
                    obj = objFirst;
                    value = jk2Var;
                    im2Var4.getClass();
                    it = ((o1) obj).A().values().iterator();
                    i2 = 0;
                    while (it.hasNext()) {
                        it2 = ((rx0) it.next()).v().values().iterator();
                        iX = 0;
                        while (it2.hasNext()) {
                            iX += ((j9) it2.next()).x();
                        }
                        i2 += iX;
                    }
                    g83Var = im2Var4.g;
                    s11Var = s11.CUI_NAME_PERSISTENT_CACHE_CLEAR;
                    listEmptyList = CollectionsKt.emptyList();
                    ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
                    if (hs3.b().a == null) {
                        rr3VarA2 = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                        try {
                            uj2 uj2VarE = hs3.a().e();
                            hk2 builder = kk2.v();
                            Intrinsics.checkNotNullExpressionValue(builder, "newBuilder(...)");
                            Intrinsics.checkNotNullParameter(builder, "builder");
                            Intrinsics.checkNotNullParameter(value, "value");
                            builder.a(value);
                            builder.a(i2);
                            vz0 vz0VarB = builder.b();
                            Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
                            uj2VarE.N = (kk2) vz0VarB;
                            if (i != 0) {
                                ol2Var.a = im2Var4;
                                ol2Var.b = rr3VarA2;
                                ol2Var.c = rr3VarA2;
                                ol2Var.g = 2;
                                objA = im2Var4.a(ol2Var);
                                if (objA != coroutine_suspended) {
                                    rr3VarA2 = rr3VarA2;
                                    closeable2 = rr3VarA2;
                                    rr3Var3 = rr3VarA2;
                                    r1Var3 = im2Var4.a;
                                    pl2Var = new pl2((String) objA);
                                    ol2Var.a = im2Var4;
                                    ol2Var.b = rr3Var3;
                                    ol2Var.c = closeable2;
                                    ol2Var.g = 3;
                                    rr3VarA2 = rr3Var3;
                                    if (r1Var3.a(pl2Var, ol2Var) != coroutine_suspended) {
                                        closeable3 = closeable2;
                                        rr3Var2 = rr3Var3;
                                        it3 = im2Var4.b.a().iterator();
                                        while (it3.hasNext()) {
                                            ((File) it3.next()).delete();
                                        }
                                        obj2 = p005kotlin.Unit.INSTANCE;
                                        if (obj2 instanceof i01) {
                                            xs3.a((i01) obj2, false);
                                            break;
                                        }
                                        CloseableKt.closeFinally(closeable3, null);
                                        return p005kotlin.Unit.INSTANCE;
                                    }
                                }
                            } else {
                                r1Var2 = im2Var4.a;
                                ql2Var2 = ql2.a;
                                ol2Var.a = im2Var4;
                                ol2Var.b = rr3VarA2;
                                ol2Var.c = rr3VarA2;
                                ol2Var.g = 4;
                                if (r1Var2.a(ql2Var2, ol2Var) != coroutine_suspended) {
                                    rr3VarA2 = rr3VarA2;
                                    rr3 rr3Var7 = rr3VarA2;
                                    rr3Var2 = rr3Var7;
                                    closeable3 = rr3Var7;
                                    it3 = im2Var4.b.a().iterator();
                                    while (it3.hasNext()) {
                                        ((File) it3.next()).delete();
                                    }
                                    obj2 = p005kotlin.Unit.INSTANCE;
                                    if (obj2 instanceof i01) {
                                        xs3.a((i01) obj2, false);
                                        break;
                                    }
                                    CloseableKt.closeFinally(closeable3, null);
                                    return p005kotlin.Unit.INSTANCE;
                                }
                            }
                            rr3VarA2 = rr3VarA2;
                            rr3VarA2 = rr3VarA2;
                        } catch (Throwable th) {
                            th = th;
                            closeable4 = rr3VarA2;
                            rr3Var4 = rr3VarA2;
                            try {
                                rr3Var4.b(th);
                                if (th instanceof v24) {
                                    throw th;
                                }
                                if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                    rr3Var4.a(th);
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
                                    CloseableKt.closeFinally(closeable4, th2);
                                    throw th3;
                                }
                            }
                        }
                    } else {
                        rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                        try {
                            uj2 uj2VarE2 = hs3.a().e();
                            hk2 builder2 = kk2.v();
                            Intrinsics.checkNotNullExpressionValue(builder2, "newBuilder(...)");
                            Intrinsics.checkNotNullParameter(builder2, "builder");
                            Intrinsics.checkNotNullParameter(value, "value");
                            builder2.a(value);
                            builder2.a(i2);
                            vz0 vz0VarB2 = builder2.b();
                            Intrinsics.checkNotNullExpressionValue(vz0VarB2, "build(...)");
                            uj2VarE2.N = (kk2) vz0VarB2;
                            if (i != 0) {
                                ol2Var.a = im2Var4;
                                ol2Var.b = rr3VarA;
                                ol2Var.c = rr3VarA;
                                ol2Var.g = 5;
                                objA = im2Var4.a(ol2Var);
                                if (objA != coroutine_suspended) {
                                    rr3VarA = rr3VarA;
                                    closeable = rr3VarA;
                                    rr3Var5 = rr3VarA;
                                    r1Var4 = im2Var4.a;
                                    pl2Var2 = new pl2((String) objA);
                                    ol2Var.a = im2Var4;
                                    ol2Var.b = rr3Var5;
                                    ol2Var.c = closeable;
                                    ol2Var.g = 6;
                                    rr3VarA = rr3Var5;
                                    if (r1Var4.a(pl2Var2, ol2Var) != coroutine_suspended) {
                                        closeable6 = closeable;
                                        rr3Var = rr3Var5;
                                        it4 = im2Var4.b.a().iterator();
                                        while (it4.hasNext()) {
                                            ((File) it4.next()).delete();
                                        }
                                        obj3 = p005kotlin.Unit.INSTANCE;
                                        if (obj3 instanceof i01) {
                                            xs3.a((i01) obj3, false);
                                            break;
                                        }
                                        CloseableKt.closeFinally(closeable6, null);
                                        return p005kotlin.Unit.INSTANCE;
                                    }
                                }
                            } else {
                                r1Var = im2Var4.a;
                                ql2Var = ql2.a;
                                ol2Var.a = im2Var4;
                                ol2Var.b = rr3VarA;
                                ol2Var.c = rr3VarA;
                                ol2Var.g = 7;
                                if (r1Var.a(ql2Var, ol2Var) != coroutine_suspended) {
                                    rr3VarA = rr3VarA;
                                    rr3 rr3Var8 = rr3VarA;
                                    rr3Var = rr3Var8;
                                    closeable6 = rr3Var8;
                                    it4 = im2Var4.b.a().iterator();
                                    while (it4.hasNext()) {
                                        ((File) it4.next()).delete();
                                    }
                                    obj3 = p005kotlin.Unit.INSTANCE;
                                    if (obj3 instanceof i01) {
                                        xs3.a((i01) obj3, false);
                                        break;
                                    }
                                    CloseableKt.closeFinally(closeable6, null);
                                    return p005kotlin.Unit.INSTANCE;
                                }
                            }
                            rr3VarA = rr3VarA;
                            rr3VarA = rr3VarA;
                        } catch (Throwable th4) {
                            th = th4;
                            closeable7 = rr3VarA;
                            rr3Var6 = rr3VarA;
                            try {
                                rr3Var6.b(th);
                                if (th instanceof v24) {
                                    throw th;
                                }
                                if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                    rr3Var6.a(th);
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
                            } catch (Throwable th5) {
                                try {
                                    throw th5;
                                } catch (Throwable th6) {
                                    CloseableKt.closeFinally(closeable7, th5);
                                    throw th6;
                                }
                            }
                        }
                    }
                }
                return coroutine_suspended;
            case 1:
                int i4 = ol2Var.d;
                value = (jk2) ol2Var.b;
                im2 im2Var5 = ol2Var.a;
                p005kotlin.ResultKt.throwOnFailure(objA);
                i = i4;
                im2Var4 = im2Var5;
                obj = objA;
                im2Var4.getClass();
                it = ((o1) obj).A().values().iterator();
                i2 = 0;
                while (it.hasNext()) {
                    it2 = ((rx0) it.next()).v().values().iterator();
                    iX = 0;
                    while (it2.hasNext()) {
                        iX += ((j9) it2.next()).x();
                    }
                    i2 += iX;
                }
                g83Var = im2Var4.g;
                s11Var = s11.CUI_NAME_PERSISTENT_CACHE_CLEAR;
                listEmptyList = CollectionsKt.emptyList();
                ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
                if (hs3.b().a == null) {
                    rr3VarA2 = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                    uj2 uj2VarE3 = hs3.a().e();
                    hk2 builder3 = kk2.v();
                    Intrinsics.checkNotNullExpressionValue(builder3, "newBuilder(...)");
                    Intrinsics.checkNotNullParameter(builder3, "builder");
                    Intrinsics.checkNotNullParameter(value, "value");
                    builder3.a(value);
                    builder3.a(i2);
                    vz0 vz0VarB3 = builder3.b();
                    Intrinsics.checkNotNullExpressionValue(vz0VarB3, "build(...)");
                    uj2VarE3.N = (kk2) vz0VarB3;
                    if (i != 0) {
                        ol2Var.a = im2Var4;
                        ol2Var.b = rr3VarA2;
                        ol2Var.c = rr3VarA2;
                        ol2Var.g = 2;
                        objA = im2Var4.a(ol2Var);
                        if (objA != coroutine_suspended) {
                            rr3VarA2 = rr3VarA2;
                            closeable2 = rr3VarA2;
                            rr3Var3 = rr3VarA2;
                            r1Var3 = im2Var4.a;
                            pl2Var = new pl2((String) objA);
                            ol2Var.a = im2Var4;
                            ol2Var.b = rr3Var3;
                            ol2Var.c = closeable2;
                            ol2Var.g = 3;
                            rr3VarA2 = rr3Var3;
                            if (r1Var3.a(pl2Var, ol2Var) != coroutine_suspended) {
                                closeable3 = closeable2;
                                rr3Var2 = rr3Var3;
                                it3 = im2Var4.b.a().iterator();
                                while (it3.hasNext()) {
                                    ((File) it3.next()).delete();
                                }
                                obj2 = p005kotlin.Unit.INSTANCE;
                                if (obj2 instanceof i01) {
                                    xs3.a((i01) obj2, false);
                                    break;
                                }
                                CloseableKt.closeFinally(closeable3, null);
                                return p005kotlin.Unit.INSTANCE;
                            }
                        }
                    } else {
                        r1Var2 = im2Var4.a;
                        ql2Var2 = ql2.a;
                        ol2Var.a = im2Var4;
                        ol2Var.b = rr3VarA2;
                        ol2Var.c = rr3VarA2;
                        ol2Var.g = 4;
                        if (r1Var2.a(ql2Var2, ol2Var) != coroutine_suspended) {
                            rr3VarA2 = rr3VarA2;
                            rr3 rr3Var9 = rr3VarA2;
                            rr3Var2 = rr3Var9;
                            closeable3 = rr3Var9;
                            it3 = im2Var4.b.a().iterator();
                            while (it3.hasNext()) {
                                ((File) it3.next()).delete();
                            }
                            obj2 = p005kotlin.Unit.INSTANCE;
                            if (obj2 instanceof i01) {
                                xs3.a((i01) obj2, false);
                                break;
                            }
                            CloseableKt.closeFinally(closeable3, null);
                            return p005kotlin.Unit.INSTANCE;
                        }
                    }
                    rr3VarA2 = rr3VarA2;
                    rr3VarA2 = rr3VarA2;
                    return coroutine_suspended;
                }
                rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                uj2 uj2VarE4 = hs3.a().e();
                hk2 builder4 = kk2.v();
                Intrinsics.checkNotNullExpressionValue(builder4, "newBuilder(...)");
                Intrinsics.checkNotNullParameter(builder4, "builder");
                Intrinsics.checkNotNullParameter(value, "value");
                builder4.a(value);
                builder4.a(i2);
                vz0 vz0VarB4 = builder4.b();
                Intrinsics.checkNotNullExpressionValue(vz0VarB4, "build(...)");
                uj2VarE4.N = (kk2) vz0VarB4;
                if (i != 0) {
                    ol2Var.a = im2Var4;
                    ol2Var.b = rr3VarA;
                    ol2Var.c = rr3VarA;
                    ol2Var.g = 5;
                    objA = im2Var4.a(ol2Var);
                    if (objA != coroutine_suspended) {
                        rr3VarA = rr3VarA;
                        closeable = rr3VarA;
                        rr3Var5 = rr3VarA;
                        r1Var4 = im2Var4.a;
                        pl2Var2 = new pl2((String) objA);
                        ol2Var.a = im2Var4;
                        ol2Var.b = rr3Var5;
                        ol2Var.c = closeable;
                        ol2Var.g = 6;
                        rr3VarA = rr3Var5;
                        if (r1Var4.a(pl2Var2, ol2Var) != coroutine_suspended) {
                            closeable6 = closeable;
                            rr3Var = rr3Var5;
                            it4 = im2Var4.b.a().iterator();
                            while (it4.hasNext()) {
                                ((File) it4.next()).delete();
                            }
                            obj3 = p005kotlin.Unit.INSTANCE;
                            if (obj3 instanceof i01) {
                                xs3.a((i01) obj3, false);
                                break;
                            }
                            CloseableKt.closeFinally(closeable6, null);
                            return p005kotlin.Unit.INSTANCE;
                        }
                    }
                } else {
                    r1Var = im2Var4.a;
                    ql2Var = ql2.a;
                    ol2Var.a = im2Var4;
                    ol2Var.b = rr3VarA;
                    ol2Var.c = rr3VarA;
                    ol2Var.g = 7;
                    if (r1Var.a(ql2Var, ol2Var) != coroutine_suspended) {
                        rr3VarA = rr3VarA;
                        rr3 rr3Var10 = rr3VarA;
                        rr3Var = rr3Var10;
                        closeable6 = rr3Var10;
                        it4 = im2Var4.b.a().iterator();
                        while (it4.hasNext()) {
                            ((File) it4.next()).delete();
                        }
                        obj3 = p005kotlin.Unit.INSTANCE;
                        if (obj3 instanceof i01) {
                            xs3.a((i01) obj3, false);
                            break;
                        }
                        CloseableKt.closeFinally(closeable6, null);
                        return p005kotlin.Unit.INSTANCE;
                    }
                }
                rr3VarA = rr3VarA;
                rr3VarA = rr3VarA;
                return coroutine_suspended;
            case 2:
                closeable2 = ol2Var.c;
                rr3Var3 = (rr3) ol2Var.b;
                im2Var4 = ol2Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(objA);
                    closeable2 = closeable2;
                    rr3Var3 = rr3Var3;
                    r1Var3 = im2Var4.a;
                    pl2Var = new pl2((String) objA);
                    ol2Var.a = im2Var4;
                    ol2Var.b = rr3Var3;
                    ol2Var.c = closeable2;
                    ol2Var.g = 3;
                    rr3VarA2 = rr3Var3;
                    if (r1Var3.a(pl2Var, ol2Var) != coroutine_suspended) {
                        closeable3 = closeable2;
                        rr3Var2 = rr3Var3;
                        it3 = im2Var4.b.a().iterator();
                        while (it3.hasNext()) {
                            ((File) it3.next()).delete();
                        }
                        obj2 = p005kotlin.Unit.INSTANCE;
                        if (obj2 instanceof i01) {
                            xs3.a((i01) obj2, false);
                            break;
                        }
                        CloseableKt.closeFinally(closeable3, null);
                        return p005kotlin.Unit.INSTANCE;
                    }
                    rr3VarA2 = rr3VarA2;
                    rr3VarA2 = rr3VarA2;
                    return coroutine_suspended;
                } catch (Throwable th7) {
                    th = th7;
                    closeable3 = closeable2;
                    rr3Var2 = rr3Var3;
                    rr3Var4 = rr3Var2;
                    closeable4 = closeable3;
                    rr3Var4.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        rr3Var4.a(th);
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
            case 3:
                closeable5 = ol2Var.c;
                rr3 rr3Var11 = (rr3) ol2Var.b;
                im2Var2 = ol2Var.a;
                rr3Var2 = rr3Var11;
                im2 im2Var6 = im2Var2;
                closeable3 = closeable5;
                im2Var4 = im2Var6;
                try {
                    p005kotlin.ResultKt.throwOnFailure(objA);
                    closeable3 = closeable3;
                    rr3Var2 = rr3Var2;
                    it3 = im2Var4.b.a().iterator();
                    while (it3.hasNext()) {
                        ((File) it3.next()).delete();
                    }
                    obj2 = p005kotlin.Unit.INSTANCE;
                    if (obj2 instanceof i01) {
                        xs3.a((i01) obj2, false);
                        break;
                    }
                    CloseableKt.closeFinally(closeable3, null);
                    return p005kotlin.Unit.INSTANCE;
                } catch (Throwable th8) {
                    th = th8;
                    rr3Var4 = rr3Var2;
                    closeable4 = closeable3;
                    rr3Var4.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        rr3Var4.a(th);
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
            case 4:
                closeable5 = ol2Var.c;
                rr3 rr3Var12 = (rr3) ol2Var.b;
                im2Var2 = ol2Var.a;
                rr3Var2 = rr3Var12;
                im2 im2Var7 = im2Var2;
                closeable3 = closeable5;
                im2Var4 = im2Var7;
                p005kotlin.ResultKt.throwOnFailure(objA);
                closeable3 = closeable3;
                rr3Var2 = rr3Var2;
                it3 = im2Var4.b.a().iterator();
                while (it3.hasNext()) {
                    ((File) it3.next()).delete();
                }
                obj2 = p005kotlin.Unit.INSTANCE;
                if (obj2 instanceof i01) {
                    xs3.a((i01) obj2, false);
                    break;
                }
                CloseableKt.closeFinally(closeable3, null);
                return p005kotlin.Unit.INSTANCE;
            case 5:
                closeable = ol2Var.c;
                rr3Var5 = (rr3) ol2Var.b;
                im2Var4 = ol2Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(objA);
                    closeable = closeable;
                    rr3Var5 = rr3Var5;
                    r1Var4 = im2Var4.a;
                    pl2Var2 = new pl2((String) objA);
                    ol2Var.a = im2Var4;
                    ol2Var.b = rr3Var5;
                    ol2Var.c = closeable;
                    ol2Var.g = 6;
                    rr3VarA = rr3Var5;
                    if (r1Var4.a(pl2Var2, ol2Var) != coroutine_suspended) {
                        closeable6 = closeable;
                        rr3Var = rr3Var5;
                        it4 = im2Var4.b.a().iterator();
                        while (it4.hasNext()) {
                            ((File) it4.next()).delete();
                        }
                        obj3 = p005kotlin.Unit.INSTANCE;
                        if (obj3 instanceof i01) {
                            xs3.a((i01) obj3, false);
                            break;
                        }
                        CloseableKt.closeFinally(closeable6, null);
                        return p005kotlin.Unit.INSTANCE;
                    }
                    rr3VarA = rr3VarA;
                    rr3VarA = rr3VarA;
                    return coroutine_suspended;
                } catch (Throwable th9) {
                    th = th9;
                    closeable6 = closeable;
                    rr3Var = rr3Var5;
                    rr3Var6 = rr3Var;
                    closeable7 = closeable6;
                    rr3Var6.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        rr3Var6.a(th);
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
            case 6:
                closeable8 = ol2Var.c;
                rr3 rr3Var13 = (rr3) ol2Var.b;
                im2Var3 = ol2Var.a;
                rr3Var = rr3Var13;
                im2 im2Var8 = im2Var3;
                closeable6 = closeable8;
                im2Var4 = im2Var8;
                try {
                    p005kotlin.ResultKt.throwOnFailure(objA);
                    closeable6 = closeable6;
                    rr3Var = rr3Var;
                    it4 = im2Var4.b.a().iterator();
                    while (it4.hasNext()) {
                        ((File) it4.next()).delete();
                    }
                    obj3 = p005kotlin.Unit.INSTANCE;
                    if (obj3 instanceof i01) {
                        xs3.a((i01) obj3, false);
                        break;
                    }
                    CloseableKt.closeFinally(closeable6, null);
                    return p005kotlin.Unit.INSTANCE;
                } catch (Throwable th10) {
                    th = th10;
                    rr3Var6 = rr3Var;
                    closeable7 = closeable6;
                    rr3Var6.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        rr3Var6.a(th);
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
            case 7:
                closeable8 = ol2Var.c;
                rr3 rr3Var14 = (rr3) ol2Var.b;
                im2Var3 = ol2Var.a;
                rr3Var = rr3Var14;
                im2 im2Var9 = im2Var3;
                closeable6 = closeable8;
                im2Var4 = im2Var9;
                p005kotlin.ResultKt.throwOnFailure(objA);
                closeable6 = closeable6;
                rr3Var = rr3Var;
                it4 = im2Var4.b.a().iterator();
                while (it4.hasNext()) {
                    ((File) it4.next()).delete();
                }
                obj3 = p005kotlin.Unit.INSTANCE;
                if (obj3 instanceof i01) {
                    xs3.a((i01) obj3, false);
                    break;
                }
                CloseableKt.closeFinally(closeable6, null);
                return p005kotlin.Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0158 A[Catch: all -> 0x0178, TryCatch #6 {all -> 0x0178, blocks: (B:92:0x0142, B:94:0x0149, B:96:0x014d, B:98:0x0151, B:99:0x0154, B:101:0x0158, B:103:0x015c, B:105:0x0160, B:106:0x0161, B:107:0x0166, B:108:0x0167, B:109:0x016e, B:110:0x016f, B:111:0x0176, B:112:0x0177), top: B:124:0x0142 }] */
    /* JADX WARN: Code duplicated, block: B:103:0x015c A[Catch: all -> 0x0178, TryCatch #6 {all -> 0x0178, blocks: (B:92:0x0142, B:94:0x0149, B:96:0x014d, B:98:0x0151, B:99:0x0154, B:101:0x0158, B:103:0x015c, B:105:0x0160, B:106:0x0161, B:107:0x0166, B:108:0x0167, B:109:0x016e, B:110:0x016f, B:111:0x0176, B:112:0x0177), top: B:124:0x0142 }] */
    /* JADX WARN: Code duplicated, block: B:105:0x0160 A[Catch: all -> 0x0178, TryCatch #6 {all -> 0x0178, blocks: (B:92:0x0142, B:94:0x0149, B:96:0x014d, B:98:0x0151, B:99:0x0154, B:101:0x0158, B:103:0x015c, B:105:0x0160, B:106:0x0161, B:107:0x0166, B:108:0x0167, B:109:0x016e, B:110:0x016f, B:111:0x0176, B:112:0x0177), top: B:124:0x0142 }] */
    /* JADX WARN: Code duplicated, block: B:106:0x0161 A[Catch: all -> 0x0178, TryCatch #6 {all -> 0x0178, blocks: (B:92:0x0142, B:94:0x0149, B:96:0x014d, B:98:0x0151, B:99:0x0154, B:101:0x0158, B:103:0x015c, B:105:0x0160, B:106:0x0161, B:107:0x0166, B:108:0x0167, B:109:0x016e, B:110:0x016f, B:111:0x0176, B:112:0x0177), top: B:124:0x0142 }] */
    /* JADX WARN: Code duplicated, block: B:108:0x0167 A[Catch: all -> 0x0178, TryCatch #6 {all -> 0x0178, blocks: (B:92:0x0142, B:94:0x0149, B:96:0x014d, B:98:0x0151, B:99:0x0154, B:101:0x0158, B:103:0x015c, B:105:0x0160, B:106:0x0161, B:107:0x0166, B:108:0x0167, B:109:0x016e, B:110:0x016f, B:111:0x0176, B:112:0x0177), top: B:124:0x0142 }] */
    /* JADX WARN: Code duplicated, block: B:110:0x016f A[Catch: all -> 0x0178, TryCatch #6 {all -> 0x0178, blocks: (B:92:0x0142, B:94:0x0149, B:96:0x014d, B:98:0x0151, B:99:0x0154, B:101:0x0158, B:103:0x015c, B:105:0x0160, B:106:0x0161, B:107:0x0166, B:108:0x0167, B:109:0x016e, B:110:0x016f, B:111:0x0176, B:112:0x0177), top: B:124:0x0142 }] */
    /* JADX WARN: Code duplicated, block: B:112:0x0177 A[Catch: all -> 0x0178, TRY_LEAVE, TryCatch #6 {all -> 0x0178, blocks: (B:92:0x0142, B:94:0x0149, B:96:0x014d, B:98:0x0151, B:99:0x0154, B:101:0x0158, B:103:0x015c, B:105:0x0160, B:106:0x0161, B:107:0x0166, B:108:0x0167, B:109:0x016e, B:110:0x016f, B:111:0x0176, B:112:0x0177), top: B:124:0x0142 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00b5 A[Catch: all -> 0x0050, TRY_LEAVE, TryCatch #0 {all -> 0x0050, blocks: (B:22:0x004c, B:35:0x009c, B:42:0x00b0, B:44:0x00b5, B:41:0x00aa), top: B:119:0x002b }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Code duplicated, block: B:88:0x0137 A[Catch: all -> 0x003a, TRY_LEAVE, TryCatch #9 {all -> 0x003a, blocks: (B:13:0x0035, B:79:0x011e, B:86:0x0132, B:88:0x0137, B:85:0x012c), top: B:121:0x0035 }] */
    /* JADX WARN: Code duplicated, block: B:94:0x0149 A[Catch: all -> 0x0178, TryCatch #6 {all -> 0x0178, blocks: (B:92:0x0142, B:94:0x0149, B:96:0x014d, B:98:0x0151, B:99:0x0154, B:101:0x0158, B:103:0x015c, B:105:0x0160, B:106:0x0161, B:107:0x0166, B:108:0x0167, B:109:0x016e, B:110:0x016f, B:111:0x0176, B:112:0x0177), top: B:124:0x0142 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [ads_mobile_sdk.r1] */
    /* JADX WARN: Type inference failed for: r0v9, types: [ads_mobile_sdk.r1] */
    /* JADX WARN: Type inference failed for: r1v0, types: [ads_mobile_sdk.om2] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v12, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v34 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v2, types: [ads_mobile_sdk.xl2, kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r3v27 */
    /* JADX WARN: Type inference failed for: r3v28 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v30 */
    /* JADX WARN: Type inference failed for: r3v31 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static Object a(im2 im2Var, om2 om2Var, Continuation continuation) {
        ?? xl2Var;
        ?? r2;
        ?? r1;
        rr3 rr3VarA;
        rr3 rr3Var;
        rr3 rr3Var2;
        rr3 rr3Var3;
        rr3 rr3Var4;
        Object j01Var;
        ?? r3 = om2Var;
        if (continuation instanceof xl2) {
            xl2 xl2Var2 = (xl2) continuation;
            int i = xl2Var2.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                xl2Var2.e = i - Integer.MIN_VALUE;
                xl2Var = xl2Var2;
            } else {
                xl2Var = new xl2(im2Var, continuation);
            }
        } else {
            xl2Var = new xl2(im2Var, continuation);
        }
        Object obj = xl2Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = xl2Var.e;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                g83 g83Var = im2Var.g;
                s11 s11Var = s11.CUI_NAME_PERSISTENT_CACHE_METADATA_WRITE;
                List listEmptyList = CollectionsKt.emptyList();
                ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
                if (hs3.b().a == null) {
                    tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                    try {
                        ?? r0 = im2Var.a;
                        yl2 yl2Var = new yl2(r3);
                        xl2Var.a = tu2VarA;
                        xl2Var.b = tu2VarA;
                        xl2Var.e = 1;
                        if (r0.a(yl2Var, xl2Var) != coroutine_suspended) {
                            tu2 tu2Var = tu2VarA;
                            rr3Var4 = tu2Var;
                            rr3Var3 = tu2Var;
                            j01Var = new q01(p005kotlin.Unit.INSTANCE);
                            r3 = rr3Var3;
                            xl2Var = rr3Var4;
                            if (j01Var instanceof i01) {
                                xs3.a((i01) j01Var, false);
                            }
                            CloseableKt.closeFinally(r3, null);
                        }
                    } catch (Exception e) {
                        e = e;
                        rr3Var3 = tu2VarA;
                        rr3Var4 = rr3Var3;
                        j01Var = new j01(e, null, null, 6);
                        r3 = rr3Var3;
                        xl2Var = rr3Var4;
                    } catch (Throwable th) {
                        th = th;
                        r1 = tu2VarA;
                        r2 = tu2VarA;
                        try {
                            r2.b(th);
                            if (th instanceof v24) {
                                throw th;
                            }
                            if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                r2.a(th);
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
                                CloseableKt.closeFinally(r1, th2);
                                throw th3;
                            }
                        }
                    }
                } else {
                    rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                    try {
                        ?? r4 = im2Var.a;
                        yl2 yl2Var2 = new yl2(r3);
                        xl2Var.a = rr3VarA;
                        xl2Var.b = rr3VarA;
                        xl2Var.e = 2;
                        if (r4.a(yl2Var2, xl2Var) != coroutine_suspended) {
                            rr3Var = rr3VarA;
                            rr3Var2 = rr3Var;
                            j01Var = new q01(p005kotlin.Unit.INSTANCE);
                            if (j01Var instanceof i01) {
                                xs3.a((i01) j01Var, false);
                            }
                            CloseableKt.closeFinally(rr3Var, null);
                        }
                    } catch (Exception e2) {
                        e = e2;
                        rr3Var = rr3VarA;
                        rr3Var2 = rr3Var;
                        j01Var = new j01(e, null, null, 6);
                    } catch (Throwable th4) {
                        th = th4;
                        rr3Var = rr3VarA;
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
                }
                return coroutine_suspended;
            }
            if (i2 == 1) {
                rr3Var3 = xl2Var.b;
                rr3Var4 = xl2Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    rr3Var3 = rr3Var3;
                    rr3Var4 = rr3Var4;
                    j01Var = new q01(p005kotlin.Unit.INSTANCE);
                    r3 = rr3Var3;
                    xl2Var = rr3Var4;
                } catch (Exception e3) {
                    e = e3;
                    j01Var = new j01(e, null, null, 6);
                    r3 = rr3Var3;
                    xl2Var = rr3Var4;
                }
                if (j01Var instanceof i01) {
                    xs3.a((i01) j01Var, false);
                }
                CloseableKt.closeFinally(r3, null);
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                rr3Var = xl2Var.b;
                rr3Var2 = xl2Var.a;
                try {
                    try {
                        p005kotlin.ResultKt.throwOnFailure(obj);
                        j01Var = new q01(p005kotlin.Unit.INSTANCE);
                    } catch (Exception e4) {
                        e = e4;
                        j01Var = new j01(e, null, null, 6);
                    }
                    if (j01Var instanceof i01) {
                        xs3.a((i01) j01Var, false);
                    }
                    CloseableKt.closeFinally(rr3Var, null);
                } catch (Throwable th5) {
                    th = th5;
                    rr3VarA = rr3Var2;
                    try {
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
                    } catch (Throwable th6) {
                        try {
                            throw th6;
                        } catch (Throwable th7) {
                            CloseableKt.closeFinally(rr3Var, th6);
                            throw th7;
                        }
                    }
                }
            }
            return j01Var;
        } catch (Throwable th8) {
            th = th8;
            r2 = xl2Var;
            r1 = r3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x014f A[Catch: all -> 0x016f, TryCatch #11 {all -> 0x016f, blocks: (B:92:0x0139, B:94:0x0140, B:96:0x0144, B:98:0x0148, B:99:0x014b, B:101:0x014f, B:103:0x0153, B:105:0x0157, B:106:0x0158, B:107:0x015d, B:108:0x015e, B:109:0x0165, B:110:0x0166, B:111:0x016d, B:112:0x016e), top: B:131:0x0139 }] */
    /* JADX WARN: Code duplicated, block: B:103:0x0153 A[Catch: all -> 0x016f, TryCatch #11 {all -> 0x016f, blocks: (B:92:0x0139, B:94:0x0140, B:96:0x0144, B:98:0x0148, B:99:0x014b, B:101:0x014f, B:103:0x0153, B:105:0x0157, B:106:0x0158, B:107:0x015d, B:108:0x015e, B:109:0x0165, B:110:0x0166, B:111:0x016d, B:112:0x016e), top: B:131:0x0139 }] */
    /* JADX WARN: Code duplicated, block: B:105:0x0157 A[Catch: all -> 0x016f, TryCatch #11 {all -> 0x016f, blocks: (B:92:0x0139, B:94:0x0140, B:96:0x0144, B:98:0x0148, B:99:0x014b, B:101:0x014f, B:103:0x0153, B:105:0x0157, B:106:0x0158, B:107:0x015d, B:108:0x015e, B:109:0x0165, B:110:0x0166, B:111:0x016d, B:112:0x016e), top: B:131:0x0139 }] */
    /* JADX WARN: Code duplicated, block: B:106:0x0158 A[Catch: all -> 0x016f, TryCatch #11 {all -> 0x016f, blocks: (B:92:0x0139, B:94:0x0140, B:96:0x0144, B:98:0x0148, B:99:0x014b, B:101:0x014f, B:103:0x0153, B:105:0x0157, B:106:0x0158, B:107:0x015d, B:108:0x015e, B:109:0x0165, B:110:0x0166, B:111:0x016d, B:112:0x016e), top: B:131:0x0139 }] */
    /* JADX WARN: Code duplicated, block: B:108:0x015e A[Catch: all -> 0x016f, TryCatch #11 {all -> 0x016f, blocks: (B:92:0x0139, B:94:0x0140, B:96:0x0144, B:98:0x0148, B:99:0x014b, B:101:0x014f, B:103:0x0153, B:105:0x0157, B:106:0x0158, B:107:0x015d, B:108:0x015e, B:109:0x0165, B:110:0x0166, B:111:0x016d, B:112:0x016e), top: B:131:0x0139 }] */
    /* JADX WARN: Code duplicated, block: B:110:0x0166 A[Catch: all -> 0x016f, TryCatch #11 {all -> 0x016f, blocks: (B:92:0x0139, B:94:0x0140, B:96:0x0144, B:98:0x0148, B:99:0x014b, B:101:0x014f, B:103:0x0153, B:105:0x0157, B:106:0x0158, B:107:0x015d, B:108:0x015e, B:109:0x0165, B:110:0x0166, B:111:0x016d, B:112:0x016e), top: B:131:0x0139 }] */
    /* JADX WARN: Code duplicated, block: B:112:0x016e A[Catch: all -> 0x016f, TRY_LEAVE, TryCatch #11 {all -> 0x016f, blocks: (B:92:0x0139, B:94:0x0140, B:96:0x0144, B:98:0x0148, B:99:0x014b, B:101:0x014f, B:103:0x0153, B:105:0x0157, B:106:0x0158, B:107:0x015d, B:108:0x015e, B:109:0x0165, B:110:0x0166, B:111:0x016d, B:112:0x016e), top: B:131:0x0139 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00b0 A[Catch: all -> 0x004e, TRY_LEAVE, TryCatch #8 {all -> 0x004e, blocks: (B:22:0x004a, B:35:0x0097, B:42:0x00ab, B:44:0x00b0, B:41:0x00a5), top: B:127:0x0029 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:88:0x012e A[Catch: all -> 0x0038, TRY_LEAVE, TryCatch #5 {all -> 0x0038, blocks: (B:13:0x0033, B:79:0x0115, B:86:0x0129, B:88:0x012e, B:85:0x0123), top: B:124:0x0033 }] */
    /* JADX WARN: Code duplicated, block: B:94:0x0140 A[Catch: all -> 0x016f, TryCatch #11 {all -> 0x016f, blocks: (B:92:0x0139, B:94:0x0140, B:96:0x0144, B:98:0x0148, B:99:0x014b, B:101:0x014f, B:103:0x0153, B:105:0x0157, B:106:0x0158, B:107:0x015d, B:108:0x015e, B:109:0x0165, B:110:0x0166, B:111:0x016d, B:112:0x016e), top: B:131:0x0139 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [ads_mobile_sdk.r1] */
    /* JADX WARN: Type inference failed for: r0v9, types: [ads_mobile_sdk.r1] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r1v34 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v2, types: [ads_mobile_sdk.dm2, kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v31 */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v11, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v24 */
    /* JADX WARN: Type inference failed for: r3v25 */
    /* JADX WARN: Type inference failed for: r3v26 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static Object a(im2 im2Var, Continuation continuation) {
        ?? dm2Var;
        ?? r1;
        ?? r3;
        rr3 rr3VarA;
        rr3 rr3Var;
        rr3 rr3Var2;
        rr3 rr3Var3;
        rr3 rr3Var4;
        Object j01Var;
        if (continuation instanceof dm2) {
            dm2 dm2Var2 = (dm2) continuation;
            int i = dm2Var2.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                dm2Var2.e = i - Integer.MIN_VALUE;
                dm2Var = dm2Var2;
            } else {
                dm2Var = new dm2(im2Var, continuation);
            }
        } else {
            dm2Var = new dm2(im2Var, continuation);
        }
        Object obj = dm2Var.c;
        ?? coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = dm2Var.e;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                g83 g83Var = im2Var.g;
                s11 s11Var = s11.CUI_NAME_PERSISTENT_CACHE_METADATA_WRITE;
                List listEmptyList = CollectionsKt.emptyList();
                ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
                if (hs3.b().a == null) {
                    tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                    try {
                        ?? r0 = im2Var.a;
                        em2 em2Var = em2.a;
                        dm2Var.a = tu2VarA;
                        dm2Var.b = tu2VarA;
                        dm2Var.e = 1;
                        if (r0.a(em2Var, dm2Var) != coroutine_suspended) {
                            tu2 tu2Var = tu2VarA;
                            rr3Var4 = tu2Var;
                            rr3Var3 = tu2Var;
                            j01Var = new q01(p005kotlin.Unit.INSTANCE);
                            dm2Var = rr3Var3;
                            coroutine_suspended = rr3Var4;
                            if (j01Var instanceof i01) {
                                xs3.a((i01) j01Var, false);
                            }
                            CloseableKt.closeFinally(coroutine_suspended, null);
                        }
                    } catch (Exception e) {
                        e = e;
                        rr3Var3 = tu2VarA;
                        rr3Var4 = rr3Var3;
                        j01Var = new j01(e, null, null, 6);
                        dm2Var = rr3Var3;
                        coroutine_suspended = rr3Var4;
                    } catch (Throwable th) {
                        th = th;
                        r3 = tu2VarA;
                        r1 = tu2VarA;
                        try {
                            r1.b(th);
                            if (th instanceof v24) {
                                throw th;
                            }
                            if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                r1.a(th);
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
                                CloseableKt.closeFinally(r3, th2);
                                throw th3;
                            }
                        }
                    }
                } else {
                    rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                    try {
                        ?? r2 = im2Var.a;
                        em2 em2Var2 = em2.a;
                        dm2Var.a = rr3VarA;
                        dm2Var.b = rr3VarA;
                        dm2Var.e = 2;
                        if (r2.a(em2Var2, dm2Var) != coroutine_suspended) {
                            rr3Var2 = rr3VarA;
                            rr3Var = rr3Var2;
                            j01Var = new q01(p005kotlin.Unit.INSTANCE);
                            if (j01Var instanceof i01) {
                                xs3.a((i01) j01Var, false);
                            }
                            CloseableKt.closeFinally(rr3Var, null);
                        }
                    } catch (Exception e2) {
                        e = e2;
                        rr3Var2 = rr3VarA;
                        rr3Var = rr3Var2;
                        j01Var = new j01(e, null, null, 6);
                    } catch (Throwable th4) {
                        th = th4;
                        rr3Var = rr3VarA;
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
                }
                return coroutine_suspended;
            }
            if (i2 == 1) {
                rr3Var4 = dm2Var.b;
                rr3Var3 = dm2Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    rr3Var3 = rr3Var3;
                    rr3Var4 = rr3Var4;
                    j01Var = new q01(p005kotlin.Unit.INSTANCE);
                    dm2Var = rr3Var3;
                    coroutine_suspended = rr3Var4;
                } catch (Exception e3) {
                    e = e3;
                    j01Var = new j01(e, null, null, 6);
                    dm2Var = rr3Var3;
                    coroutine_suspended = rr3Var4;
                }
                if (j01Var instanceof i01) {
                    xs3.a((i01) j01Var, false);
                }
                CloseableKt.closeFinally(coroutine_suspended, null);
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                rr3Var = dm2Var.b;
                rr3Var2 = dm2Var.a;
                try {
                    try {
                        p005kotlin.ResultKt.throwOnFailure(obj);
                        j01Var = new q01(p005kotlin.Unit.INSTANCE);
                    } catch (Exception e4) {
                        e = e4;
                        j01Var = new j01(e, null, null, 6);
                    }
                    if (j01Var instanceof i01) {
                        xs3.a((i01) j01Var, false);
                    }
                    CloseableKt.closeFinally(rr3Var, null);
                } catch (Throwable th5) {
                    th = th5;
                    rr3VarA = rr3Var2;
                    try {
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
                    } catch (Throwable th6) {
                        try {
                            throw th6;
                        } catch (Throwable th7) {
                            CloseableKt.closeFinally(rr3Var, th6);
                            throw th7;
                        }
                    }
                }
            }
            return j01Var;
        } catch (Throwable th8) {
            th = th8;
            r1 = dm2Var;
            r3 = coroutine_suspended;
        }
    }

    /* JADX WARN: Code duplicated, block: B:109:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:126:0x01e2 A[Catch: all -> 0x0045, TRY_LEAVE, TryCatch #3 {all -> 0x0045, blocks: (B:15:0x0040, B:110:0x01c6, B:124:0x01de, B:126:0x01e2, B:123:0x01d9), top: B:158:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:132:0x01f5 A[Catch: all -> 0x0224, TryCatch #0 {all -> 0x0224, blocks: (B:130:0x01ee, B:132:0x01f5, B:134:0x01f9, B:136:0x01fd, B:137:0x0200, B:139:0x0204, B:141:0x0208, B:143:0x020c, B:144:0x020d, B:145:0x0212, B:146:0x0213, B:147:0x021a, B:148:0x021b, B:149:0x0222, B:150:0x0223), top: B:157:0x01ee }] */
    /* JADX WARN: Code duplicated, block: B:134:0x01f9 A[Catch: all -> 0x0224, TryCatch #0 {all -> 0x0224, blocks: (B:130:0x01ee, B:132:0x01f5, B:134:0x01f9, B:136:0x01fd, B:137:0x0200, B:139:0x0204, B:141:0x0208, B:143:0x020c, B:144:0x020d, B:145:0x0212, B:146:0x0213, B:147:0x021a, B:148:0x021b, B:149:0x0222, B:150:0x0223), top: B:157:0x01ee }] */
    /* JADX WARN: Code duplicated, block: B:139:0x0204 A[Catch: all -> 0x0224, TryCatch #0 {all -> 0x0224, blocks: (B:130:0x01ee, B:132:0x01f5, B:134:0x01f9, B:136:0x01fd, B:137:0x0200, B:139:0x0204, B:141:0x0208, B:143:0x020c, B:144:0x020d, B:145:0x0212, B:146:0x0213, B:147:0x021a, B:148:0x021b, B:149:0x0222, B:150:0x0223), top: B:157:0x01ee }] */
    /* JADX WARN: Code duplicated, block: B:141:0x0208 A[Catch: all -> 0x0224, TryCatch #0 {all -> 0x0224, blocks: (B:130:0x01ee, B:132:0x01f5, B:134:0x01f9, B:136:0x01fd, B:137:0x0200, B:139:0x0204, B:141:0x0208, B:143:0x020c, B:144:0x020d, B:145:0x0212, B:146:0x0213, B:147:0x021a, B:148:0x021b, B:149:0x0222, B:150:0x0223), top: B:157:0x01ee }] */
    /* JADX WARN: Code duplicated, block: B:143:0x020c A[Catch: all -> 0x0224, TryCatch #0 {all -> 0x0224, blocks: (B:130:0x01ee, B:132:0x01f5, B:134:0x01f9, B:136:0x01fd, B:137:0x0200, B:139:0x0204, B:141:0x0208, B:143:0x020c, B:144:0x020d, B:145:0x0212, B:146:0x0213, B:147:0x021a, B:148:0x021b, B:149:0x0222, B:150:0x0223), top: B:157:0x01ee }] */
    /* JADX WARN: Code duplicated, block: B:144:0x020d A[Catch: all -> 0x0224, TryCatch #0 {all -> 0x0224, blocks: (B:130:0x01ee, B:132:0x01f5, B:134:0x01f9, B:136:0x01fd, B:137:0x0200, B:139:0x0204, B:141:0x0208, B:143:0x020c, B:144:0x020d, B:145:0x0212, B:146:0x0213, B:147:0x021a, B:148:0x021b, B:149:0x0222, B:150:0x0223), top: B:157:0x01ee }] */
    /* JADX WARN: Code duplicated, block: B:146:0x0213 A[Catch: all -> 0x0224, TryCatch #0 {all -> 0x0224, blocks: (B:130:0x01ee, B:132:0x01f5, B:134:0x01f9, B:136:0x01fd, B:137:0x0200, B:139:0x0204, B:141:0x0208, B:143:0x020c, B:144:0x020d, B:145:0x0212, B:146:0x0213, B:147:0x021a, B:148:0x021b, B:149:0x0222, B:150:0x0223), top: B:157:0x01ee }] */
    /* JADX WARN: Code duplicated, block: B:148:0x021b A[Catch: all -> 0x0224, TryCatch #0 {all -> 0x0224, blocks: (B:130:0x01ee, B:132:0x01f5, B:134:0x01f9, B:136:0x01fd, B:137:0x0200, B:139:0x0204, B:141:0x0208, B:143:0x020c, B:144:0x020d, B:145:0x0212, B:146:0x0213, B:147:0x021a, B:148:0x021b, B:149:0x0222, B:150:0x0223), top: B:157:0x01ee }] */
    /* JADX WARN: Code duplicated, block: B:150:0x0223 A[Catch: all -> 0x0224, TRY_LEAVE, TryCatch #0 {all -> 0x0224, blocks: (B:130:0x01ee, B:132:0x01f5, B:134:0x01f9, B:136:0x01fd, B:137:0x0200, B:139:0x0204, B:141:0x0208, B:143:0x020c, B:144:0x020d, B:145:0x0212, B:146:0x0213, B:147:0x021a, B:148:0x021b, B:149:0x0222, B:150:0x0223), top: B:157:0x01ee }] */
    /* JADX WARN: Code duplicated, block: B:54:0x010f  */
    /* JADX WARN: Code duplicated, block: B:71:0x012e A[Catch: all -> 0x007d, TRY_LEAVE, TryCatch #17 {all -> 0x007d, blocks: (B:31:0x0078, B:55:0x0112, B:69:0x012a, B:71:0x012e, B:68:0x0125), top: B:162:0x0078 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x0142 A[Catch: all -> 0x0171, TryCatch #10 {all -> 0x0171, blocks: (B:74:0x013b, B:76:0x0142, B:78:0x0146, B:80:0x014a, B:81:0x014d, B:83:0x0151, B:85:0x0155, B:87:0x0159, B:88:0x015a, B:89:0x015f, B:90:0x0160, B:91:0x0167, B:92:0x0168, B:93:0x016f, B:94:0x0170), top: B:164:0x013b }] */
    /* JADX WARN: Code duplicated, block: B:78:0x0146 A[Catch: all -> 0x0171, TryCatch #10 {all -> 0x0171, blocks: (B:74:0x013b, B:76:0x0142, B:78:0x0146, B:80:0x014a, B:81:0x014d, B:83:0x0151, B:85:0x0155, B:87:0x0159, B:88:0x015a, B:89:0x015f, B:90:0x0160, B:91:0x0167, B:92:0x0168, B:93:0x016f, B:94:0x0170), top: B:164:0x013b }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Code duplicated, block: B:83:0x0151 A[Catch: all -> 0x0171, TryCatch #10 {all -> 0x0171, blocks: (B:74:0x013b, B:76:0x0142, B:78:0x0146, B:80:0x014a, B:81:0x014d, B:83:0x0151, B:85:0x0155, B:87:0x0159, B:88:0x015a, B:89:0x015f, B:90:0x0160, B:91:0x0167, B:92:0x0168, B:93:0x016f, B:94:0x0170), top: B:164:0x013b }] */
    /* JADX WARN: Code duplicated, block: B:85:0x0155 A[Catch: all -> 0x0171, TryCatch #10 {all -> 0x0171, blocks: (B:74:0x013b, B:76:0x0142, B:78:0x0146, B:80:0x014a, B:81:0x014d, B:83:0x0151, B:85:0x0155, B:87:0x0159, B:88:0x015a, B:89:0x015f, B:90:0x0160, B:91:0x0167, B:92:0x0168, B:93:0x016f, B:94:0x0170), top: B:164:0x013b }] */
    /* JADX WARN: Code duplicated, block: B:87:0x0159 A[Catch: all -> 0x0171, TryCatch #10 {all -> 0x0171, blocks: (B:74:0x013b, B:76:0x0142, B:78:0x0146, B:80:0x014a, B:81:0x014d, B:83:0x0151, B:85:0x0155, B:87:0x0159, B:88:0x015a, B:89:0x015f, B:90:0x0160, B:91:0x0167, B:92:0x0168, B:93:0x016f, B:94:0x0170), top: B:164:0x013b }] */
    /* JADX WARN: Code duplicated, block: B:88:0x015a A[Catch: all -> 0x0171, TryCatch #10 {all -> 0x0171, blocks: (B:74:0x013b, B:76:0x0142, B:78:0x0146, B:80:0x014a, B:81:0x014d, B:83:0x0151, B:85:0x0155, B:87:0x0159, B:88:0x015a, B:89:0x015f, B:90:0x0160, B:91:0x0167, B:92:0x0168, B:93:0x016f, B:94:0x0170), top: B:164:0x013b }] */
    /* JADX WARN: Code duplicated, block: B:90:0x0160 A[Catch: all -> 0x0171, TryCatch #10 {all -> 0x0171, blocks: (B:74:0x013b, B:76:0x0142, B:78:0x0146, B:80:0x014a, B:81:0x014d, B:83:0x0151, B:85:0x0155, B:87:0x0159, B:88:0x015a, B:89:0x015f, B:90:0x0160, B:91:0x0167, B:92:0x0168, B:93:0x016f, B:94:0x0170), top: B:164:0x013b }] */
    /* JADX WARN: Code duplicated, block: B:92:0x0168 A[Catch: all -> 0x0171, TryCatch #10 {all -> 0x0171, blocks: (B:74:0x013b, B:76:0x0142, B:78:0x0146, B:80:0x014a, B:81:0x014d, B:83:0x0151, B:85:0x0155, B:87:0x0159, B:88:0x015a, B:89:0x015f, B:90:0x0160, B:91:0x0167, B:92:0x0168, B:93:0x016f, B:94:0x0170), top: B:164:0x013b }] */
    /* JADX WARN: Code duplicated, block: B:94:0x0170 A[Catch: all -> 0x0171, TRY_LEAVE, TryCatch #10 {all -> 0x0171, blocks: (B:74:0x013b, B:76:0x0142, B:78:0x0146, B:80:0x014a, B:81:0x014d, B:83:0x0151, B:85:0x0155, B:87:0x0159, B:88:0x015a, B:89:0x015f, B:90:0x0160, B:91:0x0167, B:92:0x0168, B:93:0x016f, B:94:0x0170), top: B:164:0x013b }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [ads_mobile_sdk.om2, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v22, types: [ads_mobile_sdk.om2] */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v28 */
    /* JADX WARN: Type inference failed for: r1v29, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v30 */
    /* JADX WARN: Type inference failed for: r1v32 */
    /* JADX WARN: Type inference failed for: r1v35, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r1v36 */
    /* JADX WARN: Type inference failed for: r1v39, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v40 */
    /* JADX WARN: Type inference failed for: r1v41 */
    /* JADX WARN: Type inference failed for: r1v42 */
    /* JADX WARN: Type inference failed for: r1v43 */
    /* JADX WARN: Type inference failed for: r1v44 */
    /* JADX WARN: Type inference failed for: r1v49 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v9, types: [ads_mobile_sdk.om2] */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v18, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v3, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v31, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v40 */
    /* JADX WARN: Type inference failed for: r2v41 */
    /* JADX WARN: Type inference failed for: r2v42 */
    /* JADX WARN: Type inference failed for: r2v43 */
    /* JADX WARN: Type inference failed for: r3v2, types: [ads_mobile_sdk.bm2, kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r3v21 */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v23 */
    /* JADX WARN: Type inference failed for: r3v24 */
    /* JADX WARN: Type inference failed for: r3v25 */
    /* JADX WARN: Type inference failed for: r3v26 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v30 */
    /* JADX WARN: Type inference failed for: r3v32, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r3v35 */
    /* JADX WARN: Type inference failed for: r3v36 */
    /* JADX WARN: Type inference failed for: r3v37 */
    /* JADX WARN: Type inference failed for: r3v38 */
    /* JADX WARN: Type inference failed for: r3v39 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r5v2, types: [ads_mobile_sdk.r1] */
    /* JADX WARN: Type inference failed for: r5v5, types: [ads_mobile_sdk.r1] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static Object b(im2 im2Var, om2 om2Var, Continuation continuation) {
        ?? bm2Var;
        ?? r2;
        ?? r1;
        ?? r3;
        rr3 rr3Var;
        Closeable closeable;
        Closeable closeable2;
        Closeable closeable3;
        rr3 rr3Var2;
        Closeable closeable4;
        ?? r4;
        ?? r5;
        Object objWithContext;
        Object j01Var;
        ?? r6;
        ?? r7;
        Object objWithContext2;
        im2 im2Var2 = im2Var;
        ?? r8 = om2Var;
        if (continuation instanceof bm2) {
            bm2 bm2Var2 = (bm2) continuation;
            int i = bm2Var2.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                bm2Var2.g = i - Integer.MIN_VALUE;
                bm2Var = bm2Var2;
            } else {
                bm2Var = new bm2(im2Var2, continuation);
            }
        } else {
            bm2Var = new bm2(im2Var2, continuation);
        }
        Object obj = bm2Var.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = bm2Var.g;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                g83 g83Var = im2Var2.g;
                s11 s11Var = s11.CUI_NAME_PERSISTENT_CACHE_EVICT;
                List listEmptyList = CollectionsKt.emptyList();
                ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
                if (hs3.b().a == null) {
                    tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                    try {
                        ?? r9 = im2Var2.a;
                        cm2 cm2Var = new cm2(im2Var2, r8);
                        bm2Var.a = im2Var2;
                        bm2Var.b = r8;
                        bm2Var.c = tu2VarA;
                        bm2Var.d = tu2VarA;
                        bm2Var.g = 1;
                        if (r9.a(cm2Var, bm2Var) != coroutine_suspended) {
                            rr3Var2 = tu2VarA;
                            r4 = r8;
                            closeable4 = tu2VarA;
                            String str = r4.a;
                            bm2Var.a = rr3Var2;
                            bm2Var.b = closeable4;
                            bm2Var.c = null;
                            bm2Var.d = null;
                            bm2Var.g = 2;
                            ((ek2) ((zj2) im2Var2.i.get())).a(str);
                            objWithContext = BuildersKt.withContext(NonCancellable.INSTANCE, new rl2(im2Var2, str, null), bm2Var);
                            if (objWithContext != coroutine_suspended) {
                                closeable2 = closeable4;
                                closeable3 = rr3Var2;
                                obj = objWithContext;
                                j01Var = (v01) obj;
                                closeable2 = closeable2;
                                closeable3 = closeable3;
                                if (j01Var instanceof i01) {
                                    xs3.a((i01) j01Var, false);
                                }
                                CloseableKt.closeFinally(closeable2, null);
                            }
                        }
                    } catch (Exception e) {
                        e = e;
                        closeable2 = tu2VarA;
                        closeable3 = closeable2;
                        j01Var = new j01(e, null, null, 6);
                        closeable2 = closeable2;
                        closeable3 = closeable3;
                    } catch (Throwable th) {
                        th = th;
                        closeable = tu2VarA;
                        r5 = tu2VarA;
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
                    }
                } else {
                    rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                    try {
                        ?? r10 = im2Var2.a;
                        cm2 cm2Var2 = new cm2(im2Var2, r8);
                        bm2Var.a = im2Var2;
                        bm2Var.b = r8;
                        bm2Var.c = rr3VarA;
                        bm2Var.d = rr3VarA;
                        bm2Var.g = 3;
                        if (r10.a(cm2Var2, bm2Var) != coroutine_suspended) {
                            rr3Var = rr3VarA;
                            r7 = r8;
                            r6 = rr3VarA;
                            String str2 = r7.a;
                            bm2Var.a = rr3Var;
                            bm2Var.b = r6;
                            bm2Var.c = null;
                            bm2Var.d = null;
                            bm2Var.g = 4;
                            ((ek2) ((zj2) im2Var2.i.get())).a(str2);
                            objWithContext2 = BuildersKt.withContext(NonCancellable.INSTANCE, new rl2(im2Var2, str2, null), bm2Var);
                            if (objWithContext2 != coroutine_suspended) {
                                r8 = r6;
                                r3 = rr3Var;
                                obj = objWithContext2;
                                j01Var = (v01) obj;
                                r8 = r8;
                                bm2Var = r3;
                                if (j01Var instanceof i01) {
                                    xs3.a((i01) j01Var, false);
                                }
                                CloseableKt.closeFinally(r8, null);
                            }
                        }
                    } catch (Exception e2) {
                        e = e2;
                        r8 = rr3VarA;
                        r3 = r8;
                        j01Var = new j01(e, null, null, 6);
                        r8 = r8;
                        bm2Var = r3;
                    } catch (Throwable th2) {
                        th = th2;
                        r1 = rr3VarA;
                        r2 = rr3VarA;
                        r2.b(th);
                        if (th instanceof v24) {
                            throw th;
                        }
                        if (!(th instanceof TimeoutCancellationException)) {
                            r2.a(th);
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
                return coroutine_suspended;
            }
            if (i2 == 1) {
                closeable2 = bm2Var.d;
                rr3Var2 = bm2Var.c;
                om2 om2Var2 = (om2) bm2Var.b;
                im2 im2Var3 = (im2) bm2Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    closeable4 = closeable2;
                    r4 = om2Var2;
                    im2Var2 = im2Var3;
                    rr3Var2 = rr3Var2;
                    try {
                        String str3 = r4.a;
                        bm2Var.a = rr3Var2;
                        bm2Var.b = closeable4;
                        bm2Var.c = null;
                        bm2Var.d = null;
                        bm2Var.g = 2;
                        ((ek2) ((zj2) im2Var2.i.get())).a(str3);
                        objWithContext = BuildersKt.withContext(NonCancellable.INSTANCE, new rl2(im2Var2, str3, null), bm2Var);
                        if (objWithContext != coroutine_suspended) {
                            closeable2 = closeable4;
                            closeable3 = rr3Var2;
                            obj = objWithContext;
                            j01Var = (v01) obj;
                            closeable2 = closeable2;
                            closeable3 = closeable3;
                            if (j01Var instanceof i01) {
                                xs3.a((i01) j01Var, false);
                            }
                            CloseableKt.closeFinally(closeable2, null);
                        }
                        return coroutine_suspended;
                    } catch (Exception e3) {
                        e = e3;
                        closeable2 = closeable4;
                        closeable3 = rr3Var2;
                        j01Var = new j01(e, null, null, 6);
                        closeable2 = closeable2;
                        closeable3 = closeable3;
                    } catch (Throwable th3) {
                        th = th3;
                        closeable = closeable4;
                        r5 = rr3Var2;
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
                    }
                } catch (Exception e4) {
                    e = e4;
                    closeable3 = rr3Var2;
                    j01Var = new j01(e, null, null, 6);
                    closeable2 = closeable2;
                    closeable3 = closeable3;
                    if (j01Var instanceof i01) {
                        xs3.a((i01) j01Var, false);
                    }
                    CloseableKt.closeFinally(closeable2, null);
                    return j01Var;
                } catch (Throwable th4) {
                    th = th4;
                    closeable3 = rr3Var2;
                    r5 = closeable3;
                    closeable = closeable2;
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
                }
            } else if (i2 == 2) {
                closeable2 = (Closeable) bm2Var.b;
                closeable3 = (rr3) bm2Var.a;
                try {
                    try {
                        p005kotlin.ResultKt.throwOnFailure(obj);
                        closeable2 = closeable2;
                        closeable3 = closeable3;
                        j01Var = (v01) obj;
                        closeable2 = closeable2;
                        closeable3 = closeable3;
                    } catch (Exception e5) {
                        e = e5;
                        j01Var = new j01(e, null, null, 6);
                        closeable2 = closeable2;
                        closeable3 = closeable3;
                    }
                    if (j01Var instanceof i01) {
                        xs3.a((i01) j01Var, false);
                    }
                    CloseableKt.closeFinally(closeable2, null);
                } catch (Throwable th5) {
                    th = th5;
                    r5 = closeable3;
                    closeable = closeable2;
                    try {
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
                    } catch (Throwable th6) {
                        try {
                            throw th6;
                        } catch (Throwable th7) {
                            CloseableKt.closeFinally(closeable, th6);
                            throw th7;
                        }
                    }
                }
            } else if (i2 == 3) {
                r8 = bm2Var.d;
                rr3Var = bm2Var.c;
                om2 om2Var3 = (om2) bm2Var.b;
                im2 im2Var4 = (im2) bm2Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    r6 = r8;
                    r7 = om2Var3;
                    im2Var2 = im2Var4;
                    rr3Var = rr3Var;
                    try {
                        String str4 = r7.a;
                        bm2Var.a = rr3Var;
                        bm2Var.b = r6;
                        bm2Var.c = null;
                        bm2Var.d = null;
                        bm2Var.g = 4;
                        ((ek2) ((zj2) im2Var2.i.get())).a(str4);
                        objWithContext2 = BuildersKt.withContext(NonCancellable.INSTANCE, new rl2(im2Var2, str4, null), bm2Var);
                        if (objWithContext2 != coroutine_suspended) {
                            r8 = r6;
                            r3 = rr3Var;
                            obj = objWithContext2;
                            j01Var = (v01) obj;
                            r8 = r8;
                            bm2Var = r3;
                            if (j01Var instanceof i01) {
                                xs3.a((i01) j01Var, false);
                            }
                            CloseableKt.closeFinally(r8, null);
                        }
                        return coroutine_suspended;
                    } catch (Exception e6) {
                        e = e6;
                        r8 = r6;
                        r3 = rr3Var;
                        j01Var = new j01(e, null, null, 6);
                        r8 = r8;
                        bm2Var = r3;
                    } catch (Throwable th8) {
                        th = th8;
                        r1 = r6;
                        r2 = rr3Var;
                        try {
                            r2.b(th);
                            if (th instanceof v24) {
                                throw th;
                            }
                            if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                r2.a(th);
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
                        } catch (Throwable th9) {
                            try {
                                throw th9;
                            } catch (Throwable th10) {
                                CloseableKt.closeFinally(r1, th9);
                                throw th10;
                            }
                        }
                    }
                } catch (Exception e7) {
                    e = e7;
                    r3 = rr3Var;
                    j01Var = new j01(e, null, null, 6);
                    r8 = r8;
                    bm2Var = r3;
                    if (j01Var instanceof i01) {
                        xs3.a((i01) j01Var, false);
                    }
                    CloseableKt.closeFinally(r8, null);
                    return j01Var;
                } catch (Throwable th11) {
                    th = th11;
                    bm2Var = rr3Var;
                    r2 = bm2Var;
                    r1 = r8;
                    r2.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        r2.a(th);
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
            } else {
                if (i2 != 4) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                r8 = (Closeable) bm2Var.b;
                r3 = (rr3) bm2Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    r8 = r8;
                    r3 = r3;
                    j01Var = (v01) obj;
                    r8 = r8;
                    bm2Var = r3;
                } catch (Exception e8) {
                    e = e8;
                    j01Var = new j01(e, null, null, 6);
                    r8 = r8;
                    bm2Var = r3;
                }
                if (j01Var instanceof i01) {
                    xs3.a((i01) j01Var, false);
                }
                CloseableKt.closeFinally(r8, null);
            }
            return j01Var;
        } catch (Throwable th12) {
            th = th12;
        }
    }

    /* JADX WARN: Code duplicated, block: B:49:0x013c  */
    /* JADX WARN: Code duplicated, block: B:52:0x0159  */
    /* JADX WARN: Code duplicated, block: B:53:0x015e  */
    /* JADX WARN: Code duplicated, block: B:55:0x0166  */
    /* JADX WARN: Code duplicated, block: B:56:0x0169  */
    /* JADX WARN: Code duplicated, block: B:58:0x0171  */
    /* JADX WARN: Code duplicated, block: B:59:0x0174  */
    /* JADX WARN: Code duplicated, block: B:61:0x0178  */
    /* JADX WARN: Code duplicated, block: B:62:0x017b  */
    /* JADX WARN: Code duplicated, block: B:66:0x0198  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00c2, code lost:
    
        if (a(r0, r1, false, (p005kotlin.coroutines.Continuation) r2) == r3) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01af, code lost:
    
        if (a(r13, r0, r2) == r3) goto L71;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object b(kotlin.im2 r19, p005kotlin.coroutines.Continuation r20) throws android.content.pm.PackageManager.NameNotFoundException, java.security.NoSuchAlgorithmException {
        /*
            Method dump skipped, instruction units count: 440
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.im2.b(ads_mobile_sdk.im2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final int a(j53 format) {
        Intrinsics.checkNotNullParameter(format, "format");
        switch (format.ordinal()) {
            case 1:
                cl2 cl2Var = this.c;
                cl2Var.getClass();
                Intrinsics.checkNotNullParameter("gads:pc:max_app_open_ads", C3510b4.i.W);
                return ((Number) cl2Var.a("gads:pc:max_app_open_ads", 2, yr.f)).intValue();
            case 2:
                cl2 cl2Var2 = this.c;
                cl2Var2.getClass();
                Intrinsics.checkNotNullParameter("gads:pc:max_banner_ads", C3510b4.i.W);
                return ((Number) cl2Var2.a("gads:pc:max_banner_ads", 0, yr.f)).intValue();
            case 3:
                cl2 cl2Var3 = this.c;
                cl2Var3.getClass();
                Intrinsics.checkNotNullParameter("gads:pc:max_icon_ads", C3510b4.i.W);
                return ((Number) cl2Var3.a("gads:pc:max_icon_ads", 2, yr.f)).intValue();
            case 4:
                cl2 cl2Var4 = this.c;
                cl2Var4.getClass();
                Intrinsics.checkNotNullParameter("gads:pc:max_interstitial_ads", C3510b4.i.W);
                return ((Number) cl2Var4.a("gads:pc:max_interstitial_ads", 0, yr.f)).intValue();
            case 5:
                cl2 cl2Var5 = this.c;
                cl2Var5.getClass();
                Intrinsics.checkNotNullParameter("gads:pc:max_native_ads", C3510b4.i.W);
                return ((Number) cl2Var5.a("gads:pc:max_native_ads", 2, yr.f)).intValue();
            case 6:
                cl2 cl2Var6 = this.c;
                cl2Var6.getClass();
                Intrinsics.checkNotNullParameter("gads:pc:max_rewarded_ads", C3510b4.i.W);
                return ((Number) cl2Var6.a("gads:pc:max_rewarded_ads", 0, yr.f)).intValue();
            case 7:
                cl2 cl2Var7 = this.c;
                cl2Var7.getClass();
                Intrinsics.checkNotNullParameter("gads:pc:max_rewarded_interstitial_ads", C3510b4.i.W);
                return ((Number) cl2Var7.a("gads:pc:max_rewarded_interstitial_ads", 0, yr.f)).intValue();
            case 8:
                cl2 cl2Var8 = this.c;
                cl2Var8.getClass();
                Intrinsics.checkNotNullParameter("gads:pc:max_swipeable_interstitial_ads", C3510b4.i.W);
                return ((Number) cl2Var8.a("gads:pc:max_swipeable_interstitial_ads", 0, yr.f)).intValue();
            default:
                return 0;
        }
    }

    public final ik2 a(AdRequest adRequest, j53 requestType) {
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        m21 m21Var = o21.f;
        String strC = m21.c(adRequest.getAdUnitId());
        if (strC == null) {
            strC = adRequest.getAdUnitId();
        }
        if (Intrinsics.areEqual(this.l.get(strC), Boolean.FALSE)) {
            return ik2.FILL_DISABLED_REASON_WEB_PROPERTY_DISABLED;
        }
        if (!((k30) ((hr) this.f).k.get()).w().w().contains(s00.API_PERSISTENT_CACHE)) {
            return ik2.FILL_DISABLED_REASON_CONSENT_NOT_ALLOWED;
        }
        if (a(requestType) > 0) {
            cl2 cl2Var = this.c;
            cl2Var.getClass();
            Intrinsics.checkNotNullParameter("gads:pc:max_total_cached_ads", C3510b4.i.W);
            nr nrVar = yr.f;
            if (((Number) cl2Var.a("gads:pc:max_total_cached_ads", 10, nrVar)).intValue() > 0) {
                cl2 cl2Var2 = this.c;
                cl2Var2.getClass();
                Intrinsics.checkNotNullParameter("gads:pc:cache_fill_count_per_request", C3510b4.i.W);
                if (((Number) cl2Var2.a("gads:pc:cache_fill_count_per_request", 2, nrVar)).intValue() > 0) {
                    return null;
                }
            }
        }
        return ik2.FILL_DISABLED_REASON_NO_CAPACITY;
    }

    public final Object a(j53 j53Var, String str, String str2, vk2 vk2Var) {
        return a(this, j53Var, str, str2, vk2Var);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(j53 j53Var, String str, Continuation continuation) {
        tl2 tl2Var;
        im2 im2Var;
        j9 j9Var;
        if (continuation instanceof tl2) {
            tl2Var = (tl2) continuation;
            int i = tl2Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                tl2Var.f = i - Integer.MIN_VALUE;
            } else {
                tl2Var = new tl2(this, continuation);
            }
        } else {
            tl2Var = new tl2(this, continuation);
        }
        Object objFirst = tl2Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = tl2Var.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objFirst);
            Flow data = ((DataStore) this.a.a.get()).getData();
            tl2Var.a = this;
            tl2Var.b = j53Var;
            tl2Var.c = str;
            tl2Var.f = 1;
            objFirst = FlowKt.first(data, tl2Var);
            if (objFirst == coroutine_suspended) {
                return coroutine_suspended;
            }
            im2Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str = tl2Var.c;
            j53Var = tl2Var.b;
            im2Var = tl2Var.a;
            p005kotlin.ResultKt.throwOnFailure(objFirst);
        }
        rx0 rx0Var = (rx0) ((o1) objFirst).A().get(j53Var.name());
        int i3 = 0;
        if (rx0Var != null && (j9Var = (j9) rx0Var.v().get(str)) != null) {
            im2Var.d.getClass();
            List<d9> list = (List) im2Var.a(j9Var, System.currentTimeMillis()).component1();
            if (im2Var.c.a()) {
                if (!(list instanceof Collection) || !list.isEmpty()) {
                    for (d9 d9Var : list) {
                        if (d9Var.y() == b9.AVAILABLE || d9Var.y() == b9.READ) {
                            i3++;
                            if (i3 < 0) {
                                CollectionsKt.throwCountOverflow();
                            }
                        }
                    }
                }
            } else if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    if (((d9) it.next()).y() == b9.AVAILABLE && (i3 = i3 + 1) < 0) {
                        CollectionsKt.throwCountOverflow();
                    }
                }
            }
            return Boxing.boxInt(i3);
        }
        return Boxing.boxInt(0);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x009d  */
    /* JADX WARN: Code duplicated, block: B:27:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00c6, code lost:
    
        if (r0 == r11) goto L25;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00c6 -> B:26:0x00c9). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlin.j53 r16, java.lang.String r17, boolean r18, p005kotlin.coroutines.Continuation r19) {
        /*
            Method dump skipped, instruction units count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.im2.a(ads_mobile_sdk.j53, java.lang.String, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Object a(om2 om2Var, vk2 vk2Var) {
        return b(this, om2Var, vk2Var);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0061, code lost:
    
        if (r2.a(r4, r0) == r1) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlin.up0 r6, p005kotlin.coroutines.Continuation r7) throws java.security.NoSuchAlgorithmException {
        /*
            r5 = this;
            boolean r0 = r7 instanceof kotlin.fm2
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.fm2 r0 = (kotlin.fm2) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.fm2 r0 = new ads_mobile_sdk.fm2
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.c
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L64
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            ads_mobile_sdk.up0 r6 = r0.b
            ads_mobile_sdk.im2 r2 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L4d
        L3c:
            p005kotlin.ResultKt.throwOnFailure(r7)
            r0.a = r5
            r0.b = r6
            r0.e = r4
            java.lang.Object r7 = r5.a(r0)
            if (r7 != r1) goto L4c
            goto L63
        L4c:
            r2 = r5
        L4d:
            java.lang.String r7 = (java.lang.String) r7
            ads_mobile_sdk.r1 r2 = r2.a
            ads_mobile_sdk.gm2 r4 = new ads_mobile_sdk.gm2
            r4.<init>(r6, r7)
            r6 = 0
            r0.a = r6
            r0.b = r6
            r0.e = r3
            java.lang.Object r6 = r2.a(r4, r0)
            if (r6 != r1) goto L64
        L63:
            return r1
        L64:
            kotlin.Unit r6 = p005kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.im2.a(ads_mobile_sdk.up0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Continuation continuation) throws NoSuchAlgorithmException {
        sl2 sl2Var;
        im2 im2Var;
        im2 im2Var2;
        if (continuation instanceof sl2) {
            sl2Var = (sl2) continuation;
            int i = sl2Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                sl2Var.d = i - Integer.MIN_VALUE;
            } else {
                sl2Var = new sl2(this, continuation);
            }
        } else {
            sl2Var = new sl2(this, continuation);
        }
        Object objE = sl2Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = sl2Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objE);
            CompletableJob completableJob = ((g30) ((n30) this.h.get())).C;
            sl2Var.a = this;
            sl2Var.d = 1;
            if (completableJob.join(sl2Var) != coroutine_suspended) {
                im2Var = this;
            }
            return coroutine_suspended;
        }
        if (i2 == 1) {
            im2Var = sl2Var.a;
            p005kotlin.ResultKt.throwOnFailure(objE);
        } else {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            im2Var2 = sl2Var.a;
            p005kotlin.ResultKt.throwOnFailure(objE);
        }
        JsonObject json = (JsonObject) objE;
        im2Var2.getClass();
        Intrinsics.checkNotNullParameter(json, "json");
        Set<Map.Entry<String, JsonElement>> setEntrySet = json.entrySet();
        Intrinsics.checkNotNullExpressionValue(setEntrySet, "entrySet(...)");
        String strJoinToString$default = CollectionsKt.joinToString$default(CollectionsKt.sortedWith(setEntrySet, new il2()), FacebookConstants.PLACEMENT_IDS_SEPARATOR, null, null, 0, null, kl2.a, 30, null);
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        byte[] bytes = strJoinToString$default.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        byte[] bArrDigest = messageDigest.digest(bytes);
        Intrinsics.checkNotNull(bArrDigest);
        return ArraysKt.joinToString$default(bArrDigest, (CharSequence) "", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) jl2.a, 30, (Object) null);
        n30 n30Var = (n30) im2Var.h.get();
        sl2Var.a = im2Var;
        sl2Var.d = 2;
        g30 g30Var = (g30) n30Var;
        g30Var.getClass();
        objE = g30.e(g30Var, sl2Var);
        if (objE != coroutine_suspended) {
            im2Var2 = im2Var;
            JsonObject json2 = (JsonObject) objE;
            im2Var2.getClass();
            Intrinsics.checkNotNullParameter(json2, "json");
            Set<Map.Entry<String, JsonElement>> setEntrySet2 = json2.entrySet();
            Intrinsics.checkNotNullExpressionValue(setEntrySet2, "entrySet(...)");
            String strJoinToString$default2 = CollectionsKt.joinToString$default(CollectionsKt.sortedWith(setEntrySet2, new il2()), FacebookConstants.PLACEMENT_IDS_SEPARATOR, null, null, 0, null, kl2.a, 30, null);
            MessageDigest messageDigest2 = MessageDigest.getInstance("SHA-256");
            byte[] bytes2 = strJoinToString$default2.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes2, "getBytes(...)");
            byte[] bArrDigest2 = messageDigest2.digest(bytes2);
            Intrinsics.checkNotNull(bArrDigest2);
            return ArraysKt.joinToString$default(bArrDigest2, (CharSequence) "", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) jl2.a, 30, (Object) null);
        }
        return coroutine_suspended;
    }

    public final LinkedHashMap a(Map map, long j, List list) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            j9 j9Var = (j9) entry.getValue();
            p005kotlin.Pair pairA = a(j9Var, j);
            List values = (List) pairA.component1();
            for (d9 d9Var : (List) pairA.component2()) {
                s11 s11Var = s11.CUI_NAME_PERSISTENT_CACHE_EXPIRE;
                WeakHashMap weakHashMap = hs3.a;
                rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                try {
                    String strX = d9Var.x();
                    Intrinsics.checkNotNullExpressionValue(strX, "getFilename(...)");
                    Object objValueOf = Boolean.valueOf(list.add(strX));
                    if (objValueOf instanceof i01) {
                        xs3.a((i01) objValueOf, false);
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
            if (!values.isEmpty()) {
                vz0.a aVarU = j9Var.u();
                Intrinsics.checkNotNullExpressionValue(aVarU, "toBuilder(...)");
                i9 builder = (i9) aVarU;
                Intrinsics.checkNotNullParameter(builder, "builder");
                List listI = builder.i();
                Intrinsics.checkNotNullExpressionValue(listI, "getResponsesList(...)");
                Intrinsics.checkNotNullParameter(new lo0(listI), "<this>");
                builder.h();
                List listI2 = builder.i();
                Intrinsics.checkNotNullExpressionValue(listI2, "getResponsesList(...)");
                Intrinsics.checkNotNullParameter(new lo0(listI2), "<this>");
                Intrinsics.checkNotNullParameter(values, "values");
                builder.a(values);
                vz0 vz0VarB = builder.b();
                Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
                linkedHashMap.put(str, (j9) vz0VarB);
            }
        }
        return linkedHashMap;
    }

    public final p005kotlin.Pair a(j9 j9Var, long j) {
        cl2 cl2Var = this.c;
        cl2Var.getClass();
        Duration.Companion companion = Duration.INSTANCE;
        long rawValue = ((Duration) cl2Var.a("gads:pc:ad_ttl_ms", wm2.a(24, DurationUnit.HOURS, "gads:pc:ad_ttl_ms", C3510b4.i.W), yr.j)).getRawValue();
        long duration = DurationKt.toDuration(j, DurationUnit.MILLISECONDS);
        List listY = j9Var.y();
        Intrinsics.checkNotNullExpressionValue(listY, "getResponsesList(...)");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : listY) {
            Duration.Companion companion2 = Duration.INSTANCE;
            if (Duration.m4366compareToLRDsOJo(Duration.m4395minusLRDsOJo(duration, DurationKt.toDuration(((d9) obj).w(), DurationUnit.MILLISECONDS)), rawValue) <= 0) {
                arrayList.add(obj);
            } else {
                arrayList2.add(obj);
            }
        }
        return new p005kotlin.Pair(arrayList, arrayList2);
    }

    public final void a(String webProperty) {
        Intrinsics.checkNotNullParameter(webProperty, "adUnitId");
        m21 m21Var = o21.f;
        String strC = m21.c(webProperty);
        if (strC != null) {
            webProperty = strC;
        }
        Intrinsics.checkNotNullParameter(webProperty, "webProperty");
        this.l.put(webProperty, Boolean.FALSE);
        ek2 ek2Var = (ek2) ((zj2) this.i.get());
        ek2Var.getClass();
        Intrinsics.checkNotNullParameter(webProperty, "webProperty");
        Iterator it = ek2Var.g.entrySet().iterator();
        while (it.hasNext()) {
            Object next = it.next();
            Intrinsics.checkNotNullExpressionValue(next, "next(...)");
            Map.Entry entry = (Map.Entry) next;
            if (Intrinsics.areEqual(((ko) entry.getValue()).a, webProperty)) {
                Job.DefaultImpls.cancel$default(((ko) entry.getValue()).h, (CancellationException) null, 1, (Object) null);
                it.remove();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:44:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:48:0x0116  */
    /* JADX WARN: Code duplicated, block: B:51:0x012d  */
    /* JADX WARN: Code duplicated, block: B:52:0x012f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:53:0x0131 A[Catch: all -> 0x007c, TryCatch #5 {, blocks: (B:22:0x0070, B:80:0x01dd, B:82:0x01e1, B:84:0x01e9, B:86:0x0205, B:87:0x0219, B:91:0x022a, B:100:0x0247, B:49:0x011d, B:53:0x0131, B:55:0x0135, B:57:0x0144, B:61:0x0166, B:72:0x0198, B:76:0x01a3, B:105:0x025c, B:109:0x0267), top: B:160:0x0070 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x0134  */
    /* JADX WARN: Code duplicated, block: B:57:0x0144 A[Catch: all -> 0x007c, TryCatch #5 {, blocks: (B:22:0x0070, B:80:0x01dd, B:82:0x01e1, B:84:0x01e9, B:86:0x0205, B:87:0x0219, B:91:0x022a, B:100:0x0247, B:49:0x011d, B:53:0x0131, B:55:0x0135, B:57:0x0144, B:61:0x0166, B:72:0x0198, B:76:0x01a3, B:105:0x025c, B:109:0x0267), top: B:160:0x0070 }] */
    /* JADX WARN: Code duplicated, block: B:59:0x0163  */
    /* JADX WARN: Code duplicated, block: B:60:0x0165  */
    /* JADX WARN: Code duplicated, block: B:66:0x018a A[Catch: all -> 0x0251, TryCatch #0 {all -> 0x0251, blocks: (B:64:0x017e, B:66:0x018a, B:69:0x0190, B:71:0x0196), top: B:150:0x017e }] */
    /* JADX WARN: Code duplicated, block: B:67:0x018d  */
    /* JADX WARN: Code duplicated, block: B:69:0x0190 A[Catch: all -> 0x0251, TryCatch #0 {all -> 0x0251, blocks: (B:64:0x017e, B:66:0x018a, B:69:0x0190, B:71:0x0196), top: B:150:0x017e }] */
    /* JADX WARN: Code duplicated, block: B:70:0x0195  */
    /* JADX WARN: Code duplicated, block: B:74:0x019e  */
    /* JADX WARN: Code duplicated, block: B:75:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:78:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:79:0x01d7  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:82:0x01e1 A[Catch: all -> 0x007c, TryCatch #5 {, blocks: (B:22:0x0070, B:80:0x01dd, B:82:0x01e1, B:84:0x01e9, B:86:0x0205, B:87:0x0219, B:91:0x022a, B:100:0x0247, B:49:0x011d, B:53:0x0131, B:55:0x0135, B:57:0x0144, B:61:0x0166, B:72:0x0198, B:76:0x01a3, B:105:0x025c, B:109:0x0267), top: B:160:0x0070 }] */
    /* JADX WARN: Code duplicated, block: B:84:0x01e9 A[Catch: all -> 0x007c, TryCatch #5 {, blocks: (B:22:0x0070, B:80:0x01dd, B:82:0x01e1, B:84:0x01e9, B:86:0x0205, B:87:0x0219, B:91:0x022a, B:100:0x0247, B:49:0x011d, B:53:0x0131, B:55:0x0135, B:57:0x0144, B:61:0x0166, B:72:0x0198, B:76:0x01a3, B:105:0x025c, B:109:0x0267), top: B:160:0x0070 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x0205 A[Catch: all -> 0x007c, TryCatch #5 {, blocks: (B:22:0x0070, B:80:0x01dd, B:82:0x01e1, B:84:0x01e9, B:86:0x0205, B:87:0x0219, B:91:0x022a, B:100:0x0247, B:49:0x011d, B:53:0x0131, B:55:0x0135, B:57:0x0144, B:61:0x0166, B:72:0x0198, B:76:0x01a3, B:105:0x025c, B:109:0x0267), top: B:160:0x0070 }] */
    /* JADX WARN: Code duplicated, block: B:89:0x0227  */
    /* JADX WARN: Code duplicated, block: B:90:0x0229  */
    /* JADX WARN: Code duplicated, block: B:99:0x0246  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v20, types: [int] */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19, types: [T] */
    /* JADX WARN: Type inference failed for: r1v33 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r4v0, types: [int] */
    /* JADX WARN: Type inference failed for: r4v20, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v8, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r6v4, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v18 */
    /* JADX WARN: Type inference failed for: r7v19 */
    /* JADX WARN: Type inference failed for: r7v2, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r7v20, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r7v21 */
    /* JADX WARN: Type inference failed for: r7v22 */
    /* JADX WARN: Type inference failed for: r7v23 */
    /* JADX WARN: Type inference failed for: r7v24 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v9, types: [ads_mobile_sdk.rr3, java.lang.Object] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:79:0x01d7 -> B:80:0x01dd). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object b(kotlin.j53 r24, java.lang.String r25, p005kotlin.coroutines.Continuation r26) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 733
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.im2.b(ads_mobile_sdk.j53, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:42:0x009f A[Catch: all -> 0x0049, TryCatch #2 {all -> 0x0049, blocks: (B:21:0x0045, B:40:0x0082, B:42:0x009f, B:44:0x00a7, B:43:0x00a4), top: B:62:0x0045 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00a4 A[Catch: all -> 0x0049, TryCatch #2 {all -> 0x0049, blocks: (B:21:0x0045, B:40:0x0082, B:42:0x009f, B:44:0x00a7, B:43:0x00a4), top: B:62:0x0045 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(Continuation continuation) throws Throwable {
        ul2 ul2Var;
        Mutex mutex;
        im2 im2Var;
        Throwable th;
        Mutex mutex2;
        im2 im2Var2;
        String packageName;
        PackageInfo packageInfo;
        int i;
        long longVersionCode;
        String MODEL;
        im2 im2Var3;
        if (continuation instanceof ul2) {
            ul2Var = (ul2) continuation;
            int i2 = ul2Var.e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                ul2Var.e = i2 - Integer.MIN_VALUE;
            } else {
                ul2Var = new ul2(this, continuation);
            }
        } else {
            ul2Var = new ul2(this, continuation);
        }
        Object obj = ul2Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = ul2Var.e;
        try {
            if (i3 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                if (this.k) {
                    return p005kotlin.Unit.INSTANCE;
                }
                mutex = this.j;
                ul2Var.a = this;
                ul2Var.b = mutex;
                ul2Var.e = 1;
                if (mutex.lock(null, ul2Var) != coroutine_suspended) {
                    im2Var = this;
                }
                return coroutine_suspended;
            }
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    mutex2 = ul2Var.b;
                    im2Var3 = ul2Var.a;
                    try {
                        p005kotlin.ResultKt.throwOnFailure(obj);
                        im2Var3.k = true;
                        p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                        mutex2.unlock(null);
                        return unit;
                    } catch (Throwable th2) {
                        th = th2;
                        mutex = mutex2;
                        mutex.unlock(null);
                        throw th;
                    }
                }
                mutex = ul2Var.b;
                im2Var2 = ul2Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    ul2Var.a = im2Var2;
                    ul2Var.b = mutex;
                    ul2Var.e = 3;
                    packageName = im2Var2.e.getPackageName();
                    packageInfo = im2Var2.e.getPackageManager().getPackageInfo(packageName, 0);
                    i = Build.VERSION.SDK_INT;
                    if (i >= 28) {
                        longVersionCode = packageInfo.getLongVersionCode();
                    } else {
                        longVersionCode = packageInfo.versionCode;
                    }
                    Intrinsics.checkNotNull(packageName);
                    MODEL = Build.MODEL;
                    Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
                    if (im2Var2.a(new up0(packageName, longVersionCode, MODEL, i), ul2Var) != coroutine_suspended) {
                        mutex2 = mutex;
                        im2Var3 = im2Var2;
                        im2Var3.k = true;
                        p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                        mutex2.unlock(null);
                        return unit2;
                    }
                    return coroutine_suspended;
                } catch (Throwable th3) {
                    th = th3;
                    mutex2 = mutex;
                    mutex = mutex2;
                    mutex.unlock(null);
                    throw th;
                }
            }
            mutex = ul2Var.b;
            im2Var = ul2Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            if (!im2Var.k) {
                ul2Var.a = im2Var;
                ul2Var.b = mutex;
                ul2Var.e = 2;
                if (b(im2Var, ul2Var) != coroutine_suspended) {
                    im2Var2 = im2Var;
                    ul2Var.a = im2Var2;
                    ul2Var.b = mutex;
                    ul2Var.e = 3;
                    packageName = im2Var2.e.getPackageName();
                    packageInfo = im2Var2.e.getPackageManager().getPackageInfo(packageName, 0);
                    i = Build.VERSION.SDK_INT;
                    if (i >= 28) {
                        longVersionCode = packageInfo.getLongVersionCode();
                    } else {
                        longVersionCode = packageInfo.versionCode;
                    }
                    Intrinsics.checkNotNull(packageName);
                    MODEL = Build.MODEL;
                    Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
                    if (im2Var2.a(new up0(packageName, longVersionCode, MODEL, i), ul2Var) != coroutine_suspended) {
                        mutex2 = mutex;
                        im2Var3 = im2Var2;
                        im2Var3.k = true;
                    }
                }
                return coroutine_suspended;
            }
            mutex2 = mutex;
            p005kotlin.Unit unit3 = p005kotlin.Unit.INSTANCE;
            mutex2.unlock(null);
            return unit3;
        } catch (Throwable th4) {
            th = th4;
            mutex.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x006f A[RETURN] */
    public final boolean b(AdRequest adRequest, j53 requestType) {
        boolean adPersistenceEnabled;
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        cl2 cl2Var = this.c;
        cl2Var.getClass();
        Intrinsics.checkNotNullParameter("gads:pc:enabled", C3510b4.i.W);
        if (!((Boolean) cl2Var.a("gads:pc:enabled", Boolean.TRUE, yr.b)).booleanValue()) {
            return false;
        }
        int iOrdinal = requestType.ordinal();
        if (iOrdinal == 1) {
            AppOpenAdRequest appOpenAdRequest = adRequest instanceof AppOpenAdRequest ? (AppOpenAdRequest) adRequest : null;
            if (appOpenAdRequest != null) {
                adPersistenceEnabled = appOpenAdRequest.getAdPersistenceEnabled();
                if (!adPersistenceEnabled) {
                    return true;
                }
            }
            return false;
        }
        if (iOrdinal == 3) {
            IconAdRequest iconAdRequest = adRequest instanceof IconAdRequest ? (IconAdRequest) adRequest : null;
            if (iconAdRequest != null && iconAdRequest.getAdPersistenceEnabled() && iconAdRequest.getExcludedAppIds().isEmpty()) {
                return true;
            }
        } else {
            if (iOrdinal != 5) {
                return false;
            }
            NativeAdRequest nativeAdRequest = adRequest instanceof NativeAdRequest ? (NativeAdRequest) adRequest : null;
            if (nativeAdRequest != null) {
                adPersistenceEnabled = nativeAdRequest.getAdPersistenceEnabled();
                if (!adPersistenceEnabled) {
                    return true;
                }
            }
        }
        return false;
    }
}

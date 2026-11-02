package kotlin;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.util.Base64;
import androidx.browser.trusted.sharing.ShareTarget;
import androidx.webkit.internal.AssetHelper;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.google.android.libraries.ads.mobile.sdk.common.VideoOptions;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.AdSizeBundle;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.AdapterVersionData;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.AppStats;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.QualitySignals;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import com.google.android.libraries.ads.mobile.sdk.internal.util.AndroidBundleTypeAdapterFactory;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import com.google.common.base.Splitter;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.ironsource.C3510b4;
import com.ironsource.adapters.facebook.FacebookConstants;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.ArraysKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.optionals.OptionalsKt;
import p005kotlin.ranges.RangesKt;
import p005kotlin.text.Charsets;
import p005kotlin.text.Regex;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class j43 {
    public final ex0 a;
    public final g30 b;
    public final ur3 c;
    public final at d;
    public final Optional e;
    public final j40 f;
    public final jb3 g;
    public final int h;
    public final Context i;
    public String j;
    public boolean k;
    public boolean l;
    public boolean m;
    public final LinkedHashSet n;
    public final LinkedHashSet o;
    public final LinkedHashMap p;
    public Map q;
    public final LinkedHashMap r;
    public final Gson s;
    public Signals t;
    public JsonObject u;
    public final JsonObject v;
    public final LinkedHashMap w;

    public j43(ex0 flags, g30 consentManager, ur3 traceLogger, at blobEncrypter, Optional optionalNativeRequest, j40 correlatorProvider, jb3 sdkCoreJavascriptEngine, int i, Context context) {
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(consentManager, "consentManager");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(blobEncrypter, "blobEncrypter");
        Intrinsics.checkNotNullParameter(optionalNativeRequest, "optionalNativeRequest");
        Intrinsics.checkNotNullParameter(correlatorProvider, "correlatorProvider");
        Intrinsics.checkNotNullParameter(sdkCoreJavascriptEngine, "sdkCoreJavascriptEngine");
        Intrinsics.checkNotNullParameter(context, "context");
        this.a = flags;
        this.b = consentManager;
        this.c = traceLogger;
        this.d = blobEncrypter;
        this.e = optionalNativeRequest;
        this.f = correlatorProvider;
        this.g = sdkCoreJavascriptEngine;
        this.h = i;
        this.i = context;
        this.j = "https://googleads.g.doubleclick.net/mads/gma";
        this.n = new LinkedHashSet();
        this.o = new LinkedHashSet();
        this.p = new LinkedHashMap();
        this.r = new LinkedHashMap();
        this.s = new GsonBuilder().registerTypeAdapterFactory(new AndroidBundleTypeAdapterFactory()).create();
        this.v = new JsonObject();
        this.w = new LinkedHashMap();
    }

    /* JADX WARN: Code duplicated, block: B:104:0x02f1 A[Catch: all -> 0x02a1, TryCatch #0 {all -> 0x02a1, blocks: (B:61:0x016b, B:62:0x0190, B:64:0x0196, B:66:0x01a7, B:72:0x01c3, B:73:0x01ce, B:74:0x01db, B:76:0x01e1, B:78:0x01fb, B:80:0x0203, B:81:0x0212, B:83:0x0216, B:85:0x021e, B:86:0x0222, B:88:0x0232, B:104:0x02f1, B:106:0x02f7, B:112:0x031a, B:114:0x0324, B:126:0x0354, B:115:0x032b, B:117:0x032f, B:123:0x0347, B:124:0x034c, B:125:0x034d, B:91:0x023e, B:95:0x0265, B:97:0x026b, B:100:0x02a4, B:102:0x02d2), top: B:166:0x016b }] */
    /* JADX WARN: Code duplicated, block: B:106:0x02f7 A[Catch: all -> 0x02a1, TRY_LEAVE, TryCatch #0 {all -> 0x02a1, blocks: (B:61:0x016b, B:62:0x0190, B:64:0x0196, B:66:0x01a7, B:72:0x01c3, B:73:0x01ce, B:74:0x01db, B:76:0x01e1, B:78:0x01fb, B:80:0x0203, B:81:0x0212, B:83:0x0216, B:85:0x021e, B:86:0x0222, B:88:0x0232, B:104:0x02f1, B:106:0x02f7, B:112:0x031a, B:114:0x0324, B:126:0x0354, B:115:0x032b, B:117:0x032f, B:123:0x0347, B:124:0x034c, B:125:0x034d, B:91:0x023e, B:95:0x0265, B:97:0x026b, B:100:0x02a4, B:102:0x02d2), top: B:166:0x016b }] */
    /* JADX WARN: Code duplicated, block: B:109:0x0314  */
    /* JADX WARN: Code duplicated, block: B:112:0x031a A[Catch: all -> 0x02a1, TRY_ENTER, TryCatch #0 {all -> 0x02a1, blocks: (B:61:0x016b, B:62:0x0190, B:64:0x0196, B:66:0x01a7, B:72:0x01c3, B:73:0x01ce, B:74:0x01db, B:76:0x01e1, B:78:0x01fb, B:80:0x0203, B:81:0x0212, B:83:0x0216, B:85:0x021e, B:86:0x0222, B:88:0x0232, B:104:0x02f1, B:106:0x02f7, B:112:0x031a, B:114:0x0324, B:126:0x0354, B:115:0x032b, B:117:0x032f, B:123:0x0347, B:124:0x034c, B:125:0x034d, B:91:0x023e, B:95:0x0265, B:97:0x026b, B:100:0x02a4, B:102:0x02d2), top: B:166:0x016b }] */
    /* JADX WARN: Code duplicated, block: B:114:0x0324 A[Catch: all -> 0x02a1, TryCatch #0 {all -> 0x02a1, blocks: (B:61:0x016b, B:62:0x0190, B:64:0x0196, B:66:0x01a7, B:72:0x01c3, B:73:0x01ce, B:74:0x01db, B:76:0x01e1, B:78:0x01fb, B:80:0x0203, B:81:0x0212, B:83:0x0216, B:85:0x021e, B:86:0x0222, B:88:0x0232, B:104:0x02f1, B:106:0x02f7, B:112:0x031a, B:114:0x0324, B:126:0x0354, B:115:0x032b, B:117:0x032f, B:123:0x0347, B:124:0x034c, B:125:0x034d, B:91:0x023e, B:95:0x0265, B:97:0x026b, B:100:0x02a4, B:102:0x02d2), top: B:166:0x016b }] */
    /* JADX WARN: Code duplicated, block: B:115:0x032b A[Catch: all -> 0x02a1, TryCatch #0 {all -> 0x02a1, blocks: (B:61:0x016b, B:62:0x0190, B:64:0x0196, B:66:0x01a7, B:72:0x01c3, B:73:0x01ce, B:74:0x01db, B:76:0x01e1, B:78:0x01fb, B:80:0x0203, B:81:0x0212, B:83:0x0216, B:85:0x021e, B:86:0x0222, B:88:0x0232, B:104:0x02f1, B:106:0x02f7, B:112:0x031a, B:114:0x0324, B:126:0x0354, B:115:0x032b, B:117:0x032f, B:123:0x0347, B:124:0x034c, B:125:0x034d, B:91:0x023e, B:95:0x0265, B:97:0x026b, B:100:0x02a4, B:102:0x02d2), top: B:166:0x016b }] */
    /* JADX WARN: Code duplicated, block: B:117:0x032f A[Catch: all -> 0x02a1, TRY_LEAVE, TryCatch #0 {all -> 0x02a1, blocks: (B:61:0x016b, B:62:0x0190, B:64:0x0196, B:66:0x01a7, B:72:0x01c3, B:73:0x01ce, B:74:0x01db, B:76:0x01e1, B:78:0x01fb, B:80:0x0203, B:81:0x0212, B:83:0x0216, B:85:0x021e, B:86:0x0222, B:88:0x0232, B:104:0x02f1, B:106:0x02f7, B:112:0x031a, B:114:0x0324, B:126:0x0354, B:115:0x032b, B:117:0x032f, B:123:0x0347, B:124:0x034c, B:125:0x034d, B:91:0x023e, B:95:0x0265, B:97:0x026b, B:100:0x02a4, B:102:0x02d2), top: B:166:0x016b }] */
    /* JADX WARN: Code duplicated, block: B:120:0x0342  */
    /* JADX WARN: Code duplicated, block: B:123:0x0347 A[Catch: all -> 0x02a1, TRY_ENTER, TryCatch #0 {all -> 0x02a1, blocks: (B:61:0x016b, B:62:0x0190, B:64:0x0196, B:66:0x01a7, B:72:0x01c3, B:73:0x01ce, B:74:0x01db, B:76:0x01e1, B:78:0x01fb, B:80:0x0203, B:81:0x0212, B:83:0x0216, B:85:0x021e, B:86:0x0222, B:88:0x0232, B:104:0x02f1, B:106:0x02f7, B:112:0x031a, B:114:0x0324, B:126:0x0354, B:115:0x032b, B:117:0x032f, B:123:0x0347, B:124:0x034c, B:125:0x034d, B:91:0x023e, B:95:0x0265, B:97:0x026b, B:100:0x02a4, B:102:0x02d2), top: B:166:0x016b }] */
    /* JADX WARN: Code duplicated, block: B:125:0x034d A[Catch: all -> 0x02a1, TryCatch #0 {all -> 0x02a1, blocks: (B:61:0x016b, B:62:0x0190, B:64:0x0196, B:66:0x01a7, B:72:0x01c3, B:73:0x01ce, B:74:0x01db, B:76:0x01e1, B:78:0x01fb, B:80:0x0203, B:81:0x0212, B:83:0x0216, B:85:0x021e, B:86:0x0222, B:88:0x0232, B:104:0x02f1, B:106:0x02f7, B:112:0x031a, B:114:0x0324, B:126:0x0354, B:115:0x032b, B:117:0x032f, B:123:0x0347, B:124:0x034c, B:125:0x034d, B:91:0x023e, B:95:0x0265, B:97:0x026b, B:100:0x02a4, B:102:0x02d2), top: B:166:0x016b }] */
    /* JADX WARN: Code duplicated, block: B:129:0x0386  */
    /* JADX WARN: Code duplicated, block: B:133:0x038e A[Catch: all -> 0x0081, TRY_LEAVE, TryCatch #1 {all -> 0x0081, blocks: (B:16:0x0047, B:130:0x0388, B:131:0x038a, B:133:0x038e, B:21:0x005e, B:121:0x0344, B:24:0x006d, B:110:0x0316, B:27:0x007c, B:70:0x01bf), top: B:167:0x0031 }] */
    /* JADX WARN: Code duplicated, block: B:141:0x03a4 A[Catch: all -> 0x03d3, TryCatch #2 {all -> 0x03d3, blocks: (B:139:0x039d, B:141:0x03a4, B:143:0x03a8, B:145:0x03ac, B:146:0x03af, B:148:0x03b3, B:150:0x03b7, B:152:0x03bb, B:153:0x03bc, B:154:0x03c1, B:155:0x03c2, B:156:0x03c9, B:157:0x03ca, B:158:0x03d1, B:159:0x03d2), top: B:169:0x039d }] */
    /* JADX WARN: Code duplicated, block: B:143:0x03a8 A[Catch: all -> 0x03d3, TryCatch #2 {all -> 0x03d3, blocks: (B:139:0x039d, B:141:0x03a4, B:143:0x03a8, B:145:0x03ac, B:146:0x03af, B:148:0x03b3, B:150:0x03b7, B:152:0x03bb, B:153:0x03bc, B:154:0x03c1, B:155:0x03c2, B:156:0x03c9, B:157:0x03ca, B:158:0x03d1, B:159:0x03d2), top: B:169:0x039d }] */
    /* JADX WARN: Code duplicated, block: B:148:0x03b3 A[Catch: all -> 0x03d3, TryCatch #2 {all -> 0x03d3, blocks: (B:139:0x039d, B:141:0x03a4, B:143:0x03a8, B:145:0x03ac, B:146:0x03af, B:148:0x03b3, B:150:0x03b7, B:152:0x03bb, B:153:0x03bc, B:154:0x03c1, B:155:0x03c2, B:156:0x03c9, B:157:0x03ca, B:158:0x03d1, B:159:0x03d2), top: B:169:0x039d }] */
    /* JADX WARN: Code duplicated, block: B:150:0x03b7 A[Catch: all -> 0x03d3, TryCatch #2 {all -> 0x03d3, blocks: (B:139:0x039d, B:141:0x03a4, B:143:0x03a8, B:145:0x03ac, B:146:0x03af, B:148:0x03b3, B:150:0x03b7, B:152:0x03bb, B:153:0x03bc, B:154:0x03c1, B:155:0x03c2, B:156:0x03c9, B:157:0x03ca, B:158:0x03d1, B:159:0x03d2), top: B:169:0x039d }] */
    /* JADX WARN: Code duplicated, block: B:152:0x03bb A[Catch: all -> 0x03d3, TryCatch #2 {all -> 0x03d3, blocks: (B:139:0x039d, B:141:0x03a4, B:143:0x03a8, B:145:0x03ac, B:146:0x03af, B:148:0x03b3, B:150:0x03b7, B:152:0x03bb, B:153:0x03bc, B:154:0x03c1, B:155:0x03c2, B:156:0x03c9, B:157:0x03ca, B:158:0x03d1, B:159:0x03d2), top: B:169:0x039d }] */
    /* JADX WARN: Code duplicated, block: B:153:0x03bc A[Catch: all -> 0x03d3, TryCatch #2 {all -> 0x03d3, blocks: (B:139:0x039d, B:141:0x03a4, B:143:0x03a8, B:145:0x03ac, B:146:0x03af, B:148:0x03b3, B:150:0x03b7, B:152:0x03bb, B:153:0x03bc, B:154:0x03c1, B:155:0x03c2, B:156:0x03c9, B:157:0x03ca, B:158:0x03d1, B:159:0x03d2), top: B:169:0x039d }] */
    /* JADX WARN: Code duplicated, block: B:155:0x03c2 A[Catch: all -> 0x03d3, TryCatch #2 {all -> 0x03d3, blocks: (B:139:0x039d, B:141:0x03a4, B:143:0x03a8, B:145:0x03ac, B:146:0x03af, B:148:0x03b3, B:150:0x03b7, B:152:0x03bb, B:153:0x03bc, B:154:0x03c1, B:155:0x03c2, B:156:0x03c9, B:157:0x03ca, B:158:0x03d1, B:159:0x03d2), top: B:169:0x039d }] */
    /* JADX WARN: Code duplicated, block: B:157:0x03ca A[Catch: all -> 0x03d3, TryCatch #2 {all -> 0x03d3, blocks: (B:139:0x039d, B:141:0x03a4, B:143:0x03a8, B:145:0x03ac, B:146:0x03af, B:148:0x03b3, B:150:0x03b7, B:152:0x03bb, B:153:0x03bc, B:154:0x03c1, B:155:0x03c2, B:156:0x03c9, B:157:0x03ca, B:158:0x03d1, B:159:0x03d2), top: B:169:0x039d }] */
    /* JADX WARN: Code duplicated, block: B:159:0x03d2 A[Catch: all -> 0x03d3, TRY_LEAVE, TryCatch #2 {all -> 0x03d3, blocks: (B:139:0x039d, B:141:0x03a4, B:143:0x03a8, B:145:0x03ac, B:146:0x03af, B:148:0x03b3, B:150:0x03b7, B:152:0x03bb, B:153:0x03bc, B:154:0x03c1, B:155:0x03c2, B:156:0x03c9, B:157:0x03ca, B:158:0x03d1, B:159:0x03d2), top: B:169:0x039d }] */
    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v10 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3, types: [com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v28 */
    /* JADX WARN: Type inference failed for: r1v29 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v30 */
    /* JADX WARN: Type inference failed for: r1v31 */
    /* JADX WARN: Type inference failed for: r1v32 */
    /* JADX WARN: Type inference failed for: r1v33 */
    /* JADX WARN: Type inference failed for: r1v34 */
    /* JADX WARN: Type inference failed for: r1v35 */
    /* JADX WARN: Type inference failed for: r1v36 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v29 */
    /* JADX WARN: Type inference failed for: r2v3, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r6v4, types: [com.google.gson.Gson] */
    /* JADX WARN: Type inference failed for: r8v22, types: [com.google.gson.Gson] */
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
    public static Object a(j43 j43Var, Signals signals, yp2 yp2Var, hj2 hj2Var, Map map, Continuation continuation) {
        d43 d43Var;
        ?? r2;
        ?? r1;
        hj2 hj2Var2;
        ?? r15;
        ?? r3;
        String strValueOf;
        Object obj;
        Uri uriBuild;
        String str;
        String str2;
        boolean z;
        String string;
        Object objA;
        Object obj2;
        String query;
        v01 v01VarA;
        Object objA2;
        Object obj3;
        Object objA3;
        Object obj4;
        String string2;
        Object obj5;
        ?? r4;
        v01 v01Var;
        ?? r5;
        ?? r6;
        ?? r7;
        j43 j43Var2 = j43Var;
        ?? r8 = signals;
        Object obj6 = C3510b4.i.W;
        if (continuation instanceof d43) {
            d43Var = (d43) continuation;
            int i = d43Var.h;
            if ((i & Integer.MIN_VALUE) != 0) {
                d43Var.h = i - Integer.MIN_VALUE;
            } else {
                d43Var = new d43(j43Var2, continuation);
            }
        } else {
            d43Var = new d43(j43Var2, continuation);
        }
        Object obj7 = d43Var.f;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = d43Var.h;
        try {
            try {
                if (i2 == 0) {
                    p005kotlin.ResultKt.throwOnFailure(obj7);
                    s11 s11Var = s11.CUI_NAME_ADREQUEST_BUILDURL_CLIENT;
                    WeakHashMap weakHashMap = hs3.a;
                    rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                    try {
                        j43Var2.l = false;
                        j43Var2.m = false;
                        j43Var2.q = map;
                        j43Var2.t = r8;
                        j43Var2.f();
                        JsonObject asJsonObject = j43Var2.s.toJsonTree(r8).getAsJsonObject();
                        Intrinsics.checkNotNullExpressionValue(asJsonObject, "getAsJsonObject(...)");
                        j43Var2.u = asJsonObject;
                        j43Var2.a(yp2Var);
                        Set<Map.Entry> setEntrySet = j43Var2.w.entrySet();
                        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(setEntrySet, 10)), 16));
                        for (Map.Entry entry : setEntrySet) {
                            Object key = entry.getKey();
                            ne3 ne3Var = (ne3) entry.getValue();
                            if (ne3Var.A()) {
                                strValueOf = ne3Var.v() ? "1" : "0";
                            } else if (ne3Var.D()) {
                                strValueOf = ne3Var.z();
                            } else if (ne3Var.B()) {
                                strValueOf = String.valueOf(ne3Var.x());
                            } else {
                                strValueOf = ne3Var.C() ? String.valueOf(ne3Var.y()) : "";
                            }
                            p005kotlin.Pair pair = p005kotlin.TuplesKt.to(key, strValueOf);
                            linkedHashMap.put(pair.getFirst(), pair.getSecond());
                        }
                        r8.preProcessedSignals = linkedHashMap;
                        d43Var.a = j43Var2;
                        d43Var.b = r8;
                        hj2Var2 = hj2Var;
                        d43Var.c = hj2Var2;
                        d43Var.d = rr3VarA;
                        d43Var.e = rr3VarA;
                        d43Var.h = 1;
                        if (j43Var2.a(d43Var) != coroutine_suspended) {
                            r15 = r8;
                            r3 = rr3VarA;
                            obj = rr3VarA;
                        }
                        return coroutine_suspended;
                    } catch (Throwable th) {
                        th = th;
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
                if (i2 != 1) {
                    if (i2 == 2) {
                        Closeable closeable = (Closeable) d43Var.b;
                        Object obj8 = (rr3) d43Var.a;
                        p005kotlin.ResultKt.throwOnFailure(obj7);
                        r4 = closeable;
                        obj5 = obj8;
                        v01Var = (v01) obj7;
                        r8 = r4;
                        obj6 = obj5;
                        if (v01Var instanceof i01) {
                            xs3.a((i01) v01Var, false);
                        }
                        CloseableKt.closeFinally(r8, null);
                        return v01Var;
                    }
                    if (i2 == 3) {
                        Closeable closeable2 = (Closeable) d43Var.b;
                        Object obj9 = (rr3) d43Var.a;
                        p005kotlin.ResultKt.throwOnFailure(obj7);
                        r5 = closeable2;
                        obj4 = obj9;
                        v01Var = (v01) obj7;
                        r8 = r5;
                        obj6 = obj4;
                        if (v01Var instanceof i01) {
                            xs3.a((i01) v01Var, false);
                        }
                        CloseableKt.closeFinally(r8, null);
                        return v01Var;
                    }
                    if (i2 == 4) {
                        Closeable closeable3 = (Closeable) d43Var.b;
                        Object obj10 = (rr3) d43Var.a;
                        p005kotlin.ResultKt.throwOnFailure(obj7);
                        r6 = closeable3;
                        obj3 = obj10;
                        v01Var = (v01) obj7;
                        r8 = r6;
                        obj6 = obj3;
                        if (v01Var instanceof i01) {
                            xs3.a((i01) v01Var, false);
                        }
                        CloseableKt.closeFinally(r8, null);
                        return v01Var;
                    }
                    if (i2 != 5) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    Closeable closeable4 = (Closeable) d43Var.b;
                    Object obj11 = (rr3) d43Var.a;
                    p005kotlin.ResultKt.throwOnFailure(obj7);
                    r7 = closeable4;
                    obj2 = obj11;
                    v01Var = (v01) obj7;
                    r8 = r7;
                    obj6 = obj2;
                    if (v01Var instanceof i01) {
                        xs3.a((i01) v01Var, false);
                    }
                    CloseableKt.closeFinally(r8, null);
                    return v01Var;
                }
                r8 = d43Var.e;
                Object obj12 = d43Var.d;
                hj2 hj2Var3 = d43Var.c;
                Signals signals2 = (Signals) d43Var.b;
                j43 j43Var3 = (j43) d43Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj7);
                    obj = obj12;
                    hj2Var2 = hj2Var3;
                    j43Var2 = j43Var3;
                    r3 = r8;
                    r15 = signals2;
                } catch (Throwable th2) {
                    th = th2;
                    obj6 = obj12;
                    r2 = obj6;
                    r1 = r8;
                    try {
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
                    } catch (Throwable th3) {
                        try {
                            throw th3;
                        } catch (Throwable th4) {
                            CloseableKt.closeFinally(r1, th3);
                            throw th4;
                        }
                    }
                }
                r15.localSignals = j43Var2.v;
                JsonObject asJsonObject2 = j43Var2.s.toJsonTree(r15).getAsJsonObject();
                Intrinsics.checkNotNullExpressionValue(asJsonObject2, "getAsJsonObject(...)");
                j43Var2.u = asJsonObject2;
                Splitter splitter = f01.a;
                f01.a(new e43(j43Var2));
                Iterator it = hj2Var2.x().iterator();
                while (true) {
                    if (it.hasNext()) {
                        ej2 ej2Var = (ej2) it.next();
                        Intrinsics.checkNotNull(ej2Var);
                        v01 v01VarB = j43Var2.b(ej2Var);
                        if (v01VarB instanceof i01) {
                            d43Var.a = obj;
                            d43Var.b = r3;
                            d43Var.c = null;
                            d43Var.d = null;
                            d43Var.e = null;
                            d43Var.h = 2;
                            Object objA4 = j43Var2.a((i01) v01VarB, d43Var);
                            if (objA4 != coroutine_suspended) {
                                obj5 = obj;
                                obj7 = objA4;
                                r4 = r3;
                                v01Var = (v01) obj7;
                                r8 = r4;
                                obj6 = obj5;
                                if (v01Var instanceof i01) {
                                    xs3.a((i01) v01Var, false);
                                }
                                CloseableKt.closeFinally(r8, null);
                                return v01Var;
                            }
                        } else {
                            Intrinsics.checkNotNull(v01VarB, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                            ((q01) v01VarB).getClass();
                        }
                    } else {
                        j43Var2.g();
                        for (Map.Entry entry2 : j43Var2.r.entrySet()) {
                            String str3 = (String) entry2.getKey();
                            StringBuilder sb = (StringBuilder) entry2.getValue();
                            if (j43Var2.o.isEmpty() || j43Var2.o.contains(str3)) {
                                LinkedHashMap linkedHashMap2 = j43Var2.p;
                                String string3 = sb.toString();
                                Intrinsics.checkNotNullExpressionValue(string3, "toString(...)");
                                linkedHashMap2.put(str3, string3);
                            }
                        }
                        Bundle bundle = r15.googleExtrasBundle;
                        if (bundle != null && (string2 = bundle.getString("_testRequestUri")) != null) {
                            j43Var2.j = string2;
                            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                        }
                        boolean zAreEqual = Intrinsics.areEqual(r15.isScarRequest, Boxing.boxBoolean(true));
                        Uri uriA = j43Var2.a();
                        if (zAreEqual) {
                            Intrinsics.checkNotNull(uriA);
                            uriBuild = uriA;
                        } else {
                            String strB = j43Var2.b();
                            ex0 ex0Var = j43Var2.a;
                            ex0Var.getClass();
                            Intrinsics.checkNotNullParameter("gads:request_compression_min_length", C3510b4.i.W);
                            nr nrVar = yr.f;
                            int iIntValue = ((Number) ex0Var.a("gads:request_compression_min_length", -1, nrVar)).intValue();
                            if (j43Var2.m && iIntValue >= 0 && (iIntValue == 0 || j43Var2.a(iIntValue, strB))) {
                                ex0 ex0Var2 = j43Var2.a;
                                ex0Var2.getClass();
                                List defaultValue = ex0.C;
                                Intrinsics.checkNotNullParameter("gads:request_compression_exception_params", C3510b4.i.W);
                                Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
                                p005kotlin.Pair pairA = j43Var2.a(strB, CollectionsKt.toSet((List) ex0Var2.a("gads:request_compression_exception_params", defaultValue, yr.g)));
                                uriBuild = (Uri) pairA.component1();
                                str = (String) pairA.component2();
                                str2 = ShareTarget.ENCODING_TYPE_URL_ENCODED;
                                z = true;
                            } else {
                                uriBuild = (Uri) j43Var2.a(strB, (Set) null).component1();
                                int length = uriBuild.toString().length();
                                ex0 ex0Var3 = j43Var2.a;
                                ex0Var3.getClass();
                                Intrinsics.checkNotNullParameter("gads:url_size_to_post", C3510b4.i.W);
                                if (length >= ((Number) ex0Var3.a("gads:url_size_to_post", 15000, nrVar)).intValue()) {
                                    String encodedQuery = uriBuild.getEncodedQuery();
                                    uriBuild = uriBuild.buildUpon().clearQuery().build();
                                    Intrinsics.checkNotNullExpressionValue(uriBuild, "build(...)");
                                    str = encodedQuery;
                                    str2 = AssetHelper.DEFAULT_MIME_TYPE;
                                }
                                z = false;
                            }
                            if (zAreEqual) {
                                query = uriBuild.getQuery();
                                if (query == null) {
                                    m01 m01Var = new m01("Csrb scar query result is empty", kk1.INTERNAL_ERROR);
                                    d43Var.a = obj;
                                    d43Var.b = r3;
                                    d43Var.c = null;
                                    d43Var.d = null;
                                    d43Var.e = null;
                                    d43Var.h = 3;
                                    objA3 = j43Var2.a(m01Var, d43Var);
                                    if (objA3 != coroutine_suspended) {
                                        obj4 = obj;
                                        obj7 = objA3;
                                        r5 = r3;
                                        v01Var = (v01) obj7;
                                        r8 = r5;
                                        obj6 = obj4;
                                        if (v01Var instanceof i01) {
                                            xs3.a((i01) v01Var, false);
                                        }
                                        CloseableKt.closeFinally(r8, null);
                                        return v01Var;
                                    }
                                } else {
                                    v01VarA = j43Var2.d.a(query);
                                    if (v01VarA instanceof q01) {
                                        string = (String) ((q01) v01VarA).b;
                                    } else {
                                        if (v01VarA instanceof i01) {
                                            throw new p005kotlin.NoWhenBranchMatchedException();
                                        }
                                        d43Var.a = obj;
                                        d43Var.b = r3;
                                        d43Var.c = null;
                                        d43Var.d = null;
                                        d43Var.e = null;
                                        d43Var.h = 4;
                                        objA2 = j43Var2.a(v01VarA, d43Var);
                                        if (objA2 != coroutine_suspended) {
                                            obj3 = obj;
                                            obj7 = objA2;
                                            r6 = r3;
                                            v01Var = (v01) obj7;
                                            r8 = r6;
                                            obj6 = obj3;
                                            if (v01Var instanceof i01) {
                                                xs3.a((i01) v01Var, false);
                                            }
                                            CloseableKt.closeFinally(r8, null);
                                            return v01Var;
                                        }
                                    }
                                }
                            } else {
                                string = uriBuild.toString();
                                Intrinsics.checkNotNull(string);
                            }
                            q01 q01Var = new q01(new zt(CollectionsKt.emptyList(), null, str, j43Var2.l, string, uriA.getQuery(), null, z, str2));
                            d43Var.a = obj;
                            d43Var.b = r3;
                            d43Var.c = null;
                            d43Var.d = null;
                            d43Var.e = null;
                            d43Var.h = 5;
                            objA = j43Var2.a(q01Var, d43Var);
                            if (objA != coroutine_suspended) {
                                obj2 = obj;
                                obj7 = objA;
                                r7 = r3;
                                v01Var = (v01) obj7;
                                r8 = r7;
                                obj6 = obj2;
                                if (v01Var instanceof i01) {
                                    xs3.a((i01) v01Var, false);
                                }
                                CloseableKt.closeFinally(r8, null);
                                return v01Var;
                            }
                        }
                        str = null;
                        str2 = null;
                        z = false;
                        if (zAreEqual) {
                            query = uriBuild.getQuery();
                            if (query == null) {
                                m01 m01Var2 = new m01("Csrb scar query result is empty", kk1.INTERNAL_ERROR);
                                d43Var.a = obj;
                                d43Var.b = r3;
                                d43Var.c = null;
                                d43Var.d = null;
                                d43Var.e = null;
                                d43Var.h = 3;
                                objA3 = j43Var2.a(m01Var2, d43Var);
                                if (objA3 != coroutine_suspended) {
                                    obj4 = obj;
                                    obj7 = objA3;
                                    r5 = r3;
                                    v01Var = (v01) obj7;
                                    r8 = r5;
                                    obj6 = obj4;
                                    if (v01Var instanceof i01) {
                                        xs3.a((i01) v01Var, false);
                                    }
                                    CloseableKt.closeFinally(r8, null);
                                    return v01Var;
                                }
                            } else {
                                v01VarA = j43Var2.d.a(query);
                                if (v01VarA instanceof q01) {
                                    string = (String) ((q01) v01VarA).b;
                                } else {
                                    if (v01VarA instanceof i01) {
                                        throw new p005kotlin.NoWhenBranchMatchedException();
                                    }
                                    d43Var.a = obj;
                                    d43Var.b = r3;
                                    d43Var.c = null;
                                    d43Var.d = null;
                                    d43Var.e = null;
                                    d43Var.h = 4;
                                    objA2 = j43Var2.a(v01VarA, d43Var);
                                    if (objA2 != coroutine_suspended) {
                                        obj3 = obj;
                                        obj7 = objA2;
                                        r6 = r3;
                                        v01Var = (v01) obj7;
                                        r8 = r6;
                                        obj6 = obj3;
                                        if (v01Var instanceof i01) {
                                            xs3.a((i01) v01Var, false);
                                        }
                                        CloseableKt.closeFinally(r8, null);
                                        return v01Var;
                                    }
                                }
                            }
                        } else {
                            string = uriBuild.toString();
                            Intrinsics.checkNotNull(string);
                        }
                        q01 q01Var2 = new q01(new zt(CollectionsKt.emptyList(), null, str, j43Var2.l, string, uriA.getQuery(), null, z, str2));
                        d43Var.a = obj;
                        d43Var.b = r3;
                        d43Var.c = null;
                        d43Var.d = null;
                        d43Var.e = null;
                        d43Var.h = 5;
                        objA = j43Var2.a(q01Var2, d43Var);
                        if (objA != coroutine_suspended) {
                            obj2 = obj;
                            obj7 = objA;
                            r7 = r3;
                            v01Var = (v01) obj7;
                            r8 = r7;
                            obj6 = obj2;
                            if (v01Var instanceof i01) {
                                xs3.a((i01) v01Var, false);
                            }
                            CloseableKt.closeFinally(r8, null);
                            return v01Var;
                        }
                    }
                    return coroutine_suspended;
                }
            } catch (Throwable th5) {
                th = th5;
                r1 = r3;
                r2 = obj;
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
            }
        } catch (Throwable th6) {
            th = th6;
        }
    }

    public final v01 a(ej2 ej2Var) {
        kk1 kk1Var;
        Map mapF = ej2Var.F();
        Intrinsics.checkNotNullExpressionValue(mapF, "getIncludeMap(...)");
        for (Map.Entry entry : mapF.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            Intrinsics.checkNotNull(str);
            Intrinsics.checkNotNull(str2);
            String strI = ej2Var.I();
            Intrinsics.checkNotNullExpressionValue(strI, "getRuleLabel(...)");
            a(str, str2, strI);
        }
        for (ia1 ia1Var : ej2Var.G()) {
            Intrinsics.checkNotNull(ia1Var);
            a(ej2Var, ia1Var);
        }
        for (String str3 : ej2Var.A()) {
            LinkedHashSet linkedHashSet = this.n;
            Intrinsics.checkNotNull(str3);
            linkedHashSet.add(str3);
        }
        for (String str4 : ej2Var.B()) {
            Splitter splitter = f01.a;
            Intrinsics.checkNotNull(str4);
            f01.b(str4, null);
        }
        for (String str5 : ej2Var.x()) {
            LinkedHashSet linkedHashSet2 = this.o;
            Intrinsics.checkNotNull(str5);
            linkedHashSet2.add(str5);
        }
        if (ej2Var.K()) {
            this.l = ej2Var.w();
        }
        if (ej2Var.J()) {
            this.m = ej2Var.v();
        }
        if (!ej2Var.N()) {
            if (ej2Var.L()) {
                if (this.k) {
                    String str6 = "Rule " + ej2Var.I() + " attempted to modify the base URL after it has been set.";
                    ((as3) this.c).a(str6, (Throwable) new Exception(str6));
                } else {
                    String strZ = ej2Var.z();
                    Intrinsics.checkNotNullExpressionValue(strZ, "getBaseUrl(...)");
                    this.j = strZ;
                    this.k = true;
                }
            }
            return new q01(p005kotlin.Unit.INSTANCE);
        }
        if (ej2Var.M()) {
            switch (ej2Var.D()) {
                case 0:
                    kk1Var = kk1.INTERNAL_ERROR;
                    break;
                case 1:
                    kk1Var = kk1.INVALID_REQUEST;
                    break;
                case 2:
                    kk1Var = kk1.NETWORK_ERROR;
                    break;
                case 3:
                    kk1Var = kk1.NO_FILL;
                    break;
                case 4:
                    kk1Var = kk1.TIMEOUT;
                    break;
                case 5:
                    kk1Var = kk1.CANCELLED;
                    break;
                case 6:
                case 7:
                case 9:
                default:
                    kk1Var = kk1.INTERNAL_ERROR;
                    break;
                case 8:
                    kk1Var = kk1.APP_ID_MISSING;
                    break;
                case 10:
                    kk1Var = kk1.REQUEST_ID_MISMATCH;
                    break;
                case 11:
                    kk1Var = kk1.INVALID_AD_RESPONSE;
                    break;
                case 12:
                    kk1Var = kk1.AD_RESPONSE_ALREADY_USED;
                    break;
            }
        } else {
            kk1Var = kk1.INTERNAL_ERROR;
        }
        String strE = ej2Var.E();
        Intrinsics.checkNotNullExpressionValue(strE, "getErrorString(...)");
        return new m01(strE, kk1Var);
    }

    public final Uri a() {
        Uri.Builder builderBuildUpon = Uri.parse(this.j).buildUpon();
        for (Map.Entry entry : this.p.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            if (this.o.isEmpty() || this.o.contains(str)) {
                Intrinsics.checkNotNull(builderBuildUpon);
                c43.a(builderBuildUpon, str, str2);
            }
        }
        return builderBuildUpon.build();
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0077 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:31:0x0078  */
    /* JADX WARN: Code duplicated, block: B:33:0x0081  */
    /* JADX WARN: Code duplicated, block: B:36:0x0092  */
    /* JADX WARN: Code duplicated, block: B:37:0x009c  */
    /* JADX WARN: Code duplicated, block: B:39:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:40:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:42:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:45:0x00e5 A[LOOP:0: B:43:0x00df->B:45:0x00e5, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:48:0x0106  */
    /* JADX WARN: Code duplicated, block: B:50:0x010f  */
    /* JADX WARN: Code duplicated, block: B:55:0x0142  */
    /* JADX WARN: Code duplicated, block: B:58:0x0151 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:59:0x0152  */
    /* JADX WARN: Code duplicated, block: B:61:0x0156  */
    /* JADX WARN: Code duplicated, block: B:63:0x0161  */
    /* JADX WARN: Code duplicated, block: B:64:0x0164  */
    /* JADX WARN: Code duplicated, block: B:66:0x0167  */
    /* JADX WARN: Code duplicated, block: B:71:0x0172  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(v01 v01Var, Continuation continuation) {
        h43 h43Var;
        j43 j43Var;
        JsonObject jsonObject;
        JsonObject jsonObject2;
        zt ztVar;
        JsonObject jsonObject3;
        String str;
        String str2;
        yt ytVar;
        v01 v01Var2;
        yt ytVar2;
        v01 v01VarA;
        q01 q01Var;
        zt ztVar2;
        if (continuation instanceof h43) {
            h43Var = (h43) continuation;
            int i = h43Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                h43Var.e = i - Integer.MIN_VALUE;
            } else {
                h43Var = new h43(this, continuation);
            }
        } else {
            h43Var = new h43(this, continuation);
        }
        Object objC = h43Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = h43Var.e;
        String str3 = null;
        boolean z = true;
        if (i2 != 0) {
            if (i2 == 1) {
                v01Var = (v01) h43Var.b;
                j43Var = (j43) h43Var.a;
                p005kotlin.ResultKt.throwOnFailure(objC);
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ytVar2 = (yt) h43Var.b;
                v01Var2 = (v01) h43Var.a;
                p005kotlin.ResultKt.throwOnFailure(objC);
            }
            ytVar2.getClass();
            v01VarA = yt.a((v01) objC);
            if (v01VarA instanceof i01) {
                return v01VarA;
            }
            if (v01VarA instanceof q01) {
                throw new p005kotlin.NoWhenBranchMatchedException();
            }
            zt ztVar3 = (zt) ((q01) v01VarA).b;
            if (v01Var2 instanceof q01) {
                q01Var = (q01) v01Var2;
            } else {
                q01Var = null;
            }
            if (q01Var != null && (ztVar2 = (zt) q01Var.b) != null) {
                str3 = ztVar2.f;
            }
            ztVar3.f = str3;
            return v01VarA;
        }
        p005kotlin.ResultKt.throwOnFailure(objC);
        int i3 = this.a.y;
        if (i3 == 2) {
            j43Var = this;
            if (!z) {
                return v01Var;
            }
            jsonObject = new JsonObject();
            jsonObject2 = j43Var.u;
            if (jsonObject2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("signalJson");
                jsonObject2 = null;
            }
            jsonObject.add("signals", jsonObject2);
            if (v01Var instanceof m01) {
                jsonObject.addProperty("error", ((m01) v01Var).c);
            } else if (v01Var instanceof i01) {
                jsonObject.addProperty("error", v01Var.toString());
            } else if (v01Var instanceof q01) {
                Splitter splitter = f01.a;
                f01.a(new i43(v01Var));
                ztVar = (zt) ((q01) v01Var).b;
                jsonObject.addProperty("cookies_include", Boxing.boxBoolean(ztVar.d));
                jsonObject.addProperty("url", ztVar.e);
                jsonObject3 = new JsonObject();
                for (Map.Entry entry : j43Var.p.entrySet()) {
                    jsonObject3.addProperty((String) entry.getKey(), (String) entry.getValue());
                }
                p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                jsonObject.add("c_params", jsonObject3);
                str = ztVar.c;
                if (str != null) {
                    jsonObject.addProperty("post_body", str);
                    str2 = ztVar.i;
                    if (str2 == null) {
                        str2 = AssetHelper.DEFAULT_MIME_TYPE;
                    }
                    jsonObject.addProperty(FirebaseAnalytics.Param.CONTENT_TYPE, str2);
                    jsonObject.addProperty("use_compression", Boxing.boxBoolean(ztVar.h));
                }
            }
            ytVar = zt.j;
            Object obj = j43Var.g;
            h43Var.a = v01Var;
            h43Var.b = ytVar;
            h43Var.e = 2;
            obj.getClass();
            String string = jsonObject.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            objC = ((rp0) obj).a("google.afma.request.patchCSRB", string, h43Var);
            if (objC != coroutine_suspended) {
                v01Var2 = v01Var;
                ytVar2 = ytVar;
                ytVar2.getClass();
                v01VarA = yt.a((v01) objC);
                if (v01VarA instanceof i01) {
                    return v01VarA;
                }
                if (v01VarA instanceof q01) {
                    throw new p005kotlin.NoWhenBranchMatchedException();
                }
                zt ztVar4 = (zt) ((q01) v01VarA).b;
                if (v01Var2 instanceof q01) {
                    q01Var = (q01) v01Var2;
                } else {
                    q01Var = null;
                }
                if (q01Var != null) {
                    str3 = ztVar2.f;
                }
                ztVar4.f = str3;
                return v01VarA;
            }
        } else if (i3 == 1) {
            Object obj2 = this.g;
            h43Var.a = this;
            h43Var.b = v01Var;
            h43Var.e = 1;
            objC = ((rp0) obj2).c(h43Var);
            if (objC != coroutine_suspended) {
                j43Var = this;
            }
        } else {
            j43Var = this;
            z = false;
            if (!z) {
                return v01Var;
            }
            jsonObject = new JsonObject();
            jsonObject2 = j43Var.u;
            if (jsonObject2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("signalJson");
                jsonObject2 = null;
            }
            jsonObject.add("signals", jsonObject2);
            if (v01Var instanceof m01) {
                jsonObject.addProperty("error", ((m01) v01Var).c);
            } else if (v01Var instanceof i01) {
                jsonObject.addProperty("error", v01Var.toString());
            } else if (v01Var instanceof q01) {
                Splitter splitter2 = f01.a;
                f01.a(new i43(v01Var));
                ztVar = (zt) ((q01) v01Var).b;
                jsonObject.addProperty("cookies_include", Boxing.boxBoolean(ztVar.d));
                jsonObject.addProperty("url", ztVar.e);
                jsonObject3 = new JsonObject();
                while (r7.hasNext()) {
                    jsonObject3.addProperty((String) entry.getKey(), (String) entry.getValue());
                }
                p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                jsonObject.add("c_params", jsonObject3);
                str = ztVar.c;
                if (str != null) {
                    jsonObject.addProperty("post_body", str);
                    str2 = ztVar.i;
                    if (str2 == null) {
                        str2 = AssetHelper.DEFAULT_MIME_TYPE;
                    }
                    jsonObject.addProperty(FirebaseAnalytics.Param.CONTENT_TYPE, str2);
                    jsonObject.addProperty("use_compression", Boxing.boxBoolean(ztVar.h));
                }
            }
            ytVar = zt.j;
            Object obj3 = j43Var.g;
            h43Var.a = v01Var;
            h43Var.b = ytVar;
            h43Var.e = 2;
            obj3.getClass();
            String string2 = jsonObject.toString();
            Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
            objC = ((rp0) obj3).a("google.afma.request.patchCSRB", string2, h43Var);
            if (objC != coroutine_suspended) {
                v01Var2 = v01Var;
                ytVar2 = ytVar;
                ytVar2.getClass();
                v01VarA = yt.a((v01) objC);
                if (v01VarA instanceof i01) {
                    return v01VarA;
                }
                if (v01VarA instanceof q01) {
                    throw new p005kotlin.NoWhenBranchMatchedException();
                }
                zt ztVar5 = (zt) ((q01) v01VarA).b;
                if (v01Var2 instanceof q01) {
                    q01Var = (q01) v01Var2;
                } else {
                    q01Var = null;
                }
                if (q01Var != null) {
                    str3 = ztVar2.f;
                }
                ztVar5.f = str3;
                return v01VarA;
            }
        }
        return coroutine_suspended;
        if (!((Boolean) objC).booleanValue()) {
            z = false;
        }
        if (!z) {
            return v01Var;
        }
        jsonObject = new JsonObject();
        jsonObject2 = j43Var.u;
        if (jsonObject2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("signalJson");
            jsonObject2 = null;
        }
        jsonObject.add("signals", jsonObject2);
        if (v01Var instanceof m01) {
            jsonObject.addProperty("error", ((m01) v01Var).c);
        } else if (v01Var instanceof i01) {
            jsonObject.addProperty("error", v01Var.toString());
        } else if (v01Var instanceof q01) {
            Splitter splitter3 = f01.a;
            f01.a(new i43(v01Var));
            ztVar = (zt) ((q01) v01Var).b;
            jsonObject.addProperty("cookies_include", Boxing.boxBoolean(ztVar.d));
            jsonObject.addProperty("url", ztVar.e);
            jsonObject3 = new JsonObject();
            while (r7.hasNext()) {
                jsonObject3.addProperty((String) entry.getKey(), (String) entry.getValue());
            }
            p005kotlin.Unit unit3 = p005kotlin.Unit.INSTANCE;
            jsonObject.add("c_params", jsonObject3);
            str = ztVar.c;
            if (str != null) {
                jsonObject.addProperty("post_body", str);
                str2 = ztVar.i;
                if (str2 == null) {
                    str2 = AssetHelper.DEFAULT_MIME_TYPE;
                }
                jsonObject.addProperty(FirebaseAnalytics.Param.CONTENT_TYPE, str2);
                jsonObject.addProperty("use_compression", Boxing.boxBoolean(ztVar.h));
            }
        }
        ytVar = zt.j;
        Object obj4 = j43Var.g;
        h43Var.a = v01Var;
        h43Var.b = ytVar;
        h43Var.e = 2;
        obj4.getClass();
        String string3 = jsonObject.toString();
        Intrinsics.checkNotNullExpressionValue(string3, "toString(...)");
        objC = ((rp0) obj4).a("google.afma.request.patchCSRB", string3, h43Var);
        if (objC != coroutine_suspended) {
            v01Var2 = v01Var;
            ytVar2 = ytVar;
            ytVar2.getClass();
            v01VarA = yt.a((v01) objC);
            if (v01VarA instanceof i01) {
                return v01VarA;
            }
            if (v01VarA instanceof q01) {
                throw new p005kotlin.NoWhenBranchMatchedException();
            }
            zt ztVar6 = (zt) ((q01) v01VarA).b;
            if (v01Var2 instanceof q01) {
                q01Var = (q01) v01Var2;
            } else {
                q01Var = null;
            }
            if (q01Var != null) {
                str3 = ztVar2.f;
            }
            ztVar6.f = str3;
            return v01VarA;
        }
        return coroutine_suspended;
    }

    public final Object a(Signals signals, yp2 yp2Var, hj2 hj2Var, Map map, ContinuationImpl continuationImpl) {
        return a(this, signals, yp2Var, hj2Var, map, continuationImpl);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object a(Continuation continuation) {
        f43 f43Var;
        j43 j43Var;
        AppStats appStats;
        if (continuation instanceof f43) {
            f43Var = (f43) continuation;
            int i = f43Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                f43Var.d = i - Integer.MIN_VALUE;
            } else {
                f43Var = new f43(this, continuation);
            }
        } else {
            f43Var = new f43(this, continuation);
        }
        Object obj = f43Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = f43Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            d();
            NativeRequest nativeRequest = (NativeRequest) OptionalsKt.getOrNull(this.e);
            if (nativeRequest != null) {
                g42 builder = h42.v();
                Intrinsics.checkNotNullExpressionValue(builder, "newBuilder(...)");
                Intrinsics.checkNotNullParameter(builder, "builder");
                if (nativeRequest.getIsImageLoadingDisabled()) {
                    builder.h();
                }
                if (nativeRequest.getCustomMuteThisAdRequested()) {
                    builder.k();
                }
                if (nativeRequest.getMediaAspectRatio() != NativeAd.NativeMediaAspectRatio.UNKNOWN) {
                    String value = nativeRequest.getMediaAspectRatio().name().toLowerCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(value, "toLowerCase(...)");
                    Intrinsics.checkNotNullParameter(value, "value");
                    builder.a(value);
                }
                builder.a(nativeRequest.getAdChoicesPlacement().getValue());
                NativeAd.SwipeGestureDirection customClickGestureDirection = nativeRequest.getCustomClickGestureDirection();
                if (customClickGestureDirection != null) {
                    i42 builder2 = j42.v();
                    Intrinsics.checkNotNullExpressionValue(builder2, "newBuilder(...)");
                    Intrinsics.checkNotNullParameter(builder2, "builder");
                    builder2.a(customClickGestureDirection.getValue());
                    if (nativeRequest.getCustomClickGestureAllowTaps()) {
                        builder2.h();
                    }
                    vz0 vz0VarB = builder2.b();
                    Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
                    j42 value2 = (j42) vz0VarB;
                    Intrinsics.checkNotNullParameter(value2, "value");
                    builder.a(value2);
                }
                if (nativeRequest.getAdSize() != null) {
                    builder.j();
                    builder.i();
                }
                VideoOptions videoOptions = nativeRequest.getVideoOptions();
                if (videoOptions != null) {
                    k42 builder3 = l42.v();
                    Intrinsics.checkNotNullExpressionValue(builder3, "newBuilder(...)");
                    Intrinsics.checkNotNullParameter(builder3, "builder");
                    if (videoOptions.getStartMuted()) {
                        builder3.j();
                    }
                    if (videoOptions.getClickToExpandRequested()) {
                        builder3.h();
                    }
                    if (videoOptions.getCustomControlsRequested()) {
                        builder3.i();
                    }
                    vz0 vz0VarB2 = builder3.b();
                    Intrinsics.checkNotNullExpressionValue(vz0VarB2, "build(...)");
                    l42 value3 = (l42) vz0VarB2;
                    Intrinsics.checkNotNullParameter(value3, "value");
                    builder.a(value3);
                }
                vz0 vz0VarB3 = builder.b();
                Intrinsics.checkNotNullExpressionValue(vz0VarB3, "build(...)");
                JsonObject jsonObject = this.v;
                String str = (String) dt.NATIVE_AD_OPTIONS.a.get(0);
                byte[] bArrEncode = Base64.encode(((h42) vz0VarB3).c(), 10);
                Intrinsics.checkNotNullExpressionValue(bArrEncode, "encode(...)");
                jsonObject.addProperty(str, StringsKt.replace$default(new String(bArrEncode, Charsets.UTF_8), C3510b4.j.b, ".", false, 4, (Object) null));
            }
            Signals signals = this.t;
            Signals signals2 = null;
            if (signals == null) {
                Intrinsics.throwUninitializedPropertyAccessException("signals");
                signals = null;
            }
            Set<String> set = signals.neighboringContentUrls;
            if (set != null) {
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(set, 10));
                Iterator<T> it = set.iterator();
                while (it.hasNext()) {
                    arrayList.add(Uri.encode((String) it.next()));
                }
                JsonArray jsonArray = new JsonArray();
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    jsonArray.add((String) it2.next());
                }
                this.v.add("neighboring_content_urls", jsonArray);
            }
            ex0 ex0Var = this.a;
            ex0Var.getClass();
            Map defaultValue = MapsKt.mapOf(p005kotlin.TuplesKt.to("IAB_AUDIENCE_1_1", "3"), p005kotlin.TuplesKt.to("IAB_CONTENT_2_1", "4"), p005kotlin.TuplesKt.to("IAB_CONTENT_2_2", "5"));
            Intrinsics.checkNotNullParameter("pps_tx", C3510b4.i.W);
            Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
            Map map = (Map) ex0Var.a("pps_tx", defaultValue, yr.p);
            ArrayList arrayList2 = new ArrayList();
            for (Map.Entry entry : map.entrySet()) {
                String strA = a((String) entry.getKey(), (String) entry.getValue());
                if (strA != null) {
                    arrayList2.add(strA);
                }
            }
            String strJoinToString$default = CollectionsKt.joinToString$default(arrayList2, "~", null, null, 0, null, null, 62, null);
            if (!StringsKt.isBlank(strJoinToString$default)) {
                this.v.addProperty((String) dt.PUB_PROVIDED_SIGNALS.a.get(0), strJoinToString$default);
            }
            Signals signals3 = this.t;
            if (signals3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("signals");
                signals3 = null;
            }
            QualitySignals qualitySignals = signals3.qualitySignals;
            if (qualitySignals != null && (appStats = qualitySignals.appStats) != null) {
                long j = appStats.timeInSessionMilliseconds;
                this.v.addProperty((String) dt.TIME_IN_SESSION.a.get(0), String.valueOf(j));
                long jCurrentTimeMillis = System.currentTimeMillis() - j;
                long j2 = 60000;
                this.v.addProperty((String) dt.SESSION_START_TIMESTAMP.a.get(0), String.valueOf((jCurrentTimeMillis / j2) * j2));
            }
            Signals signals4 = this.t;
            if (signals4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("signals");
                signals4 = null;
            }
            String str2 = signals4.multipleAdSizeString;
            if (str2 != null) {
                this.v.addProperty((String) dt.IU_SIZES.a.get(0), str2);
            }
            Signals signals5 = this.t;
            if (signals5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("signals");
                signals5 = null;
            }
            String str3 = signals5.format;
            if (str3 != null) {
                ne3 ne3Var = (ne3) this.w.get("request_type");
                if (ne3Var == null || ne3Var.y() != i53.REQUEST_TYPE_ADX.getNumber() || Intrinsics.areEqual(str3, "interstitial_mb")) {
                    this.v.addProperty((String) dt.FORMAT.a.get(0), str3);
                } else {
                    this.v.addProperty((String) dt.FORMAT.a.get(0), StringsKt.replace$default(str3, "_as", "_mb", false, 4, (Object) null));
                }
            }
            Signals signals6 = this.t;
            if (signals6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("signals");
                signals6 = null;
            }
            AdSizeBundle adSizeBundle = (AdSizeBundle) CollectionsKt.firstOrNull((List) signals6.adSizeArray);
            if (adSizeBundle != null) {
                JsonObject jsonObject2 = this.v;
                JsonObject jsonObject3 = new JsonObject();
                jsonObject3.addProperty("width", Integer.valueOf(adSizeBundle.width));
                jsonObject3.addProperty("height", Integer.valueOf(adSizeBundle.height));
                p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                jsonObject2.add("p_sz", jsonObject3);
            }
            JsonObject jsonObject4 = this.v;
            String str4 = (String) dt.MOBILE_SCREEN_ORIENTATION.a.get(0);
            Signals signals7 = this.t;
            if (signals7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("signals");
                signals7 = null;
            }
            int i3 = signals7.screenWidth;
            Signals signals8 = this.t;
            if (signals8 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("signals");
                signals8 = null;
            }
            jsonObject4.addProperty(str4, i3 > signals8.screenHeight ? "l" : "p");
            JsonObject jsonObject5 = this.v;
            String str5 = (String) dt.SCREEN_WIDTH.a.get(0);
            Signals signals9 = this.t;
            if (signals9 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("signals");
                signals9 = null;
            }
            jsonObject5.addProperty(str5, String.valueOf(signals9.screenWidthDip));
            JsonObject jsonObject6 = this.v;
            String str6 = (String) dt.SCREEN_HEIGHT.a.get(0);
            Signals signals10 = this.t;
            if (signals10 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("signals");
            } else {
                signals2 = signals10;
            }
            jsonObject6.addProperty(str6, String.valueOf(signals2.screenHeightDip));
            f43Var.a = this;
            f43Var.d = 1;
            if (b(f43Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            j43Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            j43Var = f43Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        j43Var.v.addProperty("c", j43Var.f.a());
        j43Var.e();
        j43Var.c();
        return p005kotlin.Unit.INSTANCE;
    }

    public final String a(String str, String str2) {
        Iterable iterable;
        String strJoinToString$default;
        Signals signals = this.t;
        if (signals == null) {
            Intrinsics.throwUninitializedPropertyAccessException("signals");
            signals = null;
        }
        Bundle bundle = signals.googleExtrasBundle;
        if (bundle == null || (stringArrayList = bundle.getIntegerArrayList(str)) == null) {
            Signals signals2 = this.t;
            if (signals2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("signals");
                signals2 = null;
            }
            Bundle bundle2 = signals2.googleExtrasBundle;
            if (bundle2 != null) {
                Iterable stringArrayList = bundle2.getStringArrayList(str);
                iterable = stringArrayList;
            } else {
                iterable = null;
            }
        } else {
            iterable = stringArrayList;
        }
        if (iterable != null && (strJoinToString$default = CollectionsKt.joinToString$default(iterable, "|", null, null, 0, null, null, 62, null)) != null) {
            String str3 = str2 + C3510b4.j.b + strJoinToString$default;
            if (new Regex(this.a.N0()).matches(str3)) {
                return str3;
            }
        }
        return null;
    }

    public final p005kotlin.Pair a(String str, Set set) {
        Uri uriBuild;
        Uri.Builder builderBuildUpon = Uri.parse(this.j).buildUpon();
        String encodedQuery = null;
        Uri.Builder builder = set != null ? new Uri.Builder() : null;
        for (Map.Entry entry : this.p.entrySet()) {
            String str2 = (String) entry.getKey();
            String str3 = (String) entry.getValue();
            if (this.o.isEmpty() || this.o.contains(str2)) {
                if (!this.n.contains(str2)) {
                    Uri.Builder builder2 = (builder == null || (set != null && set.contains(str2))) ? builderBuildUpon : builder;
                    Intrinsics.checkNotNull(builder2);
                    c43.a(builder2, str2, str3);
                } else if (this.n.contains(str2) && au.a() == bu.INTEGRATION_TEST) {
                    String str4 = str2 + "l";
                    String strValueOf = String.valueOf(str3.length());
                    Uri.Builder builder3 = (builder == null || (set != null && set.contains(str4))) ? builderBuildUpon : builder;
                    Intrinsics.checkNotNull(builder3);
                    c43.a(builder3, str4, strValueOf);
                }
            }
        }
        if (str != null && str.length() > 0) {
            String strT = this.a.t();
            Uri.Builder builder4 = (builder == null || (set != null && set.contains(strT))) ? builderBuildUpon : builder;
            Intrinsics.checkNotNull(builder4);
            c43.a(builder4, strT, str);
        }
        Uri uriBuild2 = builderBuildUpon.build();
        if (builder != null && (uriBuild = builder.build()) != null) {
            encodedQuery = uriBuild.getEncodedQuery();
        }
        return new p005kotlin.Pair(uriBuild2, encodedQuery);
    }

    public final void a(ej2 ej2Var, ia1 ia1Var) {
        String strD;
        JsonObject jsonObject = this.u;
        p005kotlin.Unit unit = null;
        if (jsonObject == null) {
            Intrinsics.throwUninitializedPropertyAccessException("signalJson");
            jsonObject = null;
        }
        yh1.f fVarG = ia1Var.G();
        Intrinsics.checkNotNullExpressionValue(fVarG, "getPathList(...)");
        JsonElement jsonElementB = c43.b(jsonObject, fVarG);
        if (jsonElementB == null) {
            return;
        }
        int iOrdinal = ia1Var.I().ordinal();
        if (iOrdinal == 0) {
            strD = null;
        } else if (iOrdinal == 1) {
            strD = c43.d(jsonElementB, ia1Var);
        } else if (iOrdinal == 2) {
            strD = c43.a(jsonElementB, ia1Var);
        } else if (iOrdinal != 3) {
            if (iOrdinal != 4) {
                throw new p005kotlin.NoWhenBranchMatchedException();
            }
            strD = null;
        } else {
            strD = c43.b(jsonElementB, ia1Var);
        }
        if (strD == null) {
            return;
        }
        if (ia1Var.L()) {
            String strX = ia1Var.x();
            Intrinsics.checkNotNullExpressionValue(strX, "getCaptureGroup(...)");
            if (strX.length() > 0) {
                m21 m21Var = o21.f;
                String strX2 = ia1Var.x();
                Intrinsics.checkNotNullExpressionValue(strX2, "getCaptureGroup(...)");
                String strB = m21.b(strX2, strD);
                if (strB != null) {
                    unit = p005kotlin.Unit.INSTANCE;
                    strD = strB;
                }
                if (unit == null) {
                    return;
                }
            }
        }
        if (!ia1Var.M() || strD.length() <= ia1Var.D()) {
            String strJ = ia1Var.J();
            if (strJ == null || StringsKt.isBlank(strJ)) {
                yh1.f fVarG2 = ia1Var.G();
                Intrinsics.checkNotNullExpressionValue(fVarG2, "getPathList(...)");
                strJ = (String) CollectionsKt.lastOrNull((List) fVarG2);
            }
            if (strJ != null && !StringsKt.isBlank(strJ)) {
                String strI = ej2Var.I();
                Intrinsics.checkNotNullExpressionValue(strI, "getRuleLabel(...)");
                a(strJ, strD, strI);
            } else {
                String str = "Rule " + ej2Var.I() + " attempted to include a signal with no URL key or path.";
                ((as3) this.c).a(str, (Throwable) new Exception(str));
            }
        }
    }

    public final void a(yp2 yp2Var) {
        for (vp2 vp2Var : yp2Var.x()) {
            if (vp2Var.x()) {
                zt1 zt1VarW = vp2Var.w();
                Intrinsics.checkNotNullExpressionValue(zt1VarW, "getPattern(...)");
                if (a(zt1VarW)) {
                }
            }
            Map mapV = vp2Var.v();
            Intrinsics.checkNotNullExpressionValue(mapV, "getIncludeSignalsMap(...)");
            for (Map.Entry entry : mapV.entrySet()) {
                String str = (String) entry.getKey();
                ne3 ne3Var = (ne3) entry.getValue();
                LinkedHashMap linkedHashMap = this.w;
                Intrinsics.checkNotNull(str);
                Intrinsics.checkNotNull(ne3Var);
                linkedHashMap.put(str, ne3Var);
            }
        }
    }

    public final void a(String str, String str2, String str3) {
        if (StringsKt.isBlank(str)) {
            String str4 = "Rule " + str3 + " attempted to set a blank URL parameter.";
            ((as3) this.c).a(str4, (Throwable) new Exception(str4));
            return;
        }
        if (this.p.containsKey(str)) {
            String str5 = "URL parameter " + str + " was attempted to be overwritten by rule " + str3 + ".";
            ((as3) this.c).a(str5, (Throwable) new Exception(str5));
            return;
        }
        Map map = this.q;
        Map map2 = null;
        if (map == null) {
            Intrinsics.throwUninitializedPropertyAccessException("concatenatedSignalsRules");
            map = null;
        }
        if (!map.containsKey(str)) {
            this.p.put(str, str2);
            return;
        }
        Map map3 = this.q;
        if (map3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("concatenatedSignalsRules");
        } else {
            map2 = map3;
        }
        Object obj = map2.get(str);
        Intrinsics.checkNotNull(obj);
        String str6 = (String) obj;
        StringBuilder sb = (StringBuilder) this.r.get(str);
        if (sb == null) {
            sb = new StringBuilder();
        }
        if (sb.length() > 0) {
            sb.append(str6);
        }
        sb.append(str2);
        this.r.put(str, sb);
    }

    public final boolean a(int i, String str) {
        int length;
        int length2;
        int length3 = this.j.length() + 1;
        if (length3 >= i) {
            return true;
        }
        if (str != null && str.length() != 0) {
            length3 += str.length() + this.a.t().length() + 2;
            if (length3 >= i) {
                return true;
            }
        }
        for (Map.Entry entry : this.p.entrySet()) {
            String str2 = (String) entry.getKey();
            String str3 = (String) entry.getValue();
            if (this.o.isEmpty() || this.o.contains(str2)) {
                if (this.n.contains(str2)) {
                    if (au.a == bu.INTEGRATION_TEST) {
                        length = str2.length() + 1;
                        length2 = String.valueOf(str3.length()).length();
                        length3 = length2 + length + 2 + length3;
                    }
                } else if (str3.length() > 0) {
                    length = str2.length();
                    length2 = str3.length();
                    length3 = length2 + length + 2 + length3;
                }
                if (length3 >= i) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean a(zt1 zt1Var) {
        if (zt1Var.v().size() > 0) {
            yh1.f<zt1> fVarV = zt1Var.v();
            Intrinsics.checkNotNullExpressionValue(fVarV, "getAndNodesList(...)");
            if ((fVarV instanceof Collection) && fVarV.isEmpty()) {
                return true;
            }
            for (zt1 zt1Var2 : fVarV) {
                Intrinsics.checkNotNull(zt1Var2);
                if (!a(zt1Var2)) {
                    return false;
                }
            }
            return true;
        }
        if (zt1Var.z().size() > 0) {
            yh1.f<zt1> fVarZ = zt1Var.z();
            Intrinsics.checkNotNullExpressionValue(fVarZ, "getOrNodesList(...)");
            if ((fVarZ instanceof Collection) && fVarZ.isEmpty()) {
                return false;
            }
            for (zt1 zt1Var3 : fVarZ) {
                Intrinsics.checkNotNull(zt1Var3);
                if (a(zt1Var3)) {
                    return true;
                }
            }
            return false;
        }
        if (zt1Var.B()) {
            zt1 zt1VarY = zt1Var.y();
            Intrinsics.checkNotNullExpressionValue(zt1VarY, "getNotNode(...)");
            return !a(zt1VarY);
        }
        if (!zt1Var.A()) {
            return true;
        }
        JsonObject jsonObject = this.u;
        if (jsonObject == null) {
            Intrinsics.throwUninitializedPropertyAccessException("signalJson");
            jsonObject = null;
        }
        qu1 qu1VarX = zt1Var.x();
        Intrinsics.checkNotNullExpressionValue(qu1VarX, "getMatchNode(...)");
        return c43.a(jsonObject, qu1VarX);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0043  */
    /* JADX WARN: Code duplicated, block: B:17:0x004b  */
    /* JADX WARN: Code duplicated, block: B:19:0x004e  */
    /* JADX WARN: Code duplicated, block: B:22:0x0061  */
    /* JADX WARN: Code duplicated, block: B:26:0x0075 A[LOOP:1: B:20:0x005b->B:26:0x0075, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:32:0x0072 A[SYNTHETIC] */
    public final v01 b(ej2 ej2Var) {
        v01 v01VarA;
        v01 v01VarB;
        if (ej2Var.O()) {
            zt1 zt1VarH = ej2Var.H();
            Intrinsics.checkNotNullExpressionValue(zt1VarH, "getPattern(...)");
            if (a(zt1VarH)) {
                v01VarA = a(ej2Var);
                if (v01VarA instanceof i01) {
                    return (i01) v01VarA;
                }
                Intrinsics.checkNotNull(v01VarA, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                for (ej2 ej2Var2 : ej2Var.y()) {
                    Intrinsics.checkNotNull(ej2Var2);
                    v01VarB = b(ej2Var2);
                    if (v01VarB instanceof i01) {
                        return (i01) v01VarB;
                    }
                    Intrinsics.checkNotNull(v01VarB, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                    ((q01) v01VarB).getClass();
                }
            } else {
                for (ej2 ej2Var3 : ej2Var.C()) {
                    Intrinsics.checkNotNull(ej2Var3);
                    v01 v01VarB2 = b(ej2Var3);
                    if (v01VarB2 instanceof i01) {
                        return (i01) v01VarB2;
                    }
                    Intrinsics.checkNotNull(v01VarB2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                    ((q01) v01VarB2).getClass();
                }
            }
        } else {
            v01VarA = a(ej2Var);
            if (v01VarA instanceof i01) {
                return (i01) v01VarA;
            }
            Intrinsics.checkNotNull(v01VarA, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
            while (r4.hasNext()) {
                Intrinsics.checkNotNull(ej2Var2);
                v01VarB = b(ej2Var2);
                if (v01VarB instanceof i01) {
                    return (i01) v01VarB;
                }
                Intrinsics.checkNotNull(v01VarB, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                ((q01) v01VarB).getClass();
            }
        }
        return new q01(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(Continuation continuation) {
        g43 g43Var;
        JsonObject jsonObject;
        JsonObject jsonObject2;
        String str;
        JsonObject jsonObject3;
        if (continuation instanceof g43) {
            g43Var = (g43) continuation;
            int i = g43Var.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                g43Var.g = i - Integer.MIN_VALUE;
            } else {
                g43Var = new g43(this, continuation);
            }
        } else {
            g43Var = new g43(this, continuation);
        }
        Object obj = g43Var.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = g43Var.g;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            jsonObject = this.v;
            JsonObject jsonObject4 = new JsonObject();
            g30 g30Var = this.b;
            g43Var.a = jsonObject4;
            g43Var.b = jsonObject4;
            g43Var.c = jsonObject;
            g43Var.d = "sdk_core";
            g43Var.g = 1;
            g30Var.getClass();
            Object objH = g30.h(g30Var, g43Var);
            if (objH == coroutine_suspended) {
                return coroutine_suspended;
            }
            jsonObject2 = jsonObject4;
            str = "sdk_core";
            obj = objH;
            jsonObject3 = jsonObject2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str = g43Var.d;
            jsonObject = g43Var.c;
            jsonObject2 = g43Var.b;
            jsonObject3 = g43Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        Map mapEmptyMap = (Map) obj;
        if (mapEmptyMap == null) {
            mapEmptyMap = MapsKt.emptyMap();
        }
        for (Map.Entry entry : mapEmptyMap.entrySet()) {
            jsonObject2.addProperty((String) entry.getKey(), (String) entry.getValue());
        }
        p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
        jsonObject.add(str, jsonObject3);
        return unit;
    }

    public final String b() {
        Uri.Builder builder = new Uri.Builder();
        for (String str : this.n) {
            String str2 = (String) this.p.get(str);
            if (str2 != null) {
                c43.a(builder, str, str2);
            }
        }
        String query = builder.build().getQuery();
        if (query == null) {
            query = "";
        }
        v01 v01VarA = this.d.a(query);
        q01 q01Var = v01VarA instanceof q01 ? (q01) v01VarA : null;
        if (q01Var != null) {
            return (String) q01Var.b;
        }
        return null;
    }

    public final void c() {
        this.v.addProperty("a_url", this.h + ".android." + this.i.getPackageName() + "." + this.a.v());
    }

    public final void d() {
        ne3 ne3Var = (ne3) this.w.get(dt.NON_PERSONALIZED_AD.e());
        boolean zV = ne3Var != null ? ne3Var.v() : false;
        ne3 ne3Var2 = (ne3) this.w.get(dt.TAG_FOR_UNDER_AGE_OF_CONSENT.e());
        boolean zV2 = ne3Var2 != null ? ne3Var2.v() : false;
        Signals signals = this.t;
        if (signals == null) {
            Intrinsics.throwUninitializedPropertyAccessException("signals");
            signals = null;
        }
        boolean z = signals.sharedPreferenceSignals.getInt("IABTCF_CmpSdkID", 0) == 300;
        int i = zV2 ? 2 : 0;
        if (zV) {
            i |= 8;
        }
        if (z) {
            i |= 128;
        }
        this.v.addProperty(dt.GDPR_USER_CONSENT_INFO.e(), "0.0.0.0.0.0.0." + i);
    }

    public final void e() {
        int iIntValue;
        String strZ;
        Signals signals = this.t;
        Signals signals2 = null;
        if (signals == null) {
            Intrinsics.throwUninitializedPropertyAccessException("signals");
            signals = null;
        }
        Integer num = signals.numberOfAdsRequested;
        if (num == null || (iIntValue = num.intValue()) <= 1) {
            return;
        }
        Signals signals3 = this.t;
        if (signals3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("signals");
            signals3 = null;
        }
        Boolean bool = signals3.isIconAdRequest;
        int iMin = (bool == null || !bool.booleanValue()) ? Math.min(iIntValue, 5) : Math.min(iIntValue, this.a.e0());
        Signals signals4 = this.t;
        if (signals4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("signals");
        } else {
            signals2 = signals4;
        }
        String str = signals2.adUnitId;
        if (str == null) {
            str = "";
        }
        if (str.length() == 0) {
            return;
        }
        ne3 ne3Var = (ne3) this.w.get("sra_regex");
        if (ne3Var != null && (strZ = ne3Var.z()) != null) {
            m21 m21Var = o21.f;
            String strB = m21.b(strZ, str);
            if (strB != null) {
                str = strB;
            }
        }
        String[] strArr = new String[iMin];
        for (int i = 0; i < iMin; i++) {
            strArr[i] = "slotname=" + str;
        }
        this.v.addProperty(dt.SRA_URLS.e(), ArraysKt.joinToString$default(strArr, FacebookConstants.PLACEMENT_IDS_SEPARATOR, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62, (Object) null));
    }

    public final void f() {
        try {
            Signals signals = this.t;
            Signals signals2 = null;
            if (signals == null) {
                Intrinsics.throwUninitializedPropertyAccessException("signals");
                signals = null;
            }
            Bundle bundle = signals.googleExtrasBundle;
            if (bundle == null) {
                bundle = new Bundle();
            }
            Gson gson = this.s;
            Signals signals3 = this.t;
            if (signals3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("signals");
                signals3 = null;
            }
            String str = signals3.inspectorExtras;
            if (str == null) {
                str = JsonUtils.EMPTY_JSON;
            }
            JsonObject jsonObject = (JsonObject) gson.fromJson(str, JsonObject.class);
            ds1 ds1Var = ds1.a;
            JsonObject jsonObjectA = ds1.a(jsonObject, "global_extras", (JsonObject) null);
            if (jsonObjectA != null) {
                Map<String, JsonElement> mapAsMap = jsonObjectA.asMap();
                Intrinsics.checkNotNullExpressionValue(mapAsMap, "asMap(...)");
                for (Map.Entry<String, JsonElement> entry : mapAsMap.entrySet()) {
                    bundle.putString(entry.getKey(), entry.getValue().toString());
                }
            }
            ds1 ds1Var2 = ds1.a;
            Signals signals4 = this.t;
            if (signals4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("signals");
                signals4 = null;
            }
            String str2 = signals4.adUnitId;
            if (str2 == null) {
                str2 = "";
            }
            JsonObject jsonObjectA2 = ds1.a(jsonObject, str2, (JsonObject) null);
            if (jsonObjectA2 != null) {
                Map<String, JsonElement> mapAsMap2 = jsonObjectA2.asMap();
                Intrinsics.checkNotNullExpressionValue(mapAsMap2, "asMap(...)");
                for (Map.Entry<String, JsonElement> entry2 : mapAsMap2.entrySet()) {
                    bundle.putString(entry2.getKey(), entry2.getValue().toString());
                }
            }
            Signals signals5 = this.t;
            if (signals5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("signals");
            } else {
                signals2 = signals5;
            }
            signals2.googleExtrasBundle = bundle;
        } catch (Throwable unused) {
        }
    }

    public final void g() {
        Integer num;
        gt gtVarW = xt.w();
        Intrinsics.checkNotNullExpressionValue(gtVarW, "newBuilder(...)");
        cq3 cq3VarA = bq3.a(gtVarW);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Signals signals = this.t;
        Signals signals2 = null;
        if (signals == null) {
            Intrinsics.throwUninitializedPropertyAccessException("signals");
            signals = null;
        }
        List<m83> realTimeBiddingSignalsObject = signals.getRealTimeBiddingSignalsObject();
        if (realTimeBiddingSignalsObject == null) {
            realTimeBiddingSignalsObject = CollectionsKt.emptyList();
        }
        for (m83 m83Var : realTimeBiddingSignalsObject) {
            lo0 lo0VarB = cq3VarA.b();
            rt rtVarV = wt.v();
            Intrinsics.checkNotNullExpressionValue(rtVarV, "newBuilder(...)");
            eq3 eq3VarA = dq3.a(rtVarV);
            String str = m83Var.adapterClassName;
            if (str == null) {
                str = "";
            }
            eq3VarA.a(str);
            linkedHashSet.add(eq3VarA.b());
            eq3VarA.b(c43.a(m83Var.sdkVersion));
            eq3VarA.a(c43.a(m83Var.com.ironsource.Pf.b java.lang.String));
            eq3VarA.a(1);
            String str2 = m83Var.signals;
            if (str2 != null && !StringsKt.isBlank(str2)) {
                String str3 = m83Var.signals;
                eq3VarA.b(str3 != null ? str3 : "");
            }
            Long l = m83Var.latency;
            eq3VarA.a(l != null ? l.longValue() : 0L);
            if (m83Var.signalErrorMessage != null || ((num = m83Var.signalErrorCode) != null && num.intValue() != 0)) {
                st stVarV = tt.v();
                Intrinsics.checkNotNullExpressionValue(stVarV, "newBuilder(...)");
                gq3 gq3VarA = fq3.a(stVarV);
                Integer num2 = m83Var.signalErrorCode;
                jt jtVar = jt.ADAPTER_CREATION_FAILURE;
                int number = jtVar.getNumber();
                if (num2 == null || num2.intValue() != number) {
                    jtVar = jt.SIGNAL_COLLECTION_FAILURE;
                    int number2 = jtVar.getNumber();
                    if (num2 == null || num2.intValue() != number2) {
                        jtVar = jt.SIGNAL_COLLECTION_TIMEOUT;
                        int number3 = jtVar.getNumber();
                        if (num2 == null || num2.intValue() != number3) {
                            jtVar = jt.UNKNOWN_ERROR;
                        }
                    }
                }
                gq3VarA.a(jtVar);
                String str4 = m83Var.signalErrorMessage;
                if (str4 == null) {
                    str4 = "An undefined error occurred. Error code = " + m83Var.signalErrorCode;
                }
                gq3VarA.a(str4);
                eq3VarA.a(gq3VarA.a());
            }
            cq3VarA.a(lo0VarB, eq3VarA.a());
        }
        Signals signals3 = this.t;
        if (signals3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("signals");
            signals3 = null;
        }
        for (Map.Entry<String, AdapterVersionData> entry : signals3.adapterVersionData.entrySet()) {
            String key = entry.getKey();
            AdapterVersionData value = entry.getValue();
            if (!linkedHashSet.contains(key)) {
                linkedHashSet.add(key);
                lo0 lo0VarB2 = cq3VarA.b();
                rt rtVarV2 = wt.v();
                Intrinsics.checkNotNullExpressionValue(rtVarV2, "newBuilder(...)");
                eq3 eq3VarA2 = dq3.a(rtVarV2);
                eq3VarA2.a(key);
                eq3VarA2.a(0);
                eq3VarA2.b(c43.a(value.sdkVersion));
                eq3VarA2.a(c43.a(value.adapterVersion));
                cq3VarA.a(lo0VarB2, eq3VarA2.a());
            }
        }
        Signals signals4 = this.t;
        if (signals4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("signals");
            signals4 = null;
        }
        Bundle bundle = signals4.googleExtrasBundle;
        if (bundle == null) {
            bundle = new Bundle();
        }
        String string = bundle.getString("a3p_cs");
        Signals signals5 = this.t;
        if (signals5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("signals");
            signals5 = null;
        }
        String str5 = signals5.packageName;
        if (string != null && string.length() != 0 && str5.length() != 0) {
            lo0 lo0VarB3 = cq3VarA.b();
            rt rtVarV3 = wt.v();
            Intrinsics.checkNotNullExpressionValue(rtVarV3, "newBuilder(...)");
            eq3 eq3VarA3 = dq3.a(rtVarV3);
            Signals signals6 = this.t;
            if (signals6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("signals");
            } else {
                signals2 = signals6;
            }
            eq3VarA3.a(signals2.packageName);
            eq3VarA3.b(string);
            eq3VarA3.a(1);
            cq3VarA.a(lo0VarB3, eq3VarA3.a());
        }
        xt xtVarA = cq3VarA.a();
        if (xtVarA.v().size() > 0) {
            byte[] bArrEncode = Base64.encode(xtVarA.c(), 10);
            Intrinsics.checkNotNullExpressionValue(bArrEncode, "encode(...)");
            a("a3p", StringsKt.replace$default(new String(bArrEncode, Charsets.UTF_8), C3510b4.j.b, ".", false, 4, (Object) null), "third_party_params");
        }
    }
}

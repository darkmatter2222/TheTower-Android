package kotlin;

import android.net.Uri;
import android.util.Base64;
import androidx.webkit.internal.AssetHelper;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.ironsource.C3510b4;
import java.io.Closeable;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Ref;
import p005kotlin.text.Charsets;
import p005kotlin.text.StringsKt;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class yx2 extends px2 {
    public static final m01 u = new m01("The ad has already been shown.", kk1.AD_RESPONSE_ALREADY_USED);
    public static final m01 v = new m01("The ad format requested does not match the ad format specified when generating a Signal.", kk1.INVALID_REQUEST);
    public static final m01 w = new m01("The request ID on the ad string does not match the request ID from any valid signal request.", kk1.REQUEST_ID_MISMATCH);
    public static final m01 x = new m01("The ad response was malformed.", kk1.INVALID_AD_RESPONSE);
    public final yf3 n;
    public final p70 o;
    public final String p;
    public final Gson q;
    public final e01 r;
    public final vw3 s;
    public final Mutex t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yx2(yf3 signalGenerationMap, p70 cryptoUtil, String adResponse, Gson gson, e01 httpClient, vw3 urlPinger, CoroutineScope loadScope, CoroutineScope backgroundScope, ks3 traceMetaSet, ex0 flags, g83 rootTraceCreator, String requestId, j53 requestType, ja1 initializationConfigWrapper, md1 inspectorAdLifecycleMonitor, SharedFlow cancellationChannel, qn appState) {
        super(loadScope, backgroundScope, traceMetaSet, flags, rootTraceCreator, requestId, requestType, null, false, initializationConfigWrapper, inspectorAdLifecycleMonitor, cancellationChannel, appState);
        Intrinsics.checkNotNullParameter(signalGenerationMap, "signalGenerationMap");
        Intrinsics.checkNotNullParameter(cryptoUtil, "cryptoUtil");
        Intrinsics.checkNotNullParameter(adResponse, "adResponse");
        Intrinsics.checkNotNullParameter(gson, "gson");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(urlPinger, "urlPinger");
        Intrinsics.checkNotNullParameter(loadScope, "loadScope");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(initializationConfigWrapper, "initializationConfigWrapper");
        Intrinsics.checkNotNullParameter(inspectorAdLifecycleMonitor, "inspectorAdLifecycleMonitor");
        Intrinsics.checkNotNullParameter(cancellationChannel, "cancellationChannel");
        Intrinsics.checkNotNullParameter(appState, "appState");
        this.n = signalGenerationMap;
        this.o = cryptoUtil;
        this.p = adResponse;
        this.q = gson;
        this.r = httpClient;
        this.s = urlPinger;
        this.t = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX WARN: Code duplicated, block: B:102:0x02c5 A[Catch: all -> 0x04b6, TryCatch #11 {all -> 0x04b6, blocks: (B:87:0x0265, B:89:0x0269, B:96:0x029c, B:98:0x02aa, B:100:0x02b1, B:102:0x02c5, B:104:0x02cc, B:107:0x02d6, B:109:0x02dc, B:111:0x02ea, B:113:0x02f1, B:115:0x02f9, B:125:0x032e, B:127:0x033c, B:129:0x0340, B:130:0x0344, B:112:0x02ef, B:126:0x0338, B:103:0x02ca, B:99:0x02af), top: B:249:0x0265 }] */
    /* JADX WARN: Code duplicated, block: B:103:0x02ca A[Catch: all -> 0x04b6, TryCatch #11 {all -> 0x04b6, blocks: (B:87:0x0265, B:89:0x0269, B:96:0x029c, B:98:0x02aa, B:100:0x02b1, B:102:0x02c5, B:104:0x02cc, B:107:0x02d6, B:109:0x02dc, B:111:0x02ea, B:113:0x02f1, B:115:0x02f9, B:125:0x032e, B:127:0x033c, B:129:0x0340, B:130:0x0344, B:112:0x02ef, B:126:0x0338, B:103:0x02ca, B:99:0x02af), top: B:249:0x0265 }] */
    /* JADX WARN: Code duplicated, block: B:106:0x02d4  */
    /* JADX WARN: Code duplicated, block: B:109:0x02dc A[Catch: all -> 0x04b6, TryCatch #11 {all -> 0x04b6, blocks: (B:87:0x0265, B:89:0x0269, B:96:0x029c, B:98:0x02aa, B:100:0x02b1, B:102:0x02c5, B:104:0x02cc, B:107:0x02d6, B:109:0x02dc, B:111:0x02ea, B:113:0x02f1, B:115:0x02f9, B:125:0x032e, B:127:0x033c, B:129:0x0340, B:130:0x0344, B:112:0x02ef, B:126:0x0338, B:103:0x02ca, B:99:0x02af), top: B:249:0x0265 }] */
    /* JADX WARN: Code duplicated, block: B:111:0x02ea A[Catch: all -> 0x04b6, TryCatch #11 {all -> 0x04b6, blocks: (B:87:0x0265, B:89:0x0269, B:96:0x029c, B:98:0x02aa, B:100:0x02b1, B:102:0x02c5, B:104:0x02cc, B:107:0x02d6, B:109:0x02dc, B:111:0x02ea, B:113:0x02f1, B:115:0x02f9, B:125:0x032e, B:127:0x033c, B:129:0x0340, B:130:0x0344, B:112:0x02ef, B:126:0x0338, B:103:0x02ca, B:99:0x02af), top: B:249:0x0265 }] */
    /* JADX WARN: Code duplicated, block: B:112:0x02ef A[Catch: all -> 0x04b6, TryCatch #11 {all -> 0x04b6, blocks: (B:87:0x0265, B:89:0x0269, B:96:0x029c, B:98:0x02aa, B:100:0x02b1, B:102:0x02c5, B:104:0x02cc, B:107:0x02d6, B:109:0x02dc, B:111:0x02ea, B:113:0x02f1, B:115:0x02f9, B:125:0x032e, B:127:0x033c, B:129:0x0340, B:130:0x0344, B:112:0x02ef, B:126:0x0338, B:103:0x02ca, B:99:0x02af), top: B:249:0x0265 }] */
    /* JADX WARN: Code duplicated, block: B:115:0x02f9 A[Catch: all -> 0x04b6, TRY_LEAVE, TryCatch #11 {all -> 0x04b6, blocks: (B:87:0x0265, B:89:0x0269, B:96:0x029c, B:98:0x02aa, B:100:0x02b1, B:102:0x02c5, B:104:0x02cc, B:107:0x02d6, B:109:0x02dc, B:111:0x02ea, B:113:0x02f1, B:115:0x02f9, B:125:0x032e, B:127:0x033c, B:129:0x0340, B:130:0x0344, B:112:0x02ef, B:126:0x0338, B:103:0x02ca, B:99:0x02af), top: B:249:0x0265 }] */
    /* JADX WARN: Code duplicated, block: B:118:0x0319  */
    /* JADX WARN: Code duplicated, block: B:125:0x032e A[Catch: all -> 0x04b6, TRY_ENTER, TryCatch #11 {all -> 0x04b6, blocks: (B:87:0x0265, B:89:0x0269, B:96:0x029c, B:98:0x02aa, B:100:0x02b1, B:102:0x02c5, B:104:0x02cc, B:107:0x02d6, B:109:0x02dc, B:111:0x02ea, B:113:0x02f1, B:115:0x02f9, B:125:0x032e, B:127:0x033c, B:129:0x0340, B:130:0x0344, B:112:0x02ef, B:126:0x0338, B:103:0x02ca, B:99:0x02af), top: B:249:0x0265 }] */
    /* JADX WARN: Code duplicated, block: B:126:0x0338 A[Catch: all -> 0x04b6, TryCatch #11 {all -> 0x04b6, blocks: (B:87:0x0265, B:89:0x0269, B:96:0x029c, B:98:0x02aa, B:100:0x02b1, B:102:0x02c5, B:104:0x02cc, B:107:0x02d6, B:109:0x02dc, B:111:0x02ea, B:113:0x02f1, B:115:0x02f9, B:125:0x032e, B:127:0x033c, B:129:0x0340, B:130:0x0344, B:112:0x02ef, B:126:0x0338, B:103:0x02ca, B:99:0x02af), top: B:249:0x0265 }] */
    /* JADX WARN: Code duplicated, block: B:129:0x0340 A[Catch: all -> 0x04b6, TryCatch #11 {all -> 0x04b6, blocks: (B:87:0x0265, B:89:0x0269, B:96:0x029c, B:98:0x02aa, B:100:0x02b1, B:102:0x02c5, B:104:0x02cc, B:107:0x02d6, B:109:0x02dc, B:111:0x02ea, B:113:0x02f1, B:115:0x02f9, B:125:0x032e, B:127:0x033c, B:129:0x0340, B:130:0x0344, B:112:0x02ef, B:126:0x0338, B:103:0x02ca, B:99:0x02af), top: B:249:0x0265 }] */
    /* JADX WARN: Code duplicated, block: B:135:0x0383  */
    /* JADX WARN: Code duplicated, block: B:138:0x0393 A[Catch: all -> 0x04ae, TRY_LEAVE, TryCatch #8 {all -> 0x04ae, blocks: (B:136:0x038b, B:138:0x0393, B:149:0x03cf, B:151:0x03d9, B:153:0x03e0, B:152:0x03de), top: B:246:0x038b }] */
    /* JADX WARN: Code duplicated, block: B:141:0x03b1  */
    /* JADX WARN: Code duplicated, block: B:149:0x03cf A[Catch: all -> 0x04ae, TRY_ENTER, TryCatch #8 {all -> 0x04ae, blocks: (B:136:0x038b, B:138:0x0393, B:149:0x03cf, B:151:0x03d9, B:153:0x03e0, B:152:0x03de), top: B:246:0x038b }] */
    /* JADX WARN: Code duplicated, block: B:151:0x03d9 A[Catch: all -> 0x04ae, TryCatch #8 {all -> 0x04ae, blocks: (B:136:0x038b, B:138:0x0393, B:149:0x03cf, B:151:0x03d9, B:153:0x03e0, B:152:0x03de), top: B:246:0x038b }] */
    /* JADX WARN: Code duplicated, block: B:152:0x03de A[Catch: all -> 0x04ae, TryCatch #8 {all -> 0x04ae, blocks: (B:136:0x038b, B:138:0x0393, B:149:0x03cf, B:151:0x03d9, B:153:0x03e0, B:152:0x03de), top: B:246:0x038b }] */
    /* JADX WARN: Code duplicated, block: B:156:0x0403  */
    /* JADX WARN: Code duplicated, block: B:161:0x0412 A[Catch: all -> 0x006f, TryCatch #9 {all -> 0x006f, blocks: (B:19:0x006a, B:167:0x0431, B:169:0x0437, B:175:0x045f, B:177:0x046c, B:179:0x0473, B:181:0x0477, B:183:0x047e, B:182:0x047c, B:178:0x0471, B:159:0x040b, B:161:0x0412, B:163:0x0419, B:162:0x0417, B:203:0x04c2, B:204:0x04c5, B:120:0x0324), top: B:237:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:162:0x0417 A[Catch: all -> 0x006f, TryCatch #9 {all -> 0x006f, blocks: (B:19:0x006a, B:167:0x0431, B:169:0x0437, B:175:0x045f, B:177:0x046c, B:179:0x0473, B:181:0x0477, B:183:0x047e, B:182:0x047c, B:178:0x0471, B:159:0x040b, B:161:0x0412, B:163:0x0419, B:162:0x0417, B:203:0x04c2, B:204:0x04c5, B:120:0x0324), top: B:237:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:165:0x042f  */
    /* JADX WARN: Code duplicated, block: B:166:0x0430  */
    /* JADX WARN: Code duplicated, block: B:169:0x0437 A[Catch: all -> 0x006f, TRY_LEAVE, TryCatch #9 {all -> 0x006f, blocks: (B:19:0x006a, B:167:0x0431, B:169:0x0437, B:175:0x045f, B:177:0x046c, B:179:0x0473, B:181:0x0477, B:183:0x047e, B:182:0x047c, B:178:0x0471, B:159:0x040b, B:161:0x0412, B:163:0x0419, B:162:0x0417, B:203:0x04c2, B:204:0x04c5, B:120:0x0324), top: B:237:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:172:0x0452  */
    /* JADX WARN: Code duplicated, block: B:175:0x045f A[Catch: all -> 0x006f, TRY_ENTER, TryCatch #9 {all -> 0x006f, blocks: (B:19:0x006a, B:167:0x0431, B:169:0x0437, B:175:0x045f, B:177:0x046c, B:179:0x0473, B:181:0x0477, B:183:0x047e, B:182:0x047c, B:178:0x0471, B:159:0x040b, B:161:0x0412, B:163:0x0419, B:162:0x0417, B:203:0x04c2, B:204:0x04c5, B:120:0x0324), top: B:237:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:177:0x046c A[Catch: all -> 0x006f, TryCatch #9 {all -> 0x006f, blocks: (B:19:0x006a, B:167:0x0431, B:169:0x0437, B:175:0x045f, B:177:0x046c, B:179:0x0473, B:181:0x0477, B:183:0x047e, B:182:0x047c, B:178:0x0471, B:159:0x040b, B:161:0x0412, B:163:0x0419, B:162:0x0417, B:203:0x04c2, B:204:0x04c5, B:120:0x0324), top: B:237:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:178:0x0471 A[Catch: all -> 0x006f, TryCatch #9 {all -> 0x006f, blocks: (B:19:0x006a, B:167:0x0431, B:169:0x0437, B:175:0x045f, B:177:0x046c, B:179:0x0473, B:181:0x0477, B:183:0x047e, B:182:0x047c, B:178:0x0471, B:159:0x040b, B:161:0x0412, B:163:0x0419, B:162:0x0417, B:203:0x04c2, B:204:0x04c5, B:120:0x0324), top: B:237:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:181:0x0477 A[Catch: all -> 0x006f, TryCatch #9 {all -> 0x006f, blocks: (B:19:0x006a, B:167:0x0431, B:169:0x0437, B:175:0x045f, B:177:0x046c, B:179:0x0473, B:181:0x0477, B:183:0x047e, B:182:0x047c, B:178:0x0471, B:159:0x040b, B:161:0x0412, B:163:0x0419, B:162:0x0417, B:203:0x04c2, B:204:0x04c5, B:120:0x0324), top: B:237:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:182:0x047c A[Catch: all -> 0x006f, TryCatch #9 {all -> 0x006f, blocks: (B:19:0x006a, B:167:0x0431, B:169:0x0437, B:175:0x045f, B:177:0x046c, B:179:0x0473, B:181:0x0477, B:183:0x047e, B:182:0x047c, B:178:0x0471, B:159:0x040b, B:161:0x0412, B:163:0x0419, B:162:0x0417, B:203:0x04c2, B:204:0x04c5, B:120:0x0324), top: B:237:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:186:0x0496  */
    /* JADX WARN: Code duplicated, block: B:190:0x049f A[Catch: all -> 0x0168, TRY_LEAVE, TryCatch #4 {all -> 0x0168, blocks: (B:13:0x003e, B:187:0x0498, B:188:0x049b, B:190:0x049f, B:16:0x004d, B:173:0x0454, B:57:0x0164, B:76:0x01cf), top: B:237:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:209:0x04cf A[Catch: all -> 0x04fe, TryCatch #16 {all -> 0x04fe, blocks: (B:207:0x04c8, B:209:0x04cf, B:211:0x04d3, B:213:0x04d7, B:214:0x04da, B:216:0x04de, B:218:0x04e2, B:220:0x04e6, B:221:0x04e7, B:222:0x04ec, B:223:0x04ed, B:224:0x04f4, B:225:0x04f5, B:226:0x04fc, B:227:0x04fd), top: B:256:0x04c8 }] */
    /* JADX WARN: Code duplicated, block: B:211:0x04d3 A[Catch: all -> 0x04fe, TryCatch #16 {all -> 0x04fe, blocks: (B:207:0x04c8, B:209:0x04cf, B:211:0x04d3, B:213:0x04d7, B:214:0x04da, B:216:0x04de, B:218:0x04e2, B:220:0x04e6, B:221:0x04e7, B:222:0x04ec, B:223:0x04ed, B:224:0x04f4, B:225:0x04f5, B:226:0x04fc, B:227:0x04fd), top: B:256:0x04c8 }] */
    /* JADX WARN: Code duplicated, block: B:216:0x04de A[Catch: all -> 0x04fe, TryCatch #16 {all -> 0x04fe, blocks: (B:207:0x04c8, B:209:0x04cf, B:211:0x04d3, B:213:0x04d7, B:214:0x04da, B:216:0x04de, B:218:0x04e2, B:220:0x04e6, B:221:0x04e7, B:222:0x04ec, B:223:0x04ed, B:224:0x04f4, B:225:0x04f5, B:226:0x04fc, B:227:0x04fd), top: B:256:0x04c8 }] */
    /* JADX WARN: Code duplicated, block: B:218:0x04e2 A[Catch: all -> 0x04fe, TryCatch #16 {all -> 0x04fe, blocks: (B:207:0x04c8, B:209:0x04cf, B:211:0x04d3, B:213:0x04d7, B:214:0x04da, B:216:0x04de, B:218:0x04e2, B:220:0x04e6, B:221:0x04e7, B:222:0x04ec, B:223:0x04ed, B:224:0x04f4, B:225:0x04f5, B:226:0x04fc, B:227:0x04fd), top: B:256:0x04c8 }] */
    /* JADX WARN: Code duplicated, block: B:220:0x04e6 A[Catch: all -> 0x04fe, TryCatch #16 {all -> 0x04fe, blocks: (B:207:0x04c8, B:209:0x04cf, B:211:0x04d3, B:213:0x04d7, B:214:0x04da, B:216:0x04de, B:218:0x04e2, B:220:0x04e6, B:221:0x04e7, B:222:0x04ec, B:223:0x04ed, B:224:0x04f4, B:225:0x04f5, B:226:0x04fc, B:227:0x04fd), top: B:256:0x04c8 }] */
    /* JADX WARN: Code duplicated, block: B:221:0x04e7 A[Catch: all -> 0x04fe, TryCatch #16 {all -> 0x04fe, blocks: (B:207:0x04c8, B:209:0x04cf, B:211:0x04d3, B:213:0x04d7, B:214:0x04da, B:216:0x04de, B:218:0x04e2, B:220:0x04e6, B:221:0x04e7, B:222:0x04ec, B:223:0x04ed, B:224:0x04f4, B:225:0x04f5, B:226:0x04fc, B:227:0x04fd), top: B:256:0x04c8 }] */
    /* JADX WARN: Code duplicated, block: B:223:0x04ed A[Catch: all -> 0x04fe, TryCatch #16 {all -> 0x04fe, blocks: (B:207:0x04c8, B:209:0x04cf, B:211:0x04d3, B:213:0x04d7, B:214:0x04da, B:216:0x04de, B:218:0x04e2, B:220:0x04e6, B:221:0x04e7, B:222:0x04ec, B:223:0x04ed, B:224:0x04f4, B:225:0x04f5, B:226:0x04fc, B:227:0x04fd), top: B:256:0x04c8 }] */
    /* JADX WARN: Code duplicated, block: B:225:0x04f5 A[Catch: all -> 0x04fe, TryCatch #16 {all -> 0x04fe, blocks: (B:207:0x04c8, B:209:0x04cf, B:211:0x04d3, B:213:0x04d7, B:214:0x04da, B:216:0x04de, B:218:0x04e2, B:220:0x04e6, B:221:0x04e7, B:222:0x04ec, B:223:0x04ed, B:224:0x04f4, B:225:0x04f5, B:226:0x04fc, B:227:0x04fd), top: B:256:0x04c8 }] */
    /* JADX WARN: Code duplicated, block: B:227:0x04fd A[Catch: all -> 0x04fe, TRY_LEAVE, TryCatch #16 {all -> 0x04fe, blocks: (B:207:0x04c8, B:209:0x04cf, B:211:0x04d3, B:213:0x04d7, B:214:0x04da, B:216:0x04de, B:218:0x04e2, B:220:0x04e6, B:221:0x04e7, B:222:0x04ec, B:223:0x04ed, B:224:0x04f4, B:225:0x04f5, B:226:0x04fc, B:227:0x04fd), top: B:256:0x04c8 }] */
    /* JADX WARN: Code duplicated, block: B:82:0x022e  */
    /* JADX WARN: Code duplicated, block: B:86:0x025c  */
    /* JADX WARN: Code duplicated, block: B:89:0x0269 A[Catch: all -> 0x04b6, TRY_LEAVE, TryCatch #11 {all -> 0x04b6, blocks: (B:87:0x0265, B:89:0x0269, B:96:0x029c, B:98:0x02aa, B:100:0x02b1, B:102:0x02c5, B:104:0x02cc, B:107:0x02d6, B:109:0x02dc, B:111:0x02ea, B:113:0x02f1, B:115:0x02f9, B:125:0x032e, B:127:0x033c, B:129:0x0340, B:130:0x0344, B:112:0x02ef, B:126:0x0338, B:103:0x02ca, B:99:0x02af), top: B:249:0x0265 }] */
    /* JADX WARN: Code duplicated, block: B:92:0x0289  */
    /* JADX WARN: Code duplicated, block: B:96:0x029c A[Catch: all -> 0x04b6, TRY_ENTER, TryCatch #11 {all -> 0x04b6, blocks: (B:87:0x0265, B:89:0x0269, B:96:0x029c, B:98:0x02aa, B:100:0x02b1, B:102:0x02c5, B:104:0x02cc, B:107:0x02d6, B:109:0x02dc, B:111:0x02ea, B:113:0x02f1, B:115:0x02f9, B:125:0x032e, B:127:0x033c, B:129:0x0340, B:130:0x0344, B:112:0x02ef, B:126:0x0338, B:103:0x02ca, B:99:0x02af), top: B:249:0x0265 }] */
    /* JADX WARN: Code duplicated, block: B:98:0x02aa A[Catch: all -> 0x04b6, TryCatch #11 {all -> 0x04b6, blocks: (B:87:0x0265, B:89:0x0269, B:96:0x029c, B:98:0x02aa, B:100:0x02b1, B:102:0x02c5, B:104:0x02cc, B:107:0x02d6, B:109:0x02dc, B:111:0x02ea, B:113:0x02f1, B:115:0x02f9, B:125:0x032e, B:127:0x033c, B:129:0x0340, B:130:0x0344, B:112:0x02ef, B:126:0x0338, B:103:0x02ca, B:99:0x02af), top: B:249:0x0265 }] */
    /* JADX WARN: Code duplicated, block: B:99:0x02af A[Catch: all -> 0x04b6, TryCatch #11 {all -> 0x04b6, blocks: (B:87:0x0265, B:89:0x0269, B:96:0x029c, B:98:0x02aa, B:100:0x02b1, B:102:0x02c5, B:104:0x02cc, B:107:0x02d6, B:109:0x02dc, B:111:0x02ea, B:113:0x02f1, B:115:0x02f9, B:125:0x032e, B:127:0x033c, B:129:0x0340, B:130:0x0344, B:112:0x02ef, B:126:0x0338, B:103:0x02ca, B:99:0x02af), top: B:249:0x0265 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v31, types: [T] */
    /* JADX WARN: Type inference failed for: r0v32, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v38 */
    /* JADX WARN: Type inference failed for: r0v95 */
    /* JADX WARN: Type inference failed for: r0v96 */
    /* JADX WARN: Type inference failed for: r0v97 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v25 */
    /* JADX WARN: Type inference failed for: r13v36, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v39 */
    /* JADX WARN: Type inference failed for: r13v40 */
    /* JADX WARN: Type inference failed for: r13v41 */
    /* JADX WARN: Type inference failed for: r13v42 */
    /* JADX WARN: Type inference failed for: r13v43 */
    /* JADX WARN: Type inference failed for: r13v5, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r13v8, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v11 */
    /* JADX WARN: Type inference failed for: r14v15 */
    /* JADX WARN: Type inference failed for: r14v16 */
    /* JADX WARN: Type inference failed for: r14v17 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v7, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r15v8, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r1v24, types: [T, ads_mobile_sdk.tf3] */
    /* JADX WARN: Type inference failed for: r1v65, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v27, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v33 */
    /* JADX WARN: Type inference failed for: r2v34 */
    /* JADX WARN: Type inference failed for: r2v35 */
    /* JADX WARN: Type inference failed for: r2v36 */
    /* JADX WARN: Type inference failed for: r2v37 */
    /* JADX WARN: Type inference failed for: r2v38 */
    /* JADX WARN: Type inference failed for: r2v39 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v40 */
    /* JADX WARN: Type inference failed for: r2v41 */
    /* JADX WARN: Type inference failed for: r2v42 */
    /* JADX WARN: Type inference failed for: r2v43 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r3v0, types: [int] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v16, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v25 */
    /* JADX WARN: Type inference failed for: r3v27, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r3v3, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r3v32 */
    /* JADX WARN: Type inference failed for: r3v37 */
    /* JADX WARN: Type inference failed for: r3v38 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v43 */
    /* JADX WARN: Type inference failed for: r3v44 */
    /* JADX WARN: Type inference failed for: r3v45 */
    /* JADX WARN: Type inference failed for: r3v47, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r3v55 */
    /* JADX WARN: Type inference failed for: r3v56 */
    /* JADX WARN: Type inference failed for: r3v59 */
    /* JADX WARN: Type inference failed for: r3v62 */
    /* JADX WARN: Type inference failed for: r3v63 */
    /* JADX WARN: Type inference failed for: r3v68 */
    /* JADX WARN: Type inference failed for: r3v69 */
    /* JADX WARN: Type inference failed for: r3v70 */
    /* JADX WARN: Type inference failed for: r3v71 */
    /* JADX WARN: Type inference failed for: r3v72 */
    /* JADX WARN: Type inference failed for: r3v73 */
    /* JADX WARN: Type inference failed for: r3v74 */
    /* JADX WARN: Type inference failed for: r3v75 */
    /* JADX WARN: Type inference failed for: r3v76 */
    /* JADX WARN: Type inference failed for: r3v77 */
    /* JADX WARN: Type inference failed for: r3v78 */
    /* JADX WARN: Type inference failed for: r3v79 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v80 */
    /* JADX WARN: Type inference failed for: r3v81 */
    /* JADX WARN: Type inference failed for: r3v82 */
    /* JADX WARN: Type inference failed for: r3v83 */
    /* JADX WARN: Type inference failed for: r3v84 */
    /* JADX WARN: Type inference failed for: r3v85 */
    /* JADX WARN: Type inference failed for: r3v86 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v22 */
    /* JADX WARN: Type inference failed for: r4v24 */
    /* JADX WARN: Type inference failed for: r4v25 */
    /* JADX WARN: Type inference failed for: r4v34 */
    /* JADX WARN: Type inference failed for: r4v35 */
    /* JADX WARN: Type inference failed for: r4v36 */
    /* JADX WARN: Type inference failed for: r4v37 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v13, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v19 */
    /* JADX WARN: Type inference failed for: r5v23 */
    /* JADX WARN: Type inference failed for: r5v24 */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v31, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v34, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v38 */
    /* JADX WARN: Type inference failed for: r5v39 */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v40 */
    /* JADX WARN: Type inference failed for: r5v41 */
    /* JADX WARN: Type inference failed for: r5v42 */
    /* JADX WARN: Type inference failed for: r5v43 */
    /* JADX WARN: Type inference failed for: r5v5, types: [ads_mobile_sdk.rr3, java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v2, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r6v28 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v32 */
    /* JADX WARN: Type inference failed for: r6v33 */
    /* JADX WARN: Type inference failed for: r6v34, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r6v37, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v4, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v40 */
    /* JADX WARN: Type inference failed for: r6v41 */
    /* JADX WARN: Type inference failed for: r6v42 */
    /* JADX WARN: Type inference failed for: r6v43 */
    /* JADX WARN: Type inference failed for: r6v44 */
    /* JADX WARN: Type inference failed for: r6v45 */
    /* JADX WARN: Type inference failed for: r6v46 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v13, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v2, types: [T] */
    /* JADX WARN: Type inference failed for: r7v38 */
    public static Object a(yx2 yx2Var, Continuation continuation) {
        vx2 vx2Var;
        ?? A;
        ?? r6;
        Object obj;
        ?? r3;
        ?? asString;
        Ref.ObjectRef objectRef;
        Ref.ObjectRef objectRef2;
        Mutex mutex;
        yx2 yx2Var2;
        Ref.ObjectRef objectRef3;
        Ref.ObjectRef objectRef4;
        Ref.BooleanRef booleanRef;
        Ref.ObjectRef objectRef5;
        Ref.ObjectRef objectRef6;
        ?? r7;
        ?? r4;
        ?? r2;
        Flow flowFlowOf;
        ?? r13;
        Ref.ObjectRef objectRef7;
        Object objA;
        Ref.ObjectRef objectRef8;
        ?? r14;
        Ref.ObjectRef objectRef9;
        Ref.ObjectRef objectRef10;
        ?? r15;
        ?? r5;
        Ref.ObjectRef objectRef11;
        ?? r8;
        ?? r16;
        ?? r1;
        Object obj2;
        tf3 tf3Var;
        Object obj3;
        tf3 tf3Var2;
        String requestAgent;
        ?? r0;
        ?? r9;
        String str;
        int iIntValue;
        Object objA2;
        ?? r17;
        String str2;
        Ref.ObjectRef objectRef12;
        ?? r12;
        Object obj4;
        tf3 tf3Var3;
        v01 v01VarA;
        i01 i01Var;
        ?? r10;
        m01 m01Var;
        ?? r11;
        ?? r18;
        ?? r19;
        Mutex mutex2;
        Closeable closeable;
        rr3 rr3Var;
        Object obj5;
        ?? r20;
        ?? r21;
        ?? r22;
        ?? r110;
        int i;
        Ref.ObjectRef objectRef13;
        yx2 yx2Var3;
        ?? r111;
        Ref.ObjectRef objectRef14;
        yf3 yf3Var;
        String str3;
        Object obj6;
        tf3 tf3Var4;
        yx2 yx2Var4;
        ?? r23;
        ?? r24;
        Ref.ObjectRef objectRef15;
        ?? r25;
        m01 m01Var2;
        ?? r26;
        ?? r27;
        ?? r28;
        ?? r29;
        ?? r30;
        ?? r31;
        ?? r32;
        ?? r33;
        Object obj7;
        String str4;
        Ref.ObjectRef objectRef16;
        ?? r34;
        ?? r35;
        v01 v01Var;
        Object obj8;
        String str5;
        Object obj9;
        tf3 tf3Var5;
        ?? r36;
        ?? r37;
        i01 i01Var2;
        ?? r38;
        ?? r39;
        int i2;
        if (!(continuation instanceof vx2) || (A = (i2 = (vx2Var = (vx2) continuation).m) & Integer.MIN_VALUE) == 0) {
            vx2Var = new vx2(yx2Var, continuation);
        } else {
            vx2Var.m = i2 - Integer.MIN_VALUE;
        }
        vx2 vx2Var2 = vx2Var;
        Object objA3 = vx2Var2.k;
        ?? coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? r40 = vx2Var2.m;
        try {
            try {
                try {
                    try {
                        try {
                            switch (r40) {
                                case 0:
                                    p005kotlin.ResultKt.throwOnFailure(objA3);
                                    s11 s11Var = s11.CUI_NAME_SCAR_RENDERING;
                                    WeakHashMap weakHashMap = hs3.a;
                                    A = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                                    try {
                                        Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
                                        Ref.ObjectRef objectRef17 = new Ref.ObjectRef();
                                        objectRef17.element = yx2Var.p;
                                        Ref.ObjectRef objectRef18 = new Ref.ObjectRef();
                                        try {
                                            JsonElement jsonElement = ((JsonObject) yx2Var.q.fromJson(yx2Var.p, JsonObject.class)).get("request_id");
                                            asString = jsonElement != null ? jsonElement.getAsString() : 0;
                                            break;
                                        } catch (Exception unused) {
                                        }
                                        objectRef18.element = asString;
                                        if (asString == 0) {
                                            p70 p70Var = yx2Var.o;
                                            String str6 = yx2Var.p;
                                            p70Var.getClass();
                                            v01 v01VarA2 = p70.a(str6);
                                            if (v01VarA2 instanceof i01) {
                                                m01 m01Var3 = x;
                                                vx2Var2.a = A;
                                                vx2Var2.b = A;
                                                vx2Var2.m = 1;
                                                if (yx2Var.a(m01Var3, vx2Var2) != coroutine_suspended) {
                                                    ?? r41 = A;
                                                    r4 = r41;
                                                    r2 = r41;
                                                    flowFlowOf = FlowKt.flowOf(new p005kotlin.Pair(x, null));
                                                    coroutine_suspended = r2;
                                                    r40 = r4;
                                                    if (flowFlowOf instanceof i01) {
                                                        xs3.a((i01) flowFlowOf, false);
                                                        break;
                                                    }
                                                    CloseableKt.closeFinally(coroutine_suspended, null);
                                                    return flowFlowOf;
                                                }
                                            } else {
                                                Intrinsics.checkNotNull(v01VarA2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                p005kotlin.Pair pair = (p005kotlin.Pair) ((q01) v01VarA2).b;
                                                ?? r112 = (String) pair.component1();
                                                objectRef18.element = (String) pair.component2();
                                                objectRef17.element = r112;
                                                booleanRef2.element = true;
                                                hs3.a().a.a.d = (String) objectRef18.element;
                                                objectRef = new Ref.ObjectRef();
                                                objectRef2 = new Ref.ObjectRef();
                                                mutex = yx2Var.t;
                                                vx2Var2.a = yx2Var;
                                                vx2Var2.b = A;
                                                vx2Var2.c = A;
                                                vx2Var2.d = booleanRef2;
                                                vx2Var2.e = objectRef17;
                                                vx2Var2.f = objectRef18;
                                                vx2Var2.g = objectRef2;
                                                vx2Var2.h = mutex;
                                                vx2Var2.i = objectRef;
                                                vx2Var2.m = 2;
                                                if (mutex.lock(null, vx2Var2) != coroutine_suspended) {
                                                    yx2Var2 = yx2Var;
                                                    objectRef3 = objectRef;
                                                    objectRef4 = objectRef2;
                                                    booleanRef = booleanRef2;
                                                    objectRef5 = objectRef17;
                                                    r40 = mutex;
                                                    ?? r113 = A;
                                                    objectRef6 = objectRef18;
                                                    r7 = r113;
                                                    r13 = r113;
                                                    try {
                                                        yf3 yf3Var2 = yx2Var2.n;
                                                        String str7 = (String) objectRef6.element;
                                                        vx2Var2.a = yx2Var2;
                                                        vx2Var2.b = r7;
                                                        vx2Var2.c = r13;
                                                        vx2Var2.d = booleanRef;
                                                        vx2Var2.e = objectRef5;
                                                        vx2Var2.f = objectRef6;
                                                        vx2Var2.g = objectRef4;
                                                        vx2Var2.h = r40;
                                                        vx2Var2.i = objectRef3;
                                                        objectRef7 = objectRef3;
                                                        vx2Var2.m = 3;
                                                        objA = yf3Var2.a(str7, vx2Var2);
                                                        if (objA != coroutine_suspended) {
                                                            Ref.ObjectRef objectRef19 = objectRef5;
                                                            objA3 = objA;
                                                            objectRef8 = objectRef19;
                                                            r14 = r7;
                                                            objectRef9 = objectRef4;
                                                            objectRef10 = objectRef7;
                                                            r5 = r40;
                                                            r15 = r13;
                                                            objectRef11 = objectRef6;
                                                            r8 = r15;
                                                            try {
                                                                r1 = (tf3) objA3;
                                                                if (r1 == 0) {
                                                                    m01Var = w;
                                                                    vx2Var2.a = r14;
                                                                    vx2Var2.b = r8;
                                                                    vx2Var2.c = r5;
                                                                    vx2Var2.d = null;
                                                                    vx2Var2.e = null;
                                                                    vx2Var2.f = null;
                                                                    vx2Var2.g = null;
                                                                    vx2Var2.h = null;
                                                                    vx2Var2.i = null;
                                                                    vx2Var2.m = 4;
                                                                    if (yx2Var2.a(m01Var, vx2Var2) != coroutine_suspended) {
                                                                        r11 = r5;
                                                                        r18 = r8;
                                                                        r19 = r14;
                                                                        flowFlowOf = FlowKt.flowOf(new p005kotlin.Pair(w, null));
                                                                        obj5 = null;
                                                                        r32 = r11;
                                                                        r31 = r18;
                                                                        r30 = r19;
                                                                        r33 = r30;
                                                                        try {
                                                                            r32.unlock(obj5);
                                                                            r22 = r31;
                                                                            r29 = r33;
                                                                            r40 = r29;
                                                                            coroutine_suspended = r22;
                                                                            if (flowFlowOf instanceof i01) {
                                                                                xs3.a((i01) flowFlowOf, false);
                                                                                break;
                                                                            }
                                                                            CloseableKt.closeFinally(coroutine_suspended, null);
                                                                            return flowFlowOf;
                                                                        } catch (Throwable th) {
                                                                            th = th;
                                                                            A = r31;
                                                                            r6 = r33;
                                                                            try {
                                                                                r6.b(th);
                                                                                if (th instanceof v24) {
                                                                                    throw th;
                                                                                }
                                                                                if (!(th instanceof TimeoutCancellationException)) {
                                                                                    r6.a(th);
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
                                                                                    CloseableKt.closeFinally(A, th2);
                                                                                    throw th3;
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    objectRef9.element = r1;
                                                                    tn1 tn1Var = hs3.a().a.b;
                                                                    obj2 = objectRef9.element;
                                                                    if (obj2 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("signalGenerationData");
                                                                        tf3Var = null;
                                                                    } else {
                                                                        tf3Var = (tf3) obj2;
                                                                    }
                                                                    tn1Var.d = tf3Var.b.getN();
                                                                    n03 n03Var = hs3.a().a.a;
                                                                    obj3 = objectRef9.element;
                                                                    if (obj3 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("signalGenerationData");
                                                                        tf3Var2 = null;
                                                                    } else {
                                                                        tf3Var2 = (tf3) obj3;
                                                                    }
                                                                    requestAgent = tf3Var2.b.getRequestAgent();
                                                                    if (requestAgent == null) {
                                                                        requestAgent = "";
                                                                    }
                                                                    n03Var.g = requestAgent;
                                                                    try {
                                                                        if (booleanRef.element) {
                                                                            p70 p70Var2 = yx2Var2.o;
                                                                            String str8 = (String) objectRef8.element;
                                                                            String str9 = (String) objectRef11.element;
                                                                            obj4 = objectRef9.element;
                                                                            if (obj4 == null) {
                                                                                Intrinsics.throwUninitializedPropertyAccessException("signalGenerationData");
                                                                                tf3Var3 = null;
                                                                            } else {
                                                                                tf3Var3 = (tf3) obj4;
                                                                            }
                                                                            v01VarA = p70Var2.a(str8, str9, tf3Var3);
                                                                            if (v01VarA instanceof i01) {
                                                                                i01Var = (i01) v01VarA;
                                                                                vx2Var2.a = r14;
                                                                                vx2Var2.b = r8;
                                                                                vx2Var2.c = r5;
                                                                                vx2Var2.d = i01Var;
                                                                                vx2Var2.e = null;
                                                                                vx2Var2.f = null;
                                                                                vx2Var2.g = null;
                                                                                vx2Var2.h = null;
                                                                                vx2Var2.i = null;
                                                                                vx2Var2.m = 5;
                                                                                if (yx2Var2.a(i01Var, vx2Var2) != coroutine_suspended) {
                                                                                    r10 = r14;
                                                                                    r21 = r5;
                                                                                    r20 = r8;
                                                                                    flowFlowOf = FlowKt.flowOf(new p005kotlin.Pair(i01Var, null));
                                                                                    r21.unlock(null);
                                                                                    r22 = r20;
                                                                                    r29 = r10;
                                                                                    r40 = r29;
                                                                                    coroutine_suspended = r22;
                                                                                    if (flowFlowOf instanceof i01) {
                                                                                        xs3.a((i01) flowFlowOf, false);
                                                                                        break;
                                                                                    }
                                                                                    CloseableKt.closeFinally(coroutine_suspended, null);
                                                                                    return flowFlowOf;
                                                                                }
                                                                            } else {
                                                                                Intrinsics.checkNotNull(v01VarA, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                                                r0 = (String) ((q01) v01VarA).b;
                                                                            }
                                                                        } else {
                                                                            r0 = (String) objectRef8.element;
                                                                        }
                                                                        vx2Var2.i = null;
                                                                        vx2Var2.j = iIntValue;
                                                                        vx2Var2.m = 6;
                                                                        objA2 = yf3Var.a(str, str, vx2Var2);
                                                                        if (objA2 != coroutine_suspended) {
                                                                            r17 = r8;
                                                                            str2 = str;
                                                                            objA3 = objA2;
                                                                            objectRef12 = objectRef11;
                                                                            r12 = r16;
                                                                            r110 = r14;
                                                                            i = iIntValue;
                                                                            objectRef13 = objectRef10;
                                                                            yx2Var3 = yx2Var2;
                                                                            r111 = r110;
                                                                            objectRef14 = objectRef9;
                                                                            try {
                                                                                if (((Boolean) objA3).booleanValue()) {
                                                                                    m01Var2 = u;
                                                                                    vx2Var2.a = r111;
                                                                                    vx2Var2.b = r17;
                                                                                    vx2Var2.c = r12;
                                                                                    vx2Var2.d = null;
                                                                                    vx2Var2.e = null;
                                                                                    vx2Var2.f = null;
                                                                                    vx2Var2.g = null;
                                                                                    vx2Var2.h = null;
                                                                                    vx2Var2.m = 7;
                                                                                    if (yx2Var3.a(m01Var2, vx2Var2) != coroutine_suspended) {
                                                                                        r26 = r12;
                                                                                        r27 = r17;
                                                                                        r28 = r111;
                                                                                        obj5 = null;
                                                                                        flowFlowOf = FlowKt.flowOf(new p005kotlin.Pair(u, null));
                                                                                        r32 = r26;
                                                                                        r31 = r27;
                                                                                        r30 = r28;
                                                                                        r33 = r30;
                                                                                        r32.unlock(obj5);
                                                                                        r22 = r31;
                                                                                        r29 = r33;
                                                                                        r40 = r29;
                                                                                        coroutine_suspended = r22;
                                                                                        if (flowFlowOf instanceof i01) {
                                                                                            xs3.a((i01) flowFlowOf, false);
                                                                                            break;
                                                                                        }
                                                                                        CloseableKt.closeFinally(coroutine_suspended, null);
                                                                                        return flowFlowOf;
                                                                                    }
                                                                                } else {
                                                                                    yf3Var = yx2Var3.n;
                                                                                    str3 = (String) objectRef12.element;
                                                                                    obj6 = objectRef14.element;
                                                                                    if (obj6 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("signalGenerationData");
                                                                                        tf3Var4 = null;
                                                                                    } else {
                                                                                        tf3Var4 = (tf3) obj6;
                                                                                    }
                                                                                    vx2Var2.a = yx2Var3;
                                                                                    vx2Var2.b = r111;
                                                                                    vx2Var2.c = r17;
                                                                                    vx2Var2.d = objectRef14;
                                                                                    vx2Var2.e = r12;
                                                                                    vx2Var2.f = objectRef13;
                                                                                    vx2Var2.g = null;
                                                                                    vx2Var2.h = null;
                                                                                    vx2Var2.m = 8;
                                                                                    if (yf3Var.a(str3, str2, tf3Var4, i, vx2Var2) != coroutine_suspended) {
                                                                                        yx2Var4 = yx2Var3;
                                                                                        r23 = r12;
                                                                                        r24 = r17;
                                                                                        objectRef15 = objectRef14;
                                                                                        r25 = r111;
                                                                                        p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                                                                                        r23.unlock(null);
                                                                                        obj7 = objectRef13.element;
                                                                                        if (obj7 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("decryptedAdResponseBlob");
                                                                                            str4 = null;
                                                                                        } else {
                                                                                            str4 = (String) obj7;
                                                                                        }
                                                                                        vx2Var2.a = yx2Var4;
                                                                                        vx2Var2.b = r25;
                                                                                        vx2Var2.c = r24;
                                                                                        vx2Var2.d = objectRef15;
                                                                                        vx2Var2.e = objectRef13;
                                                                                        vx2Var2.f = objectRef13;
                                                                                        vx2Var2.m = 9;
                                                                                        objA3 = yx2Var4.a(str4, vx2Var2);
                                                                                        if (objA3 == coroutine_suspended) {
                                                                                            objectRef16 = objectRef13;
                                                                                            r35 = r24;
                                                                                            r34 = r25;
                                                                                            v01Var = (v01) objA3;
                                                                                            if (v01Var instanceof i01) {
                                                                                                i01Var2 = (i01) v01Var;
                                                                                                vx2Var2.a = r34;
                                                                                                vx2Var2.b = r35;
                                                                                                vx2Var2.c = i01Var2;
                                                                                                vx2Var2.d = null;
                                                                                                vx2Var2.e = null;
                                                                                                vx2Var2.f = null;
                                                                                                vx2Var2.m = 10;
                                                                                                if (yx2Var4.a(i01Var2, vx2Var2) != coroutine_suspended) {
                                                                                                    r38 = r35;
                                                                                                    r39 = r34;
                                                                                                    flowFlowOf = FlowKt.flowOf(new p005kotlin.Pair(i01Var2, null));
                                                                                                    coroutine_suspended = r38;
                                                                                                    r40 = r39;
                                                                                                    if (flowFlowOf instanceof i01) {
                                                                                                        xs3.a((i01) flowFlowOf, false);
                                                                                                        break;
                                                                                                    }
                                                                                                    CloseableKt.closeFinally(coroutine_suspended, null);
                                                                                                    return flowFlowOf;
                                                                                                }
                                                                                            } else {
                                                                                                Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                                                                objectRef13.element = ((q01) v01Var).b;
                                                                                                obj8 = objectRef16.element;
                                                                                                if (obj8 == null) {
                                                                                                    Intrinsics.throwUninitializedPropertyAccessException("decryptedAdResponseBlob");
                                                                                                    str5 = null;
                                                                                                } else {
                                                                                                    str5 = (String) obj8;
                                                                                                }
                                                                                                obj9 = objectRef15.element;
                                                                                                if (obj9 == null) {
                                                                                                    Intrinsics.throwUninitializedPropertyAccessException("signalGenerationData");
                                                                                                    tf3Var5 = null;
                                                                                                } else {
                                                                                                    tf3Var5 = (tf3) obj9;
                                                                                                }
                                                                                                vx2Var2.a = r34;
                                                                                                vx2Var2.b = r35;
                                                                                                vx2Var2.c = null;
                                                                                                vx2Var2.d = null;
                                                                                                vx2Var2.e = null;
                                                                                                vx2Var2.f = null;
                                                                                                vx2Var2.m = 11;
                                                                                                objA3 = yx2Var4.a(str5, tf3Var5, vx2Var2);
                                                                                                if (objA3 != coroutine_suspended) {
                                                                                                    r36 = r35;
                                                                                                    r37 = r34;
                                                                                                    flowFlowOf = (Flow) objA3;
                                                                                                    coroutine_suspended = r36;
                                                                                                    r40 = r37;
                                                                                                    if (flowFlowOf instanceof i01) {
                                                                                                        xs3.a((i01) flowFlowOf, false);
                                                                                                        break;
                                                                                                    }
                                                                                                    CloseableKt.closeFinally(coroutine_suspended, null);
                                                                                                    return flowFlowOf;
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            } catch (Throwable th4) {
                                                                                th = th4;
                                                                                r40 = r12;
                                                                                obj = null;
                                                                                r3 = r40;
                                                                                r3.unlock(obj);
                                                                                throw th;
                                                                            }
                                                                        }
                                                                    } catch (Throwable th5) {
                                                                        th = th5;
                                                                        r40 = r16;
                                                                        obj = null;
                                                                        r3 = r40;
                                                                        r3.unlock(obj);
                                                                        throw th;
                                                                    }
                                                                    objectRef10.element = r0;
                                                                    r9 = r0;
                                                                    if (r0 == 0) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("decryptedAdResponseBlob");
                                                                        r9 = 0;
                                                                    }
                                                                    yx2Var2.getClass();
                                                                    p005kotlin.Pair pairA = a((String) r9);
                                                                    str = (String) pairA.component1();
                                                                    iIntValue = ((Number) pairA.component2()).intValue();
                                                                    yf3 yf3Var3 = yx2Var2.n;
                                                                    String str10 = (String) objectRef11.element;
                                                                    vx2Var2.a = yx2Var2;
                                                                    vx2Var2.b = r14;
                                                                    vx2Var2.c = r8;
                                                                    vx2Var2.d = objectRef11;
                                                                    vx2Var2.e = objectRef9;
                                                                    vx2Var2.f = r5;
                                                                    vx2Var2.g = objectRef10;
                                                                    vx2Var2.h = str;
                                                                    r16 = r5;
                                                                }
                                                            } catch (Throwable th6) {
                                                                th = th6;
                                                                r16 = r5;
                                                            }
                                                        }
                                                    } catch (Throwable th7) {
                                                        th = th7;
                                                        obj = null;
                                                        r3 = r40;
                                                        r3.unlock(obj);
                                                        throw th;
                                                    }
                                                }
                                            }
                                        } else {
                                            hs3.a().a.a.d = (String) objectRef18.element;
                                            objectRef = new Ref.ObjectRef();
                                            objectRef2 = new Ref.ObjectRef();
                                            mutex = yx2Var.t;
                                            vx2Var2.a = yx2Var;
                                            vx2Var2.b = A;
                                            vx2Var2.c = A;
                                            vx2Var2.d = booleanRef2;
                                            vx2Var2.e = objectRef17;
                                            vx2Var2.f = objectRef18;
                                            vx2Var2.g = objectRef2;
                                            vx2Var2.h = mutex;
                                            vx2Var2.i = objectRef;
                                            vx2Var2.m = 2;
                                            if (mutex.lock(null, vx2Var2) != coroutine_suspended) {
                                                yx2Var2 = yx2Var;
                                                objectRef3 = objectRef;
                                                objectRef4 = objectRef2;
                                                booleanRef = booleanRef2;
                                                objectRef5 = objectRef17;
                                                r40 = mutex;
                                                ?? r114 = A;
                                                objectRef6 = objectRef18;
                                                r7 = r114;
                                                r13 = r114;
                                                yf3 yf3Var4 = yx2Var2.n;
                                                String str11 = (String) objectRef6.element;
                                                vx2Var2.a = yx2Var2;
                                                vx2Var2.b = r7;
                                                vx2Var2.c = r13;
                                                vx2Var2.d = booleanRef;
                                                vx2Var2.e = objectRef5;
                                                vx2Var2.f = objectRef6;
                                                vx2Var2.g = objectRef4;
                                                vx2Var2.h = r40;
                                                vx2Var2.i = objectRef3;
                                                objectRef7 = objectRef3;
                                                vx2Var2.m = 3;
                                                objA = yf3Var4.a(str11, vx2Var2);
                                                if (objA != coroutine_suspended) {
                                                    Ref.ObjectRef objectRef110 = objectRef5;
                                                    objA3 = objA;
                                                    objectRef8 = objectRef110;
                                                    r14 = r7;
                                                    objectRef9 = objectRef4;
                                                    objectRef10 = objectRef7;
                                                    r5 = r40;
                                                    r15 = r13;
                                                    objectRef11 = objectRef6;
                                                    r8 = r15;
                                                    r1 = (tf3) objA3;
                                                    if (r1 == 0) {
                                                        m01Var = w;
                                                        vx2Var2.a = r14;
                                                        vx2Var2.b = r8;
                                                        vx2Var2.c = r5;
                                                        vx2Var2.d = null;
                                                        vx2Var2.e = null;
                                                        vx2Var2.f = null;
                                                        vx2Var2.g = null;
                                                        vx2Var2.h = null;
                                                        vx2Var2.i = null;
                                                        vx2Var2.m = 4;
                                                        if (yx2Var2.a(m01Var, vx2Var2) != coroutine_suspended) {
                                                            r11 = r5;
                                                            r18 = r8;
                                                            r19 = r14;
                                                            flowFlowOf = FlowKt.flowOf(new p005kotlin.Pair(w, null));
                                                            obj5 = null;
                                                            r32 = r11;
                                                            r31 = r18;
                                                            r30 = r19;
                                                            r33 = r30;
                                                            r32.unlock(obj5);
                                                            r22 = r31;
                                                            r29 = r33;
                                                            r40 = r29;
                                                            coroutine_suspended = r22;
                                                            if (flowFlowOf instanceof i01) {
                                                                xs3.a((i01) flowFlowOf, false);
                                                                break;
                                                            }
                                                            CloseableKt.closeFinally(coroutine_suspended, null);
                                                            return flowFlowOf;
                                                        }
                                                    } else {
                                                        objectRef9.element = r1;
                                                        tn1 tn1Var2 = hs3.a().a.b;
                                                        obj2 = objectRef9.element;
                                                        if (obj2 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("signalGenerationData");
                                                            tf3Var = null;
                                                        } else {
                                                            tf3Var = (tf3) obj2;
                                                        }
                                                        tn1Var2.d = tf3Var.b.getN();
                                                        n03 n03Var2 = hs3.a().a.a;
                                                        obj3 = objectRef9.element;
                                                        if (obj3 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("signalGenerationData");
                                                            tf3Var2 = null;
                                                        } else {
                                                            tf3Var2 = (tf3) obj3;
                                                        }
                                                        requestAgent = tf3Var2.b.getRequestAgent();
                                                        if (requestAgent == null) {
                                                            requestAgent = "";
                                                        }
                                                        n03Var2.g = requestAgent;
                                                        if (booleanRef.element) {
                                                            p70 p70Var3 = yx2Var2.o;
                                                            String str12 = (String) objectRef8.element;
                                                            String str13 = (String) objectRef11.element;
                                                            obj4 = objectRef9.element;
                                                            if (obj4 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("signalGenerationData");
                                                                tf3Var3 = null;
                                                            } else {
                                                                tf3Var3 = (tf3) obj4;
                                                            }
                                                            v01VarA = p70Var3.a(str12, str13, tf3Var3);
                                                            if (v01VarA instanceof i01) {
                                                                i01Var = (i01) v01VarA;
                                                                vx2Var2.a = r14;
                                                                vx2Var2.b = r8;
                                                                vx2Var2.c = r5;
                                                                vx2Var2.d = i01Var;
                                                                vx2Var2.e = null;
                                                                vx2Var2.f = null;
                                                                vx2Var2.g = null;
                                                                vx2Var2.h = null;
                                                                vx2Var2.i = null;
                                                                vx2Var2.m = 5;
                                                                if (yx2Var2.a(i01Var, vx2Var2) != coroutine_suspended) {
                                                                    r10 = r14;
                                                                    r21 = r5;
                                                                    r20 = r8;
                                                                    flowFlowOf = FlowKt.flowOf(new p005kotlin.Pair(i01Var, null));
                                                                    r21.unlock(null);
                                                                    r22 = r20;
                                                                    r29 = r10;
                                                                    r40 = r29;
                                                                    coroutine_suspended = r22;
                                                                    if (flowFlowOf instanceof i01) {
                                                                        xs3.a((i01) flowFlowOf, false);
                                                                        break;
                                                                    }
                                                                    CloseableKt.closeFinally(coroutine_suspended, null);
                                                                    return flowFlowOf;
                                                                }
                                                            } else {
                                                                Intrinsics.checkNotNull(v01VarA, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                                r0 = (String) ((q01) v01VarA).b;
                                                            }
                                                        } else {
                                                            r0 = (String) objectRef8.element;
                                                        }
                                                        objectRef10.element = r0;
                                                        r9 = r0;
                                                        if (r0 == 0) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("decryptedAdResponseBlob");
                                                            r9 = 0;
                                                        }
                                                        yx2Var2.getClass();
                                                        p005kotlin.Pair pairA2 = a((String) r9);
                                                        str = (String) pairA2.component1();
                                                        iIntValue = ((Number) pairA2.component2()).intValue();
                                                        yf3 yf3Var5 = yx2Var2.n;
                                                        String str14 = (String) objectRef11.element;
                                                        vx2Var2.a = yx2Var2;
                                                        vx2Var2.b = r14;
                                                        vx2Var2.c = r8;
                                                        vx2Var2.d = objectRef11;
                                                        vx2Var2.e = objectRef9;
                                                        vx2Var2.f = r5;
                                                        vx2Var2.g = objectRef10;
                                                        vx2Var2.h = str;
                                                        r16 = r5;
                                                        vx2Var2.i = null;
                                                        vx2Var2.j = iIntValue;
                                                        vx2Var2.m = 6;
                                                        objA2 = yf3Var5.a(str14, str, vx2Var2);
                                                        if (objA2 != coroutine_suspended) {
                                                            r17 = r8;
                                                            str2 = str;
                                                            objA3 = objA2;
                                                            objectRef12 = objectRef11;
                                                            r12 = r16;
                                                            r110 = r14;
                                                            i = iIntValue;
                                                            objectRef13 = objectRef10;
                                                            yx2Var3 = yx2Var2;
                                                            r111 = r110;
                                                            objectRef14 = objectRef9;
                                                            if (((Boolean) objA3).booleanValue()) {
                                                                m01Var2 = u;
                                                                vx2Var2.a = r111;
                                                                vx2Var2.b = r17;
                                                                vx2Var2.c = r12;
                                                                vx2Var2.d = null;
                                                                vx2Var2.e = null;
                                                                vx2Var2.f = null;
                                                                vx2Var2.g = null;
                                                                vx2Var2.h = null;
                                                                vx2Var2.m = 7;
                                                                if (yx2Var3.a(m01Var2, vx2Var2) != coroutine_suspended) {
                                                                    r26 = r12;
                                                                    r27 = r17;
                                                                    r28 = r111;
                                                                    obj5 = null;
                                                                    flowFlowOf = FlowKt.flowOf(new p005kotlin.Pair(u, null));
                                                                    r32 = r26;
                                                                    r31 = r27;
                                                                    r30 = r28;
                                                                    r33 = r30;
                                                                    r32.unlock(obj5);
                                                                    r22 = r31;
                                                                    r29 = r33;
                                                                    r40 = r29;
                                                                    coroutine_suspended = r22;
                                                                    if (flowFlowOf instanceof i01) {
                                                                        xs3.a((i01) flowFlowOf, false);
                                                                        break;
                                                                    }
                                                                    CloseableKt.closeFinally(coroutine_suspended, null);
                                                                    return flowFlowOf;
                                                                }
                                                            } else {
                                                                yf3Var = yx2Var3.n;
                                                                str3 = (String) objectRef12.element;
                                                                obj6 = objectRef14.element;
                                                                if (obj6 == null) {
                                                                    Intrinsics.throwUninitializedPropertyAccessException("signalGenerationData");
                                                                    tf3Var4 = null;
                                                                } else {
                                                                    tf3Var4 = (tf3) obj6;
                                                                }
                                                                vx2Var2.a = yx2Var3;
                                                                vx2Var2.b = r111;
                                                                vx2Var2.c = r17;
                                                                vx2Var2.d = objectRef14;
                                                                vx2Var2.e = r12;
                                                                vx2Var2.f = objectRef13;
                                                                vx2Var2.g = null;
                                                                vx2Var2.h = null;
                                                                vx2Var2.m = 8;
                                                                if (yf3Var.a(str3, str2, tf3Var4, i, vx2Var2) != coroutine_suspended) {
                                                                    yx2Var4 = yx2Var3;
                                                                    r23 = r12;
                                                                    r24 = r17;
                                                                    objectRef15 = objectRef14;
                                                                    r25 = r111;
                                                                    p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                                                                    r23.unlock(null);
                                                                    obj7 = objectRef13.element;
                                                                    if (obj7 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("decryptedAdResponseBlob");
                                                                        str4 = null;
                                                                    } else {
                                                                        str4 = (String) obj7;
                                                                    }
                                                                    vx2Var2.a = yx2Var4;
                                                                    vx2Var2.b = r25;
                                                                    vx2Var2.c = r24;
                                                                    vx2Var2.d = objectRef15;
                                                                    vx2Var2.e = objectRef13;
                                                                    vx2Var2.f = objectRef13;
                                                                    vx2Var2.m = 9;
                                                                    objA3 = yx2Var4.a(str4, vx2Var2);
                                                                    if (objA3 == coroutine_suspended) {
                                                                        objectRef16 = objectRef13;
                                                                        r35 = r24;
                                                                        r34 = r25;
                                                                        v01Var = (v01) objA3;
                                                                        if (v01Var instanceof i01) {
                                                                            i01Var2 = (i01) v01Var;
                                                                            vx2Var2.a = r34;
                                                                            vx2Var2.b = r35;
                                                                            vx2Var2.c = i01Var2;
                                                                            vx2Var2.d = null;
                                                                            vx2Var2.e = null;
                                                                            vx2Var2.f = null;
                                                                            vx2Var2.m = 10;
                                                                            if (yx2Var4.a(i01Var2, vx2Var2) != coroutine_suspended) {
                                                                                r38 = r35;
                                                                                r39 = r34;
                                                                                flowFlowOf = FlowKt.flowOf(new p005kotlin.Pair(i01Var2, null));
                                                                                coroutine_suspended = r38;
                                                                                r40 = r39;
                                                                                if (flowFlowOf instanceof i01) {
                                                                                    xs3.a((i01) flowFlowOf, false);
                                                                                    break;
                                                                                }
                                                                                CloseableKt.closeFinally(coroutine_suspended, null);
                                                                                return flowFlowOf;
                                                                            }
                                                                        } else {
                                                                            Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                                            objectRef13.element = ((q01) v01Var).b;
                                                                            obj8 = objectRef16.element;
                                                                            if (obj8 == null) {
                                                                                Intrinsics.throwUninitializedPropertyAccessException("decryptedAdResponseBlob");
                                                                                str5 = null;
                                                                            } else {
                                                                                str5 = (String) obj8;
                                                                            }
                                                                            obj9 = objectRef15.element;
                                                                            if (obj9 == null) {
                                                                                Intrinsics.throwUninitializedPropertyAccessException("signalGenerationData");
                                                                                tf3Var5 = null;
                                                                            } else {
                                                                                tf3Var5 = (tf3) obj9;
                                                                            }
                                                                            vx2Var2.a = r34;
                                                                            vx2Var2.b = r35;
                                                                            vx2Var2.c = null;
                                                                            vx2Var2.d = null;
                                                                            vx2Var2.e = null;
                                                                            vx2Var2.f = null;
                                                                            vx2Var2.m = 11;
                                                                            objA3 = yx2Var4.a(str5, tf3Var5, vx2Var2);
                                                                            if (objA3 != coroutine_suspended) {
                                                                                r36 = r35;
                                                                                r37 = r34;
                                                                                flowFlowOf = (Flow) objA3;
                                                                                coroutine_suspended = r36;
                                                                                r40 = r37;
                                                                                if (flowFlowOf instanceof i01) {
                                                                                    xs3.a((i01) flowFlowOf, false);
                                                                                    break;
                                                                                }
                                                                                CloseableKt.closeFinally(coroutine_suspended, null);
                                                                                return flowFlowOf;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        return coroutine_suspended;
                                    } catch (Throwable th8) {
                                        th = th8;
                                        r6 = A;
                                        r6.b(th);
                                        if (th instanceof v24) {
                                            throw th;
                                        }
                                        if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                            r6.a(th);
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
                                case 1:
                                    Closeable closeable2 = vx2Var2.b;
                                    rr3 rr3Var2 = (rr3) vx2Var2.a;
                                    p005kotlin.ResultKt.throwOnFailure(objA3);
                                    r2 = closeable2;
                                    r4 = rr3Var2;
                                    flowFlowOf = FlowKt.flowOf(new p005kotlin.Pair(x, null));
                                    coroutine_suspended = r2;
                                    r40 = r4;
                                    if (flowFlowOf instanceof i01) {
                                        xs3.a((i01) flowFlowOf, false);
                                        break;
                                    }
                                    CloseableKt.closeFinally(coroutine_suspended, null);
                                    return flowFlowOf;
                                case 2:
                                    objectRef3 = vx2Var2.i;
                                    Mutex mutex3 = (Mutex) vx2Var2.h;
                                    objectRef4 = vx2Var2.g;
                                    objectRef6 = (Ref.ObjectRef) vx2Var2.f;
                                    Ref.ObjectRef objectRef20 = (Ref.ObjectRef) vx2Var2.e;
                                    booleanRef = (Ref.BooleanRef) vx2Var2.d;
                                    Closeable closeable3 = (Closeable) vx2Var2.c;
                                    rr3 rr3Var3 = (rr3) vx2Var2.b;
                                    yx2Var2 = (yx2) vx2Var2.a;
                                    try {
                                        p005kotlin.ResultKt.throwOnFailure(objA3);
                                        objectRef5 = objectRef20;
                                        r7 = rr3Var3;
                                        r40 = mutex3;
                                        r13 = closeable3;
                                        yf3 yf3Var6 = yx2Var2.n;
                                        String str15 = (String) objectRef6.element;
                                        vx2Var2.a = yx2Var2;
                                        vx2Var2.b = r7;
                                        vx2Var2.c = r13;
                                        vx2Var2.d = booleanRef;
                                        vx2Var2.e = objectRef5;
                                        vx2Var2.f = objectRef6;
                                        vx2Var2.g = objectRef4;
                                        vx2Var2.h = r40;
                                        vx2Var2.i = objectRef3;
                                        objectRef7 = objectRef3;
                                        vx2Var2.m = 3;
                                        objA = yf3Var6.a(str15, vx2Var2);
                                        if (objA != coroutine_suspended) {
                                            Ref.ObjectRef objectRef111 = objectRef5;
                                            objA3 = objA;
                                            objectRef8 = objectRef111;
                                            r14 = r7;
                                            objectRef9 = objectRef4;
                                            objectRef10 = objectRef7;
                                            r5 = r40;
                                            r15 = r13;
                                            objectRef11 = objectRef6;
                                            r8 = r15;
                                            r1 = (tf3) objA3;
                                            if (r1 == 0) {
                                                m01Var = w;
                                                vx2Var2.a = r14;
                                                vx2Var2.b = r8;
                                                vx2Var2.c = r5;
                                                vx2Var2.d = null;
                                                vx2Var2.e = null;
                                                vx2Var2.f = null;
                                                vx2Var2.g = null;
                                                vx2Var2.h = null;
                                                vx2Var2.i = null;
                                                vx2Var2.m = 4;
                                                if (yx2Var2.a(m01Var, vx2Var2) != coroutine_suspended) {
                                                    r11 = r5;
                                                    r18 = r8;
                                                    r19 = r14;
                                                    flowFlowOf = FlowKt.flowOf(new p005kotlin.Pair(w, null));
                                                    obj5 = null;
                                                    r32 = r11;
                                                    r31 = r18;
                                                    r30 = r19;
                                                    r33 = r30;
                                                    r32.unlock(obj5);
                                                    r22 = r31;
                                                    r29 = r33;
                                                    r40 = r29;
                                                    coroutine_suspended = r22;
                                                    if (flowFlowOf instanceof i01) {
                                                        xs3.a((i01) flowFlowOf, false);
                                                        break;
                                                    }
                                                    CloseableKt.closeFinally(coroutine_suspended, null);
                                                    return flowFlowOf;
                                                }
                                            } else {
                                                objectRef9.element = r1;
                                                tn1 tn1Var3 = hs3.a().a.b;
                                                obj2 = objectRef9.element;
                                                if (obj2 == null) {
                                                    Intrinsics.throwUninitializedPropertyAccessException("signalGenerationData");
                                                    tf3Var = null;
                                                } else {
                                                    tf3Var = (tf3) obj2;
                                                }
                                                tn1Var3.d = tf3Var.b.getN();
                                                n03 n03Var3 = hs3.a().a.a;
                                                obj3 = objectRef9.element;
                                                if (obj3 == null) {
                                                    Intrinsics.throwUninitializedPropertyAccessException("signalGenerationData");
                                                    tf3Var2 = null;
                                                } else {
                                                    tf3Var2 = (tf3) obj3;
                                                }
                                                requestAgent = tf3Var2.b.getRequestAgent();
                                                if (requestAgent == null) {
                                                    requestAgent = "";
                                                }
                                                n03Var3.g = requestAgent;
                                                if (booleanRef.element) {
                                                    p70 p70Var4 = yx2Var2.o;
                                                    String str16 = (String) objectRef8.element;
                                                    String str17 = (String) objectRef11.element;
                                                    obj4 = objectRef9.element;
                                                    if (obj4 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("signalGenerationData");
                                                        tf3Var3 = null;
                                                    } else {
                                                        tf3Var3 = (tf3) obj4;
                                                    }
                                                    v01VarA = p70Var4.a(str16, str17, tf3Var3);
                                                    if (v01VarA instanceof i01) {
                                                        i01Var = (i01) v01VarA;
                                                        vx2Var2.a = r14;
                                                        vx2Var2.b = r8;
                                                        vx2Var2.c = r5;
                                                        vx2Var2.d = i01Var;
                                                        vx2Var2.e = null;
                                                        vx2Var2.f = null;
                                                        vx2Var2.g = null;
                                                        vx2Var2.h = null;
                                                        vx2Var2.i = null;
                                                        vx2Var2.m = 5;
                                                        if (yx2Var2.a(i01Var, vx2Var2) != coroutine_suspended) {
                                                            r10 = r14;
                                                            r21 = r5;
                                                            r20 = r8;
                                                            flowFlowOf = FlowKt.flowOf(new p005kotlin.Pair(i01Var, null));
                                                            r21.unlock(null);
                                                            r22 = r20;
                                                            r29 = r10;
                                                            r40 = r29;
                                                            coroutine_suspended = r22;
                                                            if (flowFlowOf instanceof i01) {
                                                                xs3.a((i01) flowFlowOf, false);
                                                                break;
                                                            }
                                                            CloseableKt.closeFinally(coroutine_suspended, null);
                                                            return flowFlowOf;
                                                        }
                                                    } else {
                                                        Intrinsics.checkNotNull(v01VarA, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                        r0 = (String) ((q01) v01VarA).b;
                                                    }
                                                } else {
                                                    r0 = (String) objectRef8.element;
                                                }
                                                objectRef10.element = r0;
                                                r9 = r0;
                                                if (r0 == 0) {
                                                    Intrinsics.throwUninitializedPropertyAccessException("decryptedAdResponseBlob");
                                                    r9 = 0;
                                                }
                                                yx2Var2.getClass();
                                                p005kotlin.Pair pairA3 = a((String) r9);
                                                str = (String) pairA3.component1();
                                                iIntValue = ((Number) pairA3.component2()).intValue();
                                                yf3 yf3Var7 = yx2Var2.n;
                                                String str18 = (String) objectRef11.element;
                                                vx2Var2.a = yx2Var2;
                                                vx2Var2.b = r14;
                                                vx2Var2.c = r8;
                                                vx2Var2.d = objectRef11;
                                                vx2Var2.e = objectRef9;
                                                vx2Var2.f = r5;
                                                vx2Var2.g = objectRef10;
                                                vx2Var2.h = str;
                                                r16 = r5;
                                                vx2Var2.i = null;
                                                vx2Var2.j = iIntValue;
                                                vx2Var2.m = 6;
                                                objA2 = yf3Var7.a(str18, str, vx2Var2);
                                                if (objA2 != coroutine_suspended) {
                                                    r17 = r8;
                                                    str2 = str;
                                                    objA3 = objA2;
                                                    objectRef12 = objectRef11;
                                                    r12 = r16;
                                                    r110 = r14;
                                                    i = iIntValue;
                                                    objectRef13 = objectRef10;
                                                    yx2Var3 = yx2Var2;
                                                    r111 = r110;
                                                    objectRef14 = objectRef9;
                                                    if (((Boolean) objA3).booleanValue()) {
                                                        m01Var2 = u;
                                                        vx2Var2.a = r111;
                                                        vx2Var2.b = r17;
                                                        vx2Var2.c = r12;
                                                        vx2Var2.d = null;
                                                        vx2Var2.e = null;
                                                        vx2Var2.f = null;
                                                        vx2Var2.g = null;
                                                        vx2Var2.h = null;
                                                        vx2Var2.m = 7;
                                                        if (yx2Var3.a(m01Var2, vx2Var2) != coroutine_suspended) {
                                                            r26 = r12;
                                                            r27 = r17;
                                                            r28 = r111;
                                                            obj5 = null;
                                                            flowFlowOf = FlowKt.flowOf(new p005kotlin.Pair(u, null));
                                                            r32 = r26;
                                                            r31 = r27;
                                                            r30 = r28;
                                                            r33 = r30;
                                                            r32.unlock(obj5);
                                                            r22 = r31;
                                                            r29 = r33;
                                                            r40 = r29;
                                                            coroutine_suspended = r22;
                                                            if (flowFlowOf instanceof i01) {
                                                                xs3.a((i01) flowFlowOf, false);
                                                                break;
                                                            }
                                                            CloseableKt.closeFinally(coroutine_suspended, null);
                                                            return flowFlowOf;
                                                        }
                                                    } else {
                                                        yf3Var = yx2Var3.n;
                                                        str3 = (String) objectRef12.element;
                                                        obj6 = objectRef14.element;
                                                        if (obj6 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("signalGenerationData");
                                                            tf3Var4 = null;
                                                        } else {
                                                            tf3Var4 = (tf3) obj6;
                                                        }
                                                        vx2Var2.a = yx2Var3;
                                                        vx2Var2.b = r111;
                                                        vx2Var2.c = r17;
                                                        vx2Var2.d = objectRef14;
                                                        vx2Var2.e = r12;
                                                        vx2Var2.f = objectRef13;
                                                        vx2Var2.g = null;
                                                        vx2Var2.h = null;
                                                        vx2Var2.m = 8;
                                                        if (yf3Var.a(str3, str2, tf3Var4, i, vx2Var2) != coroutine_suspended) {
                                                            yx2Var4 = yx2Var3;
                                                            r23 = r12;
                                                            r24 = r17;
                                                            objectRef15 = objectRef14;
                                                            r25 = r111;
                                                            p005kotlin.Unit unit3 = p005kotlin.Unit.INSTANCE;
                                                            r23.unlock(null);
                                                            obj7 = objectRef13.element;
                                                            if (obj7 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("decryptedAdResponseBlob");
                                                                str4 = null;
                                                            } else {
                                                                str4 = (String) obj7;
                                                            }
                                                            vx2Var2.a = yx2Var4;
                                                            vx2Var2.b = r25;
                                                            vx2Var2.c = r24;
                                                            vx2Var2.d = objectRef15;
                                                            vx2Var2.e = objectRef13;
                                                            vx2Var2.f = objectRef13;
                                                            vx2Var2.m = 9;
                                                            objA3 = yx2Var4.a(str4, vx2Var2);
                                                            if (objA3 == coroutine_suspended) {
                                                                objectRef16 = objectRef13;
                                                                r35 = r24;
                                                                r34 = r25;
                                                                v01Var = (v01) objA3;
                                                                if (v01Var instanceof i01) {
                                                                    i01Var2 = (i01) v01Var;
                                                                    vx2Var2.a = r34;
                                                                    vx2Var2.b = r35;
                                                                    vx2Var2.c = i01Var2;
                                                                    vx2Var2.d = null;
                                                                    vx2Var2.e = null;
                                                                    vx2Var2.f = null;
                                                                    vx2Var2.m = 10;
                                                                    if (yx2Var4.a(i01Var2, vx2Var2) != coroutine_suspended) {
                                                                        r38 = r35;
                                                                        r39 = r34;
                                                                        flowFlowOf = FlowKt.flowOf(new p005kotlin.Pair(i01Var2, null));
                                                                        coroutine_suspended = r38;
                                                                        r40 = r39;
                                                                        if (flowFlowOf instanceof i01) {
                                                                            xs3.a((i01) flowFlowOf, false);
                                                                            break;
                                                                        }
                                                                        CloseableKt.closeFinally(coroutine_suspended, null);
                                                                        return flowFlowOf;
                                                                    }
                                                                } else {
                                                                    Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                                    objectRef13.element = ((q01) v01Var).b;
                                                                    obj8 = objectRef16.element;
                                                                    if (obj8 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("decryptedAdResponseBlob");
                                                                        str5 = null;
                                                                    } else {
                                                                        str5 = (String) obj8;
                                                                    }
                                                                    obj9 = objectRef15.element;
                                                                    if (obj9 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("signalGenerationData");
                                                                        tf3Var5 = null;
                                                                    } else {
                                                                        tf3Var5 = (tf3) obj9;
                                                                    }
                                                                    vx2Var2.a = r34;
                                                                    vx2Var2.b = r35;
                                                                    vx2Var2.c = null;
                                                                    vx2Var2.d = null;
                                                                    vx2Var2.e = null;
                                                                    vx2Var2.f = null;
                                                                    vx2Var2.m = 11;
                                                                    objA3 = yx2Var4.a(str5, tf3Var5, vx2Var2);
                                                                    if (objA3 != coroutine_suspended) {
                                                                        r36 = r35;
                                                                        r37 = r34;
                                                                        flowFlowOf = (Flow) objA3;
                                                                        coroutine_suspended = r36;
                                                                        r40 = r37;
                                                                        if (flowFlowOf instanceof i01) {
                                                                            xs3.a((i01) flowFlowOf, false);
                                                                            break;
                                                                        }
                                                                        CloseableKt.closeFinally(coroutine_suspended, null);
                                                                        return flowFlowOf;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        return coroutine_suspended;
                                    } catch (Throwable th9) {
                                        th = th9;
                                        A = closeable3;
                                        r6 = rr3Var3;
                                        r6.b(th);
                                        if (th instanceof v24) {
                                            throw th;
                                        }
                                        if (!(th instanceof TimeoutCancellationException)) {
                                            r6.a(th);
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
                                    Ref.ObjectRef objectRef21 = vx2Var2.i;
                                    mutex2 = (Mutex) vx2Var2.h;
                                    Ref.ObjectRef objectRef22 = vx2Var2.g;
                                    objectRef6 = (Ref.ObjectRef) vx2Var2.f;
                                    Ref.ObjectRef objectRef23 = (Ref.ObjectRef) vx2Var2.e;
                                    booleanRef = (Ref.BooleanRef) vx2Var2.d;
                                    closeable = (Closeable) vx2Var2.c;
                                    rr3Var = (rr3) vx2Var2.b;
                                    yx2Var2 = (yx2) vx2Var2.a;
                                    try {
                                        p005kotlin.ResultKt.throwOnFailure(objA3);
                                        objectRef10 = objectRef21;
                                        objectRef8 = objectRef23;
                                        objectRef9 = objectRef22;
                                        r5 = mutex2;
                                        r15 = closeable;
                                        r14 = rr3Var;
                                        objectRef11 = objectRef6;
                                        r8 = r15;
                                        r1 = (tf3) objA3;
                                        if (r1 == 0) {
                                            m01Var = w;
                                            vx2Var2.a = r14;
                                            vx2Var2.b = r8;
                                            vx2Var2.c = r5;
                                            vx2Var2.d = null;
                                            vx2Var2.e = null;
                                            vx2Var2.f = null;
                                            vx2Var2.g = null;
                                            vx2Var2.h = null;
                                            vx2Var2.i = null;
                                            vx2Var2.m = 4;
                                            if (yx2Var2.a(m01Var, vx2Var2) != coroutine_suspended) {
                                                r11 = r5;
                                                r18 = r8;
                                                r19 = r14;
                                                flowFlowOf = FlowKt.flowOf(new p005kotlin.Pair(w, null));
                                                obj5 = null;
                                                r32 = r11;
                                                r31 = r18;
                                                r30 = r19;
                                                r33 = r30;
                                                r32.unlock(obj5);
                                                r22 = r31;
                                                r29 = r33;
                                                r40 = r29;
                                                coroutine_suspended = r22;
                                                if (flowFlowOf instanceof i01) {
                                                    xs3.a((i01) flowFlowOf, false);
                                                    break;
                                                }
                                                CloseableKt.closeFinally(coroutine_suspended, null);
                                                return flowFlowOf;
                                            }
                                        } else {
                                            objectRef9.element = r1;
                                            tn1 tn1Var4 = hs3.a().a.b;
                                            obj2 = objectRef9.element;
                                            if (obj2 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("signalGenerationData");
                                                tf3Var = null;
                                            } else {
                                                tf3Var = (tf3) obj2;
                                            }
                                            tn1Var4.d = tf3Var.b.getN();
                                            n03 n03Var4 = hs3.a().a.a;
                                            obj3 = objectRef9.element;
                                            if (obj3 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("signalGenerationData");
                                                tf3Var2 = null;
                                            } else {
                                                tf3Var2 = (tf3) obj3;
                                            }
                                            requestAgent = tf3Var2.b.getRequestAgent();
                                            if (requestAgent == null) {
                                                requestAgent = "";
                                            }
                                            n03Var4.g = requestAgent;
                                            if (booleanRef.element) {
                                                p70 p70Var5 = yx2Var2.o;
                                                String str19 = (String) objectRef8.element;
                                                String str110 = (String) objectRef11.element;
                                                obj4 = objectRef9.element;
                                                if (obj4 == null) {
                                                    Intrinsics.throwUninitializedPropertyAccessException("signalGenerationData");
                                                    tf3Var3 = null;
                                                } else {
                                                    tf3Var3 = (tf3) obj4;
                                                }
                                                v01VarA = p70Var5.a(str19, str110, tf3Var3);
                                                if (v01VarA instanceof i01) {
                                                    i01Var = (i01) v01VarA;
                                                    vx2Var2.a = r14;
                                                    vx2Var2.b = r8;
                                                    vx2Var2.c = r5;
                                                    vx2Var2.d = i01Var;
                                                    vx2Var2.e = null;
                                                    vx2Var2.f = null;
                                                    vx2Var2.g = null;
                                                    vx2Var2.h = null;
                                                    vx2Var2.i = null;
                                                    vx2Var2.m = 5;
                                                    if (yx2Var2.a(i01Var, vx2Var2) != coroutine_suspended) {
                                                        r10 = r14;
                                                        r21 = r5;
                                                        r20 = r8;
                                                        flowFlowOf = FlowKt.flowOf(new p005kotlin.Pair(i01Var, null));
                                                        r21.unlock(null);
                                                        r22 = r20;
                                                        r29 = r10;
                                                        r40 = r29;
                                                        coroutine_suspended = r22;
                                                        if (flowFlowOf instanceof i01) {
                                                            xs3.a((i01) flowFlowOf, false);
                                                            break;
                                                        }
                                                        CloseableKt.closeFinally(coroutine_suspended, null);
                                                        return flowFlowOf;
                                                    }
                                                } else {
                                                    Intrinsics.checkNotNull(v01VarA, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                    r0 = (String) ((q01) v01VarA).b;
                                                }
                                            } else {
                                                r0 = (String) objectRef8.element;
                                            }
                                            objectRef10.element = r0;
                                            r9 = r0;
                                            if (r0 == 0) {
                                                Intrinsics.throwUninitializedPropertyAccessException("decryptedAdResponseBlob");
                                                r9 = 0;
                                            }
                                            yx2Var2.getClass();
                                            p005kotlin.Pair pairA4 = a((String) r9);
                                            str = (String) pairA4.component1();
                                            iIntValue = ((Number) pairA4.component2()).intValue();
                                            yf3 yf3Var8 = yx2Var2.n;
                                            String str111 = (String) objectRef11.element;
                                            vx2Var2.a = yx2Var2;
                                            vx2Var2.b = r14;
                                            vx2Var2.c = r8;
                                            vx2Var2.d = objectRef11;
                                            vx2Var2.e = objectRef9;
                                            vx2Var2.f = r5;
                                            vx2Var2.g = objectRef10;
                                            vx2Var2.h = str;
                                            r16 = r5;
                                            vx2Var2.i = null;
                                            vx2Var2.j = iIntValue;
                                            vx2Var2.m = 6;
                                            objA2 = yf3Var8.a(str111, str, vx2Var2);
                                            if (objA2 != coroutine_suspended) {
                                                r17 = r8;
                                                str2 = str;
                                                objA3 = objA2;
                                                objectRef12 = objectRef11;
                                                r12 = r16;
                                                r110 = r14;
                                                i = iIntValue;
                                                objectRef13 = objectRef10;
                                                yx2Var3 = yx2Var2;
                                                r111 = r110;
                                                objectRef14 = objectRef9;
                                                if (((Boolean) objA3).booleanValue()) {
                                                    m01Var2 = u;
                                                    vx2Var2.a = r111;
                                                    vx2Var2.b = r17;
                                                    vx2Var2.c = r12;
                                                    vx2Var2.d = null;
                                                    vx2Var2.e = null;
                                                    vx2Var2.f = null;
                                                    vx2Var2.g = null;
                                                    vx2Var2.h = null;
                                                    vx2Var2.m = 7;
                                                    if (yx2Var3.a(m01Var2, vx2Var2) != coroutine_suspended) {
                                                        r26 = r12;
                                                        r27 = r17;
                                                        r28 = r111;
                                                        obj5 = null;
                                                        flowFlowOf = FlowKt.flowOf(new p005kotlin.Pair(u, null));
                                                        r32 = r26;
                                                        r31 = r27;
                                                        r30 = r28;
                                                        r33 = r30;
                                                        r32.unlock(obj5);
                                                        r22 = r31;
                                                        r29 = r33;
                                                        r40 = r29;
                                                        coroutine_suspended = r22;
                                                        if (flowFlowOf instanceof i01) {
                                                            xs3.a((i01) flowFlowOf, false);
                                                            break;
                                                        }
                                                        CloseableKt.closeFinally(coroutine_suspended, null);
                                                        return flowFlowOf;
                                                    }
                                                } else {
                                                    yf3Var = yx2Var3.n;
                                                    str3 = (String) objectRef12.element;
                                                    obj6 = objectRef14.element;
                                                    if (obj6 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("signalGenerationData");
                                                        tf3Var4 = null;
                                                    } else {
                                                        tf3Var4 = (tf3) obj6;
                                                    }
                                                    vx2Var2.a = yx2Var3;
                                                    vx2Var2.b = r111;
                                                    vx2Var2.c = r17;
                                                    vx2Var2.d = objectRef14;
                                                    vx2Var2.e = r12;
                                                    vx2Var2.f = objectRef13;
                                                    vx2Var2.g = null;
                                                    vx2Var2.h = null;
                                                    vx2Var2.m = 8;
                                                    if (yf3Var.a(str3, str2, tf3Var4, i, vx2Var2) != coroutine_suspended) {
                                                        yx2Var4 = yx2Var3;
                                                        r23 = r12;
                                                        r24 = r17;
                                                        objectRef15 = objectRef14;
                                                        r25 = r111;
                                                        p005kotlin.Unit unit4 = p005kotlin.Unit.INSTANCE;
                                                        r23.unlock(null);
                                                        obj7 = objectRef13.element;
                                                        if (obj7 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("decryptedAdResponseBlob");
                                                            str4 = null;
                                                        } else {
                                                            str4 = (String) obj7;
                                                        }
                                                        vx2Var2.a = yx2Var4;
                                                        vx2Var2.b = r25;
                                                        vx2Var2.c = r24;
                                                        vx2Var2.d = objectRef15;
                                                        vx2Var2.e = objectRef13;
                                                        vx2Var2.f = objectRef13;
                                                        vx2Var2.m = 9;
                                                        objA3 = yx2Var4.a(str4, vx2Var2);
                                                        if (objA3 == coroutine_suspended) {
                                                            objectRef16 = objectRef13;
                                                            r35 = r24;
                                                            r34 = r25;
                                                            v01Var = (v01) objA3;
                                                            if (v01Var instanceof i01) {
                                                                i01Var2 = (i01) v01Var;
                                                                vx2Var2.a = r34;
                                                                vx2Var2.b = r35;
                                                                vx2Var2.c = i01Var2;
                                                                vx2Var2.d = null;
                                                                vx2Var2.e = null;
                                                                vx2Var2.f = null;
                                                                vx2Var2.m = 10;
                                                                if (yx2Var4.a(i01Var2, vx2Var2) != coroutine_suspended) {
                                                                    r38 = r35;
                                                                    r39 = r34;
                                                                    flowFlowOf = FlowKt.flowOf(new p005kotlin.Pair(i01Var2, null));
                                                                    coroutine_suspended = r38;
                                                                    r40 = r39;
                                                                    if (flowFlowOf instanceof i01) {
                                                                        xs3.a((i01) flowFlowOf, false);
                                                                        break;
                                                                    }
                                                                    CloseableKt.closeFinally(coroutine_suspended, null);
                                                                    return flowFlowOf;
                                                                }
                                                            } else {
                                                                Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                                objectRef13.element = ((q01) v01Var).b;
                                                                obj8 = objectRef16.element;
                                                                if (obj8 == null) {
                                                                    Intrinsics.throwUninitializedPropertyAccessException("decryptedAdResponseBlob");
                                                                    str5 = null;
                                                                } else {
                                                                    str5 = (String) obj8;
                                                                }
                                                                obj9 = objectRef15.element;
                                                                if (obj9 == null) {
                                                                    Intrinsics.throwUninitializedPropertyAccessException("signalGenerationData");
                                                                    tf3Var5 = null;
                                                                } else {
                                                                    tf3Var5 = (tf3) obj9;
                                                                }
                                                                vx2Var2.a = r34;
                                                                vx2Var2.b = r35;
                                                                vx2Var2.c = null;
                                                                vx2Var2.d = null;
                                                                vx2Var2.e = null;
                                                                vx2Var2.f = null;
                                                                vx2Var2.m = 11;
                                                                objA3 = yx2Var4.a(str5, tf3Var5, vx2Var2);
                                                                if (objA3 != coroutine_suspended) {
                                                                    r36 = r35;
                                                                    r37 = r34;
                                                                    flowFlowOf = (Flow) objA3;
                                                                    coroutine_suspended = r36;
                                                                    r40 = r37;
                                                                    if (flowFlowOf instanceof i01) {
                                                                        xs3.a((i01) flowFlowOf, false);
                                                                        break;
                                                                    }
                                                                    CloseableKt.closeFinally(coroutine_suspended, null);
                                                                    return flowFlowOf;
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        return coroutine_suspended;
                                    } catch (Throwable th10) {
                                        th = th10;
                                        obj = null;
                                        r3 = mutex2;
                                        r3.unlock(obj);
                                        throw th;
                                    }
                                case 4:
                                    Mutex mutex4 = (Mutex) vx2Var2.c;
                                    Closeable closeable4 = vx2Var2.b;
                                    rr3 rr3Var4 = (rr3) vx2Var2.a;
                                    p005kotlin.ResultKt.throwOnFailure(objA3);
                                    r11 = mutex4;
                                    r18 = closeable4;
                                    r19 = rr3Var4;
                                    flowFlowOf = FlowKt.flowOf(new p005kotlin.Pair(w, null));
                                    obj5 = null;
                                    r32 = r11;
                                    r31 = r18;
                                    r30 = r19;
                                    r33 = r30;
                                    r32.unlock(obj5);
                                    r22 = r31;
                                    r29 = r33;
                                    r40 = r29;
                                    coroutine_suspended = r22;
                                    if (flowFlowOf instanceof i01) {
                                        xs3.a((i01) flowFlowOf, false);
                                        break;
                                    }
                                    CloseableKt.closeFinally(coroutine_suspended, null);
                                    return flowFlowOf;
                                case 5:
                                    i01Var = (i01) vx2Var2.d;
                                    Mutex mutex5 = (Mutex) vx2Var2.c;
                                    Closeable closeable5 = vx2Var2.b;
                                    rr3 rr3Var5 = (rr3) vx2Var2.a;
                                    p005kotlin.ResultKt.throwOnFailure(objA3);
                                    r21 = mutex5;
                                    r20 = closeable5;
                                    r10 = rr3Var5;
                                    flowFlowOf = FlowKt.flowOf(new p005kotlin.Pair(i01Var, null));
                                    r21.unlock(null);
                                    r22 = r20;
                                    r29 = r10;
                                    r40 = r29;
                                    coroutine_suspended = r22;
                                    if (flowFlowOf instanceof i01) {
                                        xs3.a((i01) flowFlowOf, false);
                                        break;
                                    }
                                    CloseableKt.closeFinally(coroutine_suspended, null);
                                    return flowFlowOf;
                                case 6:
                                    iIntValue = vx2Var2.j;
                                    String str20 = (String) vx2Var2.h;
                                    objectRef10 = vx2Var2.g;
                                    Mutex mutex6 = (Mutex) vx2Var2.f;
                                    objectRef9 = (Ref.ObjectRef) vx2Var2.e;
                                    Ref.ObjectRef objectRef24 = (Ref.ObjectRef) vx2Var2.d;
                                    closeable = (Closeable) vx2Var2.c;
                                    rr3Var = (rr3) vx2Var2.b;
                                    yx2Var2 = (yx2) vx2Var2.a;
                                    try {
                                        p005kotlin.ResultKt.throwOnFailure(objA3);
                                        r12 = mutex6;
                                        str2 = str20;
                                        objectRef12 = objectRef24;
                                        r17 = closeable;
                                        r110 = rr3Var;
                                        i = iIntValue;
                                        objectRef13 = objectRef10;
                                        yx2Var3 = yx2Var2;
                                        r111 = r110;
                                        objectRef14 = objectRef9;
                                        if (((Boolean) objA3).booleanValue()) {
                                            m01Var2 = u;
                                            vx2Var2.a = r111;
                                            vx2Var2.b = r17;
                                            vx2Var2.c = r12;
                                            vx2Var2.d = null;
                                            vx2Var2.e = null;
                                            vx2Var2.f = null;
                                            vx2Var2.g = null;
                                            vx2Var2.h = null;
                                            vx2Var2.m = 7;
                                            if (yx2Var3.a(m01Var2, vx2Var2) != coroutine_suspended) {
                                                r26 = r12;
                                                r27 = r17;
                                                r28 = r111;
                                                obj5 = null;
                                                flowFlowOf = FlowKt.flowOf(new p005kotlin.Pair(u, null));
                                                r32 = r26;
                                                r31 = r27;
                                                r30 = r28;
                                                r33 = r30;
                                                r32.unlock(obj5);
                                                r22 = r31;
                                                r29 = r33;
                                                r40 = r29;
                                                coroutine_suspended = r22;
                                                if (flowFlowOf instanceof i01) {
                                                    xs3.a((i01) flowFlowOf, false);
                                                    break;
                                                }
                                                CloseableKt.closeFinally(coroutine_suspended, null);
                                                return flowFlowOf;
                                            }
                                        } else {
                                            yf3Var = yx2Var3.n;
                                            str3 = (String) objectRef12.element;
                                            obj6 = objectRef14.element;
                                            if (obj6 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("signalGenerationData");
                                                tf3Var4 = null;
                                            } else {
                                                tf3Var4 = (tf3) obj6;
                                            }
                                            vx2Var2.a = yx2Var3;
                                            vx2Var2.b = r111;
                                            vx2Var2.c = r17;
                                            vx2Var2.d = objectRef14;
                                            vx2Var2.e = r12;
                                            vx2Var2.f = objectRef13;
                                            vx2Var2.g = null;
                                            vx2Var2.h = null;
                                            vx2Var2.m = 8;
                                            if (yf3Var.a(str3, str2, tf3Var4, i, vx2Var2) != coroutine_suspended) {
                                                yx2Var4 = yx2Var3;
                                                r23 = r12;
                                                r24 = r17;
                                                objectRef15 = objectRef14;
                                                r25 = r111;
                                                p005kotlin.Unit unit5 = p005kotlin.Unit.INSTANCE;
                                                r23.unlock(null);
                                                obj7 = objectRef13.element;
                                                if (obj7 == null) {
                                                    Intrinsics.throwUninitializedPropertyAccessException("decryptedAdResponseBlob");
                                                    str4 = null;
                                                } else {
                                                    str4 = (String) obj7;
                                                }
                                                vx2Var2.a = yx2Var4;
                                                vx2Var2.b = r25;
                                                vx2Var2.c = r24;
                                                vx2Var2.d = objectRef15;
                                                vx2Var2.e = objectRef13;
                                                vx2Var2.f = objectRef13;
                                                vx2Var2.m = 9;
                                                objA3 = yx2Var4.a(str4, vx2Var2);
                                                if (objA3 == coroutine_suspended) {
                                                    objectRef16 = objectRef13;
                                                    r35 = r24;
                                                    r34 = r25;
                                                    v01Var = (v01) objA3;
                                                    if (v01Var instanceof i01) {
                                                        i01Var2 = (i01) v01Var;
                                                        vx2Var2.a = r34;
                                                        vx2Var2.b = r35;
                                                        vx2Var2.c = i01Var2;
                                                        vx2Var2.d = null;
                                                        vx2Var2.e = null;
                                                        vx2Var2.f = null;
                                                        vx2Var2.m = 10;
                                                        if (yx2Var4.a(i01Var2, vx2Var2) != coroutine_suspended) {
                                                            r38 = r35;
                                                            r39 = r34;
                                                            flowFlowOf = FlowKt.flowOf(new p005kotlin.Pair(i01Var2, null));
                                                            coroutine_suspended = r38;
                                                            r40 = r39;
                                                            if (flowFlowOf instanceof i01) {
                                                                xs3.a((i01) flowFlowOf, false);
                                                                break;
                                                            }
                                                            CloseableKt.closeFinally(coroutine_suspended, null);
                                                            return flowFlowOf;
                                                        }
                                                    } else {
                                                        Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                                        objectRef13.element = ((q01) v01Var).b;
                                                        obj8 = objectRef16.element;
                                                        if (obj8 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("decryptedAdResponseBlob");
                                                            str5 = null;
                                                        } else {
                                                            str5 = (String) obj8;
                                                        }
                                                        obj9 = objectRef15.element;
                                                        if (obj9 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("signalGenerationData");
                                                            tf3Var5 = null;
                                                        } else {
                                                            tf3Var5 = (tf3) obj9;
                                                        }
                                                        vx2Var2.a = r34;
                                                        vx2Var2.b = r35;
                                                        vx2Var2.c = null;
                                                        vx2Var2.d = null;
                                                        vx2Var2.e = null;
                                                        vx2Var2.f = null;
                                                        vx2Var2.m = 11;
                                                        objA3 = yx2Var4.a(str5, tf3Var5, vx2Var2);
                                                        if (objA3 != coroutine_suspended) {
                                                            r36 = r35;
                                                            r37 = r34;
                                                            flowFlowOf = (Flow) objA3;
                                                            coroutine_suspended = r36;
                                                            r40 = r37;
                                                            if (flowFlowOf instanceof i01) {
                                                                xs3.a((i01) flowFlowOf, false);
                                                                break;
                                                            }
                                                            CloseableKt.closeFinally(coroutine_suspended, null);
                                                            return flowFlowOf;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        return coroutine_suspended;
                                    } catch (Throwable th11) {
                                        th = th11;
                                        mutex2 = mutex6;
                                        obj = null;
                                        r3 = mutex2;
                                        r3.unlock(obj);
                                        throw th;
                                    }
                                case 7:
                                    Mutex mutex7 = (Mutex) vx2Var2.c;
                                    Closeable closeable6 = vx2Var2.b;
                                    rr3 rr3Var6 = (rr3) vx2Var2.a;
                                    p005kotlin.ResultKt.throwOnFailure(objA3);
                                    r26 = mutex7;
                                    r27 = closeable6;
                                    r28 = rr3Var6;
                                    obj5 = null;
                                    flowFlowOf = FlowKt.flowOf(new p005kotlin.Pair(u, null));
                                    r32 = r26;
                                    r31 = r27;
                                    r30 = r28;
                                    r33 = r30;
                                    r32.unlock(obj5);
                                    r22 = r31;
                                    r29 = r33;
                                    r40 = r29;
                                    coroutine_suspended = r22;
                                    if (flowFlowOf instanceof i01) {
                                        xs3.a((i01) flowFlowOf, false);
                                        break;
                                    }
                                    CloseableKt.closeFinally(coroutine_suspended, null);
                                    return flowFlowOf;
                                case 8:
                                    objectRef13 = (Ref.ObjectRef) vx2Var2.f;
                                    Mutex mutex8 = (Mutex) vx2Var2.e;
                                    objectRef15 = (Ref.ObjectRef) vx2Var2.d;
                                    Closeable closeable7 = (Closeable) vx2Var2.c;
                                    rr3 rr3Var7 = (rr3) vx2Var2.b;
                                    yx2Var4 = (yx2) vx2Var2.a;
                                    p005kotlin.ResultKt.throwOnFailure(objA3);
                                    r23 = mutex8;
                                    r24 = closeable7;
                                    r25 = rr3Var7;
                                    p005kotlin.Unit unit6 = p005kotlin.Unit.INSTANCE;
                                    r23.unlock(null);
                                    obj7 = objectRef13.element;
                                    if (obj7 == null) {
                                        Intrinsics.throwUninitializedPropertyAccessException("decryptedAdResponseBlob");
                                        str4 = null;
                                    } else {
                                        str4 = (String) obj7;
                                    }
                                    vx2Var2.a = yx2Var4;
                                    vx2Var2.b = r25;
                                    vx2Var2.c = r24;
                                    vx2Var2.d = objectRef15;
                                    vx2Var2.e = objectRef13;
                                    vx2Var2.f = objectRef13;
                                    vx2Var2.m = 9;
                                    objA3 = yx2Var4.a(str4, vx2Var2);
                                    if (objA3 == coroutine_suspended) {
                                        objectRef16 = objectRef13;
                                        r35 = r24;
                                        r34 = r25;
                                        v01Var = (v01) objA3;
                                        if (v01Var instanceof i01) {
                                            i01Var2 = (i01) v01Var;
                                            vx2Var2.a = r34;
                                            vx2Var2.b = r35;
                                            vx2Var2.c = i01Var2;
                                            vx2Var2.d = null;
                                            vx2Var2.e = null;
                                            vx2Var2.f = null;
                                            vx2Var2.m = 10;
                                            if (yx2Var4.a(i01Var2, vx2Var2) != coroutine_suspended) {
                                                r38 = r35;
                                                r39 = r34;
                                                flowFlowOf = FlowKt.flowOf(new p005kotlin.Pair(i01Var2, null));
                                                coroutine_suspended = r38;
                                                r40 = r39;
                                                if (flowFlowOf instanceof i01) {
                                                    xs3.a((i01) flowFlowOf, false);
                                                    break;
                                                }
                                                CloseableKt.closeFinally(coroutine_suspended, null);
                                                return flowFlowOf;
                                            }
                                        } else {
                                            Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                            objectRef13.element = ((q01) v01Var).b;
                                            obj8 = objectRef16.element;
                                            if (obj8 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("decryptedAdResponseBlob");
                                                str5 = null;
                                            } else {
                                                str5 = (String) obj8;
                                            }
                                            obj9 = objectRef15.element;
                                            if (obj9 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("signalGenerationData");
                                                tf3Var5 = null;
                                            } else {
                                                tf3Var5 = (tf3) obj9;
                                            }
                                            vx2Var2.a = r34;
                                            vx2Var2.b = r35;
                                            vx2Var2.c = null;
                                            vx2Var2.d = null;
                                            vx2Var2.e = null;
                                            vx2Var2.f = null;
                                            vx2Var2.m = 11;
                                            objA3 = yx2Var4.a(str5, tf3Var5, vx2Var2);
                                            if (objA3 != coroutine_suspended) {
                                                r36 = r35;
                                                r37 = r34;
                                                flowFlowOf = (Flow) objA3;
                                                coroutine_suspended = r36;
                                                r40 = r37;
                                                if (flowFlowOf instanceof i01) {
                                                    xs3.a((i01) flowFlowOf, false);
                                                    break;
                                                }
                                                CloseableKt.closeFinally(coroutine_suspended, null);
                                                return flowFlowOf;
                                            }
                                        }
                                    }
                                    return coroutine_suspended;
                                case 9:
                                    objectRef13 = (Ref.ObjectRef) vx2Var2.f;
                                    objectRef16 = (Ref.ObjectRef) vx2Var2.e;
                                    objectRef15 = (Ref.ObjectRef) vx2Var2.d;
                                    Closeable closeable8 = (Closeable) vx2Var2.c;
                                    rr3 rr3Var8 = (rr3) vx2Var2.b;
                                    yx2Var4 = (yx2) vx2Var2.a;
                                    p005kotlin.ResultKt.throwOnFailure(objA3);
                                    r35 = closeable8;
                                    r34 = rr3Var8;
                                    v01Var = (v01) objA3;
                                    if (v01Var instanceof i01) {
                                        i01Var2 = (i01) v01Var;
                                        vx2Var2.a = r34;
                                        vx2Var2.b = r35;
                                        vx2Var2.c = i01Var2;
                                        vx2Var2.d = null;
                                        vx2Var2.e = null;
                                        vx2Var2.f = null;
                                        vx2Var2.m = 10;
                                        if (yx2Var4.a(i01Var2, vx2Var2) != coroutine_suspended) {
                                            r38 = r35;
                                            r39 = r34;
                                            flowFlowOf = FlowKt.flowOf(new p005kotlin.Pair(i01Var2, null));
                                            coroutine_suspended = r38;
                                            r40 = r39;
                                            if (flowFlowOf instanceof i01) {
                                                xs3.a((i01) flowFlowOf, false);
                                                break;
                                            }
                                            CloseableKt.closeFinally(coroutine_suspended, null);
                                            return flowFlowOf;
                                        }
                                    } else {
                                        Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                        objectRef13.element = ((q01) v01Var).b;
                                        obj8 = objectRef16.element;
                                        if (obj8 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("decryptedAdResponseBlob");
                                            str5 = null;
                                        } else {
                                            str5 = (String) obj8;
                                        }
                                        obj9 = objectRef15.element;
                                        if (obj9 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("signalGenerationData");
                                            tf3Var5 = null;
                                        } else {
                                            tf3Var5 = (tf3) obj9;
                                        }
                                        vx2Var2.a = r34;
                                        vx2Var2.b = r35;
                                        vx2Var2.c = null;
                                        vx2Var2.d = null;
                                        vx2Var2.e = null;
                                        vx2Var2.f = null;
                                        vx2Var2.m = 11;
                                        objA3 = yx2Var4.a(str5, tf3Var5, vx2Var2);
                                        if (objA3 != coroutine_suspended) {
                                            r36 = r35;
                                            r37 = r34;
                                            flowFlowOf = (Flow) objA3;
                                            coroutine_suspended = r36;
                                            r40 = r37;
                                            if (flowFlowOf instanceof i01) {
                                                xs3.a((i01) flowFlowOf, false);
                                                break;
                                            }
                                            CloseableKt.closeFinally(coroutine_suspended, null);
                                            return flowFlowOf;
                                        }
                                    }
                                    return coroutine_suspended;
                                case 10:
                                    i01Var2 = (i01) vx2Var2.c;
                                    Closeable closeable9 = vx2Var2.b;
                                    rr3 rr3Var9 = (rr3) vx2Var2.a;
                                    p005kotlin.ResultKt.throwOnFailure(objA3);
                                    r38 = closeable9;
                                    r39 = rr3Var9;
                                    flowFlowOf = FlowKt.flowOf(new p005kotlin.Pair(i01Var2, null));
                                    coroutine_suspended = r38;
                                    r40 = r39;
                                    if (flowFlowOf instanceof i01) {
                                        xs3.a((i01) flowFlowOf, false);
                                        break;
                                    }
                                    CloseableKt.closeFinally(coroutine_suspended, null);
                                    return flowFlowOf;
                                case 11:
                                    Closeable closeable10 = vx2Var2.b;
                                    rr3 rr3Var10 = (rr3) vx2Var2.a;
                                    p005kotlin.ResultKt.throwOnFailure(objA3);
                                    r36 = closeable10;
                                    r37 = rr3Var10;
                                    flowFlowOf = (Flow) objA3;
                                    coroutine_suspended = r36;
                                    r40 = r37;
                                    if (flowFlowOf instanceof i01) {
                                        xs3.a((i01) flowFlowOf, false);
                                        break;
                                    }
                                    CloseableKt.closeFinally(coroutine_suspended, null);
                                    return flowFlowOf;
                                default:
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                        } catch (Throwable th12) {
                            th = th12;
                            obj = null;
                            r3 = r40;
                        }
                    } catch (Throwable th13) {
                        th = th13;
                        A = coroutine_suspended;
                        r6 = r40;
                    }
                } catch (Throwable th14) {
                    th = th14;
                }
            } catch (Throwable th15) {
                th = th15;
            }
        } catch (Throwable th16) {
            th = th16;
            r40 = coroutine_suspended;
        }
    }

    public static p005kotlin.Pair a(String str) {
        try {
            JsonElement jsonElement = ((JsonObject) new Gson().fromJson(str, JsonObject.class)).get("render_id");
            String asString = jsonElement != null ? jsonElement.getAsString() : null;
            if (asString == null) {
                asString = "";
            }
            try {
                byte[] bArrDecode = Base64.decode(asString, 0);
                Intrinsics.checkNotNullExpressionValue(bArrDecode, "decode(...)");
                List listSplit$default = StringsKt.split$default((CharSequence) new String(bArrDecode, Charsets.UTF_8), new char[]{AbstractJsonLexerKt.COLON}, false, 0, 6, (Object) null);
                return listSplit$default.size() == 2 ? new p005kotlin.Pair(listSplit$default.get(0), Integer.valueOf(Integer.parseInt((String) listSplit$default.get(1)))) : new p005kotlin.Pair(null, 0);
            } catch (Exception unused) {
                return new p005kotlin.Pair(null, 0);
            }
        } catch (Exception unused2) {
            return new p005kotlin.Pair(null, 0);
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x00bd A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:23:0x00be  */
    /* JADX WARN: Code duplicated, block: B:26:0x00cb A[Catch: all -> 0x0042, TRY_LEAVE, TryCatch #1 {, blocks: (B:12:0x0038, B:24:0x00c5, B:26:0x00cb), top: B:66:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00d9 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x00be -> B:24:0x00c5). Please report as a decompilation issue!!! */
    public final Object a(f81 f81Var, Continuation continuation) {
        tx2 tx2Var;
        f81 f81Var2;
        int iMax;
        yx2 yx2Var;
        tx2 tx2Var2;
        int i;
        rr3 rr3Var;
        rr3 rr3Var2;
        rr3 rr3VarA;
        Object objA;
        yx2 yx2Var2;
        tx2 tx2Var3;
        f81 f81Var3;
        v01 v01Var;
        if (continuation instanceof tx2) {
            tx2Var = (tx2) continuation;
            int i2 = tx2Var.i;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                tx2Var.i = i2 - Integer.MIN_VALUE;
            } else {
                tx2Var = new tx2(this, continuation);
            }
        } else {
            tx2Var = new tx2(this, continuation);
        }
        Object obj = tx2Var.g;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = tx2Var.i;
        if (i3 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            ex0 ex0Var = this.d;
            f81Var2 = f81Var;
            iMax = Math.max(1, ((Number) ex0Var.a("gads:gbid_type_two_serving_fetch_retries", by0.a(ex0Var, "gads:gbid_type_two_serving_fetch_retries", C3510b4.i.W, 3), yr.f)).intValue());
            yx2Var = this;
            tx2Var2 = tx2Var;
            i = 0;
            i++;
            s11 s11Var = s11.CUI_NAME_TYPE2_FETCH;
            WeakHashMap weakHashMap = hs3.a;
            rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
            e01 e01Var = yx2Var.r;
            ex0 ex0Var2 = yx2Var.d;
            ex0Var2.getClass();
            Duration.Companion companion = Duration.INSTANCE;
            long duration = DurationKt.toDuration(60, DurationUnit.SECONDS);
            Intrinsics.checkNotNullParameter("gads:gbid_type_two_serving_fetch_timeout:millis", C3510b4.i.W);
            Duration durationM4365boximpl = Duration.m4365boximpl(((Duration) ex0Var2.a("gads:gbid_type_two_serving_fetch_timeout:millis", Duration.m4365boximpl(duration), yr.j)).getRawValue());
            tx2Var2.a = yx2Var;
            tx2Var2.b = f81Var2;
            tx2Var2.c = rr3VarA;
            tx2Var2.d = rr3VarA;
            tx2Var2.e = i;
            tx2Var2.f = iMax;
            tx2Var2.i = 1;
            objA = e01.a(e01Var, f81Var2, durationM4365boximpl, false, (Continuation) tx2Var2, 28);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
            tx2 tx2Var4 = tx2Var2;
            yx2Var2 = yx2Var;
            obj = objA;
            tx2Var3 = tx2Var4;
            f81Var3 = f81Var2;
            rr3Var2 = rr3VarA;
            rr3Var = rr3Var2;
            v01Var = (v01) obj;
            if (v01Var instanceof i01) {
                xs3.a((i01) v01Var, false);
            }
            CloseableKt.closeFinally(rr3Var2, null);
            if (v01Var instanceof q01) {
            }
            return v01Var;
        }
        if (i3 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        iMax = tx2Var.f;
        int i4 = tx2Var.e;
        rr3Var2 = tx2Var.d;
        rr3Var = tx2Var.c;
        f81Var3 = tx2Var.b;
        yx2Var2 = tx2Var.a;
        p005kotlin.ResultKt.throwOnFailure(obj);
        tx2Var3 = tx2Var;
        i = i4;
        v01Var = (v01) obj;
        if (v01Var instanceof i01) {
            xs3.a((i01) v01Var, false);
        }
        CloseableKt.closeFinally(rr3Var2, null);
        if (!(v01Var instanceof q01) || i == iMax || i >= iMax) {
            return v01Var;
        }
        try {
            f81Var2 = f81Var3;
            yx2Var = yx2Var2;
            tx2Var2 = tx2Var3;
            i++;
            s11 s11Var2 = s11.CUI_NAME_TYPE2_FETCH;
            WeakHashMap weakHashMap2 = hs3.a;
            rr3VarA = hs3.a(s11Var2, CollectionsKt.emptyList(), true);
            e01 e01Var2 = yx2Var.r;
            ex0 ex0Var3 = yx2Var.d;
            ex0Var3.getClass();
            Duration.Companion companion2 = Duration.INSTANCE;
            long duration2 = DurationKt.toDuration(60, DurationUnit.SECONDS);
            Intrinsics.checkNotNullParameter("gads:gbid_type_two_serving_fetch_timeout:millis", C3510b4.i.W);
            Duration durationM4365boximpl2 = Duration.m4365boximpl(((Duration) ex0Var3.a("gads:gbid_type_two_serving_fetch_timeout:millis", Duration.m4365boximpl(duration2), yr.j)).getRawValue());
            tx2Var2.a = yx2Var;
            tx2Var2.b = f81Var2;
            tx2Var2.c = rr3VarA;
            tx2Var2.d = rr3VarA;
            tx2Var2.e = i;
            tx2Var2.f = iMax;
            tx2Var2.i = 1;
            objA = e01.a(e01Var2, f81Var2, durationM4365boximpl2, false, (Continuation) tx2Var2, 28);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
            tx2 tx2Var5 = tx2Var2;
            yx2Var2 = yx2Var;
            obj = objA;
            tx2Var3 = tx2Var5;
            f81Var3 = f81Var2;
            rr3Var2 = rr3VarA;
            rr3Var = rr3Var2;
            v01Var = (v01) obj;
            if (v01Var instanceof i01) {
                xs3.a((i01) v01Var, false);
            }
            CloseableKt.closeFinally(rr3Var2, null);
            if (v01Var instanceof q01) {
            }
            return v01Var;
        } catch (Throwable th) {
            th = th;
            rr3Var2 = rr3VarA;
            rr3Var = rr3Var2;
            try {
                rr3Var.b(th);
                if (th instanceof v24) {
                    throw th;
                }
                if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                    rr3Var.a(th);
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
                    CloseableKt.closeFinally(rr3Var2, th2);
                    throw th3;
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0077, code lost:
    
        if (kotlin.md1.a(r12, r11, r4, r0) == r1) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlin.i01 r11, p005kotlin.coroutines.Continuation r12) {
        /*
            r10 = this;
            boolean r0 = r12 instanceof kotlin.ux2
            if (r0 == 0) goto L13
            r0 = r12
            ads_mobile_sdk.ux2 r0 = (kotlin.ux2) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.ux2 r0 = new ads_mobile_sdk.ux2
            r0.<init>(r10, r12)
        L18:
            java.lang.Object r12 = r0.c
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            p005kotlin.ResultKt.throwOnFailure(r12)
            goto L7a
        L2c:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L34:
            ads_mobile_sdk.i01 r11 = r0.b
            ads_mobile_sdk.yx2 r2 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r12)
            goto L56
        L3c:
            p005kotlin.ResultKt.throwOnFailure(r12)
            r12 = 0
            kotlin.xs3.a(r11, r12)
            ads_mobile_sdk.md1 r12 = r10.k
            r0.a = r10
            r0.b = r11
            r0.e = r4
            r12.getClass()
            java.lang.Object r12 = kotlin.md1.b(r12, r0)
            if (r12 != r1) goto L55
            goto L79
        L55:
            r2 = r10
        L56:
            ads_mobile_sdk.md1 r12 = r2.k
            com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo r4 = new com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo
            android.os.Bundle r7 = new android.os.Bundle
            r7.<init>()
            java.util.List r9 = p005kotlin.collections.CollectionsKt.emptyList()
            r6 = 0
            r8 = 0
            r5 = 0
            r4.<init>(r5, r6, r7, r8, r9)
            r2 = 0
            r0.a = r2
            r0.b = r2
            r0.e = r3
            r12.getClass()
            java.lang.Object r11 = kotlin.md1.a(r12, r11, r4, r0)
            if (r11 != r1) goto L7a
        L79:
            return r1
        L7a:
            kotlin.Unit r11 = p005kotlin.Unit.INSTANCE
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.yx2.a(ads_mobile_sdk.i01, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public abstract Object a(String str, tf3 tf3Var, vx2 vx2Var);

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, Continuation continuation) {
        wx2 wx2Var;
        String strA;
        List list;
        yx2 yx2Var;
        if (continuation instanceof wx2) {
            wx2Var = (wx2) continuation;
            int i = wx2Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                wx2Var.f = i - Integer.MIN_VALUE;
            } else {
                wx2Var = new wx2(this, continuation);
            }
        } else {
            wx2Var = new wx2(this, continuation);
        }
        Object obj = wx2Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = wx2Var.f;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                try {
                    JsonObject jsonObject = (JsonObject) this.q.fromJson(str, JsonObject.class);
                    JsonElement jsonElement = jsonObject.get("fetch_url");
                    String asString = jsonElement != null ? jsonElement.getAsString() : null;
                    if (asString == null) {
                        return new q01(str);
                    }
                    Intrinsics.checkNotNull(jsonObject);
                    List listA = a(jsonObject);
                    e81 e81Var = new e81();
                    ex0 ex0Var = this.d;
                    ex0Var.getClass();
                    Intrinsics.checkNotNullParameter("gads:gbid_type_two_serving_post:enabled", C3510b4.i.W);
                    if (((Boolean) ex0Var.a("gads:gbid_type_two_serving_post:enabled", Boolean.TRUE, yr.b)).booleanValue()) {
                        List listSplit$default = StringsKt.split$default((CharSequence) asString, new String[]{"?"}, false, 0, 6, (Object) null);
                        if (listSplit$default.size() == 2) {
                            URL url = new URL((String) listSplit$default.get(0));
                            Intrinsics.checkNotNullParameter(url, "url");
                            e81Var.a = url;
                            byte[] bytes = ((String) listSplit$default.get(1)).getBytes(Charsets.UTF_8);
                            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                            e81Var.b(AssetHelper.DEFAULT_MIME_TYPE, bytes);
                        } else {
                            URL url2 = new URL(asString);
                            Intrinsics.checkNotNullParameter(url2, "url");
                            e81Var.a = url2;
                        }
                    } else {
                        URL url3 = new URL(asString);
                        Intrinsics.checkNotNullParameter(url3, "url");
                        e81Var.a = url3;
                    }
                    f81 f81VarA = e81Var.a();
                    wx2Var.a = this;
                    wx2Var.b = str;
                    wx2Var.c = listA;
                    wx2Var.f = 1;
                    Object objA = a(f81VarA, wx2Var);
                    if (objA == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    strA = str;
                    list = listA;
                    obj = objA;
                    yx2Var = this;
                } catch (Exception unused) {
                    return new q01(str);
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                list = wx2Var.c;
                strA = wx2Var.b;
                yx2Var = wx2Var.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
            }
            v01 v01Var = (v01) obj;
            if (!(v01Var instanceof i01)) {
                if (!(v01Var instanceof q01)) {
                    throw new p005kotlin.NoWhenBranchMatchedException();
                }
                p53 p53Var = ((h81) ((q01) v01Var).b).d;
                if (p53Var != null) {
                    strA = p53.a(p53Var);
                }
                return new q01(strA);
            }
            CoroutineScope coroutineScope = yx2Var.b;
            xx2 block = new xx2(yx2Var, v01Var, list, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            return v01Var;
        } catch (Exception e) {
            return new j01(e, null, null, 6);
        }
    }

    public final List a(JsonObject jsonObject) {
        try {
            ds1 ds1Var = ds1.a;
            String strA = ds1.a(jsonObject, "settings", "");
            if (StringsKt.isBlank(strA)) {
                return CollectionsKt.emptyList();
            }
            JsonArray jsonArrayE = ds1.e((JsonObject) this.q.fromJson(strA, JsonObject.class), "nofill_urls");
            ArrayList arrayList = new ArrayList();
            if (jsonArrayE != null) {
                int i = 0;
                for (JsonElement jsonElement : jsonArrayE) {
                    int i2 = i + 1;
                    if (i < 0) {
                        CollectionsKt.throwIndexOverflow();
                    }
                    JsonElement jsonElement2 = jsonElement;
                    Intrinsics.checkNotNull(jsonElement2);
                    String asString = jsonElement2.getAsString();
                    Intrinsics.checkNotNullExpressionValue(asString, "getAsString(...)");
                    Uri uri = Uri.parse(asString);
                    if (uri != null) {
                        arrayList.add(uri);
                    }
                    i = i2;
                }
            }
            return arrayList;
        } catch (Throwable unused) {
            return CollectionsKt.emptyList();
        }
    }

    @Override // kotlin.px2
    public final Object b(Continuation continuation) {
        return a(this, continuation);
    }
}

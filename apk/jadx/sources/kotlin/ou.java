package kotlin;

import android.os.SystemClock;
import com.google.gson.JsonObject;
import com.ironsource.C3510b4;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Ref;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class ou extends fp2 implements rh3 {
    public final tx c;
    public final CoroutineScope d;
    public final g83 e;
    public final ex0 f;
    public final f0 g;
    public final Mutex h;
    public hu i;
    public iu j;
    public Job k;

    public ou(tx clock, CoroutineScope backgroundScope, g83 rootTraceCreator, ex0 flags, f0 activityTracker) {
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        this.c = clock;
        this.d = backgroundScope;
        this.e = rootTraceCreator;
        this.f = flags;
        this.g = activityTracker;
        this.h = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01d3 A[Catch: all -> 0x01f3, TryCatch #7 {all -> 0x01f3, blocks: (B:91:0x01bd, B:93:0x01c4, B:95:0x01c8, B:97:0x01cc, B:98:0x01cf, B:100:0x01d3, B:102:0x01d7, B:104:0x01db, B:105:0x01dc, B:106:0x01e1, B:107:0x01e2, B:108:0x01e9, B:109:0x01ea, B:110:0x01f1, B:111:0x01f2), top: B:209:0x01bd }] */
    /* JADX WARN: Code duplicated, block: B:102:0x01d7 A[Catch: all -> 0x01f3, TryCatch #7 {all -> 0x01f3, blocks: (B:91:0x01bd, B:93:0x01c4, B:95:0x01c8, B:97:0x01cc, B:98:0x01cf, B:100:0x01d3, B:102:0x01d7, B:104:0x01db, B:105:0x01dc, B:106:0x01e1, B:107:0x01e2, B:108:0x01e9, B:109:0x01ea, B:110:0x01f1, B:111:0x01f2), top: B:209:0x01bd }] */
    /* JADX WARN: Code duplicated, block: B:104:0x01db A[Catch: all -> 0x01f3, TryCatch #7 {all -> 0x01f3, blocks: (B:91:0x01bd, B:93:0x01c4, B:95:0x01c8, B:97:0x01cc, B:98:0x01cf, B:100:0x01d3, B:102:0x01d7, B:104:0x01db, B:105:0x01dc, B:106:0x01e1, B:107:0x01e2, B:108:0x01e9, B:109:0x01ea, B:110:0x01f1, B:111:0x01f2), top: B:209:0x01bd }] */
    /* JADX WARN: Code duplicated, block: B:105:0x01dc A[Catch: all -> 0x01f3, TryCatch #7 {all -> 0x01f3, blocks: (B:91:0x01bd, B:93:0x01c4, B:95:0x01c8, B:97:0x01cc, B:98:0x01cf, B:100:0x01d3, B:102:0x01d7, B:104:0x01db, B:105:0x01dc, B:106:0x01e1, B:107:0x01e2, B:108:0x01e9, B:109:0x01ea, B:110:0x01f1, B:111:0x01f2), top: B:209:0x01bd }] */
    /* JADX WARN: Code duplicated, block: B:107:0x01e2 A[Catch: all -> 0x01f3, TryCatch #7 {all -> 0x01f3, blocks: (B:91:0x01bd, B:93:0x01c4, B:95:0x01c8, B:97:0x01cc, B:98:0x01cf, B:100:0x01d3, B:102:0x01d7, B:104:0x01db, B:105:0x01dc, B:106:0x01e1, B:107:0x01e2, B:108:0x01e9, B:109:0x01ea, B:110:0x01f1, B:111:0x01f2), top: B:209:0x01bd }] */
    /* JADX WARN: Code duplicated, block: B:109:0x01ea A[Catch: all -> 0x01f3, TryCatch #7 {all -> 0x01f3, blocks: (B:91:0x01bd, B:93:0x01c4, B:95:0x01c8, B:97:0x01cc, B:98:0x01cf, B:100:0x01d3, B:102:0x01d7, B:104:0x01db, B:105:0x01dc, B:106:0x01e1, B:107:0x01e2, B:108:0x01e9, B:109:0x01ea, B:110:0x01f1, B:111:0x01f2), top: B:209:0x01bd }] */
    /* JADX WARN: Code duplicated, block: B:111:0x01f2 A[Catch: all -> 0x01f3, TRY_LEAVE, TryCatch #7 {all -> 0x01f3, blocks: (B:91:0x01bd, B:93:0x01c4, B:95:0x01c8, B:97:0x01cc, B:98:0x01cf, B:100:0x01d3, B:102:0x01d7, B:104:0x01db, B:105:0x01dc, B:106:0x01e1, B:107:0x01e2, B:108:0x01e9, B:109:0x01ea, B:110:0x01f1, B:111:0x01f2), top: B:209:0x01bd }] */
    /* JADX WARN: Code duplicated, block: B:130:0x024c A[Catch: all -> 0x02f2, TryCatch #6 {all -> 0x02f2, blocks: (B:123:0x0228, B:125:0x0239, B:127:0x023f, B:129:0x0247, B:130:0x024c, B:132:0x0250, B:135:0x0257, B:136:0x025c), top: B:208:0x0228, outer: #11 }] */
    /* JADX WARN: Code duplicated, block: B:132:0x0250 A[Catch: all -> 0x02f2, TryCatch #6 {all -> 0x02f2, blocks: (B:123:0x0228, B:125:0x0239, B:127:0x023f, B:129:0x0247, B:130:0x024c, B:132:0x0250, B:135:0x0257, B:136:0x025c), top: B:208:0x0228, outer: #11 }] */
    /* JADX WARN: Code duplicated, block: B:136:0x025c A[Catch: all -> 0x02f2, TRY_LEAVE, TryCatch #6 {all -> 0x02f2, blocks: (B:123:0x0228, B:125:0x0239, B:127:0x023f, B:129:0x0247, B:130:0x024c, B:132:0x0250, B:135:0x0257, B:136:0x025c), top: B:208:0x0228, outer: #11 }] */
    /* JADX WARN: Code duplicated, block: B:140:0x028a A[Catch: Exception -> 0x02c9, all -> 0x02f7, TryCatch #1 {Exception -> 0x02c9, blocks: (B:138:0x0286, B:140:0x028a, B:141:0x0294, B:143:0x0298, B:154:0x02c3, B:155:0x02c8), top: B:200:0x0286 }] */
    /* JADX WARN: Code duplicated, block: B:141:0x0294 A[Catch: Exception -> 0x02c9, all -> 0x02f7, TryCatch #1 {Exception -> 0x02c9, blocks: (B:138:0x0286, B:140:0x028a, B:141:0x0294, B:143:0x0298, B:154:0x02c3, B:155:0x02c8), top: B:200:0x0286 }] */
    /* JADX WARN: Code duplicated, block: B:143:0x0298 A[Catch: Exception -> 0x02c9, all -> 0x02f7, TRY_LEAVE, TryCatch #1 {Exception -> 0x02c9, blocks: (B:138:0x0286, B:140:0x028a, B:141:0x0294, B:143:0x0298, B:154:0x02c3, B:155:0x02c8), top: B:200:0x0286 }] */
    /* JADX WARN: Code duplicated, block: B:146:0x02b2  */
    /* JADX WARN: Code duplicated, block: B:154:0x02c3 A[Catch: Exception -> 0x02c9, all -> 0x02f7, TRY_ENTER, TryCatch #1 {Exception -> 0x02c9, blocks: (B:138:0x0286, B:140:0x028a, B:141:0x0294, B:143:0x0298, B:154:0x02c3, B:155:0x02c8), top: B:200:0x0286 }] */
    /* JADX WARN: Code duplicated, block: B:161:0x02e5 A[Catch: all -> 0x02bb, TRY_LEAVE, TryCatch #15 {all -> 0x02bb, blocks: (B:15:0x003d, B:147:0x02b4, B:159:0x02e1, B:161:0x02e5, B:158:0x02cb), top: B:219:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:174:0x0302 A[Catch: all -> 0x0331, TryCatch #4 {all -> 0x0331, blocks: (B:172:0x02fb, B:174:0x0302, B:176:0x0306, B:178:0x030a, B:179:0x030d, B:181:0x0311, B:183:0x0315, B:185:0x0319, B:186:0x031a, B:187:0x031f, B:188:0x0320, B:189:0x0327, B:190:0x0328, B:191:0x032f, B:192:0x0330), top: B:205:0x02fb }] */
    /* JADX WARN: Code duplicated, block: B:176:0x0306 A[Catch: all -> 0x0331, TryCatch #4 {all -> 0x0331, blocks: (B:172:0x02fb, B:174:0x0302, B:176:0x0306, B:178:0x030a, B:179:0x030d, B:181:0x0311, B:183:0x0315, B:185:0x0319, B:186:0x031a, B:187:0x031f, B:188:0x0320, B:189:0x0327, B:190:0x0328, B:191:0x032f, B:192:0x0330), top: B:205:0x02fb }] */
    /* JADX WARN: Code duplicated, block: B:181:0x0311 A[Catch: all -> 0x0331, TryCatch #4 {all -> 0x0331, blocks: (B:172:0x02fb, B:174:0x0302, B:176:0x0306, B:178:0x030a, B:179:0x030d, B:181:0x0311, B:183:0x0315, B:185:0x0319, B:186:0x031a, B:187:0x031f, B:188:0x0320, B:189:0x0327, B:190:0x0328, B:191:0x032f, B:192:0x0330), top: B:205:0x02fb }] */
    /* JADX WARN: Code duplicated, block: B:183:0x0315 A[Catch: all -> 0x0331, TryCatch #4 {all -> 0x0331, blocks: (B:172:0x02fb, B:174:0x0302, B:176:0x0306, B:178:0x030a, B:179:0x030d, B:181:0x0311, B:183:0x0315, B:185:0x0319, B:186:0x031a, B:187:0x031f, B:188:0x0320, B:189:0x0327, B:190:0x0328, B:191:0x032f, B:192:0x0330), top: B:205:0x02fb }] */
    /* JADX WARN: Code duplicated, block: B:185:0x0319 A[Catch: all -> 0x0331, TryCatch #4 {all -> 0x0331, blocks: (B:172:0x02fb, B:174:0x0302, B:176:0x0306, B:178:0x030a, B:179:0x030d, B:181:0x0311, B:183:0x0315, B:185:0x0319, B:186:0x031a, B:187:0x031f, B:188:0x0320, B:189:0x0327, B:190:0x0328, B:191:0x032f, B:192:0x0330), top: B:205:0x02fb }] */
    /* JADX WARN: Code duplicated, block: B:186:0x031a A[Catch: all -> 0x0331, TryCatch #4 {all -> 0x0331, blocks: (B:172:0x02fb, B:174:0x0302, B:176:0x0306, B:178:0x030a, B:179:0x030d, B:181:0x0311, B:183:0x0315, B:185:0x0319, B:186:0x031a, B:187:0x031f, B:188:0x0320, B:189:0x0327, B:190:0x0328, B:191:0x032f, B:192:0x0330), top: B:205:0x02fb }] */
    /* JADX WARN: Code duplicated, block: B:188:0x0320 A[Catch: all -> 0x0331, TryCatch #4 {all -> 0x0331, blocks: (B:172:0x02fb, B:174:0x0302, B:176:0x0306, B:178:0x030a, B:179:0x030d, B:181:0x0311, B:183:0x0315, B:185:0x0319, B:186:0x031a, B:187:0x031f, B:188:0x0320, B:189:0x0327, B:190:0x0328, B:191:0x032f, B:192:0x0330), top: B:205:0x02fb }] */
    /* JADX WARN: Code duplicated, block: B:190:0x0328 A[Catch: all -> 0x0331, TryCatch #4 {all -> 0x0331, blocks: (B:172:0x02fb, B:174:0x0302, B:176:0x0306, B:178:0x030a, B:179:0x030d, B:181:0x0311, B:183:0x0315, B:185:0x0319, B:186:0x031a, B:187:0x031f, B:188:0x0320, B:189:0x0327, B:190:0x0328, B:191:0x032f, B:192:0x0330), top: B:205:0x02fb }] */
    /* JADX WARN: Code duplicated, block: B:192:0x0330 A[Catch: all -> 0x0331, TRY_LEAVE, TryCatch #4 {all -> 0x0331, blocks: (B:172:0x02fb, B:174:0x0302, B:176:0x0306, B:178:0x030a, B:179:0x030d, B:181:0x0311, B:183:0x0315, B:185:0x0319, B:186:0x031a, B:187:0x031f, B:188:0x0320, B:189:0x0327, B:190:0x0328, B:191:0x032f, B:192:0x0330), top: B:205:0x02fb }] */
    /* JADX WARN: Code duplicated, block: B:50:0x010d A[Catch: all -> 0x01b4, TryCatch #8 {all -> 0x01b4, blocks: (B:43:0x00e9, B:45:0x00fa, B:47:0x0100, B:49:0x0108, B:50:0x010d, B:52:0x0111, B:55:0x0118, B:56:0x011d), top: B:210:0x00e9, outer: #13 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x0111 A[Catch: all -> 0x01b4, TryCatch #8 {all -> 0x01b4, blocks: (B:43:0x00e9, B:45:0x00fa, B:47:0x0100, B:49:0x0108, B:50:0x010d, B:52:0x0111, B:55:0x0118, B:56:0x011d), top: B:210:0x00e9, outer: #13 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x011d A[Catch: all -> 0x01b4, TRY_LEAVE, TryCatch #8 {all -> 0x01b4, blocks: (B:43:0x00e9, B:45:0x00fa, B:47:0x0100, B:49:0x0108, B:50:0x010d, B:52:0x0111, B:55:0x0118, B:56:0x011d), top: B:210:0x00e9, outer: #13 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x014b A[Catch: Exception -> 0x018a, all -> 0x01b9, TryCatch #0 {Exception -> 0x018a, blocks: (B:58:0x0147, B:60:0x014b, B:61:0x0155, B:63:0x0159, B:74:0x0184, B:75:0x0189), top: B:199:0x0147 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x0155 A[Catch: Exception -> 0x018a, all -> 0x01b9, TryCatch #0 {Exception -> 0x018a, blocks: (B:58:0x0147, B:60:0x014b, B:61:0x0155, B:63:0x0159, B:74:0x0184, B:75:0x0189), top: B:199:0x0147 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x0159 A[Catch: Exception -> 0x018a, all -> 0x01b9, TRY_LEAVE, TryCatch #0 {Exception -> 0x018a, blocks: (B:58:0x0147, B:60:0x014b, B:61:0x0155, B:63:0x0159, B:74:0x0184, B:75:0x0189), top: B:199:0x0147 }] */
    /* JADX WARN: Code duplicated, block: B:66:0x0173  */
    /* JADX WARN: Code duplicated, block: B:74:0x0184 A[Catch: Exception -> 0x018a, all -> 0x01b9, TRY_ENTER, TryCatch #0 {Exception -> 0x018a, blocks: (B:58:0x0147, B:60:0x014b, B:61:0x0155, B:63:0x0159, B:74:0x0184, B:75:0x0189), top: B:199:0x0147 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:81:0x01a6 A[Catch: all -> 0x017c, TRY_LEAVE, TryCatch #16 {all -> 0x017c, blocks: (B:27:0x0071, B:67:0x0175, B:79:0x01a2, B:81:0x01a6, B:78:0x018c), top: B:203:0x0071 }] */
    /* JADX WARN: Code duplicated, block: B:93:0x01c4 A[Catch: all -> 0x01f3, TryCatch #7 {all -> 0x01f3, blocks: (B:91:0x01bd, B:93:0x01c4, B:95:0x01c8, B:97:0x01cc, B:98:0x01cf, B:100:0x01d3, B:102:0x01d7, B:104:0x01db, B:105:0x01dc, B:106:0x01e1, B:107:0x01e2, B:108:0x01e9, B:109:0x01ea, B:110:0x01f1, B:111:0x01f2), top: B:209:0x01bd }] */
    /* JADX WARN: Code duplicated, block: B:95:0x01c8 A[Catch: all -> 0x01f3, TryCatch #7 {all -> 0x01f3, blocks: (B:91:0x01bd, B:93:0x01c4, B:95:0x01c8, B:97:0x01cc, B:98:0x01cf, B:100:0x01d3, B:102:0x01d7, B:104:0x01db, B:105:0x01dc, B:106:0x01e1, B:107:0x01e2, B:108:0x01e9, B:109:0x01ea, B:110:0x01f1, B:111:0x01f2), top: B:209:0x01bd }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v10, types: [T, ads_mobile_sdk.iu] */
    /* JADX WARN: Type inference failed for: r10v14, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v2, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r10v24, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r10v26, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v7, types: [T, ads_mobile_sdk.q11] */
    /* JADX WARN: Type inference failed for: r10v8, types: [T, ads_mobile_sdk.gu, ads_mobile_sdk.hu] */
    /* JADX WARN: Type inference failed for: r10v9, types: [T, ads_mobile_sdk.gu, ads_mobile_sdk.iu] */
    /* JADX WARN: Type inference failed for: r1v14, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v15, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v16, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v39, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v54 */
    /* JADX WARN: Type inference failed for: r1v55 */
    /* JADX WARN: Type inference failed for: r1v56 */
    /* JADX WARN: Type inference failed for: r1v57 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v2, types: [ads_mobile_sdk.ku, kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r2v20, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v22, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v29 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v17, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v18, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v21 */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v23 */
    /* JADX WARN: Type inference failed for: r3v24 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r7v10, types: [T, ads_mobile_sdk.iu] */
    /* JADX WARN: Type inference failed for: r7v7, types: [T, ads_mobile_sdk.q11] */
    /* JADX WARN: Type inference failed for: r7v8, types: [T, ads_mobile_sdk.gu, ads_mobile_sdk.hu] */
    /* JADX WARN: Type inference failed for: r7v9, types: [T, ads_mobile_sdk.gu, ads_mobile_sdk.iu] */
    /* JADX WARN: Type inference failed for: r8v13, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v3, types: [ads_mobile_sdk.rr3, ads_mobile_sdk.tu2, java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r8v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r9v3, types: [ads_mobile_sdk.rr3, java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r9v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v8, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r9v9 */
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
    public static Object a(ou ouVar, Continuation continuation) {
        ?? kuVar;
        ?? r10;
        ?? A;
        Ref.ObjectRef objectRef;
        Ref.ObjectRef objectRef2;
        ?? r4;
        ?? A2;
        ?? r11;
        Ref.ObjectRef objectRef3;
        Ref.ObjectRef objectRef4;
        ?? r5;
        ?? r8;
        ?? r1;
        ?? r12;
        ?? r13;
        gu guVar;
        ?? r3;
        ?? r2;
        Object q01Var;
        ?? r9;
        ?? r6;
        ?? r14;
        ?? r7;
        ?? r15;
        ?? r16;
        gu guVar2;
        ?? r17;
        ?? r18;
        ?? r19;
        ?? r20;
        ou ouVar2 = ouVar;
        if (continuation instanceof ku) {
            ku kuVar2 = (ku) continuation;
            int i = kuVar2.i;
            if ((i & Integer.MIN_VALUE) != 0) {
                kuVar2.i = i - Integer.MIN_VALUE;
                kuVar = kuVar2;
            } else {
                kuVar = new ku(ouVar2, continuation);
            }
        } else {
            kuVar = new ku(ouVar2, continuation);
        }
        Object objAwait = kuVar.g;
        ?? coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = kuVar.i;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(objAwait);
                g83 g83Var = ouVar2.e;
                s11 s11Var = s11.CUI_NAME_SIGNAL;
                List listEmptyList = CollectionsKt.emptyList();
                ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
                if (hs3.b().a == null) {
                    A2 = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                    try {
                        objectRef3 = new Ref.ObjectRef();
                        Ref.ObjectRef objectRef5 = new Ref.ObjectRef();
                        ?? r21 = ouVar2.h;
                        kuVar.a = ouVar2;
                        kuVar.b = A2;
                        kuVar.c = A2;
                        kuVar.d = objectRef3;
                        kuVar.e = objectRef5;
                        kuVar.f = r21;
                        kuVar.i = 1;
                        if (r21.lock(null, kuVar) != coroutine_suspended) {
                            objectRef4 = objectRef5;
                            r5 = A2;
                            r1 = r21;
                            r8 = A2;
                            ouVar2.l();
                            objectRef3.element = ouVar2.a(ouVar2.i, ouVar2.j);
                            r12 = ouVar2.i;
                            if (r12 != 0) {
                                r13 = ouVar2.j;
                                if (r13 != 0) {
                                    ?? G = ouVar2.g();
                                    objectRef4.element = G;
                                    ouVar2.j = G;
                                } else {
                                    ?? G2 = ouVar2.g();
                                    objectRef4.element = G2;
                                    ouVar2.j = G2;
                                }
                            } else {
                                r13 = ouVar2.j;
                                if (r13 != 0) {
                                    ?? G3 = ouVar2.g();
                                    objectRef4.element = G3;
                                    ouVar2.j = G3;
                                } else {
                                    ?? G4 = ouVar2.g();
                                    objectRef4.element = G4;
                                    ouVar2.j = G4;
                                }
                            }
                            r1.unlock(null);
                            hs3.a().e().t = new gh3(ouVar2.f(), (q11) objectRef3.element, ouVar2.k());
                            guVar = (gu) objectRef4.element;
                            if (!(guVar instanceof hu)) {
                                q01Var = new q01(((hu) guVar).c);
                                r6 = r5;
                                r9 = r8;
                            } else {
                                if (guVar instanceof iu) {
                                    throw new p005kotlin.NoWhenBranchMatchedException();
                                }
                                Deferred deferred = ((iu) guVar).c;
                                kuVar.a = r8;
                                kuVar.b = r5;
                                kuVar.c = null;
                                kuVar.d = null;
                                kuVar.e = null;
                                kuVar.f = null;
                                kuVar.i = 2;
                                objAwait = deferred.await(kuVar);
                                if (objAwait != coroutine_suspended) {
                                    r3 = r5;
                                    r2 = r8;
                                    q01Var = (v01) objAwait;
                                    r9 = r2;
                                    r6 = r3;
                                }
                            }
                            r3 = r6;
                            r2 = r9;
                            if (q01Var instanceof i01) {
                                xs3.a((i01) q01Var, false);
                            }
                            CloseableKt.closeFinally(r3, null);
                        }
                    } catch (Throwable th) {
                        th = th;
                        r11 = A2;
                        r11.b(th);
                        if (!(th instanceof v24)) {
                            throw th;
                        }
                        if (!(th instanceof TimeoutCancellationException)) {
                            r11.a(th);
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
                    A = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                    try {
                        objectRef = new Ref.ObjectRef();
                        Ref.ObjectRef objectRef6 = new Ref.ObjectRef();
                        ?? r22 = ouVar2.h;
                        kuVar.a = ouVar2;
                        kuVar.b = A;
                        kuVar.c = A;
                        kuVar.d = objectRef;
                        kuVar.e = objectRef6;
                        kuVar.f = r22;
                        kuVar.i = 3;
                        if (r22.lock(null, kuVar) != coroutine_suspended) {
                            objectRef2 = objectRef6;
                            r4 = A;
                            r7 = r22;
                            r14 = A;
                            ouVar2.l();
                            objectRef.element = ouVar2.a(ouVar2.i, ouVar2.j);
                            r15 = ouVar2.i;
                            if (r15 != 0) {
                                r16 = ouVar2.j;
                                if (r16 != 0) {
                                    ?? G5 = ouVar2.g();
                                    objectRef2.element = G5;
                                    ouVar2.j = G5;
                                } else {
                                    ?? G6 = ouVar2.g();
                                    objectRef2.element = G6;
                                    ouVar2.j = G6;
                                }
                            } else {
                                r16 = ouVar2.j;
                                if (r16 != 0) {
                                    ?? G7 = ouVar2.g();
                                    objectRef2.element = G7;
                                    ouVar2.j = G7;
                                } else {
                                    ?? G8 = ouVar2.g();
                                    objectRef2.element = G8;
                                    ouVar2.j = G8;
                                }
                            }
                            r7.unlock(null);
                            hs3.a().e().t = new gh3(ouVar2.f(), (q11) objectRef.element, ouVar2.k());
                            guVar2 = (gu) objectRef2.element;
                            if (!(guVar2 instanceof hu)) {
                                q01Var = new q01(((hu) guVar2).c);
                                r20 = r4;
                                r19 = r14;
                            } else {
                                if (guVar2 instanceof iu) {
                                    throw new p005kotlin.NoWhenBranchMatchedException();
                                }
                                Deferred deferred2 = ((iu) guVar2).c;
                                kuVar.a = r14;
                                kuVar.b = r4;
                                kuVar.c = null;
                                kuVar.d = null;
                                kuVar.e = null;
                                kuVar.f = null;
                                kuVar.i = 4;
                                objAwait = deferred2.await(kuVar);
                                if (objAwait != coroutine_suspended) {
                                    r17 = r4;
                                    r18 = r14;
                                    q01Var = (v01) objAwait;
                                    r19 = r18;
                                    r20 = r17;
                                }
                            }
                            coroutine_suspended = r20;
                            kuVar = r19;
                            if (q01Var instanceof i01) {
                                xs3.a((i01) q01Var, false);
                            }
                            CloseableKt.closeFinally(coroutine_suspended, null);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        r10 = A;
                        r10.b(th);
                        if (th instanceof v24) {
                            throw th;
                        }
                        if (!(th instanceof TimeoutCancellationException)) {
                            r10.a(th);
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
                Mutex mutex = kuVar.f;
                Ref.ObjectRef objectRef7 = kuVar.e;
                objectRef3 = kuVar.d;
                A2 = kuVar.c;
                r11 = (rr3) kuVar.b;
                ou ouVar3 = (ou) kuVar.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(objAwait);
                    r1 = mutex;
                    objectRef4 = objectRef7;
                    r5 = A2;
                    r8 = r11;
                    ouVar2 = ouVar3;
                    try {
                        try {
                            ouVar2.l();
                            objectRef3.element = ouVar2.a(ouVar2.i, ouVar2.j);
                            r12 = ouVar2.i;
                            if (r12 != 0 || (r12.a() && !ouVar2.i().d)) {
                                r13 = ouVar2.j;
                                if (r13 != 0 || r13.a()) {
                                    ?? G9 = ouVar2.g();
                                    objectRef4.element = G9;
                                    ouVar2.j = G9;
                                } else {
                                    objectRef4.element = r13;
                                    p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                                }
                            } else {
                                objectRef4.element = r12;
                                p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                            }
                            r1.unlock(null);
                            hs3.a().e().t = new gh3(ouVar2.f(), (q11) objectRef3.element, ouVar2.k());
                            guVar = (gu) objectRef4.element;
                            try {
                                if (!(guVar instanceof hu)) {
                                    if (guVar instanceof iu) {
                                        throw new p005kotlin.NoWhenBranchMatchedException();
                                    }
                                    Deferred deferred3 = ((iu) guVar).c;
                                    kuVar.a = r8;
                                    kuVar.b = r5;
                                    kuVar.c = null;
                                    kuVar.d = null;
                                    kuVar.e = null;
                                    kuVar.f = null;
                                    kuVar.i = 2;
                                    objAwait = deferred3.await(kuVar);
                                    if (objAwait != coroutine_suspended) {
                                        r3 = r5;
                                        r2 = r8;
                                        q01Var = (v01) objAwait;
                                        r9 = r2;
                                        r6 = r3;
                                    }
                                    return coroutine_suspended;
                                }
                                q01Var = new q01(((hu) guVar).c);
                                r6 = r5;
                                r9 = r8;
                                r3 = r6;
                                r2 = r9;
                            } catch (Exception e) {
                                exception = e;
                                r3 = r5;
                                r2 = r8;
                                Intrinsics.checkNotNullParameter(exception, "exception");
                                rr3 rr3VarA = hs3.a();
                                rr3VarA.e().m = false;
                                rr3VarA.a(exception);
                                q01Var = new j01(exception, null, null, 6);
                                r2 = r2;
                                r3 = r3;
                            }
                            if (q01Var instanceof i01) {
                                xs3.a((i01) q01Var, false);
                            }
                            CloseableKt.closeFinally(r3, null);
                        } catch (Throwable th3) {
                            r1.unlock(null);
                            throw th3;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        r11 = r8;
                        A2 = r5;
                        r11.b(th);
                        if (!(th instanceof v24)) {
                            throw th;
                        }
                        if (!(th instanceof TimeoutCancellationException)) {
                            r11.a(th);
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
                } catch (Throwable th5) {
                    th = th5;
                    r11.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        r11.a(th);
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
                r3 = kuVar.b;
                r2 = (rr3) kuVar.a;
                try {
                    try {
                        p005kotlin.ResultKt.throwOnFailure(objAwait);
                        r2 = r2;
                        r3 = r3;
                        q01Var = (v01) objAwait;
                        r9 = r2;
                        r6 = r3;
                        r3 = r6;
                        r2 = r9;
                    } catch (Exception e2) {
                        exception = e2;
                        Intrinsics.checkNotNullParameter(exception, "exception");
                        rr3 rr3VarA2 = hs3.a();
                        rr3VarA2.e().m = false;
                        rr3VarA2.a(exception);
                        q01Var = new j01(exception, null, null, 6);
                        r2 = r2;
                        r3 = r3;
                    }
                    if (q01Var instanceof i01) {
                        xs3.a((i01) q01Var, false);
                    }
                    CloseableKt.closeFinally(r3, null);
                } catch (Throwable th6) {
                    th = th6;
                    r11 = r2;
                    A2 = r3;
                    try {
                        r11.b(th);
                        if (!(th instanceof v24)) {
                            throw th;
                        }
                        if (!(th instanceof TimeoutCancellationException)) {
                            r11.a(th);
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
                            CloseableKt.closeFinally(A2, th7);
                            throw th8;
                        }
                    }
                }
            } else if (i2 == 3) {
                Mutex mutex2 = kuVar.f;
                Ref.ObjectRef objectRef8 = kuVar.e;
                objectRef = kuVar.d;
                A = kuVar.c;
                r10 = (rr3) kuVar.b;
                ou ouVar4 = (ou) kuVar.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(objAwait);
                    r7 = mutex2;
                    objectRef2 = objectRef8;
                    r4 = A;
                    r14 = r10;
                    ouVar2 = ouVar4;
                    try {
                        try {
                            ouVar2.l();
                            objectRef.element = ouVar2.a(ouVar2.i, ouVar2.j);
                            r15 = ouVar2.i;
                            if (r15 != 0 || (r15.a() && !ouVar2.i().d)) {
                                r16 = ouVar2.j;
                                if (r16 != 0 || r16.a()) {
                                    ?? G10 = ouVar2.g();
                                    objectRef2.element = G10;
                                    ouVar2.j = G10;
                                } else {
                                    objectRef2.element = r16;
                                    p005kotlin.Unit unit3 = p005kotlin.Unit.INSTANCE;
                                }
                            } else {
                                objectRef2.element = r15;
                                p005kotlin.Unit unit4 = p005kotlin.Unit.INSTANCE;
                            }
                            r7.unlock(null);
                            hs3.a().e().t = new gh3(ouVar2.f(), (q11) objectRef.element, ouVar2.k());
                            guVar2 = (gu) objectRef2.element;
                            try {
                                if (!(guVar2 instanceof hu)) {
                                    if (guVar2 instanceof iu) {
                                        throw new p005kotlin.NoWhenBranchMatchedException();
                                    }
                                    Deferred deferred4 = ((iu) guVar2).c;
                                    kuVar.a = r14;
                                    kuVar.b = r4;
                                    kuVar.c = null;
                                    kuVar.d = null;
                                    kuVar.e = null;
                                    kuVar.f = null;
                                    kuVar.i = 4;
                                    objAwait = deferred4.await(kuVar);
                                    if (objAwait != coroutine_suspended) {
                                        r17 = r4;
                                        r18 = r14;
                                        q01Var = (v01) objAwait;
                                        r19 = r18;
                                        r20 = r17;
                                    }
                                    return coroutine_suspended;
                                }
                                q01Var = new q01(((hu) guVar2).c);
                                r20 = r4;
                                r19 = r14;
                                coroutine_suspended = r20;
                                kuVar = r19;
                            } catch (Exception e3) {
                                exception = e3;
                                r17 = r4;
                                r18 = r14;
                                Intrinsics.checkNotNullParameter(exception, "exception");
                                rr3 rr3VarA3 = hs3.a();
                                rr3VarA3.e().m = false;
                                rr3VarA3.a(exception);
                                q01Var = new j01(exception, null, null, 6);
                                kuVar = r18;
                                coroutine_suspended = r17;
                            }
                            if (q01Var instanceof i01) {
                                xs3.a((i01) q01Var, false);
                            }
                            CloseableKt.closeFinally(coroutine_suspended, null);
                        } catch (Throwable th9) {
                            r7.unlock(null);
                            throw th9;
                        }
                    } catch (Throwable th10) {
                        th = th10;
                        r10 = r14;
                        A = r4;
                        try {
                            r10.b(th);
                            if (th instanceof v24) {
                                throw th;
                            }
                            if (!(th instanceof TimeoutCancellationException)) {
                                r10.a(th);
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
                        } catch (Throwable th11) {
                            try {
                                throw th11;
                            } catch (Throwable th12) {
                                CloseableKt.closeFinally(A, th11);
                                throw th12;
                            }
                        }
                    }
                } catch (Throwable th13) {
                    th = th13;
                    r10.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        r10.a(th);
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
                r17 = kuVar.b;
                r18 = (rr3) kuVar.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(objAwait);
                    r18 = r18;
                    r17 = r17;
                    q01Var = (v01) objAwait;
                    r19 = r18;
                    r20 = r17;
                    coroutine_suspended = r20;
                    kuVar = r19;
                } catch (Exception e4) {
                    exception = e4;
                    Intrinsics.checkNotNullParameter(exception, "exception");
                    rr3 rr3VarA4 = hs3.a();
                    rr3VarA4.e().m = false;
                    rr3VarA4.a(exception);
                    q01Var = new j01(exception, null, null, 6);
                    kuVar = r18;
                    coroutine_suspended = r17;
                }
                if (q01Var instanceof i01) {
                    xs3.a((i01) q01Var, false);
                }
                CloseableKt.closeFinally(coroutine_suspended, null);
            }
            return q01Var;
        } catch (Throwable th14) {
            th = th14;
            r10 = kuVar;
            A = coroutine_suspended;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object b(ou ouVar, Continuation continuation) {
        lu luVar;
        Mutex mutex;
        Object obj;
        if (continuation instanceof lu) {
            luVar = (lu) continuation;
            int i = luVar.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                luVar.e = i - Integer.MIN_VALUE;
            } else {
                luVar = new lu(ouVar, continuation);
            }
        } else {
            luVar = new lu(ouVar, continuation);
        }
        Object obj2 = luVar.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = luVar.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj2);
            mutex = ouVar.h;
            luVar.a = ouVar;
            luVar.b = mutex;
            luVar.e = 1;
            if (mutex.lock(null, luVar) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = luVar.b;
            ou ouVar2 = luVar.a;
            p005kotlin.ResultKt.throwOnFailure(obj2);
            mutex = mutex2;
            ouVar = ouVar2;
        }
        try {
            ouVar.l();
            hu huVar = ouVar.i;
            if (huVar == null || (huVar.a() && !ouVar.i().d)) {
                iu iuVar = ouVar.j;
                if (iuVar == null || iuVar.a()) {
                    ouVar.j = ouVar.g();
                }
                mutex.unlock(null);
                return null;
            }
            g83 g83Var = ouVar.e;
            s11 s11Var = s11.CUI_NAME_SIGNAL;
            List listEmptyList = CollectionsKt.emptyList();
            ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
            if (hs3.b().a == null) {
                tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                try {
                    hs3.a().e().t = new gh3(ouVar.f(), huVar.a() ? q11.STALE : q11.CACHED, ouVar.k());
                    obj = huVar.c;
                    if (obj instanceof i01) {
                        xs3.a((i01) obj, false);
                    }
                    CloseableKt.closeFinally(tu2VarA, null);
                } catch (Throwable th) {
                    try {
                        tu2VarA.b(th);
                        if (th instanceof v24) {
                            throw th;
                        }
                        if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                            tu2VarA.a(th);
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
                            CloseableKt.closeFinally(tu2VarA, th2);
                            throw th3;
                        }
                    }
                }
            } else {
                rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                try {
                    hs3.a().e().t = new gh3(ouVar.f(), huVar.a() ? q11.STALE : q11.CACHED, ouVar.k());
                    obj = huVar.c;
                    if (obj instanceof i01) {
                        xs3.a((i01) obj, false);
                    }
                    CloseableKt.closeFinally(rr3VarA, null);
                } catch (Throwable th4) {
                    try {
                        rr3VarA.b(th4);
                        if (th4 instanceof v24) {
                            throw th4;
                        }
                        if (!(th4 instanceof TimeoutCancellationException) && !(th4 instanceof CancellationException)) {
                            rr3VarA.a(th4);
                        }
                        if (th4 instanceof TimeoutCancellationException) {
                            throw new i21(th4);
                        }
                        if (th4 instanceof CancellationException) {
                            throw new wz0(th4);
                        }
                        if (th4 instanceof w01) {
                            throw th4;
                        }
                        throw new b01(th4);
                    } catch (Throwable th5) {
                        try {
                            throw th5;
                        } catch (Throwable th6) {
                            CloseableKt.closeFinally(rr3VarA, th5);
                            throw th6;
                        }
                    }
                }
            }
            mutex.unlock(null);
            return obj;
        } catch (Throwable th7) {
            mutex.unlock(null);
            throw th7;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object c(ou ouVar, Continuation continuation) {
        nu nuVar;
        if (continuation instanceof nu) {
            nuVar = (nu) continuation;
            int i = nuVar.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                nuVar.c = i - Integer.MIN_VALUE;
            } else {
                nuVar = new nu(ouVar, continuation);
            }
        } else {
            nuVar = new nu(ouVar, continuation);
        }
        Object obj = nuVar.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = nuVar.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            if (ouVar.i().e) {
                nuVar.c = 1;
                if (ouVar.v(nuVar) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        return new q01(p005kotlin.Unit.INSTANCE);
    }

    public final q11 a(hu huVar, iu iuVar) {
        if (huVar != null && !huVar.a()) {
            return q11.CACHED;
        }
        if (huVar != null && huVar.a() && i().d) {
            return q11.STALE;
        }
        return iuVar != null ? q11.UPDATING : q11.EXPIRED;
    }

    @Override // kotlin.rh3
    public final Object b(Continuation continuation) {
        return a(this, continuation);
    }

    public final iu g() {
        CoroutineScope coroutineScope = this.d;
        ju block = new ju(this, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        return new iu(BuildersKt__Builders_commonKt.async$default(coroutineScope, context, null, new vs3(block, null), 2, null), this.c, Duration.INSTANCE.m4456getINFINITEUwyO8pc());
    }

    public final qu i() {
        ex0 flags = this.f;
        y11 signalId = f();
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(signalId, "signalId");
        flags.getClass();
        JsonObject defaultValue = ex0.H;
        Intrinsics.checkNotNullParameter("gads:caching_signal_source_ttls_ms", C3510b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        pr prVar = yr.i;
        JsonObject jsonObject = (JsonObject) flags.a("gads:caching_signal_source_ttls_ms", defaultValue, prVar);
        Duration.Companion companion = Duration.INSTANCE;
        long jA = fk3.a(jsonObject, defaultValue, signalId, ((Duration) flags.a("gads:default_signal_ttl", wm2.a(30, DurationUnit.SECONDS, "gads:default_signal_ttl", C3510b4.i.W), yr.j)).getRawValue());
        JsonObject defaultValue2 = ex0.E;
        Intrinsics.checkNotNullParameter("gads:caching_signal_source_automatic_refreshes", C3510b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue2, "defaultValue");
        boolean zA = fk3.a((JsonObject) flags.a("gads:caching_signal_source_automatic_refreshes", defaultValue2, prVar), defaultValue2, signalId);
        JsonObject defaultValue3 = ex0.G;
        Intrinsics.checkNotNullParameter("gads:caching_signal_source_refresh_buffers_ms", C3510b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue3, "defaultValue");
        long jA2 = fk3.a((JsonObject) flags.a("gads:caching_signal_source_refresh_buffers_ms", defaultValue3, prVar), defaultValue3, signalId, DurationKt.toDuration(0, DurationUnit.MILLISECONDS));
        JsonObject defaultValue4 = ex0.F;
        Intrinsics.checkNotNullParameter("gads:caching_signal_source_stale_results_enabled", C3510b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue4, "defaultValue");
        boolean zA2 = fk3.a((JsonObject) flags.a("gads:caching_signal_source_stale_results_enabled", defaultValue4, prVar), defaultValue4, signalId);
        JsonObject defaultValue5 = ex0.I;
        Intrinsics.checkNotNullParameter("gads:caching_signal_source_initialization_enabled", C3510b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue5, "defaultValue");
        boolean zA3 = fk3.a((JsonObject) flags.a("gads:caching_signal_source_initialization_enabled", defaultValue5, prVar), defaultValue5, signalId);
        JsonObject defaultValue6 = ex0.J;
        Intrinsics.checkNotNullParameter("gads:caching_signal_source_background_refresh_enabled", C3510b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue6, "defaultValue");
        return new qu(jA, zA, jA2, zA2, zA3, fk3.a((JsonObject) flags.a("gads:caching_signal_source_background_refresh_enabled", defaultValue6, prVar), defaultValue6, signalId));
    }

    public final gf3 k() {
        ff3 builder = gf3.v();
        Intrinsics.checkNotNullExpressionValue(builder, "newBuilder(...)");
        Intrinsics.checkNotNullParameter(builder, "builder");
        builder.a(i().b);
        builder.b(i().d);
        vz0 vz0VarB = builder.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        return (gf3) vz0VarB;
    }

    public final void l() {
        long jM4395minusLRDsOJo;
        if ((!this.g.i() || i().f) && i().b && this.k == null) {
            hu huVar = this.i;
            if (huVar != null) {
                long j = huVar.b;
                Duration.Companion companion = Duration.INSTANCE;
                this.c.getClass();
                jM4395minusLRDsOJo = Duration.m4395minusLRDsOJo(j, DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS));
            } else {
                jM4395minusLRDsOJo = i().a;
            }
            this.k = BuildersKt__Builders_commonKt.launch$default(this.d, null, null, new mu(Duration.m4395minusLRDsOJo(jM4395minusLRDsOJo, i().c), this, null), 3, null);
        }
    }

    @Override // kotlin.nc1
    public Object u(Continuation continuation) {
        return c(this, continuation);
    }

    public Object v(Continuation continuation) {
        return b(this, continuation);
    }
}

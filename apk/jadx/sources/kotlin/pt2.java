package kotlin;

import com.google.android.libraries.ads.mobile.sdk.banner.BannerAdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.PreloadCallback;
import com.google.android.libraries.ads.mobile.sdk.common.PreloadConfiguration;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdRequest;
import com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialAdRequest;
import com.google.common.base.Splitter;
import com.ironsource.C3510b4;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.enums.EnumEntries;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.functions.Function3;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class pt2 extends nc1 implements tq2, ox0, n92 {
    public final LinkedHashMap A;
    public final LinkedHashMap B;
    public final LinkedHashMap C;
    public final LinkedHashMap D;
    public final LinkedHashMap E;
    public boolean F;
    public final LinkedHashMap G;
    public boolean H;
    public final CoroutineScope c;
    public final ur3 d;
    public final g83 e;
    public final tx f;
    public final ex0 g;
    public final f13 h;
    public final cw2 i;
    public final cw2 j;
    public final cw2 k;
    public final cw2 l;
    public final cw2 m;
    public final cw2 n;
    public final zd3 o;
    public final k6 p;
    public final Mutex q;
    public Job r;
    public boolean s;
    public boolean t;
    public boolean u;
    public boolean v;
    public long w;
    public boolean x;
    public long y;
    public final LinkedHashMap z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pt2(CoroutineScope backgroundScope, ur3 traceLogger, g83 rootTraceCreator, tx clock, ex0 flags, f13 randomGenerator, dw2 appOpenComponentProvider, dw2 bannerComponentProvider, dw2 interstitialComponentProvider, dw2 nativeComponentProvider, dw2 rewardedComponentProvider, dw2 swipeableInterstitialComponentProvider, zd3 sharedSettingsDataStore, k6 adPreloadingValidator) {
        super((s11) null, 3);
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(randomGenerator, "randomGenerator");
        Intrinsics.checkNotNullParameter(appOpenComponentProvider, "appOpenComponentProvider");
        Intrinsics.checkNotNullParameter(bannerComponentProvider, "bannerComponentProvider");
        Intrinsics.checkNotNullParameter(interstitialComponentProvider, "interstitialComponentProvider");
        Intrinsics.checkNotNullParameter(nativeComponentProvider, "nativeComponentProvider");
        Intrinsics.checkNotNullParameter(rewardedComponentProvider, "rewardedComponentProvider");
        Intrinsics.checkNotNullParameter(swipeableInterstitialComponentProvider, "swipeableInterstitialComponentProvider");
        Intrinsics.checkNotNullParameter(sharedSettingsDataStore, "sharedSettingsDataStore");
        Intrinsics.checkNotNullParameter(adPreloadingValidator, "adPreloadingValidator");
        this.c = backgroundScope;
        this.d = traceLogger;
        this.e = rootTraceCreator;
        this.f = clock;
        this.g = flags;
        this.h = randomGenerator;
        this.i = appOpenComponentProvider;
        this.j = bannerComponentProvider;
        this.k = interstitialComponentProvider;
        this.l = nativeComponentProvider;
        this.m = rewardedComponentProvider;
        this.n = swipeableInterstitialComponentProvider;
        this.o = sharedSettingsDataStore;
        this.p = adPreloadingValidator;
        this.q = MutexKt.Mutex$default(false, 1, null);
        CompletableJob completableJobJob$default = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        completableJobJob$default.complete();
        this.r = completableJobJob$default;
        this.s = true;
        this.t = true;
        this.u = true;
        this.v = true;
        Duration.Companion companion = Duration.INSTANCE;
        this.w = companion.m4458getZEROUwyO8pc();
        this.x = true;
        this.y = companion.m4458getZEROUwyO8pc();
        this.z = new LinkedHashMap();
        this.A = new LinkedHashMap();
        this.B = new LinkedHashMap();
        this.C = new LinkedHashMap();
        this.D = new LinkedHashMap();
        this.E = new LinkedHashMap();
        this.G = new LinkedHashMap();
    }

    public static final zh1 a(pt2 pt2Var, as asVar, String str, j53 j53Var) {
        if (asVar == null) {
            pt2Var.getClass();
            return asVar;
        }
        ex0 ex0Var = pt2Var.g;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:preload_validator_held_too_long_after_poll_check:enabled", C3510b4.i.W);
        if (((Boolean) ex0Var.a("gads:preload_validator_held_too_long_after_poll_check:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
            ex0 ex0Var2 = pt2Var.g;
            ex0Var2.getClass();
            Duration.Companion companion = Duration.INSTANCE;
            long rawValue = ((Duration) ex0Var2.a("gads:preload_validator_poll_to_show_timeout:millis", wm2.a(5, DurationUnit.SECONDS, "gads:preload_validator_poll_to_show_timeout:millis", C3510b4.i.W), yr.j)).getRawValue();
            if (Duration.m4394isPositiveimpl(rawValue)) {
                Job jobL = asVar.l();
                if (jobL != null) {
                    Job.DefaultImpls.cancel$default(jobL, (CancellationException) null, 1, (Object) null);
                }
                asVar.a(BuildersKt__Builders_commonKt.launch$default(pt2Var.c, null, null, new kr2(rawValue, pt2Var, str, j53Var, null), 3, null));
            }
        }
        return asVar;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:54:0x00d3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:? A[LOOP:0: B:34:0x00a5->B:56:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0074, code lost:
    
        if (r12.lock(null, r0) == r1) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00d1, code lost:
    
        if (r2.x(r0) == r1) goto L41;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object a(kotlin.pt2 r9, long r10, p005kotlin.coroutines.Continuation r12) {
        /*
            Method dump skipped, instruction units count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.pt2.a(ads_mobile_sdk.pt2, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    public static final Object a(pt2 pt2Var, String str, PreloadConfiguration preloadConfiguration, PreloadCallback preloadCallback, Continuation continuation) throws Throwable {
        hs2 hs2Var;
        Mutex mutex;
        pt2 pt2Var2;
        String str2;
        String str3;
        PreloadConfiguration preloadConfiguration2;
        PreloadCallback preloadCallback2;
        pt2Var.getClass();
        if (continuation instanceof hs2) {
            hs2Var = (hs2) continuation;
            int i = hs2Var.j;
            if ((i & Integer.MIN_VALUE) != 0) {
                hs2Var.j = i - Integer.MIN_VALUE;
            } else {
                hs2Var = new hs2(pt2Var, continuation);
            }
        } else {
            hs2Var = new hs2(pt2Var, continuation);
        }
        Object obj = hs2Var.h;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = hs2Var.j;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                mutex = pt2Var.q;
                hs2Var.a = pt2Var;
                hs2Var.b = str;
                hs2Var.c = preloadConfiguration;
                hs2Var.d = preloadCallback;
                hs2Var.e = mutex;
                hs2Var.f = pt2Var;
                hs2Var.g = str;
                hs2Var.j = 1;
                if (mutex.lock(null, hs2Var) != coroutine_suspended) {
                    pt2Var2 = pt2Var;
                    str2 = str;
                    str3 = str2;
                    preloadConfiguration2 = preloadConfiguration;
                    preloadCallback2 = preloadCallback;
                }
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                p005kotlin.ResultKt.throwOnFailure(obj);
                return obj;
            }
            String str4 = hs2Var.g;
            pt2 pt2Var3 = hs2Var.f;
            mutex = hs2Var.e;
            PreloadCallback preloadCallback3 = hs2Var.d;
            PreloadConfiguration preloadConfiguration3 = hs2Var.c;
            String str5 = hs2Var.b;
            pt2 pt2Var4 = hs2Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            str2 = str4;
            pt2Var = pt2Var3;
            str3 = str5;
            pt2Var2 = pt2Var4;
            preloadCallback2 = preloadCallback3;
            preloadConfiguration2 = preloadConfiguration3;
            LinkedHashMap linkedHashMap = pt2Var2.z;
            mutex.unlock(null);
            ks2 ks2Var = new ks2(pt2Var2, str3, preloadConfiguration2, preloadCallback2, null);
            hs2Var.a = null;
            hs2Var.b = null;
            hs2Var.c = null;
            hs2Var.d = null;
            hs2Var.e = null;
            hs2Var.f = null;
            hs2Var.g = null;
            hs2Var.j = 2;
            Object objA = pt2Var.a(str2, linkedHashMap, ks2Var, hs2Var);
            return objA == coroutine_suspended ? coroutine_suspended : objA;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:121:0x0283  */
    /* JADX WARN: Code duplicated, block: B:125:0x02a6  */
    /* JADX WARN: Code duplicated, block: B:128:0x02b1 A[Catch: all -> 0x0076, TRY_LEAVE, TryCatch #3 {all -> 0x0076, blocks: (B:126:0x02a7, B:128:0x02b1, B:18:0x0071), top: B:172:0x0071 }] */
    /* JADX WARN: Code duplicated, block: B:15:0x0051 A[PHI: r0 r2 r4
  0x0051: PHI (r0v43 java.lang.Object) = (r0v1 java.lang.Object), (r0v50 java.lang.Object) binds: [B:14:0x0046, B:58:0x015a] A[DONT_GENERATE, DONT_INLINE]
  0x0051: PHI (r2v37 java.util.List) = (r2v19 java.util.List), (r2v39 java.util.List) binds: [B:14:0x0046, B:58:0x015a] A[DONT_GENERATE, DONT_INLINE]
  0x0051: PHI (r4v15 ads_mobile_sdk.pt2) = (r4v13 ads_mobile_sdk.pt2), (r4v17 ads_mobile_sdk.pt2) binds: [B:14:0x0046, B:58:0x015a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:178:0x0115 A[EXC_TOP_SPLITTER, PHI: r0 r2 r8
  0x0115: PHI (r0v57 java.util.List) = (r0v2 java.util.List), (r0v61 java.util.List) binds: [B:31:0x00be, B:42:0x0111] A[DONT_GENERATE, DONT_INLINE]
  0x0115: PHI (r2v41 kotlinx.coroutines.sync.Mutex) = (r2v6 kotlinx.coroutines.sync.Mutex), (r2v46 kotlinx.coroutines.sync.Mutex) binds: [B:31:0x00be, B:42:0x0111] A[DONT_GENERATE, DONT_INLINE]
  0x0115: PHI (r8v13 ads_mobile_sdk.pt2) = (r8v2 ads_mobile_sdk.pt2), (r8v14 ads_mobile_sdk.pt2) binds: [B:31:0x00be, B:42:0x0111] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:39:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:47:0x011c  */
    /* JADX WARN: Code duplicated, block: B:50:0x012d  */
    /* JADX WARN: Code duplicated, block: B:53:0x0139  */
    /* JADX WARN: Code duplicated, block: B:54:0x013c  */
    /* JADX WARN: Code duplicated, block: B:57:0x014c A[PHI: r0 r2 r4
  0x014c: PHI (r0v48 java.lang.Object) = (r0v1 java.lang.Object), (r0v55 java.lang.Object) binds: [B:16:0x0058, B:55:0x0148] A[DONT_GENERATE, DONT_INLINE]
  0x014c: PHI (r2v39 java.util.List) = (r2v17 java.util.List), (r2v40 java.util.List) binds: [B:16:0x0058, B:55:0x0148] A[DONT_GENERATE, DONT_INLINE]
  0x014c: PHI (r4v17 ads_mobile_sdk.pt2) = (r4v11 ads_mobile_sdk.pt2), (r4v18 ads_mobile_sdk.pt2) binds: [B:16:0x0058, B:55:0x0148] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:63:0x0168  */
    /* JADX WARN: Code duplicated, block: B:66:0x0178 A[PHI: r0 r2
  0x0178: PHI (r0v65 java.lang.Object) = (r0v47 java.lang.Object), (r0v1 java.lang.Object) binds: [B:64:0x0174, B:13:0x003d] A[DONT_GENERATE, DONT_INLINE]
  0x0178: PHI (r2v49 ads_mobile_sdk.pt2) = (r2v38 ads_mobile_sdk.pt2), (r2v51 ads_mobile_sdk.pt2) binds: [B:64:0x0174, B:13:0x003d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:68:0x0180  */
    /* JADX WARN: Code duplicated, block: B:74:0x01be  */
    /* JADX WARN: Code duplicated, block: B:78:0x01da  */
    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    /* JADX WARN: Code duplicated, block: B:81:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:83:0x020e  */
    /* JADX WARN: Code duplicated, block: B:87:0x022e  */
    /* JADX WARN: Code duplicated, block: B:90:0x0239 A[Catch: all -> 0x008a, TRY_LEAVE, TryCatch #5 {all -> 0x008a, blocks: (B:88:0x022f, B:90:0x0239, B:23:0x0085), top: B:176:0x0085 }] */
    /* JADX WARN: Path cross not found for [B:68:0x0180, B:34:0x00df], limit reached: 170 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:67:0x017e -> B:34:0x00df). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:69:0x01a9 -> B:34:0x00df). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object a(kotlin.pt2 r17, p005kotlin.coroutines.Continuation r18) {
        /*
            Method dump skipped, instruction units count: 804
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.pt2.a(ads_mobile_sdk.pt2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001c  */
    public static final Object a(BannerAdRequest bannerAdRequest, PreloadCallback preloadCallback, PreloadConfiguration preloadConfiguration, pt2 pt2Var, String str, Continuation continuation) throws Throwable {
        ls2 ls2Var;
        Mutex mutex;
        BannerAdRequest bannerAdRequest2;
        pt2 pt2Var2;
        String str2;
        PreloadConfiguration preloadConfiguration2;
        PreloadCallback preloadCallback2;
        BannerAdRequest bannerAdRequest3;
        pt2 pt2Var3 = pt2Var;
        String str3 = str;
        pt2Var3.getClass();
        if (continuation instanceof ls2) {
            ls2Var = (ls2) continuation;
            int i = ls2Var.k;
            if ((i & Integer.MIN_VALUE) != 0) {
                ls2Var.k = i - Integer.MIN_VALUE;
            } else {
                ls2Var = new ls2(pt2Var3, continuation);
            }
        } else {
            ls2Var = new ls2(pt2Var3, continuation);
        }
        Object obj = ls2Var.i;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ls2Var.k;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                mutex = pt2Var3.q;
                ls2Var.a = pt2Var3;
                ls2Var.b = str3;
                ls2Var.c = preloadConfiguration;
                bannerAdRequest2 = bannerAdRequest;
                ls2Var.d = bannerAdRequest2;
                ls2Var.e = preloadCallback;
                ls2Var.f = mutex;
                ls2Var.g = pt2Var3;
                ls2Var.h = str3;
                ls2Var.k = 1;
                if (mutex.lock(null, ls2Var) != coroutine_suspended) {
                    pt2Var2 = pt2Var3;
                    str2 = str3;
                    preloadConfiguration2 = preloadConfiguration;
                    preloadCallback2 = preloadCallback;
                }
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                p005kotlin.ResultKt.throwOnFailure(obj);
                return obj;
            }
            String str4 = ls2Var.h;
            pt2 pt2Var4 = ls2Var.g;
            mutex = ls2Var.f;
            PreloadCallback preloadCallback3 = ls2Var.e;
            bannerAdRequest2 = ls2Var.d;
            PreloadConfiguration preloadConfiguration3 = ls2Var.c;
            String str5 = ls2Var.b;
            pt2 pt2Var5 = ls2Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            str3 = str4;
            pt2Var3 = pt2Var4;
            str2 = str5;
            pt2Var2 = pt2Var5;
            preloadCallback2 = preloadCallback3;
            preloadConfiguration2 = preloadConfiguration3;
            LinkedHashMap linkedHashMap = pt2Var2.A;
            mutex.unlock(null);
            os2 os2Var = new os2(bannerAdRequest3, preloadCallback2, preloadConfiguration2, pt2Var2, str2, null);
            ls2Var.a = null;
            ls2Var.b = null;
            ls2Var.c = null;
            ls2Var.d = null;
            ls2Var.e = null;
            ls2Var.f = null;
            ls2Var.g = null;
            ls2Var.h = null;
            ls2Var.k = 2;
            Object objA = pt2Var3.a(str3, linkedHashMap, os2Var, ls2Var);
            return objA == coroutine_suspended ? coroutine_suspended : objA;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
        bannerAdRequest3 = bannerAdRequest2;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001c  */
    public static final Object a(PreloadCallback preloadCallback, PreloadConfiguration preloadConfiguration, pt2 pt2Var, NativeAdRequest nativeAdRequest, String str, Continuation continuation) throws Throwable {
        ts2 ts2Var;
        Mutex mutex;
        NativeAdRequest nativeAdRequest2;
        PreloadCallback preloadCallback2;
        pt2 pt2Var2;
        String str2;
        PreloadConfiguration preloadConfiguration2;
        NativeAdRequest nativeAdRequest3;
        pt2 pt2Var3 = pt2Var;
        String str3 = str;
        pt2Var3.getClass();
        if (continuation instanceof ts2) {
            ts2Var = (ts2) continuation;
            int i = ts2Var.k;
            if ((i & Integer.MIN_VALUE) != 0) {
                ts2Var.k = i - Integer.MIN_VALUE;
            } else {
                ts2Var = new ts2(pt2Var3, continuation);
            }
        } else {
            ts2Var = new ts2(pt2Var3, continuation);
        }
        Object obj = ts2Var.i;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ts2Var.k;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                mutex = pt2Var3.q;
                ts2Var.a = pt2Var3;
                ts2Var.b = str3;
                ts2Var.c = preloadConfiguration;
                nativeAdRequest2 = nativeAdRequest;
                ts2Var.d = nativeAdRequest2;
                preloadCallback2 = preloadCallback;
                ts2Var.e = preloadCallback2;
                ts2Var.f = mutex;
                ts2Var.g = pt2Var3;
                ts2Var.h = str3;
                ts2Var.k = 1;
                if (mutex.lock(null, ts2Var) != coroutine_suspended) {
                    pt2Var2 = pt2Var3;
                    str2 = str3;
                    preloadConfiguration2 = preloadConfiguration;
                }
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                p005kotlin.ResultKt.throwOnFailure(obj);
                return obj;
            }
            String str4 = ts2Var.h;
            pt2 pt2Var4 = ts2Var.g;
            mutex = ts2Var.f;
            PreloadCallback preloadCallback3 = ts2Var.e;
            nativeAdRequest2 = ts2Var.d;
            PreloadConfiguration preloadConfiguration3 = ts2Var.c;
            String str5 = ts2Var.b;
            pt2Var2 = ts2Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            str3 = str4;
            pt2Var3 = pt2Var4;
            str2 = str5;
            preloadConfiguration2 = preloadConfiguration3;
            preloadCallback2 = preloadCallback3;
            LinkedHashMap linkedHashMap = pt2Var2.C;
            mutex.unlock(null);
            ws2 ws2Var = new ws2(preloadCallback2, preloadConfiguration2, pt2Var2, nativeAdRequest3, str2, null);
            ts2Var.a = null;
            ts2Var.b = null;
            ts2Var.c = null;
            ts2Var.d = null;
            ts2Var.e = null;
            ts2Var.f = null;
            ts2Var.g = null;
            ts2Var.h = null;
            ts2Var.k = 2;
            Object objA = pt2Var3.a(str3, linkedHashMap, ws2Var, ts2Var);
            return objA == coroutine_suspended ? coroutine_suspended : objA;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
        nativeAdRequest3 = nativeAdRequest2;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001c  */
    public static final Object a(PreloadCallback preloadCallback, PreloadConfiguration preloadConfiguration, pt2 pt2Var, SwipeableInterstitialAdRequest swipeableInterstitialAdRequest, String str, Continuation continuation) throws Throwable {
        ht2 ht2Var;
        Mutex mutex;
        SwipeableInterstitialAdRequest swipeableInterstitialAdRequest2;
        PreloadCallback preloadCallback2;
        pt2 pt2Var2;
        String str2;
        PreloadConfiguration preloadConfiguration2;
        SwipeableInterstitialAdRequest swipeableInterstitialAdRequest3;
        pt2 pt2Var3 = pt2Var;
        String str3 = str;
        pt2Var3.getClass();
        if (continuation instanceof ht2) {
            ht2Var = (ht2) continuation;
            int i = ht2Var.k;
            if ((i & Integer.MIN_VALUE) != 0) {
                ht2Var.k = i - Integer.MIN_VALUE;
            } else {
                ht2Var = new ht2(pt2Var3, continuation);
            }
        } else {
            ht2Var = new ht2(pt2Var3, continuation);
        }
        Object obj = ht2Var.i;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ht2Var.k;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                mutex = pt2Var3.q;
                ht2Var.a = pt2Var3;
                ht2Var.b = str3;
                ht2Var.c = preloadConfiguration;
                swipeableInterstitialAdRequest2 = swipeableInterstitialAdRequest;
                ht2Var.d = swipeableInterstitialAdRequest2;
                preloadCallback2 = preloadCallback;
                ht2Var.e = preloadCallback2;
                ht2Var.f = mutex;
                ht2Var.g = pt2Var3;
                ht2Var.h = str3;
                ht2Var.k = 1;
                if (mutex.lock(null, ht2Var) != coroutine_suspended) {
                    pt2Var2 = pt2Var3;
                    str2 = str3;
                    preloadConfiguration2 = preloadConfiguration;
                }
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                p005kotlin.ResultKt.throwOnFailure(obj);
                return obj;
            }
            String str4 = ht2Var.h;
            pt2 pt2Var4 = ht2Var.g;
            mutex = ht2Var.f;
            PreloadCallback preloadCallback3 = ht2Var.e;
            swipeableInterstitialAdRequest2 = ht2Var.d;
            PreloadConfiguration preloadConfiguration3 = ht2Var.c;
            String str5 = ht2Var.b;
            pt2Var2 = ht2Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            str3 = str4;
            pt2Var3 = pt2Var4;
            str2 = str5;
            preloadConfiguration2 = preloadConfiguration3;
            preloadCallback2 = preloadCallback3;
            LinkedHashMap linkedHashMap = pt2Var2.G;
            mutex.unlock(null);
            kt2 kt2Var = new kt2(preloadCallback2, preloadConfiguration2, pt2Var2, swipeableInterstitialAdRequest3, str2, null);
            ht2Var.a = null;
            ht2Var.b = null;
            ht2Var.c = null;
            ht2Var.d = null;
            ht2Var.e = null;
            ht2Var.f = null;
            ht2Var.g = null;
            ht2Var.h = null;
            ht2Var.k = 2;
            Object objA = pt2Var3.a(str3, linkedHashMap, kt2Var, ht2Var);
            return objA == coroutine_suspended ? coroutine_suspended : objA;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
        swipeableInterstitialAdRequest3 = swipeableInterstitialAdRequest2;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:54:0x00d2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:? A[LOOP:0: B:34:0x00a4->B:56:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0074, code lost:
    
        if (r12.lock(null, r0) == r1) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00d0, code lost:
    
        if (r2.x(r0) == r1) goto L41;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object b(kotlin.pt2 r9, long r10, p005kotlin.coroutines.Continuation r12) {
        /*
            Method dump skipped, instruction units count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.pt2.b(ads_mobile_sdk.pt2, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    public static final Object b(pt2 pt2Var, String str, PreloadConfiguration preloadConfiguration, PreloadCallback preloadCallback, Continuation continuation) throws Throwable {
        ps2 ps2Var;
        Mutex mutex;
        pt2 pt2Var2;
        String str2;
        String str3;
        PreloadConfiguration preloadConfiguration2;
        PreloadCallback preloadCallback2;
        pt2Var.getClass();
        if (continuation instanceof ps2) {
            ps2Var = (ps2) continuation;
            int i = ps2Var.j;
            if ((i & Integer.MIN_VALUE) != 0) {
                ps2Var.j = i - Integer.MIN_VALUE;
            } else {
                ps2Var = new ps2(pt2Var, continuation);
            }
        } else {
            ps2Var = new ps2(pt2Var, continuation);
        }
        Object obj = ps2Var.h;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ps2Var.j;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                mutex = pt2Var.q;
                ps2Var.a = pt2Var;
                ps2Var.b = str;
                ps2Var.c = preloadConfiguration;
                ps2Var.d = preloadCallback;
                ps2Var.e = mutex;
                ps2Var.f = pt2Var;
                ps2Var.g = str;
                ps2Var.j = 1;
                if (mutex.lock(null, ps2Var) != coroutine_suspended) {
                    pt2Var2 = pt2Var;
                    str2 = str;
                    str3 = str2;
                    preloadConfiguration2 = preloadConfiguration;
                    preloadCallback2 = preloadCallback;
                }
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                p005kotlin.ResultKt.throwOnFailure(obj);
                return obj;
            }
            String str4 = ps2Var.g;
            pt2 pt2Var3 = ps2Var.f;
            mutex = ps2Var.e;
            PreloadCallback preloadCallback3 = ps2Var.d;
            PreloadConfiguration preloadConfiguration3 = ps2Var.c;
            String str5 = ps2Var.b;
            pt2 pt2Var4 = ps2Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            str2 = str4;
            pt2Var = pt2Var3;
            str3 = str5;
            pt2Var2 = pt2Var4;
            preloadCallback2 = preloadCallback3;
            preloadConfiguration2 = preloadConfiguration3;
            LinkedHashMap linkedHashMap = pt2Var2.B;
            mutex.unlock(null);
            ss2 ss2Var = new ss2(pt2Var2, str3, preloadConfiguration2, preloadCallback2, null);
            ps2Var.a = null;
            ps2Var.b = null;
            ps2Var.c = null;
            ps2Var.d = null;
            ps2Var.e = null;
            ps2Var.f = null;
            ps2Var.g = null;
            ps2Var.j = 2;
            Object objA = pt2Var.a(str2, linkedHashMap, ss2Var, ps2Var);
            return objA == coroutine_suspended ? coroutine_suspended : objA;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object b(pt2 pt2Var, Continuation continuation) {
        fs2 fs2Var;
        Mutex mutex;
        if (continuation instanceof fs2) {
            fs2Var = (fs2) continuation;
            int i = fs2Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                fs2Var.e = i - Integer.MIN_VALUE;
            } else {
                fs2Var = new fs2(pt2Var, continuation);
            }
        } else {
            fs2Var = new fs2(pt2Var, continuation);
        }
        Object obj = fs2Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = fs2Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            ex0 ex0Var = pt2Var.g;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:preload:bind_to_online:enabled", C3510b4.i.W);
            Boolean bool = Boolean.FALSE;
            ir irVar = yr.b;
            pt2Var.s = ((Boolean) ex0Var.a("gads:preload:bind_to_online:enabled", bool, irVar)).booleanValue();
            ex0 ex0Var2 = pt2Var.g;
            ex0Var2.getClass();
            Intrinsics.checkNotNullParameter("gads:preload:bind_on_foreground", C3510b4.i.W);
            pt2Var.t = ((Boolean) ex0Var2.a("gads:preload:bind_on_foreground", bool, irVar)).booleanValue();
            ex0 ex0Var3 = pt2Var.g;
            ex0Var3.getClass();
            Intrinsics.checkNotNullParameter("gads:preload_app_open_in_background", C3510b4.i.W);
            pt2Var.u = ((Boolean) ex0Var3.a("gads:preload_app_open_in_background", bool, irVar)).booleanValue();
            ex0 ex0Var4 = pt2Var.g;
            ex0Var4.getClass();
            Intrinsics.checkNotNullParameter("gads:centralized_preload_manager:enabled", C3510b4.i.W);
            pt2Var.H = ((Boolean) ex0Var4.a("gads:centralized_preload_manager:enabled", bool, irVar)).booleanValue();
            mutex = pt2Var.q;
            fs2Var.a = pt2Var;
            fs2Var.b = mutex;
            fs2Var.e = 1;
            if (mutex.lock(null, fs2Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = fs2Var.b;
            pt2 pt2Var2 = fs2Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            pt2Var = pt2Var2;
        }
        try {
            if (!pt2Var.s) {
                pt2Var.x = true;
            }
            if (!pt2Var.t) {
                pt2Var.v = true;
            }
            return new q01(p005kotlin.Unit.INSTANCE);
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:54:0x00cd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:? A[LOOP:0: B:34:0x009f->B:56:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0074, code lost:
    
        if (r12.lock(null, r0) == r1) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00cb, code lost:
    
        if (r2.x(r0) == r1) goto L41;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object c(kotlin.pt2 r9, long r10, p005kotlin.coroutines.Continuation r12) {
        /*
            Method dump skipped, instruction units count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.pt2.c(ads_mobile_sdk.pt2, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    public static final Object c(pt2 pt2Var, String str, PreloadConfiguration preloadConfiguration, PreloadCallback preloadCallback, Continuation continuation) throws Throwable {
        zs2 zs2Var;
        Mutex mutex;
        pt2 pt2Var2;
        String str2;
        String str3;
        PreloadConfiguration preloadConfiguration2;
        PreloadCallback preloadCallback2;
        pt2Var.getClass();
        if (continuation instanceof zs2) {
            zs2Var = (zs2) continuation;
            int i = zs2Var.j;
            if ((i & Integer.MIN_VALUE) != 0) {
                zs2Var.j = i - Integer.MIN_VALUE;
            } else {
                zs2Var = new zs2(pt2Var, continuation);
            }
        } else {
            zs2Var = new zs2(pt2Var, continuation);
        }
        Object obj = zs2Var.h;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zs2Var.j;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                mutex = pt2Var.q;
                zs2Var.a = pt2Var;
                zs2Var.b = str;
                zs2Var.c = preloadConfiguration;
                zs2Var.d = preloadCallback;
                zs2Var.e = mutex;
                zs2Var.f = pt2Var;
                zs2Var.g = str;
                zs2Var.j = 1;
                if (mutex.lock(null, zs2Var) != coroutine_suspended) {
                    pt2Var2 = pt2Var;
                    str2 = str;
                    str3 = str2;
                    preloadConfiguration2 = preloadConfiguration;
                    preloadCallback2 = preloadCallback;
                }
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                p005kotlin.ResultKt.throwOnFailure(obj);
                return obj;
            }
            String str4 = zs2Var.g;
            pt2 pt2Var3 = zs2Var.f;
            mutex = zs2Var.e;
            PreloadCallback preloadCallback3 = zs2Var.d;
            PreloadConfiguration preloadConfiguration3 = zs2Var.c;
            String str5 = zs2Var.b;
            pt2 pt2Var4 = zs2Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            str2 = str4;
            pt2Var = pt2Var3;
            str3 = str5;
            pt2Var2 = pt2Var4;
            preloadCallback2 = preloadCallback3;
            preloadConfiguration2 = preloadConfiguration3;
            LinkedHashMap linkedHashMap = pt2Var2.E;
            mutex.unlock(null);
            ct2 ct2Var = new ct2(pt2Var2, str3, preloadConfiguration2, preloadCallback2, null);
            zs2Var.a = null;
            zs2Var.b = null;
            zs2Var.c = null;
            zs2Var.d = null;
            zs2Var.e = null;
            zs2Var.f = null;
            zs2Var.g = null;
            zs2Var.j = 2;
            Object objA = pt2Var.a(str2, linkedHashMap, ct2Var, zs2Var);
            return objA == coroutine_suspended ? coroutine_suspended : objA;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x009c  */
    /* JADX WARN: Code duplicated, block: B:47:0x00b5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:? A[LOOP:0: B:32:0x0096->B:49:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x006a, code lost:
    
        if (r13.lock(null, r0) == r1) goto L36;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object d(kotlin.pt2 r10, long r11, p005kotlin.coroutines.Continuation r13) {
        /*
            boolean r0 = r13 instanceof kotlin.rr2
            if (r0 == 0) goto L13
            r0 = r13
            ads_mobile_sdk.rr2 r0 = (kotlin.rr2) r0
            int r1 = r0.g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.g = r1
            goto L18
        L13:
            ads_mobile_sdk.rr2 r0 = new ads_mobile_sdk.rr2
            r0.<init>(r10, r13)
        L18:
            java.lang.Object r13 = r0.e
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.g
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L4b
            if (r2 == r4) goto L3b
            if (r2 != r3) goto L33
            long r10 = r0.d
            java.lang.Object r12 = r0.a
            java.util.Iterator r12 = (java.util.Iterator) r12
            p005kotlin.ResultKt.throwOnFailure(r13)
            goto L96
        L33:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r11)
            throw r10
        L3b:
            long r11 = r0.d
            kotlinx.coroutines.sync.Mutex r10 = r0.c
            java.util.ArrayList r2 = r0.b
            java.lang.Object r4 = r0.a
            ads_mobile_sdk.pt2 r4 = (kotlin.pt2) r4
            p005kotlin.ResultKt.throwOnFailure(r13)
            r13 = r10
            r10 = r4
            goto L6d
        L4b:
            p005kotlin.ResultKt.throwOnFailure(r13)
            boolean r13 = r10.s
            if (r13 != 0) goto L55
            kotlin.Unit r10 = p005kotlin.Unit.INSTANCE
            return r10
        L55:
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            kotlinx.coroutines.sync.Mutex r13 = r10.q
            r0.a = r10
            r0.b = r2
            r0.c = r13
            r0.d = r11
            r0.g = r4
            java.lang.Object r4 = r13.lock(r5, r0)
            if (r4 != r1) goto L6d
            goto Lb5
        L6d:
            long r6 = r10.y     // Catch: java.lang.Throwable -> Lbf
            int r4 = p005kotlin.time.Duration.m4366compareToLRDsOJo(r11, r6)     // Catch: java.lang.Throwable -> Lbf
            if (r4 <= 0) goto Lb9
            boolean r4 = r10.x     // Catch: java.lang.Throwable -> Lbf
            if (r4 != 0) goto L7a
            goto Lb9
        L7a:
            r4 = 0
            r10.x = r4     // Catch: java.lang.Throwable -> Lbf
            r10.y = r11     // Catch: java.lang.Throwable -> Lbf
            java.util.ArrayList r10 = r10.a(r5)     // Catch: java.lang.Throwable -> Lbf
            r2.addAll(r10)     // Catch: java.lang.Throwable -> Lbf
            r13.unlock(r5)
            boolean r10 = r2.isEmpty()
            if (r10 != 0) goto Lb6
            java.util.Iterator r10 = r2.iterator()
            r8 = r11
            r12 = r10
            r10 = r8
        L96:
            boolean r13 = r12.hasNext()
            if (r13 == 0) goto Lb6
            java.lang.Object r13 = r12.next()
            ads_mobile_sdk.h6 r13 = (kotlin.h6) r13
            r0.a = r12
            r0.b = r5
            r0.c = r5
            r0.d = r10
            r0.g = r3
            r13.getClass()
            java.lang.Object r13 = kotlin.h6.j(r13, r0)
            if (r13 != r1) goto L96
        Lb5:
            return r1
        Lb6:
            kotlin.Unit r10 = p005kotlin.Unit.INSTANCE
            return r10
        Lb9:
            kotlin.Unit r10 = p005kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> Lbf
            r13.unlock(r5)
            return r10
        Lbf:
            r10 = move-exception
            r13.unlock(r5)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.pt2.d(ads_mobile_sdk.pt2, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    public static final Object d(pt2 pt2Var, String str, PreloadConfiguration preloadConfiguration, PreloadCallback preloadCallback, Continuation continuation) throws Throwable {
        dt2 dt2Var;
        Mutex mutex;
        pt2 pt2Var2;
        String str2;
        String str3;
        PreloadConfiguration preloadConfiguration2;
        PreloadCallback preloadCallback2;
        pt2Var.getClass();
        if (continuation instanceof dt2) {
            dt2Var = (dt2) continuation;
            int i = dt2Var.j;
            if ((i & Integer.MIN_VALUE) != 0) {
                dt2Var.j = i - Integer.MIN_VALUE;
            } else {
                dt2Var = new dt2(pt2Var, continuation);
            }
        } else {
            dt2Var = new dt2(pt2Var, continuation);
        }
        Object obj = dt2Var.h;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = dt2Var.j;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                mutex = pt2Var.q;
                dt2Var.a = pt2Var;
                dt2Var.b = str;
                dt2Var.c = preloadConfiguration;
                dt2Var.d = preloadCallback;
                dt2Var.e = mutex;
                dt2Var.f = pt2Var;
                dt2Var.g = str;
                dt2Var.j = 1;
                if (mutex.lock(null, dt2Var) != coroutine_suspended) {
                    pt2Var2 = pt2Var;
                    str2 = str;
                    str3 = str2;
                    preloadConfiguration2 = preloadConfiguration;
                    preloadCallback2 = preloadCallback;
                }
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                p005kotlin.ResultKt.throwOnFailure(obj);
                return obj;
            }
            String str4 = dt2Var.g;
            pt2 pt2Var3 = dt2Var.f;
            mutex = dt2Var.e;
            PreloadCallback preloadCallback3 = dt2Var.d;
            PreloadConfiguration preloadConfiguration3 = dt2Var.c;
            String str5 = dt2Var.b;
            pt2 pt2Var4 = dt2Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            str2 = str4;
            pt2Var = pt2Var3;
            str3 = str5;
            pt2Var2 = pt2Var4;
            preloadCallback2 = preloadCallback3;
            preloadConfiguration2 = preloadConfiguration3;
            LinkedHashMap linkedHashMap = pt2Var2.D;
            mutex.unlock(null);
            gt2 gt2Var = new gt2(pt2Var2, str3, preloadConfiguration2, preloadCallback2, null);
            dt2Var.a = null;
            dt2Var.b = null;
            dt2Var.c = null;
            dt2Var.d = null;
            dt2Var.e = null;
            dt2Var.f = null;
            dt2Var.g = null;
            dt2Var.j = 2;
            Object objA = pt2Var.a(str2, linkedHashMap, gt2Var, dt2Var);
            return objA == coroutine_suspended ? coroutine_suspended : objA;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }

    @Override // kotlin.n92
    public final Object a(long j, Continuation continuation) {
        return c(this, j, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:47:0x014b  */
    /* JADX WARN: Code duplicated, block: B:48:0x0150  */
    /* JADX WARN: Code duplicated, block: B:51:0x016a  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(h6 h6Var, List list, int i, Integer num, Boolean bool, Continuation continuation) {
        dr2 dr2Var;
        iv ivVar;
        List list2;
        Object obj;
        iv ivVar2;
        Boolean bool2;
        Integer num2;
        iv ivVar3;
        t11 value;
        Boolean bool3;
        iv ivVar4;
        h6 h6Var2;
        iv ivVar5;
        int iIntValue;
        iv ivVar6;
        iv ivVar7;
        iv ivVar8;
        boolean zBooleanValue;
        if (continuation instanceof dr2) {
            dr2Var = (dr2) continuation;
            int i2 = dr2Var.k;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                dr2Var.k = i2 - Integer.MIN_VALUE;
            } else {
                dr2Var = new dr2(this, continuation);
            }
        } else {
            dr2Var = new dr2(this, continuation);
        }
        Object objE = dr2Var.i;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = dr2Var.k;
        if (i3 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objE);
            gv builder = hv.v();
            Intrinsics.checkNotNullExpressionValue(builder, "newBuilder(...)");
            Intrinsics.checkNotNullParameter(builder, "builder");
            ivVar = new iv(builder);
            dr2Var.a = h6Var;
            dr2Var.b = list;
            dr2Var.c = num;
            dr2Var.d = bool;
            dr2Var.e = ivVar;
            dr2Var.f = ivVar;
            dr2Var.g = ivVar;
            dr2Var.h = i;
            dr2Var.k = 1;
            Object objV = v(dr2Var);
            if (objV != coroutine_suspended) {
                list2 = list;
                obj = objV;
                ivVar2 = ivVar;
                bool2 = bool;
                num2 = num;
                ivVar3 = ivVar2;
            }
            return coroutine_suspended;
        }
        if (i3 == 1) {
            i = dr2Var.h;
            iv ivVar9 = dr2Var.g;
            ivVar2 = dr2Var.f;
            ivVar3 = dr2Var.e;
            Boolean bool4 = (Boolean) dr2Var.d;
            Integer num3 = (Integer) dr2Var.c;
            list2 = (List) dr2Var.b;
            h6 h6Var3 = (h6) dr2Var.a;
            p005kotlin.ResultKt.throwOnFailure(objE);
            ivVar = ivVar9;
            h6Var = h6Var3;
            obj = objE;
            bool2 = bool4;
            num2 = num3;
        } else {
            if (i3 == 2) {
                ivVar5 = dr2Var.e;
                h6Var2 = (h6) dr2Var.d;
                ivVar4 = (iv) dr2Var.c;
                ivVar3 = (iv) dr2Var.b;
                bool3 = (Boolean) dr2Var.a;
                p005kotlin.ResultKt.throwOnFailure(objE);
                iIntValue = ((Number) objE).intValue();
                iv ivVar10 = ivVar4;
                ivVar6 = ivVar5;
                h6Var = h6Var2;
                ivVar2 = ivVar10;
                ivVar6.a.d(iIntValue);
                if (bool3 == null) {
                    dr2Var.a = ivVar3;
                    dr2Var.b = ivVar2;
                    dr2Var.c = null;
                    dr2Var.d = null;
                    dr2Var.e = null;
                    dr2Var.f = null;
                    dr2Var.g = null;
                    dr2Var.k = 3;
                    h6Var.getClass();
                    objE = h6.e(h6Var, dr2Var);
                    if (objE != coroutine_suspended) {
                        ivVar7 = ivVar2;
                        ivVar8 = ivVar3;
                    }
                    return coroutine_suspended;
                }
                zBooleanValue = bool3.booleanValue();
                ivVar2.a.a(zBooleanValue);
                vz0 vz0VarB = ivVar3.a.b();
                Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
                return (hv) vz0VarB;
            }
            if (i3 != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ivVar7 = (iv) dr2Var.b;
            ivVar8 = (iv) dr2Var.a;
            p005kotlin.ResultKt.throwOnFailure(objE);
        }
        ivVar3 = ivVar8;
        ivVar2 = ivVar7;
        zBooleanValue = ((Boolean) objE).booleanValue();
        ivVar2.a.a(zBooleanValue);
        vz0 vz0VarB2 = ivVar3.a.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB2, "build(...)");
        return (hv) vz0VarB2;
        ivVar.a.e(((Number) obj).intValue());
        ivVar2.a.a(i);
        ivVar2.a.b(list2.size());
        if (h6Var != null) {
            j53 j53Var = h6Var.k;
            Intrinsics.checkNotNullParameter(j53Var, "<this>");
            switch (j53Var.ordinal()) {
                case 0:
                    value = t11.FORMAT_UNKNOWN;
                    break;
                case 1:
                    value = t11.FORMAT_APP_OPEN;
                    break;
                case 2:
                    value = t11.FORMAT_BANNER;
                    break;
                case 3:
                    value = t11.FORMAT_ICON;
                    break;
                case 4:
                    value = t11.FORMAT_INTERSTITIAL;
                    break;
                case 5:
                    value = t11.FORMAT_NATIVE;
                    break;
                case 6:
                    value = t11.FORMAT_REWARDED;
                    break;
                case 7:
                    value = t11.FORMAT_REWARDED_INTERSTITIAL;
                    break;
                case 8:
                    value = t11.FORMAT_SWIPEABLE_INTERSTITIAL;
                    break;
                default:
                    throw new p005kotlin.NoWhenBranchMatchedException();
            }
            Intrinsics.checkNotNullParameter(value, "value");
            ivVar2.a.a(value);
            String value2 = h6Var.b;
            Intrinsics.checkNotNullParameter(value2, "value");
            ivVar2.a.a(value2);
            ivVar2.a.c(h6Var.p);
            if (num2 != null) {
                int iIntValue2 = num2.intValue();
                bool3 = bool2;
                iIntValue = iIntValue2;
                ivVar6 = ivVar2;
                ivVar6.a.d(iIntValue);
                if (bool3 == null) {
                    zBooleanValue = bool3.booleanValue();
                } else {
                    dr2Var.a = ivVar3;
                    dr2Var.b = ivVar2;
                    dr2Var.c = null;
                    dr2Var.d = null;
                    dr2Var.e = null;
                    dr2Var.f = null;
                    dr2Var.g = null;
                    dr2Var.k = 3;
                    h6Var.getClass();
                    objE = h6.e(h6Var, dr2Var);
                    if (objE != coroutine_suspended) {
                        ivVar7 = ivVar2;
                        ivVar8 = ivVar3;
                        ivVar3 = ivVar8;
                        ivVar2 = ivVar7;
                        zBooleanValue = ((Boolean) objE).booleanValue();
                    }
                }
                ivVar2.a.a(zBooleanValue);
            } else {
                dr2Var.a = bool2;
                dr2Var.b = ivVar3;
                dr2Var.c = ivVar2;
                dr2Var.d = h6Var;
                dr2Var.e = ivVar2;
                dr2Var.f = null;
                dr2Var.g = null;
                dr2Var.k = 2;
                Object objF = h6.f(h6Var, dr2Var);
                if (objF != coroutine_suspended) {
                    bool3 = bool2;
                    objE = objF;
                    ivVar4 = ivVar2;
                    h6Var2 = h6Var;
                    ivVar5 = ivVar4;
                    iIntValue = ((Number) objE).intValue();
                    iv ivVar11 = ivVar4;
                    ivVar6 = ivVar5;
                    h6Var = h6Var2;
                    ivVar2 = ivVar11;
                    ivVar6.a.d(iIntValue);
                    if (bool3 == null) {
                        zBooleanValue = bool3.booleanValue();
                    } else {
                        dr2Var.a = ivVar3;
                        dr2Var.b = ivVar2;
                        dr2Var.c = null;
                        dr2Var.d = null;
                        dr2Var.e = null;
                        dr2Var.f = null;
                        dr2Var.g = null;
                        dr2Var.k = 3;
                        h6Var.getClass();
                        objE = h6.e(h6Var, dr2Var);
                        if (objE != coroutine_suspended) {
                            ivVar7 = ivVar2;
                            ivVar8 = ivVar3;
                            ivVar3 = ivVar8;
                            ivVar2 = ivVar7;
                            zBooleanValue = ((Boolean) objE).booleanValue();
                        }
                    }
                    ivVar2.a.a(zBooleanValue);
                }
            }
            return coroutine_suspended;
        }
        vz0 vz0VarB3 = ivVar3.a.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB3, "build(...)");
        return (hv) vz0VarB3;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x021b  */
    /* JADX WARN: Code duplicated, block: B:105:0x022b A[Catch: all -> 0x004b, TRY_LEAVE, TryCatch #4 {all -> 0x004b, blocks: (B:14:0x0046, B:103:0x0221, B:105:0x022b), top: B:156:0x0046 }] */
    /* JADX WARN: Code duplicated, block: B:120:0x0260 A[Catch: all -> 0x028f, TryCatch #6 {all -> 0x028f, blocks: (B:118:0x0259, B:120:0x0260, B:122:0x0264, B:124:0x0268, B:125:0x026b, B:127:0x026f, B:129:0x0273, B:131:0x0277, B:132:0x0278, B:133:0x027d, B:134:0x027e, B:135:0x0285, B:136:0x0286, B:137:0x028d, B:138:0x028e), top: B:160:0x0259, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:122:0x0264 A[Catch: all -> 0x028f, TryCatch #6 {all -> 0x028f, blocks: (B:118:0x0259, B:120:0x0260, B:122:0x0264, B:124:0x0268, B:125:0x026b, B:127:0x026f, B:129:0x0273, B:131:0x0277, B:132:0x0278, B:133:0x027d, B:134:0x027e, B:135:0x0285, B:136:0x0286, B:137:0x028d, B:138:0x028e), top: B:160:0x0259, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:127:0x026f A[Catch: all -> 0x028f, TryCatch #6 {all -> 0x028f, blocks: (B:118:0x0259, B:120:0x0260, B:122:0x0264, B:124:0x0268, B:125:0x026b, B:127:0x026f, B:129:0x0273, B:131:0x0277, B:132:0x0278, B:133:0x027d, B:134:0x027e, B:135:0x0285, B:136:0x0286, B:137:0x028d, B:138:0x028e), top: B:160:0x0259, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:129:0x0273 A[Catch: all -> 0x028f, TryCatch #6 {all -> 0x028f, blocks: (B:118:0x0259, B:120:0x0260, B:122:0x0264, B:124:0x0268, B:125:0x026b, B:127:0x026f, B:129:0x0273, B:131:0x0277, B:132:0x0278, B:133:0x027d, B:134:0x027e, B:135:0x0285, B:136:0x0286, B:137:0x028d, B:138:0x028e), top: B:160:0x0259, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:131:0x0277 A[Catch: all -> 0x028f, TryCatch #6 {all -> 0x028f, blocks: (B:118:0x0259, B:120:0x0260, B:122:0x0264, B:124:0x0268, B:125:0x026b, B:127:0x026f, B:129:0x0273, B:131:0x0277, B:132:0x0278, B:133:0x027d, B:134:0x027e, B:135:0x0285, B:136:0x0286, B:137:0x028d, B:138:0x028e), top: B:160:0x0259, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:132:0x0278 A[Catch: all -> 0x028f, TryCatch #6 {all -> 0x028f, blocks: (B:118:0x0259, B:120:0x0260, B:122:0x0264, B:124:0x0268, B:125:0x026b, B:127:0x026f, B:129:0x0273, B:131:0x0277, B:132:0x0278, B:133:0x027d, B:134:0x027e, B:135:0x0285, B:136:0x0286, B:137:0x028d, B:138:0x028e), top: B:160:0x0259, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:134:0x027e A[Catch: all -> 0x028f, TryCatch #6 {all -> 0x028f, blocks: (B:118:0x0259, B:120:0x0260, B:122:0x0264, B:124:0x0268, B:125:0x026b, B:127:0x026f, B:129:0x0273, B:131:0x0277, B:132:0x0278, B:133:0x027d, B:134:0x027e, B:135:0x0285, B:136:0x0286, B:137:0x028d, B:138:0x028e), top: B:160:0x0259, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:136:0x0286 A[Catch: all -> 0x028f, TryCatch #6 {all -> 0x028f, blocks: (B:118:0x0259, B:120:0x0260, B:122:0x0264, B:124:0x0268, B:125:0x026b, B:127:0x026f, B:129:0x0273, B:131:0x0277, B:132:0x0278, B:133:0x027d, B:134:0x027e, B:135:0x0285, B:136:0x0286, B:137:0x028d, B:138:0x028e), top: B:160:0x0259, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:138:0x028e A[Catch: all -> 0x028f, TRY_LEAVE, TryCatch #6 {all -> 0x028f, blocks: (B:118:0x0259, B:120:0x0260, B:122:0x0264, B:124:0x0268, B:125:0x026b, B:127:0x026f, B:129:0x0273, B:131:0x0277, B:132:0x0278, B:133:0x027d, B:134:0x027e, B:135:0x0285, B:136:0x0286, B:137:0x028d, B:138:0x028e), top: B:160:0x0259, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x00dc A[Catch: all -> 0x0297, TRY_LEAVE, TryCatch #10 {all -> 0x0297, blocks: (B:108:0x0235, B:38:0x00d8, B:40:0x00dc, B:43:0x00e2, B:45:0x010f, B:94:0x01c7), top: B:167:0x00d8 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00e2 A[Catch: all -> 0x0297, TRY_ENTER, TryCatch #10 {all -> 0x0297, blocks: (B:108:0x0235, B:38:0x00d8, B:40:0x00dc, B:43:0x00e2, B:45:0x010f, B:94:0x01c7), top: B:167:0x00d8 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x010f A[Catch: all -> 0x0297, TRY_LEAVE, TryCatch #10 {all -> 0x0297, blocks: (B:108:0x0235, B:38:0x00d8, B:40:0x00dc, B:43:0x00e2, B:45:0x010f, B:94:0x01c7), top: B:167:0x00d8 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x0134  */
    /* JADX WARN: Code duplicated, block: B:53:0x015f  */
    /* JADX WARN: Code duplicated, block: B:56:0x016f A[Catch: all -> 0x0085, TRY_LEAVE, TryCatch #2 {all -> 0x0085, blocks: (B:24:0x0080, B:54:0x0165, B:56:0x016f), top: B:152:0x0080 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x018c A[Catch: all -> 0x01bb, TryCatch #12 {all -> 0x01bb, blocks: (B:65:0x0185, B:67:0x018c, B:69:0x0190, B:71:0x0194, B:72:0x0197, B:74:0x019b, B:76:0x019f, B:78:0x01a3, B:79:0x01a4, B:80:0x01a9, B:81:0x01aa, B:82:0x01b1, B:83:0x01b2, B:84:0x01b9, B:85:0x01ba), top: B:169:0x0185, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x0190 A[Catch: all -> 0x01bb, TryCatch #12 {all -> 0x01bb, blocks: (B:65:0x0185, B:67:0x018c, B:69:0x0190, B:71:0x0194, B:72:0x0197, B:74:0x019b, B:76:0x019f, B:78:0x01a3, B:79:0x01a4, B:80:0x01a9, B:81:0x01aa, B:82:0x01b1, B:83:0x01b2, B:84:0x01b9, B:85:0x01ba), top: B:169:0x0185, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x019b A[Catch: all -> 0x01bb, TryCatch #12 {all -> 0x01bb, blocks: (B:65:0x0185, B:67:0x018c, B:69:0x0190, B:71:0x0194, B:72:0x0197, B:74:0x019b, B:76:0x019f, B:78:0x01a3, B:79:0x01a4, B:80:0x01a9, B:81:0x01aa, B:82:0x01b1, B:83:0x01b2, B:84:0x01b9, B:85:0x01ba), top: B:169:0x0185, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x019f A[Catch: all -> 0x01bb, TryCatch #12 {all -> 0x01bb, blocks: (B:65:0x0185, B:67:0x018c, B:69:0x0190, B:71:0x0194, B:72:0x0197, B:74:0x019b, B:76:0x019f, B:78:0x01a3, B:79:0x01a4, B:80:0x01a9, B:81:0x01aa, B:82:0x01b1, B:83:0x01b2, B:84:0x01b9, B:85:0x01ba), top: B:169:0x0185, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x01a3 A[Catch: all -> 0x01bb, TryCatch #12 {all -> 0x01bb, blocks: (B:65:0x0185, B:67:0x018c, B:69:0x0190, B:71:0x0194, B:72:0x0197, B:74:0x019b, B:76:0x019f, B:78:0x01a3, B:79:0x01a4, B:80:0x01a9, B:81:0x01aa, B:82:0x01b1, B:83:0x01b2, B:84:0x01b9, B:85:0x01ba), top: B:169:0x0185, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x01a4 A[Catch: all -> 0x01bb, TryCatch #12 {all -> 0x01bb, blocks: (B:65:0x0185, B:67:0x018c, B:69:0x0190, B:71:0x0194, B:72:0x0197, B:74:0x019b, B:76:0x019f, B:78:0x01a3, B:79:0x01a4, B:80:0x01a9, B:81:0x01aa, B:82:0x01b1, B:83:0x01b2, B:84:0x01b9, B:85:0x01ba), top: B:169:0x0185, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:81:0x01aa A[Catch: all -> 0x01bb, TryCatch #12 {all -> 0x01bb, blocks: (B:65:0x0185, B:67:0x018c, B:69:0x0190, B:71:0x0194, B:72:0x0197, B:74:0x019b, B:76:0x019f, B:78:0x01a3, B:79:0x01a4, B:80:0x01a9, B:81:0x01aa, B:82:0x01b1, B:83:0x01b2, B:84:0x01b9, B:85:0x01ba), top: B:169:0x0185, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x01b2 A[Catch: all -> 0x01bb, TryCatch #12 {all -> 0x01bb, blocks: (B:65:0x0185, B:67:0x018c, B:69:0x0190, B:71:0x0194, B:72:0x0197, B:74:0x019b, B:76:0x019f, B:78:0x01a3, B:79:0x01a4, B:80:0x01a9, B:81:0x01aa, B:82:0x01b1, B:83:0x01b2, B:84:0x01b9, B:85:0x01ba), top: B:169:0x0185, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:85:0x01ba A[Catch: all -> 0x01bb, TRY_LEAVE, TryCatch #12 {all -> 0x01bb, blocks: (B:65:0x0185, B:67:0x018c, B:69:0x0190, B:71:0x0194, B:72:0x0197, B:74:0x019b, B:76:0x019f, B:78:0x01a3, B:79:0x01a4, B:80:0x01a9, B:81:0x01aa, B:82:0x01b1, B:83:0x01b2, B:84:0x01b9, B:85:0x01ba), top: B:169:0x0185, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:94:0x01c7 A[Catch: all -> 0x0297, TRY_ENTER, TRY_LEAVE, TryCatch #10 {all -> 0x0297, blocks: (B:108:0x0235, B:38:0x00d8, B:40:0x00dc, B:43:0x00e2, B:45:0x010f, B:94:0x01c7), top: B:167:0x00d8 }] */
    /* JADX WARN: Code duplicated, block: B:98:0x01f1  */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x024b, code lost:
    
        if (r7.x(r9) == r2) goto L111;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v18, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r5v19 */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v22, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r5v24 */
    /* JADX WARN: Type inference failed for: r5v25 */
    /* JADX WARN: Type inference failed for: r5v27 */
    /* JADX WARN: Type inference failed for: r5v29, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r5v30 */
    /* JADX WARN: Type inference failed for: r5v32 */
    /* JADX WARN: Type inference failed for: r5v34, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r5v36 */
    /* JADX WARN: Type inference failed for: r5v37 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlin.s11 r18, p005kotlin.coroutines.Continuation r19) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 688
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.pt2.a(ads_mobile_sdk.s11, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:39:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:42:0x00de A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    public final Object a(String str, LinkedHashMap linkedHashMap, Function3 function3, Continuation continuation) throws Throwable {
        ys2 ys2Var;
        Mutex mutex;
        pt2 pt2Var;
        Map map;
        Throwable th;
        String str2;
        Mutex mutex2;
        h6 h6Var;
        Object objY;
        Map map2;
        if (continuation instanceof ys2) {
            ys2Var = (ys2) continuation;
            int i = ys2Var.h;
            if ((i & Integer.MIN_VALUE) != 0) {
                ys2Var.h = i - Integer.MIN_VALUE;
            } else {
                ys2Var = new ys2(this, continuation);
            }
        } else {
            ys2Var = new ys2(this, continuation);
        }
        Object obj = ys2Var.f;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ys2Var.h;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                mutex = this.q;
                ys2Var.a = this;
                ys2Var.b = str;
                ys2Var.c = linkedHashMap;
                ys2Var.d = function3;
                ys2Var.e = mutex;
                ys2Var.h = 1;
                if (mutex.lock(null, ys2Var) != coroutine_suspended) {
                    pt2Var = this;
                    map = linkedHashMap;
                }
                return coroutine_suspended;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    return obj;
                }
                mutex2 = (Mutex) ys2Var.c;
                Map map3 = (Map) ys2Var.b;
                str2 = (String) ys2Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    map2 = map3;
                    h6Var = (h6) obj;
                    map2.put(str2, h6Var);
                    mutex2.unlock(null);
                    if (h6Var == null) {
                        return Boxing.boxBoolean(false);
                    }
                    ys2Var.a = null;
                    ys2Var.b = null;
                    ys2Var.c = null;
                    ys2Var.d = null;
                    ys2Var.e = null;
                    ys2Var.h = 3;
                    objY = h6Var.y(ys2Var);
                    if (objY == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return objY;
                } catch (Throwable th2) {
                    th = th2;
                    mutex = mutex2;
                    mutex.unlock(null);
                    throw th;
                }
            }
            Mutex mutex3 = ys2Var.e;
            function3 = ys2Var.d;
            Map map4 = (Map) ys2Var.c;
            String str3 = (String) ys2Var.b;
            pt2Var = (pt2) ys2Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex3;
            str = str3;
            map = map4;
            if (map.containsKey(str)) {
                Splitter splitter = f01.a;
                f01.c("There is already a PreloadConfiguration for preload ID " + str, null);
                mutex2 = mutex;
                h6Var = null;
                mutex2.unlock(null);
                if (h6Var == null) {
                    return Boxing.boxBoolean(false);
                }
                ys2Var.a = null;
                ys2Var.b = null;
                ys2Var.c = null;
                ys2Var.d = null;
                ys2Var.e = null;
                ys2Var.h = 3;
                objY = h6Var.y(ys2Var);
                if (objY == coroutine_suspended) {
                    return objY;
                }
            } else {
                Boolean boolBoxBoolean = Boxing.boxBoolean(pt2Var.x);
                Boolean boolBoxBoolean2 = Boxing.boxBoolean(pt2Var.v);
                ys2Var.a = str;
                ys2Var.b = map;
                ys2Var.c = mutex;
                ys2Var.d = null;
                ys2Var.e = null;
                ys2Var.h = 2;
                Object objInvoke = function3.invoke(boolBoxBoolean, boolBoxBoolean2, ys2Var);
                if (objInvoke != coroutine_suspended) {
                    str2 = str;
                    mutex2 = mutex;
                    obj = objInvoke;
                    map2 = map;
                    h6Var = (h6) obj;
                    map2.put(str2, h6Var);
                    mutex2.unlock(null);
                    if (h6Var == null) {
                        return Boxing.boxBoolean(false);
                    }
                    ys2Var.a = null;
                    ys2Var.b = null;
                    ys2Var.c = null;
                    ys2Var.d = null;
                    ys2Var.e = null;
                    ys2Var.h = 3;
                    objY = h6Var.y(ys2Var);
                    if (objY == coroutine_suspended) {
                        return objY;
                    }
                }
            }
            return coroutine_suspended;
        } catch (Throwable th3) {
            th = th3;
            mutex.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0081, code lost:
    
        if (((java.lang.Boolean) r8).booleanValue() != false) goto L33;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0078 -> B:29:0x007b). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(java.util.List r6, kotlin.h6 r7, p005kotlin.coroutines.Continuation r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof kotlin.br2
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.br2 r0 = (kotlin.br2) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.br2 r0 = new ads_mobile_sdk.br2
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.b
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            java.util.Iterator r6 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r8)
            goto L7b
        L2b:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L33:
            p005kotlin.ResultKt.throwOnFailure(r8)
            java.util.ArrayList r8 = new java.util.ArrayList
            r8.<init>()
            java.util.Iterator r6 = r6.iterator()
        L3f:
            boolean r2 = r6.hasNext()
            if (r2 == 0) goto L56
            java.lang.Object r2 = r6.next()
            r4 = r2
            ads_mobile_sdk.h6 r4 = (kotlin.h6) r4
            boolean r4 = p005kotlin.jvm.internal.Intrinsics.areEqual(r4, r7)
            if (r4 != 0) goto L3f
            r8.add(r2)
            goto L3f
        L56:
            boolean r6 = r8.isEmpty()
            if (r6 == 0) goto L5d
            goto L84
        L5d:
            java.util.Iterator r6 = r8.iterator()
        L61:
            boolean r7 = r6.hasNext()
            if (r7 == 0) goto L84
            java.lang.Object r7 = r6.next()
            ads_mobile_sdk.h6 r7 = (kotlin.h6) r7
            r0.a = r6
            r0.d = r3
            r7.getClass()
            java.lang.Object r8 = kotlin.h6.d(r7, r0)
            if (r8 != r1) goto L7b
            return r1
        L7b:
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r7 = r8.booleanValue()
            if (r7 == 0) goto L61
            goto L85
        L84:
            r3 = 0
        L85:
            java.lang.Boolean r6 = p005kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.pt2.a(java.util.List, ads_mobile_sdk.h6, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0045  */
    /* JADX WARN: Code duplicated, block: B:19:0x0057 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0055 -> B:20:0x0058). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object a(java.util.List r5, p005kotlin.coroutines.Continuation r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof kotlin.hr2
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.hr2 r0 = (kotlin.hr2) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.hr2 r0 = new ads_mobile_sdk.hr2
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.c
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            int r5 = r0.b
            java.util.Iterator r2 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r6)
            goto L58
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            p005kotlin.ResultKt.throwOnFailure(r6)
            java.util.Iterator r5 = r5.iterator()
            r6 = 0
            r2 = r5
            r5 = r6
        L3f:
            boolean r6 = r2.hasNext()
            if (r6 == 0) goto L60
            java.lang.Object r6 = r2.next()
            ads_mobile_sdk.h6 r6 = (kotlin.h6) r6
            r0.a = r2
            r0.b = r5
            r0.e = r3
            java.lang.Object r6 = r6.b(r0)
            if (r6 != r1) goto L58
            return r1
        L58:
            java.lang.Number r6 = (java.lang.Number) r6
            int r6 = r6.intValue()
            int r5 = r5 + r6
            goto L3f
        L60:
            java.lang.Integer r5 = p005kotlin.coroutines.jvm.internal.Boxing.boxInt(r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.pt2.a(java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final ArrayList a(Function1 function1) {
        Collection collectionValues;
        ArrayList arrayList = new ArrayList();
        for (j53 j53Var : j53.n) {
            if (function1 == null || !((Boolean) function1.invoke(j53Var)).booleanValue()) {
                LinkedHashMap linkedHashMapA = a(j53Var);
                if (linkedHashMapA != null && (collectionValues = linkedHashMapA.values()) != null) {
                    arrayList.addAll(collectionValues);
                }
            }
        }
        return arrayList;
    }

    public final LinkedHashMap a(j53 j53Var) {
        switch (j53Var.ordinal()) {
            case 1:
                return this.z;
            case 2:
                return this.A;
            case 3:
            default:
                return null;
            case 4:
                return this.B;
            case 5:
                return this.C;
            case 6:
                return this.D;
            case 7:
                return this.E;
            case 8:
                return this.G;
        }
    }

    @Override // kotlin.ox0
    public final Object b(long j, Continuation continuation) {
        return b(this, j, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0078  */
    /* JADX WARN: Code duplicated, block: B:27:0x0092  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0092 -> B:28:0x0097). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object b(java.util.List r13, kotlin.h6 r14, p005kotlin.coroutines.Continuation r15) {
        /*
            Method dump skipped, instruction units count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.pt2.b(java.util.List, ads_mobile_sdk.h6, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:104:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:108:0x020f  */
    /* JADX WARN: Code duplicated, block: B:112:0x0237  */
    /* JADX WARN: Code duplicated, block: B:116:0x0254  */
    /* JADX WARN: Code duplicated, block: B:119:0x025c A[Catch: all -> 0x0045, TRY_LEAVE, TryCatch #2 {all -> 0x0045, blocks: (B:13:0x0040, B:117:0x0256, B:119:0x025c), top: B:160:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:131:0x0278 A[Catch: all -> 0x02a7, TryCatch #4 {all -> 0x02a7, blocks: (B:129:0x0271, B:131:0x0278, B:133:0x027c, B:135:0x0280, B:136:0x0283, B:138:0x0287, B:140:0x028b, B:142:0x028f, B:143:0x0290, B:144:0x0295, B:145:0x0296, B:146:0x029d, B:147:0x029e, B:148:0x02a5, B:149:0x02a6), top: B:164:0x0271 }] */
    /* JADX WARN: Code duplicated, block: B:133:0x027c A[Catch: all -> 0x02a7, TryCatch #4 {all -> 0x02a7, blocks: (B:129:0x0271, B:131:0x0278, B:133:0x027c, B:135:0x0280, B:136:0x0283, B:138:0x0287, B:140:0x028b, B:142:0x028f, B:143:0x0290, B:144:0x0295, B:145:0x0296, B:146:0x029d, B:147:0x029e, B:148:0x02a5, B:149:0x02a6), top: B:164:0x0271 }] */
    /* JADX WARN: Code duplicated, block: B:138:0x0287 A[Catch: all -> 0x02a7, TryCatch #4 {all -> 0x02a7, blocks: (B:129:0x0271, B:131:0x0278, B:133:0x027c, B:135:0x0280, B:136:0x0283, B:138:0x0287, B:140:0x028b, B:142:0x028f, B:143:0x0290, B:144:0x0295, B:145:0x0296, B:146:0x029d, B:147:0x029e, B:148:0x02a5, B:149:0x02a6), top: B:164:0x0271 }] */
    /* JADX WARN: Code duplicated, block: B:140:0x028b A[Catch: all -> 0x02a7, TryCatch #4 {all -> 0x02a7, blocks: (B:129:0x0271, B:131:0x0278, B:133:0x027c, B:135:0x0280, B:136:0x0283, B:138:0x0287, B:140:0x028b, B:142:0x028f, B:143:0x0290, B:144:0x0295, B:145:0x0296, B:146:0x029d, B:147:0x029e, B:148:0x02a5, B:149:0x02a6), top: B:164:0x0271 }] */
    /* JADX WARN: Code duplicated, block: B:142:0x028f A[Catch: all -> 0x02a7, TryCatch #4 {all -> 0x02a7, blocks: (B:129:0x0271, B:131:0x0278, B:133:0x027c, B:135:0x0280, B:136:0x0283, B:138:0x0287, B:140:0x028b, B:142:0x028f, B:143:0x0290, B:144:0x0295, B:145:0x0296, B:146:0x029d, B:147:0x029e, B:148:0x02a5, B:149:0x02a6), top: B:164:0x0271 }] */
    /* JADX WARN: Code duplicated, block: B:143:0x0290 A[Catch: all -> 0x02a7, TryCatch #4 {all -> 0x02a7, blocks: (B:129:0x0271, B:131:0x0278, B:133:0x027c, B:135:0x0280, B:136:0x0283, B:138:0x0287, B:140:0x028b, B:142:0x028f, B:143:0x0290, B:144:0x0295, B:145:0x0296, B:146:0x029d, B:147:0x029e, B:148:0x02a5, B:149:0x02a6), top: B:164:0x0271 }] */
    /* JADX WARN: Code duplicated, block: B:145:0x0296 A[Catch: all -> 0x02a7, TryCatch #4 {all -> 0x02a7, blocks: (B:129:0x0271, B:131:0x0278, B:133:0x027c, B:135:0x0280, B:136:0x0283, B:138:0x0287, B:140:0x028b, B:142:0x028f, B:143:0x0290, B:144:0x0295, B:145:0x0296, B:146:0x029d, B:147:0x029e, B:148:0x02a5, B:149:0x02a6), top: B:164:0x0271 }] */
    /* JADX WARN: Code duplicated, block: B:147:0x029e A[Catch: all -> 0x02a7, TryCatch #4 {all -> 0x02a7, blocks: (B:129:0x0271, B:131:0x0278, B:133:0x027c, B:135:0x0280, B:136:0x0283, B:138:0x0287, B:140:0x028b, B:142:0x028f, B:143:0x0290, B:144:0x0295, B:145:0x0296, B:146:0x029d, B:147:0x029e, B:148:0x02a5, B:149:0x02a6), top: B:164:0x0271 }] */
    /* JADX WARN: Code duplicated, block: B:149:0x02a6 A[Catch: all -> 0x02a7, TRY_LEAVE, TryCatch #4 {all -> 0x02a7, blocks: (B:129:0x0271, B:131:0x0278, B:133:0x027c, B:135:0x0280, B:136:0x0283, B:138:0x0287, B:140:0x028b, B:142:0x028f, B:143:0x0290, B:144:0x0295, B:145:0x0296, B:146:0x029d, B:147:0x029e, B:148:0x02a5, B:149:0x02a6), top: B:164:0x0271 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00f5 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:50:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:52:0x011f  */
    /* JADX WARN: Code duplicated, block: B:56:0x0144  */
    /* JADX WARN: Code duplicated, block: B:60:0x016d  */
    /* JADX WARN: Code duplicated, block: B:64:0x018b  */
    /* JADX WARN: Code duplicated, block: B:67:0x0193 A[Catch: all -> 0x0094, TRY_LEAVE, TryCatch #11 {all -> 0x0094, blocks: (B:28:0x008f, B:65:0x018d, B:67:0x0193), top: B:177:0x008f }] */
    /* JADX WARN: Code duplicated, block: B:79:0x01af A[Catch: all -> 0x01de, TryCatch #13 {all -> 0x01de, blocks: (B:77:0x01a8, B:79:0x01af, B:81:0x01b3, B:83:0x01b7, B:84:0x01ba, B:86:0x01be, B:88:0x01c2, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:94:0x01d4, B:95:0x01d5, B:96:0x01dc, B:97:0x01dd), top: B:181:0x01a8 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Code duplicated, block: B:81:0x01b3 A[Catch: all -> 0x01de, TryCatch #13 {all -> 0x01de, blocks: (B:77:0x01a8, B:79:0x01af, B:81:0x01b3, B:83:0x01b7, B:84:0x01ba, B:86:0x01be, B:88:0x01c2, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:94:0x01d4, B:95:0x01d5, B:96:0x01dc, B:97:0x01dd), top: B:181:0x01a8 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x01be A[Catch: all -> 0x01de, TryCatch #13 {all -> 0x01de, blocks: (B:77:0x01a8, B:79:0x01af, B:81:0x01b3, B:83:0x01b7, B:84:0x01ba, B:86:0x01be, B:88:0x01c2, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:94:0x01d4, B:95:0x01d5, B:96:0x01dc, B:97:0x01dd), top: B:181:0x01a8 }] */
    /* JADX WARN: Code duplicated, block: B:88:0x01c2 A[Catch: all -> 0x01de, TryCatch #13 {all -> 0x01de, blocks: (B:77:0x01a8, B:79:0x01af, B:81:0x01b3, B:83:0x01b7, B:84:0x01ba, B:86:0x01be, B:88:0x01c2, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:94:0x01d4, B:95:0x01d5, B:96:0x01dc, B:97:0x01dd), top: B:181:0x01a8 }] */
    /* JADX WARN: Code duplicated, block: B:90:0x01c6 A[Catch: all -> 0x01de, TryCatch #13 {all -> 0x01de, blocks: (B:77:0x01a8, B:79:0x01af, B:81:0x01b3, B:83:0x01b7, B:84:0x01ba, B:86:0x01be, B:88:0x01c2, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:94:0x01d4, B:95:0x01d5, B:96:0x01dc, B:97:0x01dd), top: B:181:0x01a8 }] */
    /* JADX WARN: Code duplicated, block: B:91:0x01c7 A[Catch: all -> 0x01de, TryCatch #13 {all -> 0x01de, blocks: (B:77:0x01a8, B:79:0x01af, B:81:0x01b3, B:83:0x01b7, B:84:0x01ba, B:86:0x01be, B:88:0x01c2, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:94:0x01d4, B:95:0x01d5, B:96:0x01dc, B:97:0x01dd), top: B:181:0x01a8 }] */
    /* JADX WARN: Code duplicated, block: B:93:0x01cd A[Catch: all -> 0x01de, TryCatch #13 {all -> 0x01de, blocks: (B:77:0x01a8, B:79:0x01af, B:81:0x01b3, B:83:0x01b7, B:84:0x01ba, B:86:0x01be, B:88:0x01c2, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:94:0x01d4, B:95:0x01d5, B:96:0x01dc, B:97:0x01dd), top: B:181:0x01a8 }] */
    /* JADX WARN: Code duplicated, block: B:95:0x01d5 A[Catch: all -> 0x01de, TryCatch #13 {all -> 0x01de, blocks: (B:77:0x01a8, B:79:0x01af, B:81:0x01b3, B:83:0x01b7, B:84:0x01ba, B:86:0x01be, B:88:0x01c2, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:94:0x01d4, B:95:0x01d5, B:96:0x01dc, B:97:0x01dd), top: B:181:0x01a8 }] */
    /* JADX WARN: Code duplicated, block: B:97:0x01dd A[Catch: all -> 0x01de, TRY_LEAVE, TryCatch #13 {all -> 0x01de, blocks: (B:77:0x01a8, B:79:0x01af, B:81:0x01b3, B:83:0x01b7, B:84:0x01ba, B:86:0x01be, B:88:0x01c2, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:94:0x01d4, B:95:0x01d5, B:96:0x01dc, B:97:0x01dd), top: B:181:0x01a8 }] */
    public final Object b(List list, Continuation continuation) {
        ds2 ds2Var;
        pt2 pt2Var;
        h6 h6Var;
        g83 g83Var;
        s11 s11Var;
        List listEmptyList;
        ks3 ks3Var;
        rr3 rr3VarA;
        Closeable closeable;
        uj2 uj2VarE;
        Object objA;
        List list2;
        uj2 uj2Var;
        h6 h6Var2;
        rr3 rr3Var;
        h6 h6Var3;
        rr3 rr3VarA2;
        Closeable closeable2;
        uj2 uj2VarE2;
        Object objA2;
        List list3;
        uj2 uj2Var2;
        h6 h6Var4;
        rr3 rr3Var2;
        h6 h6Var5;
        Closeable closeable3;
        Object objA3;
        Object obj;
        uj2 uj2Var3;
        h6 h6Var6;
        Closeable closeable4;
        rr3 rr3Var3;
        Closeable closeable5;
        Object obj2;
        Closeable closeable6;
        Object objA4;
        Object obj3;
        uj2 uj2Var4;
        h6 h6Var7;
        Closeable closeable7;
        rr3 rr3Var4;
        Closeable closeable8;
        Object obj4;
        List list4 = list;
        if (continuation instanceof ds2) {
            ds2Var = (ds2) continuation;
            int i = ds2Var.j;
            if ((i & Integer.MIN_VALUE) != 0) {
                ds2Var.j = i - Integer.MIN_VALUE;
            } else {
                ds2Var = new ds2(this, continuation);
            }
        } else {
            ds2Var = new ds2(this, continuation);
        }
        ds2 ds2Var2 = ds2Var;
        Object objC = ds2Var2.h;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (ds2Var2.j) {
            case 0:
                p005kotlin.ResultKt.throwOnFailure(objC);
                ds2Var2.a = this;
                ds2Var2.b = list4;
                ds2Var2.j = 1;
                objC = c(list4, ds2Var2);
                if (objC != coroutine_suspended) {
                    pt2Var = this;
                    h6Var = (h6) objC;
                    if (h6Var == null) {
                        return null;
                    }
                    g83Var = pt2Var.e;
                    s11Var = s11.CUI_NAME_CENTRALIZED_MANAGER_PRELOAD;
                    listEmptyList = CollectionsKt.emptyList();
                    ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
                    if (hs3.b().a == null) {
                        rr3VarA2 = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                        try {
                            uj2VarE2 = hs3.a().e();
                            ds2Var2.a = h6Var;
                            ds2Var2.b = rr3VarA2;
                            ds2Var2.c = rr3VarA2;
                            ds2Var2.d = uj2VarE2;
                            ds2Var2.e = list4;
                            ds2Var2.f = h6Var;
                            ds2Var2.g = pt2Var;
                            ds2Var2.j = 2;
                            objA2 = pt2Var.a(list4, ds2Var2);
                            if (objA2 != coroutine_suspended) {
                                list3 = list4;
                                uj2Var2 = uj2VarE2;
                                h6Var4 = h6Var;
                                rr3 rr3Var5 = rr3VarA2;
                                rr3Var2 = rr3Var5;
                                h6Var5 = h6Var4;
                                objC = objA2;
                                closeable3 = rr3Var5;
                                try {
                                    int iIntValue = ((Number) objC).intValue();
                                    ds2Var2.a = h6Var4;
                                    ds2Var2.b = rr3Var2;
                                    ds2Var2.c = closeable3;
                                    ds2Var2.d = uj2Var2;
                                    ds2Var2.e = null;
                                    ds2Var2.f = null;
                                    ds2Var2.g = null;
                                    ds2Var2.j = 3;
                                    objA3 = pt2Var.a(h6Var5, list3, iIntValue, (Integer) null, (Boolean) null, ds2Var2);
                                    if (objA3 != coroutine_suspended) {
                                        obj = objA3;
                                        rr3VarA2 = rr3Var2;
                                        uj2Var3 = uj2Var2;
                                        h6Var6 = h6Var4;
                                        closeable4 = closeable3;
                                        try {
                                            uj2Var3.L = (hv) obj;
                                            ds2Var2.a = h6Var6;
                                            ds2Var2.b = rr3VarA2;
                                            ds2Var2.c = closeable4;
                                            ds2Var2.d = null;
                                            ds2Var2.j = 4;
                                            h6Var6.getClass();
                                            if (h6.c(h6Var6, ds2Var2) != coroutine_suspended) {
                                                rr3Var3 = rr3VarA2;
                                                closeable5 = closeable4;
                                                obj2 = p005kotlin.Unit.INSTANCE;
                                                if (obj2 instanceof i01) {
                                                    xs3.a((i01) obj2, false);
                                                    break;
                                                }
                                                CloseableKt.closeFinally(closeable5, null);
                                                return h6Var6;
                                            }
                                        } catch (Throwable th) {
                                            th = th;
                                            closeable2 = closeable4;
                                            try {
                                                rr3VarA2.b(th);
                                                if (!(th instanceof v24)) {
                                                    throw th;
                                                }
                                                if (!(th instanceof TimeoutCancellationException)) {
                                                    rr3VarA2.a(th);
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
                                } catch (Throwable th4) {
                                    th = th4;
                                    closeable2 = closeable3;
                                    rr3VarA2 = rr3Var2;
                                    rr3VarA2.b(th);
                                    if (!(th instanceof v24)) {
                                        throw th;
                                    }
                                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                        rr3VarA2.a(th);
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
                        } catch (Throwable th5) {
                            th = th5;
                            closeable2 = rr3VarA2;
                            rr3VarA2.b(th);
                            if (!(th instanceof v24)) {
                                throw th;
                            }
                            if (!(th instanceof TimeoutCancellationException)) {
                                rr3VarA2.a(th);
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
                        rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                        try {
                            uj2VarE = hs3.a().e();
                            ds2Var2.a = h6Var;
                            ds2Var2.b = rr3VarA;
                            ds2Var2.c = rr3VarA;
                            ds2Var2.d = uj2VarE;
                            ds2Var2.e = list4;
                            ds2Var2.f = h6Var;
                            ds2Var2.g = pt2Var;
                            ds2Var2.j = 5;
                            objA = pt2Var.a(list4, ds2Var2);
                            if (objA != coroutine_suspended) {
                                list2 = list4;
                                uj2Var = uj2VarE;
                                h6Var2 = h6Var;
                                rr3 rr3Var6 = rr3VarA;
                                rr3Var = rr3Var6;
                                h6Var3 = h6Var2;
                                objC = objA;
                                closeable6 = rr3Var6;
                                try {
                                    int iIntValue2 = ((Number) objC).intValue();
                                    ds2Var2.a = h6Var2;
                                    ds2Var2.b = rr3Var;
                                    ds2Var2.c = closeable6;
                                    ds2Var2.d = uj2Var;
                                    ds2Var2.e = null;
                                    ds2Var2.f = null;
                                    ds2Var2.g = null;
                                    ds2Var2.j = 6;
                                    objA4 = pt2Var.a(h6Var3, list2, iIntValue2, (Integer) null, (Boolean) null, ds2Var2);
                                    if (objA4 != coroutine_suspended) {
                                        obj3 = objA4;
                                        rr3VarA = rr3Var;
                                        uj2Var4 = uj2Var;
                                        h6Var7 = h6Var2;
                                        closeable7 = closeable6;
                                        try {
                                            uj2Var4.L = (hv) obj3;
                                            ds2Var2.a = h6Var7;
                                            ds2Var2.b = rr3VarA;
                                            ds2Var2.c = closeable7;
                                            ds2Var2.d = null;
                                            ds2Var2.j = 7;
                                            h6Var7.getClass();
                                            if (h6.c(h6Var7, ds2Var2) != coroutine_suspended) {
                                                rr3Var4 = rr3VarA;
                                                closeable8 = closeable7;
                                                obj4 = p005kotlin.Unit.INSTANCE;
                                                if (obj4 instanceof i01) {
                                                    xs3.a((i01) obj4, false);
                                                    break;
                                                }
                                                CloseableKt.closeFinally(closeable8, null);
                                                return h6Var7;
                                            }
                                        } catch (Throwable th6) {
                                            th = th6;
                                            closeable = closeable7;
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
                                            } catch (Throwable th7) {
                                                try {
                                                    throw th7;
                                                } catch (Throwable th8) {
                                                    CloseableKt.closeFinally(closeable, th7);
                                                    throw th8;
                                                }
                                            }
                                        }
                                    }
                                } catch (Throwable th9) {
                                    th = th9;
                                    closeable = closeable6;
                                    rr3VarA = rr3Var;
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
                        } catch (Throwable th10) {
                            th = th10;
                            closeable = rr3VarA;
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
                }
                return coroutine_suspended;
            case 1:
                list4 = (List) ds2Var2.b;
                pt2Var = (pt2) ds2Var2.a;
                p005kotlin.ResultKt.throwOnFailure(objC);
                h6Var = (h6) objC;
                if (h6Var == null) {
                    return null;
                }
                g83Var = pt2Var.e;
                s11Var = s11.CUI_NAME_CENTRALIZED_MANAGER_PRELOAD;
                listEmptyList = CollectionsKt.emptyList();
                ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
                if (hs3.b().a == null) {
                    rr3VarA2 = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                    uj2VarE2 = hs3.a().e();
                    ds2Var2.a = h6Var;
                    ds2Var2.b = rr3VarA2;
                    ds2Var2.c = rr3VarA2;
                    ds2Var2.d = uj2VarE2;
                    ds2Var2.e = list4;
                    ds2Var2.f = h6Var;
                    ds2Var2.g = pt2Var;
                    ds2Var2.j = 2;
                    objA2 = pt2Var.a(list4, ds2Var2);
                    if (objA2 != coroutine_suspended) {
                        list3 = list4;
                        uj2Var2 = uj2VarE2;
                        h6Var4 = h6Var;
                        rr3 rr3Var7 = rr3VarA2;
                        rr3Var2 = rr3Var7;
                        h6Var5 = h6Var4;
                        objC = objA2;
                        closeable3 = rr3Var7;
                        int iIntValue3 = ((Number) objC).intValue();
                        ds2Var2.a = h6Var4;
                        ds2Var2.b = rr3Var2;
                        ds2Var2.c = closeable3;
                        ds2Var2.d = uj2Var2;
                        ds2Var2.e = null;
                        ds2Var2.f = null;
                        ds2Var2.g = null;
                        ds2Var2.j = 3;
                        objA3 = pt2Var.a(h6Var5, list3, iIntValue3, (Integer) null, (Boolean) null, ds2Var2);
                        if (objA3 != coroutine_suspended) {
                            obj = objA3;
                            rr3VarA2 = rr3Var2;
                            uj2Var3 = uj2Var2;
                            h6Var6 = h6Var4;
                            closeable4 = closeable3;
                            uj2Var3.L = (hv) obj;
                            ds2Var2.a = h6Var6;
                            ds2Var2.b = rr3VarA2;
                            ds2Var2.c = closeable4;
                            ds2Var2.d = null;
                            ds2Var2.j = 4;
                            h6Var6.getClass();
                            if (h6.c(h6Var6, ds2Var2) != coroutine_suspended) {
                                rr3Var3 = rr3VarA2;
                                closeable5 = closeable4;
                                obj2 = p005kotlin.Unit.INSTANCE;
                                if (obj2 instanceof i01) {
                                    xs3.a((i01) obj2, false);
                                    break;
                                }
                                CloseableKt.closeFinally(closeable5, null);
                                return h6Var6;
                            }
                        }
                    }
                } else {
                    rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                    uj2VarE = hs3.a().e();
                    ds2Var2.a = h6Var;
                    ds2Var2.b = rr3VarA;
                    ds2Var2.c = rr3VarA;
                    ds2Var2.d = uj2VarE;
                    ds2Var2.e = list4;
                    ds2Var2.f = h6Var;
                    ds2Var2.g = pt2Var;
                    ds2Var2.j = 5;
                    objA = pt2Var.a(list4, ds2Var2);
                    if (objA != coroutine_suspended) {
                        list2 = list4;
                        uj2Var = uj2VarE;
                        h6Var2 = h6Var;
                        rr3 rr3Var8 = rr3VarA;
                        rr3Var = rr3Var8;
                        h6Var3 = h6Var2;
                        objC = objA;
                        closeable6 = rr3Var8;
                        int iIntValue4 = ((Number) objC).intValue();
                        ds2Var2.a = h6Var2;
                        ds2Var2.b = rr3Var;
                        ds2Var2.c = closeable6;
                        ds2Var2.d = uj2Var;
                        ds2Var2.e = null;
                        ds2Var2.f = null;
                        ds2Var2.g = null;
                        ds2Var2.j = 6;
                        objA4 = pt2Var.a(h6Var3, list2, iIntValue4, (Integer) null, (Boolean) null, ds2Var2);
                        if (objA4 != coroutine_suspended) {
                            obj3 = objA4;
                            rr3VarA = rr3Var;
                            uj2Var4 = uj2Var;
                            h6Var7 = h6Var2;
                            closeable7 = closeable6;
                            uj2Var4.L = (hv) obj3;
                            ds2Var2.a = h6Var7;
                            ds2Var2.b = rr3VarA;
                            ds2Var2.c = closeable7;
                            ds2Var2.d = null;
                            ds2Var2.j = 7;
                            h6Var7.getClass();
                            if (h6.c(h6Var7, ds2Var2) != coroutine_suspended) {
                                rr3Var4 = rr3VarA;
                                closeable8 = closeable7;
                                obj4 = p005kotlin.Unit.INSTANCE;
                                if (obj4 instanceof i01) {
                                    xs3.a((i01) obj4, false);
                                    break;
                                }
                                CloseableKt.closeFinally(closeable8, null);
                                return h6Var7;
                            }
                        }
                    }
                }
                return coroutine_suspended;
            case 2:
                pt2 pt2Var2 = ds2Var2.g;
                h6 h6Var8 = ds2Var2.f;
                List list5 = ds2Var2.e;
                uj2 uj2Var5 = ds2Var2.d;
                Closeable closeable9 = ds2Var2.c;
                rr3 rr3Var9 = (rr3) ds2Var2.b;
                h6 h6Var9 = (h6) ds2Var2.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(objC);
                    pt2Var = pt2Var2;
                    uj2Var2 = uj2Var5;
                    list3 = list5;
                    h6Var5 = h6Var8;
                    closeable3 = closeable9;
                    rr3Var2 = rr3Var9;
                    h6Var4 = h6Var9;
                    int iIntValue5 = ((Number) objC).intValue();
                    ds2Var2.a = h6Var4;
                    ds2Var2.b = rr3Var2;
                    ds2Var2.c = closeable3;
                    ds2Var2.d = uj2Var2;
                    ds2Var2.e = null;
                    ds2Var2.f = null;
                    ds2Var2.g = null;
                    ds2Var2.j = 3;
                    objA3 = pt2Var.a(h6Var5, list3, iIntValue5, (Integer) null, (Boolean) null, ds2Var2);
                    if (objA3 != coroutine_suspended) {
                        obj = objA3;
                        rr3VarA2 = rr3Var2;
                        uj2Var3 = uj2Var2;
                        h6Var6 = h6Var4;
                        closeable4 = closeable3;
                        uj2Var3.L = (hv) obj;
                        ds2Var2.a = h6Var6;
                        ds2Var2.b = rr3VarA2;
                        ds2Var2.c = closeable4;
                        ds2Var2.d = null;
                        ds2Var2.j = 4;
                        h6Var6.getClass();
                        if (h6.c(h6Var6, ds2Var2) != coroutine_suspended) {
                            rr3Var3 = rr3VarA2;
                            closeable5 = closeable4;
                            obj2 = p005kotlin.Unit.INSTANCE;
                            if (obj2 instanceof i01) {
                                xs3.a((i01) obj2, false);
                                break;
                            }
                            CloseableKt.closeFinally(closeable5, null);
                            return h6Var6;
                        }
                    }
                    return coroutine_suspended;
                } catch (Throwable th11) {
                    th = th11;
                    closeable2 = closeable9;
                    rr3VarA2 = rr3Var9;
                    rr3VarA2.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        rr3VarA2.a(th);
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
                uj2 uj2Var6 = ds2Var2.d;
                closeable2 = ds2Var2.c;
                rr3VarA2 = (rr3) ds2Var2.b;
                h6 h6Var10 = (h6) ds2Var2.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(objC);
                    closeable4 = closeable2;
                    obj = objC;
                    uj2Var3 = uj2Var6;
                    h6Var6 = h6Var10;
                    rr3VarA2 = rr3VarA2;
                    uj2Var3.L = (hv) obj;
                    ds2Var2.a = h6Var6;
                    ds2Var2.b = rr3VarA2;
                    ds2Var2.c = closeable4;
                    ds2Var2.d = null;
                    ds2Var2.j = 4;
                    h6Var6.getClass();
                    if (h6.c(h6Var6, ds2Var2) != coroutine_suspended) {
                        rr3Var3 = rr3VarA2;
                        closeable5 = closeable4;
                        obj2 = p005kotlin.Unit.INSTANCE;
                        if (obj2 instanceof i01) {
                            xs3.a((i01) obj2, false);
                            break;
                        }
                        CloseableKt.closeFinally(closeable5, null);
                        return h6Var6;
                    }
                    return coroutine_suspended;
                } catch (Throwable th12) {
                    th = th12;
                    rr3VarA2.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        rr3VarA2.a(th);
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
                closeable5 = ds2Var2.c;
                rr3Var3 = (rr3) ds2Var2.b;
                h6Var6 = (h6) ds2Var2.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(objC);
                    closeable5 = closeable5;
                    rr3Var3 = rr3Var3;
                    obj2 = p005kotlin.Unit.INSTANCE;
                    if (obj2 instanceof i01) {
                        xs3.a((i01) obj2, false);
                        break;
                    }
                    CloseableKt.closeFinally(closeable5, null);
                    return h6Var6;
                } catch (Throwable th13) {
                    th = th13;
                    rr3VarA2 = rr3Var3;
                    closeable2 = closeable5;
                    rr3VarA2.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        rr3VarA2.a(th);
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
                pt2 pt2Var3 = ds2Var2.g;
                h6 h6Var11 = ds2Var2.f;
                List list6 = ds2Var2.e;
                uj2 uj2Var7 = ds2Var2.d;
                Closeable closeable10 = ds2Var2.c;
                rr3 rr3Var10 = (rr3) ds2Var2.b;
                h6 h6Var12 = (h6) ds2Var2.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(objC);
                    pt2Var = pt2Var3;
                    uj2Var = uj2Var7;
                    list2 = list6;
                    h6Var3 = h6Var11;
                    closeable6 = closeable10;
                    rr3Var = rr3Var10;
                    h6Var2 = h6Var12;
                    int iIntValue6 = ((Number) objC).intValue();
                    ds2Var2.a = h6Var2;
                    ds2Var2.b = rr3Var;
                    ds2Var2.c = closeable6;
                    ds2Var2.d = uj2Var;
                    ds2Var2.e = null;
                    ds2Var2.f = null;
                    ds2Var2.g = null;
                    ds2Var2.j = 6;
                    objA4 = pt2Var.a(h6Var3, list2, iIntValue6, (Integer) null, (Boolean) null, ds2Var2);
                    if (objA4 != coroutine_suspended) {
                        obj3 = objA4;
                        rr3VarA = rr3Var;
                        uj2Var4 = uj2Var;
                        h6Var7 = h6Var2;
                        closeable7 = closeable6;
                        uj2Var4.L = (hv) obj3;
                        ds2Var2.a = h6Var7;
                        ds2Var2.b = rr3VarA;
                        ds2Var2.c = closeable7;
                        ds2Var2.d = null;
                        ds2Var2.j = 7;
                        h6Var7.getClass();
                        if (h6.c(h6Var7, ds2Var2) != coroutine_suspended) {
                            rr3Var4 = rr3VarA;
                            closeable8 = closeable7;
                            obj4 = p005kotlin.Unit.INSTANCE;
                            if (obj4 instanceof i01) {
                                xs3.a((i01) obj4, false);
                                break;
                            }
                            CloseableKt.closeFinally(closeable8, null);
                            return h6Var7;
                        }
                    }
                    return coroutine_suspended;
                } catch (Throwable th14) {
                    th = th14;
                    closeable = closeable10;
                    rr3VarA = rr3Var10;
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
            case 6:
                uj2 uj2Var8 = ds2Var2.d;
                closeable = ds2Var2.c;
                rr3VarA = (rr3) ds2Var2.b;
                h6 h6Var13 = (h6) ds2Var2.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(objC);
                    closeable7 = closeable;
                    obj3 = objC;
                    uj2Var4 = uj2Var8;
                    h6Var7 = h6Var13;
                    rr3VarA = rr3VarA;
                    uj2Var4.L = (hv) obj3;
                    ds2Var2.a = h6Var7;
                    ds2Var2.b = rr3VarA;
                    ds2Var2.c = closeable7;
                    ds2Var2.d = null;
                    ds2Var2.j = 7;
                    h6Var7.getClass();
                    if (h6.c(h6Var7, ds2Var2) != coroutine_suspended) {
                        rr3Var4 = rr3VarA;
                        closeable8 = closeable7;
                        obj4 = p005kotlin.Unit.INSTANCE;
                        if (obj4 instanceof i01) {
                            xs3.a((i01) obj4, false);
                            break;
                        }
                        CloseableKt.closeFinally(closeable8, null);
                        return h6Var7;
                    }
                    return coroutine_suspended;
                } catch (Throwable th15) {
                    th = th15;
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
            case 7:
                closeable8 = ds2Var2.c;
                rr3Var4 = (rr3) ds2Var2.b;
                h6Var7 = (h6) ds2Var2.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(objC);
                    closeable8 = closeable8;
                    rr3Var4 = rr3Var4;
                    obj4 = p005kotlin.Unit.INSTANCE;
                    if (obj4 instanceof i01) {
                        xs3.a((i01) obj4, false);
                        break;
                    }
                    CloseableKt.closeFinally(closeable8, null);
                    return h6Var7;
                } catch (Throwable th16) {
                    th = th16;
                    rr3VarA = rr3Var4;
                    closeable = closeable8;
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
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @Override // kotlin.n92
    public final Object c(long j, Continuation continuation) {
        return d(this, j, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x006e A[PHI: r9
  0x006e: PHI (r9v8 java.util.Iterator) = (r9v3 java.util.Iterator), (r9v10 java.util.Iterator) binds: [B:25:0x006a, B:43:0x00b4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:28:0x0074  */
    /* JADX WARN: Code duplicated, block: B:31:0x008a  */
    /* JADX WARN: Code duplicated, block: B:34:0x0095  */
    /* JADX WARN: Code duplicated, block: B:37:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:42:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:44:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00a6 -> B:38:0x00a7). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object c(java.util.List r9, kotlin.h6 r10, p005kotlin.coroutines.Continuation r11) {
        /*
            r8 = this;
            boolean r0 = r11 instanceof kotlin.ir2
            if (r0 == 0) goto L13
            r0 = r11
            ads_mobile_sdk.ir2 r0 = (kotlin.ir2) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.ir2 r0 = new ads_mobile_sdk.ir2
            r0.<init>(r8, r11)
        L18:
            java.lang.Object r11 = r0.c
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L40
            if (r2 == r5) goto L38
            if (r2 != r4) goto L30
            java.util.Iterator r9 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r11)
            goto La7
        L30:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L38:
            ads_mobile_sdk.h6 r9 = r0.b
            java.util.Iterator r10 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r11)
            goto L8d
        L40:
            p005kotlin.ResultKt.throwOnFailure(r11)
            java.util.ArrayList r11 = new java.util.ArrayList
            r11.<init>()
            java.util.Iterator r9 = r9.iterator()
        L4c:
            boolean r2 = r9.hasNext()
            if (r2 == 0) goto L63
            java.lang.Object r2 = r9.next()
            r6 = r2
            ads_mobile_sdk.h6 r6 = (kotlin.h6) r6
            boolean r6 = p005kotlin.jvm.internal.Intrinsics.areEqual(r6, r10)
            if (r6 != 0) goto L4c
            r11.add(r2)
            goto L4c
        L63:
            boolean r9 = r11.isEmpty()
            if (r9 == 0) goto L6a
            goto Lb7
        L6a:
            java.util.Iterator r9 = r11.iterator()
        L6e:
            boolean r10 = r9.hasNext()
            if (r10 == 0) goto Lb7
            java.lang.Object r10 = r9.next()
            ads_mobile_sdk.h6 r10 = (kotlin.h6) r10
            r0.a = r9
            r0.b = r10
            r0.e = r5
            r10.getClass()
            java.lang.Object r11 = kotlin.h6.f(r10, r0)
            if (r11 != r1) goto L8a
            goto La5
        L8a:
            r7 = r10
            r10 = r9
            r9 = r7
        L8d:
            java.lang.Number r11 = (java.lang.Number) r11
            int r11 = r11.intValue()
            if (r11 != 0) goto Lb2
            r0.a = r10
            r11 = 0
            r0.b = r11
            r0.e = r4
            r9.getClass()
            java.lang.Object r11 = kotlin.h6.d(r9, r0)
            if (r11 != r1) goto La6
        La5:
            return r1
        La6:
            r9 = r10
        La7:
            java.lang.Boolean r11 = (java.lang.Boolean) r11
            boolean r10 = r11.booleanValue()
            if (r10 == 0) goto Lb1
            r10 = r5
            goto Lb4
        Lb1:
            r10 = r9
        Lb2:
            r9 = r10
            r10 = r3
        Lb4:
            if (r10 == 0) goto L6e
            r3 = r5
        Lb7:
            java.lang.Boolean r9 = p005kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.pt2.c(java.util.List, ads_mobile_sdk.h6, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0075  */
    /* JADX WARN: Code duplicated, block: B:27:0x009b  */
    /* JADX WARN: Code duplicated, block: B:29:0x00a8 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:30:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:32:0x00b3 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:33:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:36:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:41:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:44:0x0111  */
    /* JADX WARN: Code duplicated, block: B:47:0x0119 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x008b -> B:24:0x008f). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00fb -> B:42:0x00fe). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object c(java.util.List r11, p005kotlin.coroutines.Continuation r12) {
        /*
            Method dump skipped, instruction units count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.pt2.c(java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlin.ox0
    public final Object d(long j, Continuation continuation) {
        return a(this, j, continuation);
    }

    public final List g() {
        EnumEntries enumEntries = j53.n;
        ArrayList arrayList = new ArrayList();
        Iterator<E> it = enumEntries.iterator();
        while (it.hasNext()) {
            LinkedHashMap linkedHashMapA = a((j53) it.next());
            Collection collectionValues = linkedHashMapA != null ? linkedHashMapA.values() : null;
            if (collectionValues != null) {
                arrayList.add(collectionValues);
            }
        }
        return CollectionsKt.flatten(arrayList);
    }

    @Override // kotlin.nc1
    public final Object u(Continuation continuation) {
        return b(this, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object v(Continuation continuation) {
        gr2 gr2Var;
        pt2 pt2Var;
        if (continuation instanceof gr2) {
            gr2Var = (gr2) continuation;
            int i = gr2Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                gr2Var.d = i - Integer.MIN_VALUE;
            } else {
                gr2Var = new gr2(this, continuation);
            }
        } else {
            gr2Var = new gr2(this, continuation);
        }
        Object objD = gr2Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = gr2Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objD);
            zd3 zd3Var = this.o;
            gr2Var.a = this;
            gr2Var.d = 1;
            zd3Var.getClass();
            objD = zd3.d(zd3Var, gr2Var);
            if (objD == coroutine_suspended) {
                return coroutine_suspended;
            }
            pt2Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            pt2Var = gr2Var.a;
            p005kotlin.ResultKt.throwOnFailure(objD);
        }
        int iIntValue = ((Number) objD).intValue();
        ex0 ex0Var = pt2Var.g;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:use_server_provided_total_ad_limit:enabled", C3510b4.i.W);
        if (!((Boolean) ex0Var.a("gads:use_server_provided_total_ad_limit:enabled", Boolean.TRUE, yr.b)).booleanValue() || iIntValue <= 0) {
            ex0 ex0Var2 = pt2Var.g;
            iIntValue = ((Number) ex0Var2.a("gads:preloaded_ads:upper_bound", by0.a(ex0Var2, "gads:preloaded_ads:upper_bound", C3510b4.i.W, 15), yr.f)).intValue();
        }
        return Boxing.boxInt(iIntValue);
    }

    /* JADX WARN: Code duplicated, block: B:109:0x0200  */
    /* JADX WARN: Code duplicated, block: B:112:0x020e A[Catch: all -> 0x0048, TRY_LEAVE, TryCatch #7 {all -> 0x0048, blocks: (B:16:0x0043, B:110:0x0204, B:112:0x020e), top: B:165:0x0043 }] */
    /* JADX WARN: Code duplicated, block: B:124:0x022f A[Catch: all -> 0x025e, TryCatch #13 {all -> 0x025e, blocks: (B:122:0x0228, B:124:0x022f, B:126:0x0233, B:128:0x0237, B:129:0x023a, B:131:0x023e, B:133:0x0242, B:135:0x0246, B:136:0x0247, B:137:0x024c, B:138:0x024d, B:139:0x0254, B:140:0x0255, B:141:0x025c, B:142:0x025d), top: B:175:0x0228, outer: #12 }] */
    /* JADX WARN: Code duplicated, block: B:126:0x0233 A[Catch: all -> 0x025e, TryCatch #13 {all -> 0x025e, blocks: (B:122:0x0228, B:124:0x022f, B:126:0x0233, B:128:0x0237, B:129:0x023a, B:131:0x023e, B:133:0x0242, B:135:0x0246, B:136:0x0247, B:137:0x024c, B:138:0x024d, B:139:0x0254, B:140:0x0255, B:141:0x025c, B:142:0x025d), top: B:175:0x0228, outer: #12 }] */
    /* JADX WARN: Code duplicated, block: B:131:0x023e A[Catch: all -> 0x025e, TryCatch #13 {all -> 0x025e, blocks: (B:122:0x0228, B:124:0x022f, B:126:0x0233, B:128:0x0237, B:129:0x023a, B:131:0x023e, B:133:0x0242, B:135:0x0246, B:136:0x0247, B:137:0x024c, B:138:0x024d, B:139:0x0254, B:140:0x0255, B:141:0x025c, B:142:0x025d), top: B:175:0x0228, outer: #12 }] */
    /* JADX WARN: Code duplicated, block: B:133:0x0242 A[Catch: all -> 0x025e, TryCatch #13 {all -> 0x025e, blocks: (B:122:0x0228, B:124:0x022f, B:126:0x0233, B:128:0x0237, B:129:0x023a, B:131:0x023e, B:133:0x0242, B:135:0x0246, B:136:0x0247, B:137:0x024c, B:138:0x024d, B:139:0x0254, B:140:0x0255, B:141:0x025c, B:142:0x025d), top: B:175:0x0228, outer: #12 }] */
    /* JADX WARN: Code duplicated, block: B:135:0x0246 A[Catch: all -> 0x025e, TryCatch #13 {all -> 0x025e, blocks: (B:122:0x0228, B:124:0x022f, B:126:0x0233, B:128:0x0237, B:129:0x023a, B:131:0x023e, B:133:0x0242, B:135:0x0246, B:136:0x0247, B:137:0x024c, B:138:0x024d, B:139:0x0254, B:140:0x0255, B:141:0x025c, B:142:0x025d), top: B:175:0x0228, outer: #12 }] */
    /* JADX WARN: Code duplicated, block: B:136:0x0247 A[Catch: all -> 0x025e, TryCatch #13 {all -> 0x025e, blocks: (B:122:0x0228, B:124:0x022f, B:126:0x0233, B:128:0x0237, B:129:0x023a, B:131:0x023e, B:133:0x0242, B:135:0x0246, B:136:0x0247, B:137:0x024c, B:138:0x024d, B:139:0x0254, B:140:0x0255, B:141:0x025c, B:142:0x025d), top: B:175:0x0228, outer: #12 }] */
    /* JADX WARN: Code duplicated, block: B:138:0x024d A[Catch: all -> 0x025e, TryCatch #13 {all -> 0x025e, blocks: (B:122:0x0228, B:124:0x022f, B:126:0x0233, B:128:0x0237, B:129:0x023a, B:131:0x023e, B:133:0x0242, B:135:0x0246, B:136:0x0247, B:137:0x024c, B:138:0x024d, B:139:0x0254, B:140:0x0255, B:141:0x025c, B:142:0x025d), top: B:175:0x0228, outer: #12 }] */
    /* JADX WARN: Code duplicated, block: B:140:0x0255 A[Catch: all -> 0x025e, TryCatch #13 {all -> 0x025e, blocks: (B:122:0x0228, B:124:0x022f, B:126:0x0233, B:128:0x0237, B:129:0x023a, B:131:0x023e, B:133:0x0242, B:135:0x0246, B:136:0x0247, B:137:0x024c, B:138:0x024d, B:139:0x0254, B:140:0x0255, B:141:0x025c, B:142:0x025d), top: B:175:0x0228, outer: #12 }] */
    /* JADX WARN: Code duplicated, block: B:142:0x025d A[Catch: all -> 0x025e, TRY_LEAVE, TryCatch #13 {all -> 0x025e, blocks: (B:122:0x0228, B:124:0x022f, B:126:0x0233, B:128:0x0237, B:129:0x023a, B:131:0x023e, B:133:0x0242, B:135:0x0246, B:136:0x0247, B:137:0x024c, B:138:0x024d, B:139:0x0254, B:140:0x0255, B:141:0x025c, B:142:0x025d), top: B:175:0x0228, outer: #12 }] */
    /* JADX WARN: Code duplicated, block: B:58:0x014c  */
    /* JADX WARN: Code duplicated, block: B:61:0x015a A[Catch: all -> 0x0083, TRY_LEAVE, TryCatch #2 {all -> 0x0083, blocks: (B:29:0x007e, B:59:0x0150, B:61:0x015a), top: B:157:0x007e }] */
    /* JADX WARN: Code duplicated, block: B:74:0x0179 A[Catch: all -> 0x01a8, TryCatch #6 {all -> 0x01a8, blocks: (B:72:0x0172, B:74:0x0179, B:76:0x017d, B:78:0x0181, B:79:0x0184, B:81:0x0188, B:83:0x018c, B:85:0x0190, B:86:0x0191, B:87:0x0196, B:88:0x0197, B:89:0x019e, B:90:0x019f, B:91:0x01a6, B:92:0x01a7), top: B:164:0x0172, outer: #12 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x017d A[Catch: all -> 0x01a8, TryCatch #6 {all -> 0x01a8, blocks: (B:72:0x0172, B:74:0x0179, B:76:0x017d, B:78:0x0181, B:79:0x0184, B:81:0x0188, B:83:0x018c, B:85:0x0190, B:86:0x0191, B:87:0x0196, B:88:0x0197, B:89:0x019e, B:90:0x019f, B:91:0x01a6, B:92:0x01a7), top: B:164:0x0172, outer: #12 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:81:0x0188 A[Catch: all -> 0x01a8, TryCatch #6 {all -> 0x01a8, blocks: (B:72:0x0172, B:74:0x0179, B:76:0x017d, B:78:0x0181, B:79:0x0184, B:81:0x0188, B:83:0x018c, B:85:0x0190, B:86:0x0191, B:87:0x0196, B:88:0x0197, B:89:0x019e, B:90:0x019f, B:91:0x01a6, B:92:0x01a7), top: B:164:0x0172, outer: #12 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x018c A[Catch: all -> 0x01a8, TryCatch #6 {all -> 0x01a8, blocks: (B:72:0x0172, B:74:0x0179, B:76:0x017d, B:78:0x0181, B:79:0x0184, B:81:0x0188, B:83:0x018c, B:85:0x0190, B:86:0x0191, B:87:0x0196, B:88:0x0197, B:89:0x019e, B:90:0x019f, B:91:0x01a6, B:92:0x01a7), top: B:164:0x0172, outer: #12 }] */
    /* JADX WARN: Code duplicated, block: B:85:0x0190 A[Catch: all -> 0x01a8, TryCatch #6 {all -> 0x01a8, blocks: (B:72:0x0172, B:74:0x0179, B:76:0x017d, B:78:0x0181, B:79:0x0184, B:81:0x0188, B:83:0x018c, B:85:0x0190, B:86:0x0191, B:87:0x0196, B:88:0x0197, B:89:0x019e, B:90:0x019f, B:91:0x01a6, B:92:0x01a7), top: B:164:0x0172, outer: #12 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x0191 A[Catch: all -> 0x01a8, TryCatch #6 {all -> 0x01a8, blocks: (B:72:0x0172, B:74:0x0179, B:76:0x017d, B:78:0x0181, B:79:0x0184, B:81:0x0188, B:83:0x018c, B:85:0x0190, B:86:0x0191, B:87:0x0196, B:88:0x0197, B:89:0x019e, B:90:0x019f, B:91:0x01a6, B:92:0x01a7), top: B:164:0x0172, outer: #12 }] */
    /* JADX WARN: Code duplicated, block: B:88:0x0197 A[Catch: all -> 0x01a8, TryCatch #6 {all -> 0x01a8, blocks: (B:72:0x0172, B:74:0x0179, B:76:0x017d, B:78:0x0181, B:79:0x0184, B:81:0x0188, B:83:0x018c, B:85:0x0190, B:86:0x0191, B:87:0x0196, B:88:0x0197, B:89:0x019e, B:90:0x019f, B:91:0x01a6, B:92:0x01a7), top: B:164:0x0172, outer: #12 }] */
    /* JADX WARN: Code duplicated, block: B:90:0x019f A[Catch: all -> 0x01a8, TryCatch #6 {all -> 0x01a8, blocks: (B:72:0x0172, B:74:0x0179, B:76:0x017d, B:78:0x0181, B:79:0x0184, B:81:0x0188, B:83:0x018c, B:85:0x0190, B:86:0x0191, B:87:0x0196, B:88:0x0197, B:89:0x019e, B:90:0x019f, B:91:0x01a6, B:92:0x01a7), top: B:164:0x0172, outer: #12 }] */
    /* JADX WARN: Code duplicated, block: B:92:0x01a7 A[Catch: all -> 0x01a8, TRY_LEAVE, TryCatch #6 {all -> 0x01a8, blocks: (B:72:0x0172, B:74:0x0179, B:76:0x017d, B:78:0x0181, B:79:0x0184, B:81:0x0188, B:83:0x018c, B:85:0x0190, B:86:0x0191, B:87:0x0196, B:88:0x0197, B:89:0x019e, B:90:0x019f, B:91:0x01a6, B:92:0x01a7), top: B:164:0x0172, outer: #12 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v10, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r12v13 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v20 */
    /* JADX WARN: Type inference failed for: r12v21 */
    /* JADX WARN: Type inference failed for: r12v22 */
    /* JADX WARN: Type inference failed for: r12v23 */
    /* JADX WARN: Type inference failed for: r12v3, types: [java.lang.Object, kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v19 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v21 */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v24 */
    /* JADX WARN: Type inference failed for: r5v25 */
    /* JADX WARN: Type inference failed for: r5v26 */
    /* JADX WARN: Type inference failed for: r5v27 */
    /* JADX WARN: Type inference failed for: r5v28 */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r5v3, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r5v33, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r5v36, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r5v38 */
    /* JADX WARN: Type inference failed for: r5v39 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v40 */
    /* JADX WARN: Type inference failed for: r5v41 */
    /* JADX WARN: Type inference failed for: r5v42 */
    public final Object w(Continuation continuation) throws Throwable {
        tr2 tr2Var;
        ?? r12;
        pt2 pt2Var;
        rr3 rr3VarA;
        Closeable closeable;
        rr3 rr3Var;
        uj2 uj2Var;
        ?? r14;
        List list;
        Closeable closeable2;
        rr3 rr3VarA2;
        Closeable closeable3;
        rr3 rr3Var2;
        uj2 uj2Var2;
        ?? r15;
        List list2;
        Closeable closeable4;
        ?? r13;
        uj2 uj2Var3;
        Object obj;
        ?? r16;
        uj2 uj2Var4;
        Object obj2;
        if (continuation instanceof tr2) {
            tr2Var = (tr2) continuation;
            int i = tr2Var.i;
            if ((i & Integer.MIN_VALUE) != 0) {
                tr2Var.i = i - Integer.MIN_VALUE;
            } else {
                tr2Var = new tr2(this, continuation);
            }
        } else {
            tr2Var = new tr2(this, continuation);
        }
        tr2 tr2Var2 = tr2Var;
        Object objA = tr2Var2.g;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = tr2Var2.i;
        ?? r5 = 4;
        ?? r6 = 4;
        try {
            try {
                try {
                    if (i2 == 0) {
                        p005kotlin.ResultKt.throwOnFailure(objA);
                        Mutex mutex = this.q;
                        tr2Var2.a = this;
                        tr2Var2.b = mutex;
                        tr2Var2.i = 1;
                        if (mutex.lock(null, tr2Var2) != coroutine_suspended) {
                            r12 = mutex;
                            pt2Var = this;
                        }
                        return coroutine_suspended;
                    }
                    if (i2 != 1) {
                        if (i2 == 2) {
                            pt2Var = tr2Var2.f;
                            List list3 = tr2Var2.e;
                            uj2 uj2Var5 = tr2Var2.d;
                            Closeable closeable5 = tr2Var2.c;
                            rr3 rr3Var3 = (rr3) tr2Var2.b;
                            Mutex mutex2 = (Mutex) tr2Var2.a;
                            try {
                                p005kotlin.ResultKt.throwOnFailure(objA);
                                uj2Var2 = uj2Var5;
                                rr3Var2 = rr3Var3;
                                r15 = mutex2;
                                list2 = list3;
                                closeable4 = closeable5;
                                try {
                                    int iIntValue = ((Number) objA).intValue();
                                    tr2Var2.a = r15;
                                    tr2Var2.b = rr3Var2;
                                    tr2Var2.c = closeable4;
                                    tr2Var2.d = uj2Var2;
                                    tr2Var2.e = null;
                                    tr2Var2.f = null;
                                    tr2Var2.i = 3;
                                    objA = pt2Var.a((h6) null, list2, iIntValue, (Integer) null, (Boolean) null, tr2Var2);
                                    if (objA != coroutine_suspended) {
                                        uj2Var3 = uj2Var2;
                                        closeable3 = closeable4;
                                        rr3VarA2 = rr3Var2;
                                        r6 = r15;
                                        uj2Var3.L = (hv) objA;
                                        obj = p005kotlin.Unit.INSTANCE;
                                        if (obj instanceof i01) {
                                            xs3.a((i01) obj, false);
                                        }
                                        CloseableKt.closeFinally(closeable3, null);
                                        r5 = r6;
                                        ?? r17 = r5;
                                        p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                                        r17.unlock(null);
                                        return unit;
                                    }
                                    return coroutine_suspended;
                                } catch (Throwable th) {
                                    th = th;
                                    closeable3 = closeable4;
                                    rr3VarA2 = rr3Var2;
                                    r6 = r15;
                                    rr3VarA2.b(th);
                                    if (!(th instanceof v24)) {
                                        throw th;
                                    }
                                    if (!(th instanceof TimeoutCancellationException)) {
                                        rr3VarA2.a(th);
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
                            } catch (Throwable th2) {
                                th = th2;
                                closeable3 = closeable5;
                                rr3VarA2 = rr3Var3;
                                r13 = mutex2;
                                r6 = r13;
                                rr3VarA2.b(th);
                                if (!(th instanceof v24)) {
                                    throw th;
                                }
                                if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                    rr3VarA2.a(th);
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
                        if (i2 == 3) {
                            uj2Var3 = tr2Var2.d;
                            closeable3 = tr2Var2.c;
                            rr3VarA2 = (rr3) tr2Var2.b;
                            r6 = (Mutex) tr2Var2.a;
                            try {
                                p005kotlin.ResultKt.throwOnFailure(objA);
                                r6 = r6;
                                uj2Var3.L = (hv) objA;
                                obj = p005kotlin.Unit.INSTANCE;
                                if (obj instanceof i01) {
                                    xs3.a((i01) obj, false);
                                }
                                CloseableKt.closeFinally(closeable3, null);
                                r5 = r6;
                                ?? r18 = r5;
                                p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                                r18.unlock(null);
                                return unit2;
                            } catch (Throwable th3) {
                                th = th3;
                                try {
                                    rr3VarA2.b(th);
                                    if (!(th instanceof v24)) {
                                        throw th;
                                    }
                                    if (!(th instanceof TimeoutCancellationException)) {
                                        rr3VarA2.a(th);
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
                                } catch (Throwable th4) {
                                    try {
                                        throw th4;
                                    } catch (Throwable th5) {
                                        CloseableKt.closeFinally(closeable3, th4);
                                        throw th5;
                                    }
                                }
                            }
                        }
                        if (i2 != 4) {
                            if (i2 != 5) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            uj2Var4 = tr2Var2.d;
                            closeable = tr2Var2.c;
                            rr3VarA = (rr3) tr2Var2.b;
                            r6 = (Mutex) tr2Var2.a;
                            try {
                                p005kotlin.ResultKt.throwOnFailure(objA);
                                r6 = r6;
                                uj2Var4.L = (hv) objA;
                                obj2 = p005kotlin.Unit.INSTANCE;
                                if (obj2 instanceof i01) {
                                    xs3.a((i01) obj2, false);
                                }
                                CloseableKt.closeFinally(closeable, null);
                                r5 = r6;
                                ?? r19 = r5;
                                p005kotlin.Unit unit3 = p005kotlin.Unit.INSTANCE;
                                r19.unlock(null);
                                return unit3;
                            } catch (Throwable th6) {
                                th = th6;
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
                                } catch (Throwable th7) {
                                    try {
                                        throw th7;
                                    } catch (Throwable th8) {
                                        CloseableKt.closeFinally(closeable, th7);
                                        throw th8;
                                    }
                                }
                            }
                        }
                        pt2Var = tr2Var2.f;
                        list = tr2Var2.e;
                        uj2 uj2Var6 = tr2Var2.d;
                        Closeable closeable6 = tr2Var2.c;
                        rr3 rr3Var4 = (rr3) tr2Var2.b;
                        Mutex mutex3 = (Mutex) tr2Var2.a;
                        try {
                            p005kotlin.ResultKt.throwOnFailure(objA);
                            uj2Var = uj2Var6;
                            rr3Var = rr3Var4;
                            r14 = mutex3;
                            closeable2 = closeable6;
                            try {
                                int iIntValue2 = ((Number) objA).intValue();
                                tr2Var2.a = r14;
                                tr2Var2.b = rr3Var;
                                tr2Var2.c = closeable2;
                                tr2Var2.d = uj2Var;
                                tr2Var2.e = null;
                                tr2Var2.f = null;
                                tr2Var2.i = 5;
                                objA = pt2Var.a((h6) null, list, iIntValue2, (Integer) null, (Boolean) null, tr2Var2);
                                if (objA != coroutine_suspended) {
                                    uj2Var4 = uj2Var;
                                    closeable = closeable2;
                                    rr3VarA = rr3Var;
                                    r6 = r14;
                                    uj2Var4.L = (hv) objA;
                                    obj2 = p005kotlin.Unit.INSTANCE;
                                    if (obj2 instanceof i01) {
                                        xs3.a((i01) obj2, false);
                                    }
                                    CloseableKt.closeFinally(closeable, null);
                                    r5 = r6;
                                    ?? r110 = r5;
                                    p005kotlin.Unit unit4 = p005kotlin.Unit.INSTANCE;
                                    r110.unlock(null);
                                    return unit4;
                                }
                                return coroutine_suspended;
                            } catch (Throwable th9) {
                                th = th9;
                                closeable = closeable2;
                                rr3VarA = rr3Var;
                                r6 = r14;
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
                        } catch (Throwable th10) {
                            th = th10;
                            closeable = closeable6;
                            rr3VarA = rr3Var4;
                            r16 = mutex3;
                            r6 = r16;
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
                    Mutex mutex4 = (Mutex) tr2Var2.b;
                    pt2 pt2Var2 = (pt2) tr2Var2.a;
                    p005kotlin.ResultKt.throwOnFailure(objA);
                    r12 = mutex4;
                    pt2Var = pt2Var2;
                    if (pt2Var.F) {
                        p005kotlin.Unit unit5 = p005kotlin.Unit.INSTANCE;
                        r12.unlock(null);
                        return unit5;
                    }
                    pt2Var.F = true;
                    List listG = pt2Var.g();
                    g83 g83Var = pt2Var.e;
                    s11 s11Var = s11.CUI_NAME_CENTRALIZED_MANAGER_PAUSE_FOR_AD_SHOW;
                    List listEmptyList = CollectionsKt.emptyList();
                    ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
                    if (hs3.b().a == null) {
                        rr3VarA2 = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                        try {
                            uj2 uj2VarE = hs3.a().e();
                            tr2Var2.a = r12;
                            tr2Var2.b = rr3VarA2;
                            tr2Var2.c = rr3VarA2;
                            tr2Var2.d = uj2VarE;
                            tr2Var2.e = listG;
                            tr2Var2.f = pt2Var;
                            tr2Var2.i = 2;
                            Object objA2 = pt2Var.a(listG, tr2Var2);
                            if (objA2 != coroutine_suspended) {
                                rr3Var2 = rr3VarA2;
                                uj2Var2 = uj2VarE;
                                r15 = r12;
                                list2 = listG;
                                closeable4 = rr3Var2;
                                objA = objA2;
                                int iIntValue3 = ((Number) objA).intValue();
                                tr2Var2.a = r15;
                                tr2Var2.b = rr3Var2;
                                tr2Var2.c = closeable4;
                                tr2Var2.d = uj2Var2;
                                tr2Var2.e = null;
                                tr2Var2.f = null;
                                tr2Var2.i = 3;
                                objA = pt2Var.a((h6) null, list2, iIntValue3, (Integer) null, (Boolean) null, tr2Var2);
                                if (objA != coroutine_suspended) {
                                    uj2Var3 = uj2Var2;
                                    closeable3 = closeable4;
                                    rr3VarA2 = rr3Var2;
                                    r6 = r15;
                                    uj2Var3.L = (hv) objA;
                                    obj = p005kotlin.Unit.INSTANCE;
                                    if (obj instanceof i01) {
                                        xs3.a((i01) obj, false);
                                    }
                                    CloseableKt.closeFinally(closeable3, null);
                                    r5 = r6;
                                    ?? r111 = r5;
                                    p005kotlin.Unit unit6 = p005kotlin.Unit.INSTANCE;
                                    r111.unlock(null);
                                    return unit6;
                                }
                            }
                        } catch (Throwable th11) {
                            th = th11;
                            closeable3 = rr3VarA2;
                            r13 = r12;
                            r6 = r13;
                            rr3VarA2.b(th);
                            if (!(th instanceof v24)) {
                                throw th;
                            }
                            if (!(th instanceof TimeoutCancellationException)) {
                                rr3VarA2.a(th);
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
                        rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                        try {
                            uj2 uj2VarE2 = hs3.a().e();
                            tr2Var2.a = r12;
                            tr2Var2.b = rr3VarA;
                            tr2Var2.c = rr3VarA;
                            tr2Var2.d = uj2VarE2;
                            tr2Var2.e = listG;
                            tr2Var2.f = pt2Var;
                            tr2Var2.i = 4;
                            Object objA3 = pt2Var.a(listG, tr2Var2);
                            if (objA3 != coroutine_suspended) {
                                rr3Var = rr3VarA;
                                uj2Var = uj2VarE2;
                                r14 = r12;
                                list = listG;
                                closeable2 = rr3Var;
                                objA = objA3;
                                int iIntValue4 = ((Number) objA).intValue();
                                tr2Var2.a = r14;
                                tr2Var2.b = rr3Var;
                                tr2Var2.c = closeable2;
                                tr2Var2.d = uj2Var;
                                tr2Var2.e = null;
                                tr2Var2.f = null;
                                tr2Var2.i = 5;
                                objA = pt2Var.a((h6) null, list, iIntValue4, (Integer) null, (Boolean) null, tr2Var2);
                                if (objA != coroutine_suspended) {
                                    uj2Var4 = uj2Var;
                                    closeable = closeable2;
                                    rr3VarA = rr3Var;
                                    r6 = r14;
                                    uj2Var4.L = (hv) objA;
                                    obj2 = p005kotlin.Unit.INSTANCE;
                                    if (obj2 instanceof i01) {
                                        xs3.a((i01) obj2, false);
                                    }
                                    CloseableKt.closeFinally(closeable, null);
                                    r5 = r6;
                                    ?? r112 = r5;
                                    p005kotlin.Unit unit7 = p005kotlin.Unit.INSTANCE;
                                    r112.unlock(null);
                                    return unit7;
                                }
                            }
                        } catch (Throwable th12) {
                            th = th12;
                            closeable = rr3VarA;
                            r16 = r12;
                            r6 = r16;
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
                    }
                    return coroutine_suspended;
                } catch (Throwable th13) {
                    th = th13;
                    r5 = r12;
                    r5.unlock(null);
                    throw th;
                }
            } catch (Throwable th14) {
                th = th14;
                r5.unlock(null);
                throw th;
            }
        } catch (Throwable th15) {
            th = th15;
            r12 = r6;
            r5 = r12;
            r5.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object x(Continuation continuation) {
        nt2 nt2Var;
        pt2 pt2Var;
        Mutex mutex;
        if (continuation instanceof nt2) {
            nt2Var = (nt2) continuation;
            int i = nt2Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                nt2Var.e = i - Integer.MIN_VALUE;
            } else {
                nt2Var = new nt2(this, continuation);
            }
        } else {
            nt2Var = new nt2(this, continuation);
        }
        Object obj = nt2Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = nt2Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            if (!this.H) {
                return p005kotlin.Unit.INSTANCE;
            }
            Mutex mutex2 = this.q;
            nt2Var.a = this;
            nt2Var.b = mutex2;
            nt2Var.e = 1;
            if (mutex2.lock(null, nt2Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            pt2Var = this;
            mutex = mutex2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = nt2Var.b;
            pt2Var = nt2Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            if (!pt2Var.r.isActive()) {
                CoroutineScope coroutineScope = pt2Var.c;
                ot2 block = new ot2(pt2Var, null);
                EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(block, "block");
                pt2Var.r = BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            }
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }
}

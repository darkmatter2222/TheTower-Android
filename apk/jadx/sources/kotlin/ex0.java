package kotlin;

import android.util.Base64;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.google.gson.JsonObject;
import com.ironsource.C3510b4;
import com.ironsource.adapters.admob.AdMobConstants;
import java.util.List;
import java.util.Map;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class ex0 extends yr {
    public static final long A;
    public static final int B;
    public static final List C;
    public static final JsonObject D;
    public static final JsonObject E;
    public static final JsonObject F;
    public static final JsonObject G;
    public static final JsonObject H;
    public static final JsonObject I;
    public static final JsonObject J;
    public static final long z;
    public final x00 r;
    public final eb3 s;
    public final l93 t;
    public final sa u;
    public final cl2 v;
    public boolean w;
    public double x;
    public int y;

    static {
        ax0 ax0Var = new ax0();
        Duration.Companion companion = Duration.INSTANCE;
        DurationUnit durationUnit = DurationUnit.SECONDS;
        z = DurationKt.toDuration(20, durationUnit);
        A = DurationKt.toDuration(1, durationUnit);
        B = mm0.TIER_LOW.getNumber();
        C = CollectionsKt.listOf((Object[]) new String[]{"addtl_consent", "gdpr", "gdpr_consent", "gpp", "gpp_sid", "ltd", AdMobConstants.EXTRA_NPA, AdMobConstants.EXTRA_RDP, "tfcd", "tfua", "us_privacy", "c", "correlator"});
        JsonObject jsonObject = new JsonObject();
        y11 y11Var = y11.AD_ID_INFO;
        jsonObject.addProperty(String.valueOf(y11Var.getNumber()), (Number) 500);
        y11 y11Var2 = y11.AD_REQUEST;
        kj3 kj3Var = kj3.b;
        ax0.a(ax0Var, jsonObject, y11Var2, kj3Var);
        y11 y11Var3 = y11.AD_SPAM;
        kj3 kj3Var2 = kj3.e;
        ax0.a(ax0Var, jsonObject, y11Var3, kj3Var2);
        ax0.a(ax0Var, jsonObject, y11.AD_SIZE, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.AD_TYPE, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.APP_OPEN, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.APP_PERMISSIONS, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.APP_SET_ID, kj3Var);
        y11 y11Var4 = y11.AUDIO;
        kj3 kj3Var3 = kj3.d;
        ax0.a(ax0Var, jsonObject, y11Var4, kj3Var3);
        y11 y11Var5 = y11.BATTERY;
        ax0.a(ax0Var, jsonObject, y11Var5, kj3Var);
        y11 y11Var6 = y11.CLD;
        kj3 kj3Var4 = kj3.c;
        ax0.a(ax0Var, jsonObject, y11Var6, kj3Var4);
        y11 y11Var7 = y11.COARSE_LOCATION;
        ax0.a(ax0Var, jsonObject, y11Var7, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.DEBUG_SIGNAL, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.EXPERIMENT_IDS, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.IN_MEMORY_SDK_CORE_DATA, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.MEMORY, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.OMID, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.PACKAGE_INFO, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.PER_APP_ID_V1, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.PER_APP_ID_V2, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.STATIC_DEVICE, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.TELEPHONY, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.CONSENT_STRINGS, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.AD_ID_PERMISSION, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.QUALITY, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.REQUEST_ID, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.SDK_ENV, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.ADAPTER_VERSIONS, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.RTB_SIGNAL, kj3Var2);
        ax0.a(ax0Var, jsonObject, y11.SESSION_ID, kj3Var);
        y11 y11Var8 = y11.TRUSTLESS_TOKEN;
        ax0.a(ax0Var, jsonObject, y11Var8, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.FIREBASE_ANALYTICS, kj3Var4);
        ax0.a(ax0Var, jsonObject, y11.HAND_HELD, kj3Var4);
        ax0.a(ax0Var, jsonObject, y11.PHONE_ORIENTATION, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.IS_DEVICE_HELD, kj3Var3);
        ax0.a(ax0Var, jsonObject, y11.INSPECTOR_SIGNAL, kj3Var4);
        ax0.a(ax0Var, jsonObject, y11.AMAZON_FIRE_AD_ID, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.DISPLAY_COUNT, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.CSRB_ECO_DATA, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.PARENT_AD_CONFIG, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.NATIVE_AD, kj3Var4);
        ax0.a(ax0Var, jsonObject, y11.ICON_AD, kj3Var);
        y11 y11Var9 = y11.UNDEFINED;
        ax0.a(ax0Var, jsonObject, y11Var9, kj3Var4);
        ax0.a(ax0Var, jsonObject, y11.AD_RESPONSE_ENCRYPTION_KEY, kj3Var3);
        ax0.a(ax0Var, jsonObject, y11.SCAR_SIGNAL_TYPE, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.DEVICE_TIER, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.PICTURE_IN_PICTURE_AD_REQUEST, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.EOID, kj3Var);
        D = jsonObject;
        JsonObject jsonObject2 = new JsonObject();
        String strValueOf = String.valueOf(y11Var.getNumber());
        Boolean bool = Boolean.TRUE;
        jsonObject2.addProperty(strValueOf, bool);
        String strValueOf2 = String.valueOf(y11Var4.getNumber());
        Boolean bool2 = Boolean.FALSE;
        jsonObject2.addProperty(strValueOf2, bool2);
        jsonObject2.addProperty(String.valueOf(y11Var5.getNumber()), bool2);
        jsonObject2.addProperty(String.valueOf(y11Var7.getNumber()), bool2);
        jsonObject2.addProperty(String.valueOf(y11Var8.getNumber()), bool2);
        jsonObject2.addProperty(String.valueOf(y11Var9.getNumber()), bool2);
        E = jsonObject2;
        JsonObject jsonObject3 = new JsonObject();
        jsonObject3.addProperty(String.valueOf(y11Var.getNumber()), bool);
        jsonObject3.addProperty(String.valueOf(y11Var4.getNumber()), bool2);
        jsonObject3.addProperty(String.valueOf(y11Var5.getNumber()), bool2);
        jsonObject3.addProperty(String.valueOf(y11Var7.getNumber()), bool2);
        jsonObject3.addProperty(String.valueOf(y11Var8.getNumber()), bool2);
        jsonObject3.addProperty(String.valueOf(y11Var9.getNumber()), bool2);
        F = jsonObject3;
        JsonObject jsonObject4 = new JsonObject();
        jsonObject4.addProperty(String.valueOf(y11Var.getNumber()), (Number) 0);
        jsonObject4.addProperty(String.valueOf(y11Var4.getNumber()), (Number) 0);
        jsonObject4.addProperty(String.valueOf(y11Var5.getNumber()), (Number) 0);
        jsonObject4.addProperty(String.valueOf(y11Var7.getNumber()), (Number) 0);
        jsonObject4.addProperty(String.valueOf(y11Var8.getNumber()), Long.valueOf(Duration.m4378getInWholeMillisecondsimpl(DurationKt.toDuration(30, durationUnit))));
        jsonObject4.addProperty(String.valueOf(y11Var9.getNumber()), (Number) 0);
        G = jsonObject4;
        JsonObject jsonObject5 = new JsonObject();
        DurationUnit durationUnit2 = DurationUnit.MINUTES;
        jsonObject5.addProperty(String.valueOf(y11Var.getNumber()), Long.valueOf(Duration.m4378getInWholeMillisecondsimpl(DurationKt.toDuration(10, durationUnit2))));
        jsonObject5.addProperty(String.valueOf(y11Var4.getNumber()), Long.valueOf(Duration.m4378getInWholeMillisecondsimpl(DurationKt.toDuration(30, durationUnit))));
        jsonObject5.addProperty(String.valueOf(y11Var5.getNumber()), Long.valueOf(Duration.m4378getInWholeMillisecondsimpl(DurationKt.toDuration(5, durationUnit2))));
        jsonObject5.addProperty(String.valueOf(y11Var7.getNumber()), Long.valueOf(Duration.m4378getInWholeMillisecondsimpl(DurationKt.toDuration(10, durationUnit2))));
        jsonObject5.addProperty(String.valueOf(y11Var8.getNumber()), Long.valueOf(Duration.m4378getInWholeMillisecondsimpl(DurationKt.toDuration(300, durationUnit))));
        jsonObject5.addProperty(String.valueOf(y11Var9.getNumber()), (Number) 0);
        H = jsonObject5;
        JsonObject jsonObject6 = new JsonObject();
        jsonObject6.addProperty(String.valueOf(y11Var.getNumber()), bool);
        jsonObject6.addProperty(String.valueOf(y11Var4.getNumber()), bool2);
        jsonObject6.addProperty(String.valueOf(y11Var5.getNumber()), bool2);
        jsonObject6.addProperty(String.valueOf(y11Var7.getNumber()), bool2);
        jsonObject6.addProperty(String.valueOf(y11Var8.getNumber()), bool);
        jsonObject6.addProperty(String.valueOf(y11Var9.getNumber()), bool2);
        I = jsonObject6;
        JsonObject jsonObject7 = new JsonObject();
        jsonObject7.addProperty(String.valueOf(y11Var.getNumber()), bool2);
        jsonObject7.addProperty(String.valueOf(y11Var4.getNumber()), bool2);
        jsonObject7.addProperty(String.valueOf(y11Var5.getNumber()), bool2);
        jsonObject7.addProperty(String.valueOf(y11Var7.getNumber()), bool2);
        jsonObject7.addProperty(String.valueOf(y11Var8.getNumber()), bool2);
        jsonObject7.addProperty(String.valueOf(y11Var9.getNumber()), bool2);
        J = jsonObject7;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ex0(x00 consentFlags, eb3 sdkCoreFlags, l93 safeAreaFlags, sa adShieldFlags, cl2 persistentCacheFlags, xw0 flagValueProvider) {
        super(flagValueProvider);
        Intrinsics.checkNotNullParameter(consentFlags, "consentFlags");
        Intrinsics.checkNotNullParameter(sdkCoreFlags, "sdkCoreFlags");
        Intrinsics.checkNotNullParameter(safeAreaFlags, "safeAreaFlags");
        Intrinsics.checkNotNullParameter(adShieldFlags, "adShieldFlags");
        Intrinsics.checkNotNullParameter(persistentCacheFlags, "persistentCacheFlags");
        Intrinsics.checkNotNullParameter(flagValueProvider, "flagValueProvider");
        this.r = consentFlags;
        this.s = sdkCoreFlags;
        this.t = safeAreaFlags;
        this.u = adShieldFlags;
        this.v = persistentCacheFlags;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object a(ex0 ex0Var, CoroutineContext coroutineContext, CoroutineScope coroutineScope, Continuation continuation) {
        bx0 bx0Var;
        if (continuation instanceof bx0) {
            bx0Var = (bx0) continuation;
            int i = bx0Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                bx0Var.d = i - Integer.MIN_VALUE;
            } else {
                bx0Var = new bx0(ex0Var, continuation);
            }
        } else {
            bx0Var = new bx0(ex0Var, continuation);
        }
        Object obj = bx0Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = bx0Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            xw0 xw0Var = ex0Var.a;
            bx0Var.a = ex0Var;
            bx0Var.d = 1;
            hr hrVar = (hr) xw0Var;
            hrVar.getClass();
            Object objWithContext = BuildersKt.withContext(coroutineContext, new sq(hrVar, coroutineScope, null), bx0Var);
            if (objWithContext != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                objWithContext = p005kotlin.Unit.INSTANCE;
            }
            if (objWithContext == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ex0Var = bx0Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        Boolean bool = (Boolean) ((hr) ex0Var.a).a("gads:csrb:enabled", yr.b);
        ex0Var.w = bool != null ? bool.booleanValue() : true;
        Double d = (Double) ((hr) ex0Var.a).a("gads:csrb_abtest_enabled:ratio", cx0.a);
        ex0Var.x = d != null ? d.doubleValue() : FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        Integer num = (Integer) ((hr) ex0Var.a).a("gads:csrb_break_glass_mode", dx0.a);
        ex0Var.y = num != null ? num.intValue() : 0;
        return p005kotlin.Unit.INSTANCE;
    }

    public final List A() {
        List defaultValue = CollectionsKt.listOf("1");
        Intrinsics.checkNotNullParameter("gads:pact_navigation_event_to_request_channel", C3510b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return (List) a("gads:pact_navigation_event_to_request_channel", defaultValue, yr.g);
    }

    public final boolean A0() {
        Intrinsics.checkNotNullParameter("gads:restore_reduced_ua:enabled", C3510b4.i.W);
        return ((Boolean) a("gads:restore_reduced_ua:enabled", Boolean.TRUE, yr.b)).booleanValue();
    }

    public final long B() {
        Duration.Companion companion = Duration.INSTANCE;
        return ((Duration) a("gads:banner_refresh_time:seconds", wm2.a(60, DurationUnit.SECONDS, "gads:banner_refresh_time:seconds", C3510b4.i.W), yr.j)).getRawValue();
    }

    public final long B0() {
        Duration.Companion companion = Duration.INSTANCE;
        return ((Duration) a("(gads:rtb_v1_1:signal_timeout_ms", wm2.a(900, DurationUnit.MILLISECONDS, "(gads:rtb_v1_1:signal_timeout_ms", C3510b4.i.W), yr.j)).getRawValue();
    }

    public final long C() {
        long j = z;
        Intrinsics.checkNotNullParameter("gads:http_url_connection_factory:timeout_millis", C3510b4.i.W);
        return ((Duration) a("gads:http_url_connection_factory:timeout_millis", Duration.m4365boximpl(j), yr.j)).getRawValue();
    }

    public final double C0() {
        Intrinsics.checkNotNullParameter("gads:rtb_timeout_multiplier", C3510b4.i.W);
        return ((Number) a("gads:rtb_timeout_multiplier", Double.valueOf(0.95d), yr.c)).doubleValue();
    }

    public final long D() {
        Duration.Companion companion = Duration.INSTANCE;
        return ((Duration) a("gads:banner_refresh_load_ad_delay:seconds", wm2.a(30, DurationUnit.SECONDS, "gads:banner_refresh_load_ad_delay:seconds", C3510b4.i.W), yr.j)).getRawValue();
    }

    public final boolean D0() {
        Intrinsics.checkNotNullParameter("gad:scar_encryption_allowlist:enabled", C3510b4.i.W);
        return ((Boolean) a("gad:scar_encryption_allowlist:enabled", Boolean.FALSE, yr.b)).booleanValue();
    }

    public final boolean E() {
        Intrinsics.checkNotNullParameter("gads:disable_network_request_tracing", C3510b4.i.W);
        return ((Boolean) a("gads:disable_network_request_tracing", Boolean.FALSE, yr.b)).booleanValue();
    }

    public final boolean E0() {
        Intrinsics.checkNotNullParameter("gads:paw_cache:enabled", C3510b4.i.W);
        return ((Boolean) a("gads:paw_cache:enabled", Boolean.TRUE, yr.b)).booleanValue();
    }

    public final boolean F() {
        Intrinsics.checkNotNullParameter("gads:webview_sound_effects:disabled", C3510b4.i.W);
        return ((Boolean) a("gads:webview_sound_effects:disabled", Boolean.TRUE, yr.b)).booleanValue();
    }

    public final long F0() {
        Duration.Companion companion = Duration.INSTANCE;
        return ((Duration) a("gads:paw_cache:ttl_ms", wm2.a(60, DurationUnit.SECONDS, "gads:paw_cache:ttl_ms", C3510b4.i.W), yr.j)).getRawValue();
    }

    public final boolean G() {
        Intrinsics.checkNotNullParameter("gads:disable_webview_request_network_tracing", C3510b4.i.W);
        return ((Boolean) a("gads:disable_webview_request_network_tracing", Boolean.FALSE, yr.b)).booleanValue();
    }

    public final List G0() {
        List defaultValue = CollectionsKt.listOf("8");
        Intrinsics.checkNotNullParameter("gad:scar_rtb_signal:enabled_list", C3510b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return (List) a("gad:scar_rtb_signal:enabled_list", defaultValue, yr.g);
    }

    public final boolean H() {
        Intrinsics.checkNotNullParameter("gads:ad_close_listener:enabled", C3510b4.i.W);
        return ((Boolean) a("gads:ad_close_listener:enabled", Boolean.FALSE, yr.b)).booleanValue();
    }

    public final long H0() {
        Duration.Companion companion = Duration.INSTANCE;
        return ((Duration) a("gad:signal_collection_timeout_ms", wm2.a(60, DurationUnit.SECONDS, "gad:signal_collection_timeout_ms", C3510b4.i.W), yr.j)).getRawValue();
    }

    public final boolean I() {
        Intrinsics.checkNotNullParameter("gads:cct_v2_optimization:enabled", C3510b4.i.W);
        return ((Boolean) a("gads:cct_v2_optimization:enabled", Boolean.FALSE, yr.b)).booleanValue();
    }

    public final int I0() {
        Intrinsics.checkNotNullParameter("gads:maximum_query_json_cache_size", C3510b4.i.W);
        return ((Number) a("gads:maximum_query_json_cache_size", 200, yr.f)).intValue();
    }

    public final boolean J() {
        Intrinsics.checkNotNullParameter("gads:cct_v2_connection:enabled", C3510b4.i.W);
        return ((Boolean) a("gads:cct_v2_connection:enabled", Boolean.FALSE, yr.b)).booleanValue();
    }

    public final long J0() {
        Duration.Companion companion = Duration.INSTANCE;
        return ((Duration) a("gads:timeout_query_json_cache:millis", wm2.a(6, DurationUnit.HOURS, "gads:timeout_query_json_cache:millis", C3510b4.i.W), yr.j)).getRawValue();
    }

    public final boolean K() {
        Intrinsics.checkNotNullParameter("gads:csrb_abtest_exception:enabled", C3510b4.i.W);
        return ((Boolean) a("gads:csrb_abtest_exception:enabled", Boolean.FALSE, yr.b)).booleanValue();
    }

    public final long K0() {
        long jM4458getZEROUwyO8pc = Duration.INSTANCE.m4458getZEROUwyO8pc();
        Intrinsics.checkNotNullParameter("gads:integration_signal_timeout:ms", C3510b4.i.W);
        return ((Duration) a("gads:integration_signal_timeout:ms", Duration.m4365boximpl(jM4458getZEROUwyO8pc), yr.j)).getRawValue();
    }

    public final boolean L() {
        Intrinsics.checkNotNullParameter("gads:enable_pclm_interaction_ping:enabled", C3510b4.i.W);
        return ((Boolean) a("gads:enable_pclm_interaction_ping:enabled", Boolean.FALSE, yr.b)).booleanValue();
    }

    public final List L0() {
        List defaultValue = CollectionsKt.listOf(2);
        Intrinsics.checkNotNullParameter("gads:swipeable_interstitial_unsupported_s2s_request_types", C3510b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return (List) a("gads:swipeable_interstitial_unsupported_s2s_request_types", defaultValue, yr.h);
    }

    public final boolean M() {
        Intrinsics.checkNotNullParameter("gads:post_click_lifecycle_monitoring:enabled", C3510b4.i.W);
        return ((Boolean) a("gads:post_click_lifecycle_monitoring:enabled", Boolean.FALSE, yr.b)).booleanValue();
    }

    public final boolean M0() {
        Intrinsics.checkNotNullParameter("gads:url_encode_scar_ad_response_payload", C3510b4.i.W);
        return ((Boolean) a("gads:url_encode_scar_ad_response_payload", Boolean.FALSE, yr.b)).booleanValue();
    }

    public final boolean N() {
        Intrinsics.checkNotNullParameter("gads:enable_preload_sorting_by_type:enabled", C3510b4.i.W);
        return ((Boolean) a("gads:enable_preload_sorting_by_type:enabled", Boolean.FALSE, yr.b)).booleanValue();
    }

    public final String N0() {
        Intrinsics.checkNotNullParameter("pps_rg", C3510b4.i.W);
        Intrinsics.checkNotNullParameter("\\d+=([a-zA-Z0-9]+)(\\|[a-zA-Z0-9]+)*$", "defaultValue");
        return (String) a("pps_rg", "\\d+=([a-zA-Z0-9]+)(\\|[a-zA-Z0-9]+)*$", yr.o);
    }

    public final boolean O() {
        Intrinsics.checkNotNullParameter("gads:enable_stop_api:enabled", C3510b4.i.W);
        return ((Boolean) a("gads:enable_stop_api:enabled", Boolean.TRUE, yr.b)).booleanValue();
    }

    public final boolean O0() {
        Intrinsics.checkNotNullParameter("gads:ad_event_value:validate_domain:enabled", C3510b4.i.W);
        return ((Boolean) a("gads:ad_event_value:validate_domain:enabled", Boolean.FALSE, yr.b)).booleanValue();
    }

    public final List P() {
        List defaultValue = CollectionsKt.listOf("2");
        Intrinsics.checkNotNullParameter("gad:scar_encryption:enabled_list", C3510b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return (List) a("gad:scar_encryption:enabled_list", defaultValue, yr.g);
    }

    public final boolean P0() {
        Intrinsics.checkNotNullParameter("gads:viewability_activity_lifecycle:enabled", C3510b4.i.W);
        return ((Boolean) a("gads:viewability_activity_lifecycle:enabled", Boolean.TRUE, yr.b)).booleanValue();
    }

    public final String Q() {
        Intrinsics.checkNotNullParameter("gads:firebase_analytics_class_name", C3510b4.i.W);
        Intrinsics.checkNotNullParameter("com.google.android.gms.measurement.api.AppMeasurementSdk", "defaultValue");
        return (String) a("gads:firebase_analytics_class_name", "com.google.android.gms.measurement.api.AppMeasurementSdk", yr.o);
    }

    public final String Q0() {
        Intrinsics.checkNotNullParameter("gads:webview_cookie_url", C3510b4.i.W);
        Intrinsics.checkNotNullParameter("https://googleads.g.doubleclick.net", "defaultValue");
        return (String) a("gads:webview_cookie_url", "https://googleads.g.doubleclick.net", yr.o);
    }

    public final String R() {
        Intrinsics.checkNotNullParameter("gads_firebase_analytics_url_macro", C3510b4.i.W);
        Intrinsics.checkNotNullParameter("%5Bgw_fbsaeid%5D", "defaultValue");
        return (String) a("gads_firebase_analytics_url_macro", "%5Bgw_fbsaeid%5D", yr.o);
    }

    public final boolean S() {
        return this.w;
    }

    public final eb3 T() {
        return this.s;
    }

    public final List U() {
        List defaultValue = CollectionsKt.listOf((Object[]) new String[]{"2", "8"});
        Intrinsics.checkNotNullParameter("gad:scar_gks:enabled_list", C3510b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return (List) a("gad:scar_gks:enabled_list", defaultValue, yr.g);
    }

    public final String V() {
        Intrinsics.checkNotNullParameter("gads:h5ads:afma_prefix", C3510b4.i.W);
        Intrinsics.checkNotNullParameter("(window.AFMA_ReceiveMessage||function(msg,params){\nwindow.h5_iframe.contentWindow.postMessage({\nmessageName:'receive_message_action',\nparameters:{messageName:msg,parameters:params}},\n'*');\n})", "defaultValue");
        return (String) a("gads:h5ads:afma_prefix", "(window.AFMA_ReceiveMessage||function(msg,params){\nwindow.h5_iframe.contentWindow.postMessage({\nmessageName:'receive_message_action',\nparameters:{messageName:msg,parameters:params}},\n'*');\n})", yr.o);
    }

    public final int W() {
        Intrinsics.checkNotNullParameter("gads:h5ads:max_num_ad_objects", C3510b4.i.W);
        return ((Number) a("gads:h5ads:max_num_ad_objects", 10, yr.f)).intValue();
    }

    public final boolean X() {
        Intrinsics.checkNotNullParameter("gads:hsdp_service_trigger_on_ad_clicked:enabled", C3510b4.i.W);
        return ((Boolean) a("gads:hsdp_service_trigger_on_ad_clicked:enabled", Boolean.TRUE, yr.b)).booleanValue();
    }

    public final long Y() {
        Duration.Companion companion = Duration.INSTANCE;
        return ((Duration) a("gads:immersive_video_media_data_timeout_ms", wm2.a(5, DurationUnit.SECONDS, "gads:immersive_video_media_data_timeout_ms", C3510b4.i.W), yr.j)).getRawValue();
    }

    public final boolean Z() {
        Intrinsics.checkNotNullParameter("gads:include_ping_attempts:enabled", C3510b4.i.W);
        return ((Boolean) a("gads:include_ping_attempts:enabled", Boolean.TRUE, yr.b)).booleanValue();
    }

    public final List a() {
        List defaultValue = CollectionsKt.listOf((Object[]) new String[]{"doubleclick.net", "google.com", "googleadservices.com"});
        Intrinsics.checkNotNullParameter("gads:ad_event_value:trusted_domains", C3510b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return (List) a("gads:ad_event_value:trusted_domains", defaultValue, yr.g);
    }

    public final boolean a0() {
        Intrinsics.checkNotNullParameter("gads:inspector:enabled", C3510b4.i.W);
        return ((Boolean) a("gads:inspector:enabled", Boolean.TRUE, yr.b)).booleanValue();
    }

    public final boolean b() {
        Intrinsics.checkNotNullParameter("gads:inspector:s2s_enabled", C3510b4.i.W);
        return ((Boolean) a("gads:inspector:s2s_enabled", Boolean.FALSE, yr.b)).booleanValue();
    }

    public final int b0() {
        Intrinsics.checkNotNullParameter("gads:is_device_held:max_samples", C3510b4.i.W);
        return ((Number) a("gads:is_device_held:max_samples", 5, yr.f)).intValue();
    }

    public final String c() {
        Intrinsics.checkNotNullParameter("gads:ad_manager_beta_app_id_regex", C3510b4.i.W);
        Intrinsics.checkNotNullParameter("^(\\/\\d+)~(.*)$", "defaultValue");
        return (String) a("gads:ad_manager_beta_app_id_regex", "^(\\/\\d+)~(.*)$", yr.o);
    }

    public final List c0() {
        List defaultValue = CollectionsKt.listOf((Object[]) new String[]{"true", "t", "yes", "y", "1"});
        Intrinsics.checkNotNullParameter("gads:is_trueish_values", C3510b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return (List) a("gads:is_trueish_values", defaultValue, yr.g);
    }

    public final String d() {
        Intrinsics.checkNotNullParameter("gads:ad_mob_ad_unit_pattern", C3510b4.i.W);
        Intrinsics.checkNotNullParameter("^(ca-app-pub-[a-zA-Z0-9\\-]+)\\/([a-zA-Z0-9_\\-]+)(\\/.*)?$", "defaultValue");
        return (String) a("gads:ad_mob_ad_unit_pattern", "^(ca-app-pub-[a-zA-Z0-9\\-]+)\\/([a-zA-Z0-9_\\-]+)(\\/.*)?$", yr.o);
    }

    public final List d0() {
        List defaultValue = CollectionsKt.listOf((Object[]) new String[]{"com.google.ads.mediation.inmobi.InMobiMediationAdapter", "com.google.ads.mediation.imobile.IMobileMediationAdapter", "com.google.ads.mediation.nend.NendMediationAdapter", "com.google.ads.mediation.adcolony.AdColonyMediationAdapter", "com.google.ads.mediation.facebook.FacebookMediationAdapter", "com.google.ads.mediation.mopub.MoPubMediationAdapter", "com.google.ads.mediation.applovin.AppLovinMediationAdapter", "com.google.ads.mediation.tapjoy.TapjoyMediationAdapter", "com.google.ads.mediation.vungle.VungleMediationAdapter", "com.google.ads.mediation.unity.UnityMediationAdapter", "com.google.ads.mediation.chartboost.ChartboostMediationAdapter", "com.google.ads.mediation.mytarget.MyTargetMediationAdapter", "com.google.ads.mediation.maio.MaioMediationAdapter", "com.google.ads.mediation.ironsource.IronSourceMediationAdapter", "com.google.ads.mediation.fyber.FyberMediationAdapter", "com.google.ads.mediation.verizon.VerizonMediationAdapter"});
        Intrinsics.checkNotNullParameter("gads:logged_adapter_version_classes", C3510b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return (List) a("gads:logged_adapter_version_classes", defaultValue, yr.n);
    }

    public final String e() {
        Intrinsics.checkNotNullParameter("gads:ad_mob_app_id_regex", C3510b4.i.W);
        Intrinsics.checkNotNullParameter("^(ca-app-pub-[a-zA-Z0-9\\-]+)~(.*)$", "defaultValue");
        return (String) a("gads:ad_mob_app_id_regex", "^(ca-app-pub-[a-zA-Z0-9\\-]+)~(.*)$", yr.o);
    }

    public final int e0() {
        Intrinsics.checkNotNullParameter("gads:maximum_number_of_ads_allowed_for_icon_ad", C3510b4.i.W);
        return ((Number) a("gads:maximum_number_of_ads_allowed_for_icon_ad", 5, yr.f)).intValue();
    }

    public final int f() {
        Intrinsics.checkNotNullParameter("gads:preload_default_buffer_size", C3510b4.i.W);
        return ((Number) a("gads:preload_default_buffer_size", 2, yr.f)).intValue();
    }

    public final String f0() {
        Intrinsics.checkNotNullParameter("gad:mraid:version", C3510b4.i.W);
        Intrinsics.checkNotNullParameter("3.0", "defaultValue");
        return (String) a("gad:mraid:version", "3.0", yr.o);
    }

    public final long g() {
        Duration.Companion companion = Duration.INSTANCE;
        return ((Duration) a("gads:preload_ad_default_refresh_interval:millis", wm2.a(10, DurationUnit.SECONDS, "gads:preload_ad_default_refresh_interval:millis", C3510b4.i.W), yr.j)).getRawValue();
    }

    public final boolean g0() {
        Intrinsics.checkNotNullParameter("gads:nas_collect_alpha:enabled", C3510b4.i.W);
        return ((Boolean) a("gads:nas_collect_alpha:enabled", Boolean.TRUE, yr.b)).booleanValue();
    }

    public final double h() {
        Intrinsics.checkNotNullParameter("gads:preload_retry_jitter", C3510b4.i.W);
        return ((Number) a("gads:preload_retry_jitter", Double.valueOf(0.2d), yr.c)).doubleValue();
    }

    public final boolean h0() {
        Intrinsics.checkNotNullParameter("gads:nas_collect_layout_params:enabled", C3510b4.i.W);
        return ((Boolean) a("gads:nas_collect_layout_params:enabled", Boolean.FALSE, yr.b)).booleanValue();
    }

    public final int i() {
        Intrinsics.checkNotNullParameter("gads:preload_max_buffer_size", C3510b4.i.W);
        return ((Number) a("gads:preload_max_buffer_size", 15, yr.f)).intValue();
    }

    public final List i0() {
        List defaultValue = CollectionsKt.listOf((Object[]) new String[]{"1.5.2", "1.4.14"});
        Intrinsics.checkNotNullParameter("gads:omid_instant_app_incompatible_versions", C3510b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return (List) a("gads:omid_instant_app_incompatible_versions", defaultValue, yr.g);
    }

    public final long j() {
        Duration.Companion companion = Duration.INSTANCE;
        return ((Duration) a("gads:preload_ad_default_refresh_max_interval:millis", wm2.a(5, DurationUnit.MINUTES, "gads:preload_ad_default_refresh_max_interval:millis", C3510b4.i.W), yr.j)).getRawValue();
    }

    public final String j0() {
        Intrinsics.checkNotNullParameter("gads:omid_partner_name_prefix", C3510b4.i.W);
        Intrinsics.checkNotNullParameter("Google/", "defaultValue");
        return (String) a("gads:omid_partner_name_prefix", "Google/", yr.o);
    }

    public final int k() {
        Intrinsics.checkNotNullParameter("gads:preload_ad_max_backoff:times", C3510b4.i.W);
        return ((Number) a("gads:preload_ad_max_backoff:times", 10, yr.f)).intValue();
    }

    public final boolean k0() {
        Intrinsics.checkNotNullParameter("gads:inspector:out_of_context_testing_request_params_enabled", C3510b4.i.W);
        return ((Boolean) a("gads:inspector:out_of_context_testing_request_params_enabled", Boolean.TRUE, yr.b)).booleanValue();
    }

    public final int l() {
        Intrinsics.checkNotNullParameter("gads:preload_min_buffer_size", C3510b4.i.W);
        return ((Number) a("gads:preload_min_buffer_size", 1, yr.f)).intValue();
    }

    public final String l0() {
        Intrinsics.checkNotNullParameter("gads:pact_active_exp_id:enabled", C3510b4.i.W);
        Intrinsics.checkNotNullParameter("[]", "defaultValue");
        return (String) a("gads:pact_active_exp_id:enabled", "[]", yr.o);
    }

    public final double m() {
        Intrinsics.checkNotNullParameter("gads:preload_retry_multiplier", C3510b4.i.W);
        return ((Number) a("gads:preload_retry_multiplier", Double.valueOf(2.0d), yr.c)).doubleValue();
    }

    public final hj2 m0() {
        return (hj2) ((hr) this.a).l.get();
    }

    public final boolean n() {
        Intrinsics.checkNotNullParameter("gads:ad_request_preconnect_during_signals_enabled", C3510b4.i.W);
        return ((Boolean) a("gads:ad_request_preconnect_during_signals_enabled", Boolean.FALSE, yr.b)).booleanValue();
    }

    public final Map n0() {
        p005kotlin.Pair pair = p005kotlin.TuplesKt.to(String.valueOf(s11.CUI_NAME_SIGNAL.getNumber()), Double.valueOf(0.003d));
        p005kotlin.Pair pair2 = p005kotlin.TuplesKt.to(String.valueOf(s11.CUI_NAME_SIGNAL_UPDATE_SIGNALS.getNumber()), Double.valueOf(3.0E-4d));
        String strValueOf = String.valueOf(s11.CUI_NAME_ADREQUEST.getNumber());
        Double dValueOf = Double.valueOf(0.1d);
        p005kotlin.Pair pair3 = p005kotlin.TuplesKt.to(strValueOf, dValueOf);
        p005kotlin.Pair pair4 = p005kotlin.TuplesKt.to(String.valueOf(s11.CUI_NAME_SDKINIT_SDKCORE.getNumber()), dValueOf);
        p005kotlin.Pair pair5 = p005kotlin.TuplesKt.to(String.valueOf(s11.CUI_NAME_WEBVIEW_INITIALIZATION.getNumber()), dValueOf);
        p005kotlin.Pair pair6 = p005kotlin.TuplesKt.to(String.valueOf(s11.CUI_NAME_WEBVIEW_LOAD.getNumber()), dValueOf);
        String strValueOf2 = String.valueOf(s11.CUI_NAME_INSTALL_REFERRER_DETAILS.getNumber());
        Double dValueOf2 = Double.valueOf(1.0d);
        Map defaultValue = MapsKt.mapOf(pair, pair2, pair3, pair4, pair5, pair6, p005kotlin.TuplesKt.to(strValueOf2, dValueOf2), p005kotlin.TuplesKt.to(String.valueOf(s11.CUI_NAME_INSTALL_REFERRER_TASK.getNumber()), dValueOf2), p005kotlin.TuplesKt.to(String.valueOf(s11.CUI_NAME_POST_CLICK_LIFECYCLE_MONITORING.getNumber()), dValueOf2), p005kotlin.TuplesKt.to(String.valueOf(s11.CUI_NAME_HSDP_SERVICE.getNumber()), dValueOf2), p005kotlin.TuplesKt.to(String.valueOf(s11.CUI_NAME_AD_INSPECTOR_DISABLED.getNumber()), dValueOf2), p005kotlin.TuplesKt.to(String.valueOf(s11.CUI_NAME_AD_INSPECTOR_GLOBAL_ALLOWLIST_OVERRIDE.getNumber()), dValueOf2));
        Intrinsics.checkNotNullParameter("gads:per_trace_sample_rate", C3510b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return (Map) a("gads:per_trace_sample_rate", defaultValue, yr.q);
    }

    public final String o() {
        Intrinsics.checkNotNullParameter("gads:ad_unit_id_chars_to_escape", C3510b4.i.W);
        Intrinsics.checkNotNullParameter("<([{\\^=$!|]})?*+.>-", "defaultValue");
        return (String) a("gads:ad_unit_id_chars_to_escape", "<([{\\^=$!|]})?*+.>-", yr.o);
    }

    public final yp2 o0() {
        return (yp2) ((hr) this.a).m.get();
    }

    public final long p() {
        Duration.Companion companion = Duration.INSTANCE;
        return ((Duration) a("gads:adapter_initialization:timeout", wm2.a(30, DurationUnit.SECONDS, "gads:adapter_initialization:timeout", C3510b4.i.W), yr.l)).getRawValue();
    }

    public final long p0() {
        Duration.Companion companion = Duration.INSTANCE;
        return ((Duration) a("gads:preload_delay_after_removal:seconds", wm2.a(10, DurationUnit.SECONDS, "gads:preload_delay_after_removal:seconds", C3510b4.i.W), yr.l)).getRawValue();
    }

    public final int q() {
        Intrinsics.checkNotNullParameter("gads:app_event_queue_size", C3510b4.i.W);
        return ((Number) a("gads:app_event_queue_size", 20, yr.f)).intValue();
    }

    public final boolean q0() {
        Intrinsics.checkNotNullParameter("gads:preload_validator_availability_check:enabled", C3510b4.i.W);
        return ((Boolean) a("gads:preload_validator_availability_check:enabled", Boolean.FALSE, yr.b)).booleanValue();
    }

    public final String r() {
        Intrinsics.checkNotNullParameter("gads:gads:blob_encryption_public_key", C3510b4.i.W);
        Intrinsics.checkNotNullParameter("MIGdMA0GCSqGSIb3DQEBAQUAA4GLADCBhwKBgQDILejyvRuVmPUcwUTpEVaE8A_-D7bZPnTOMs91 WZ0iSLQrK0lcICNKeWom1jWNBxjw89oyra30BlZCDEu7nfGacaTmzX74wD_RJV3xh81_9l2PWr46 0J9DJcXSi4yGzJyyUYp7Q1YXam8J6DYWV6PoemmP71T2fbm9i1VQy1NFgQIBAw", "defaultValue");
        return (String) a("gads:gads:blob_encryption_public_key", "MIGdMA0GCSqGSIb3DQEBAQUAA4GLADCBhwKBgQDILejyvRuVmPUcwUTpEVaE8A_-D7bZPnTOMs91 WZ0iSLQrK0lcICNKeWom1jWNBxjw89oyra30BlZCDEu7nfGacaTmzX74wD_RJV3xh81_9l2PWr46 0J9DJcXSi4yGzJyyUYp7Q1YXam8J6DYWV6PoemmP71T2fbm9i1VQy1NFgQIBAw", yr.o);
    }

    public final boolean r0() {
        Intrinsics.checkNotNullParameter("gads:preload_validator_buffer_waste_check:enabled", C3510b4.i.W);
        return ((Boolean) a("gads:preload_validator_buffer_waste_check:enabled", Boolean.FALSE, yr.b)).booleanValue();
    }

    public final String s() {
        String defaultValue = Base64.encodeToString(new byte[]{0, 19, -48, -88, -79}, 0);
        Intrinsics.checkNotNullExpressionValue(defaultValue, "encodeToString(...)");
        Intrinsics.checkNotNullParameter("gads:blob_encryption_public_key_first_hashed_bytes", C3510b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return (String) a("gads:blob_encryption_public_key_first_hashed_bytes", defaultValue, yr.o);
    }

    public final long s0() {
        Duration.Companion companion = Duration.INSTANCE;
        return ((Duration) a("gads:preload_validator_is_ad_available_check_window:millis", wm2.a(1, DurationUnit.SECONDS, "gads:preload_validator_is_ad_available_check_window:millis", C3510b4.i.W), yr.j)).getRawValue();
    }

    public final String t() {
        Intrinsics.checkNotNullParameter("gads:blob_url_key", C3510b4.i.W);
        Intrinsics.checkNotNullParameter("blob", "defaultValue");
        return (String) a("gads:blob_url_key", "blob", yr.o);
    }

    public final int t0() {
        Intrinsics.checkNotNullParameter("gads:preload_validator_max_is_ad_available_checks_per_window", C3510b4.i.W);
        return ((Number) a("gads:preload_validator_max_is_ad_available_checks_per_window", 10, yr.f)).intValue();
    }

    public final boolean u() {
        Intrinsics.checkNotNullParameter("gads:clear_webview_cache:enabled", C3510b4.i.W);
        return ((Boolean) a("gads:clear_webview_cache:enabled", Boolean.FALSE, yr.b)).booleanValue();
    }

    public final boolean u0() {
        Intrinsics.checkNotNullParameter("gads:preload_validator_start_or_stop_in_failed_to_load_callback_check:enabled", C3510b4.i.W);
        return ((Boolean) a("gads:preload_validator_start_or_stop_in_failed_to_load_callback_check:enabled", Boolean.FALSE, yr.b)).booleanValue();
    }

    public final String v() {
        Intrinsics.checkNotNullParameter("gads:client_default_content_url_domain_suffix", C3510b4.i.W);
        Intrinsics.checkNotNullParameter("adsenseformobileapps.com", "defaultValue");
        return (String) a("gads:client_default_content_url_domain_suffix", "adsenseformobileapps.com", yr.o);
    }

    public final long v0() {
        Duration.Companion companion = Duration.INSTANCE;
        return ((Duration) a("gads:preload_ad_ttl:minutes", wm2.a(60, DurationUnit.MINUTES, "gads:preload_ad_ttl:minutes", C3510b4.i.W), yr.m)).getRawValue();
    }

    public final Map w() {
        return (Map) ((hr) this.a).n.get();
    }

    public final String w0() {
        Intrinsics.checkNotNullParameter("gads:remote_capture_service_url", C3510b4.i.W);
        Intrinsics.checkNotNullParameter("https://pagead2.googlesyndication.com/pagead/ping?e=2&f=1", "defaultValue");
        return (String) a("gads:remote_capture_service_url", "https://pagead2.googlesyndication.com/pagead/ping?e=2&f=1", yr.o);
    }

    public final long x() {
        long j = A;
        Intrinsics.checkNotNullParameter("gads:cronet_init_timeout:seconds", C3510b4.i.W);
        return ((Duration) a("gads:cronet_init_timeout:seconds", Duration.m4365boximpl(j), yr.l)).getRawValue();
    }

    public final boolean x0() {
        Intrinsics.checkNotNullParameter("gads:request_throttler:enabled", C3510b4.i.W);
        return ((Boolean) a("gads:request_throttler:enabled", Boolean.TRUE, yr.b)).booleanValue();
    }

    public final int y() {
        Intrinsics.checkNotNullParameter("gads:cronet_max_redirects", C3510b4.i.W);
        return ((Number) a("gads:cronet_max_redirects", 5, yr.f)).intValue();
    }

    public final long y0() {
        Duration.Companion companion = Duration.INSTANCE;
        return ((Duration) a("gads:request_throttler_retry_delay_ms", wm2.a(500, DurationUnit.MILLISECONDS, "gads:request_throttler_retry_delay_ms", C3510b4.i.W), yr.j)).getRawValue();
    }

    public final String z() {
        Intrinsics.checkNotNullParameter("gads:sdk_csi_server", C3510b4.i.W);
        Intrinsics.checkNotNullParameter("https://csi.gstatic.com/csi", "defaultValue");
        return (String) a("gads:sdk_csi_server", "https://csi.gstatic.com/csi", yr.o);
    }

    public final boolean z0() {
        Intrinsics.checkNotNullParameter("gads:reschedule_preload_expiration_on_foreground:enabled", C3510b4.i.W);
        return ((Boolean) a("gads:reschedule_preload_expiration_on_foreground:enabled", Boolean.FALSE, yr.b)).booleanValue();
    }
}

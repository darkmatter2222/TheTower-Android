package com.applovin.impl.sdk;

import android.os.Bundle;
import android.view.View;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorPublisher;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.a4;
import com.applovin.impl.c3;
import com.applovin.impl.c5;
import com.applovin.impl.communicator.CommunicatorMessageImpl;
import com.applovin.impl.f3;
import com.applovin.impl.g3;
import com.applovin.impl.h3;
import com.applovin.impl.i6;
import com.applovin.impl.k8;
import com.applovin.impl.l3;
import com.applovin.impl.n5;
import com.applovin.impl.n7;
import com.applovin.impl.o0;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.u7;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.ironsource.C3510b4;
import com.ironsource.Ue;
import com.tapjoy.TapjoyConstants;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class k implements AppLovinCommunicatorSubscriber, AppLovinCommunicatorPublisher {
    private final l a;
    private final AppLovinCommunicator b;

    k(l lVar) {
        this.a = lVar;
        AppLovinCommunicator appLovinCommunicator = AppLovinCommunicator.getInstance(l.p());
        this.b = appLovinCommunicator;
        if (((Boolean) lVar.a(c5.A7)).booleanValue()) {
            appLovinCommunicator.a(lVar);
            appLovinCommunicator.subscribe(this, n7.a);
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x00a0  */
    private Bundle a(c3 c3Var) {
        View viewV0;
        Bundle bundle = new Bundle();
        bundle.putString("id", c3Var.T());
        bundle.putString("network_name", c3Var.c());
        bundle.putString("max_ad_unit_id", c3Var.getAdUnitId());
        bundle.putString("third_party_ad_placement_id", c3Var.U());
        bundle.putString(FirebaseAnalytics.Param.AD_FORMAT, c3Var.getFormat().getLabel());
        BundleUtils.putStringIfValid("creative_id", c3Var.getCreativeId(), bundle);
        BundleUtils.putStringIfValid("adomain", c3Var.v(), bundle);
        BundleUtils.putStringIfValid("dsp_name", c3Var.getDspName(), bundle);
        if ("CUSTOM_NETWORK_SDK".equalsIgnoreCase(c3Var.c())) {
            bundle.putString("custom_sdk_network_name", c3Var.getNetworkName());
        }
        bundle.putAll(JsonUtils.toBundle(c3Var.y()));
        if (!(c3Var instanceof l3)) {
            if (c3Var instanceof g3) {
                Bundle bundle2 = ((g3) c3Var).t0().getBundle("applovin_ad_view_info");
                bundle.putString("ad_view", BundleUtils.getString("ad_view_address", "N/A", bundle2));
                bundle.putString("video_view", BundleUtils.getString("video_view_address", "N/A", bundle2));
            }
            return bundle;
        }
        if (c3Var instanceof f3) {
            viewV0 = ((f3) c3Var).z();
        } else if (c3Var instanceof h3) {
            h3 h3Var = (h3) c3Var;
            if (h3Var.A0()) {
                viewV0 = null;
            } else {
                viewV0 = h3Var.v0() != null ? h3Var.v0() : h3Var.w0();
            }
        } else {
            viewV0 = null;
        }
        bundle.putString("ad_view", viewV0 != null ? k8.a(viewV0) : "N/A");
        return bundle;
    }

    private boolean b(String str) {
        if (((Boolean) this.a.a(c5.A7)).booleanValue()) {
            return this.a.c(c5.z7).contains(str) || this.b.hasSubscriber(str);
        }
        return false;
    }

    public void a() {
        if (b("privacy_setting_updated")) {
            a(new Bundle(), "privacy_setting_updated");
        }
    }

    public void a(Bundle bundle, String str) {
        if (b(str)) {
            this.b.getMessagingService().publish(CommunicatorMessageImpl.create(bundle, str, this, this.a.c(c5.z7).contains(str)));
        }
    }

    public void a(c3 c3Var, String str) {
        if (b("ad_callback_blocked_after_hidden")) {
            Bundle bundleA = a(c3Var);
            bundleA.putString("callback_name", str);
            a(bundleA, "ad_callback_blocked_after_hidden");
        }
    }

    public void a(MaxAdapter.InitializationStatus initializationStatus, String str) {
        if (b("adapter_initialization_status")) {
            Bundle bundle = new Bundle();
            bundle.putString("adapter_class", str);
            bundle.putInt("init_status", initializationStatus.getCode());
            a(bundle, "adapter_initialization_status");
        }
    }

    public void a(String str, String str2) {
        if (b("network_sdk_version_updated")) {
            Bundle bundle = new Bundle();
            bundle.putString("adapter_class", str2);
            bundle.putString("sdk_version", str);
            a(bundle, "network_sdk_version_updated");
        }
    }

    public void a(String str, String str2, int i, Object obj, String str3, boolean z) {
        if (b("receive_http_response")) {
            Bundle bundle = new Bundle();
            bundle.putString("id", str);
            bundle.putString("url", str2);
            bundle.putInt("code", i);
            bundle.putBundle(C3510b4.i.E0, JsonUtils.toBundle(obj));
            bundle.putBoolean("success", z);
            BundleUtils.putString("error_message", str3, bundle);
            a(bundle, "receive_http_response");
        }
    }

    public void a(String str, String str2, String str3) {
        if (b("responses")) {
            String strMaybeConvertToIndentedString = JsonUtils.maybeConvertToIndentedString(str3, 2);
            String strMaybeConvertToIndentedString2 = JsonUtils.maybeConvertToIndentedString(str, 2);
            Bundle bundle = new Bundle();
            bundle.putString("request_url", str2);
            bundle.putString("request_body", strMaybeConvertToIndentedString);
            bundle.putString(Ue.n, strMaybeConvertToIndentedString2);
            a(bundle, "responses");
        }
    }

    public void a(List list) {
        if (b("live_networks_updated")) {
            if (list == null || list.isEmpty()) {
                a(Bundle.EMPTY, "live_networks_updated");
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("live_networks", new ArrayList<>(list));
            a(bundle, "live_networks_updated");
        }
    }

    public void a(JSONObject jSONObject, boolean z) {
        if (b("safedk_init") && com.applovin.impl.j.c()) {
            Bundle bundle = new Bundle();
            bundle.putString(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.a.k0());
            bundle.putString("applovin_random_token", this.a.j0());
            bundle.putString("compass_random_token", this.a.v());
            bundle.putString(TapjoyConstants.TJC_DEVICE_TYPE_NAME, AppLovinSdkUtils.isTablet(l.p()) ? "tablet" : "phone");
            bundle.putString("init_success", String.valueOf(z));
            bundle.putParcelableArrayList("installed_mediation_adapters", JsonUtils.toBundle(a4.b(this.a)));
            JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "communicator_settings", (JSONObject) null);
            Bundle bundle2 = (Bundle) bundle.clone();
            bundle2.putString("user_id", this.a.z0().e());
            JSONObject jSONObject3 = JsonUtils.getJSONObject(jSONObject2, "safedk_settings", new JSONObject());
            if (!((Boolean) this.a.a(c5.B7)).booleanValue()) {
                JSONObject jSONObject4 = new JSONObject();
                JsonUtils.putBoolean(jSONObject4, "deactivated", true);
                JsonUtils.putJSONObject(jSONObject3, "safeDKDeactivation", jSONObject4);
            }
            bundle2.putBundle("settings", JsonUtils.toBundle(jSONObject3));
            this.a.Q();
            if (p.a()) {
                this.a.Q().a("CommunicatorService", "Sending \"safedk_init\" message: " + bundle);
            }
            a(bundle2, "safedk_init");
        }
    }

    public boolean a(String str) {
        return n7.a.contains(str);
    }

    public void b(c3 c3Var) {
        if (b("max_revenue_events")) {
            Bundle bundleA = a(c3Var);
            bundleA.putAll(JsonUtils.toBundle(c3Var.S()));
            bundleA.putString(TapjoyConstants.TJC_DEVICE_COUNTRY_CODE, this.a.w().getCountryCode());
            a(bundleA, "max_revenue_events");
        }
    }

    public void b(c3 c3Var, String str) {
        if (b("max_ad_events")) {
            Bundle bundleA = a(c3Var);
            bundleA.putString("type", str);
            this.a.Q();
            if (p.a()) {
                this.a.Q().a("CommunicatorService", "Sending \"max_ad_events\" message: " + bundleA);
            }
            a(bundleA, "max_ad_events");
        }
    }

    public void b(String str, String str2) {
        if (b("user_info") && com.applovin.impl.j.c()) {
            Bundle bundle = new Bundle(2);
            bundle.putString("user_id", StringUtils.emptyIfNull(str));
            bundle.putString("applovin_random_token", str2);
            a(bundle, "user_info");
        }
    }

    public void b(List list) {
        if (b("test_mode_networks_updated")) {
            if (list == null || list.isEmpty()) {
                a(Bundle.EMPTY, "test_mode_networks_updated");
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("test_mode_networks", new ArrayList<>(list));
            a(bundle, "test_mode_networks_updated");
        }
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return "applovin_sdk";
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        Map<String, Object> map;
        Map<String, Object> map2;
        if (((Boolean) this.a.a(c5.A7)).booleanValue()) {
            if ("send_http_request".equalsIgnoreCase(appLovinCommunicatorMessage.getTopic())) {
                Bundle messageData = appLovinCommunicatorMessage.getMessageData();
                Map<String, String> stringMap = BundleUtils.toStringMap(messageData.getBundle("query_params"));
                Map<String, Object> map3 = BundleUtils.toMap(messageData.getBundle("post_body"));
                Map<String, String> stringMap2 = BundleUtils.toStringMap(messageData.getBundle("headers"));
                String string = messageData.getString("id", "");
                if (!map3.containsKey(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY)) {
                    map3.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.a.k0());
                }
                this.a.h0().e(new com.applovin.impl.sdk.network.d.b().d(messageData.getString("url")).a(messageData.getString("backup_url")).b(stringMap).c(map3).a(stringMap2).a(((Boolean) this.a.a(c5.x5)).booleanValue()).b(string).a());
                return;
            }
            if (!"send_http_request_v2".equalsIgnoreCase(appLovinCommunicatorMessage.getTopic())) {
                if ("set_ad_request_query_params".equalsIgnoreCase(appLovinCommunicatorMessage.getTopic())) {
                    this.a.l().addCustomQueryParams(u7.a((Map) BundleUtils.toMap(appLovinCommunicatorMessage.getMessageData())));
                    return;
                } else if ("set_ad_request_post_body".equalsIgnoreCase(appLovinCommunicatorMessage.getTopic())) {
                    this.a.l().setCustomPostBody(BundleUtils.toJSONObject(appLovinCommunicatorMessage.getMessageData()));
                    return;
                } else {
                    if ("set_mediate_request_post_body_data".equalsIgnoreCase(appLovinCommunicatorMessage.getTopic())) {
                        this.a.Z().setCustomPostBodyData(BundleUtils.toJSONObject(appLovinCommunicatorMessage.getMessageData()));
                        return;
                    }
                    return;
                }
            }
            Bundle messageData2 = appLovinCommunicatorMessage.getMessageData();
            String string2 = messageData2.getString("http_method", "POST");
            long millis = messageData2.containsKey("timeout_sec") ? TimeUnit.SECONDS.toMillis(messageData2.getLong("timeout_sec")) : ((Long) this.a.a(c5.t3)).longValue();
            int i = messageData2.getInt("retry_count", ((Integer) this.a.a(c5.u3)).intValue());
            long millis2 = messageData2.containsKey("retry_delay_sec") ? TimeUnit.SECONDS.toMillis(messageData2.getLong("retry_delay_sec")) : ((Long) this.a.a(c5.v3)).longValue();
            Map<String, String> stringMap3 = BundleUtils.toStringMap(messageData2.getBundle("query_params"));
            if ("GET".equalsIgnoreCase(string2)) {
                if (messageData2.getBoolean("include_data_collector_info", true)) {
                    map2 = null;
                    stringMap3.putAll(BundleUtils.toStringMap(CollectionUtils.toBundle(this.a.B().a((Map) null, false, false))));
                } else {
                    map2 = null;
                }
                millis = millis;
                i = i;
                map = map2;
            } else {
                map = BundleUtils.toMap(messageData2.getBundle("post_body"));
                if (messageData2.getBoolean("include_data_collector_info", true)) {
                    Map mapH = this.a.B().H();
                    Map mapP = this.a.B().p();
                    if (mapP.containsKey("idfv") && mapP.containsKey("idfv_scope")) {
                        String str = (String) mapP.get("idfv");
                        Integer num = (Integer) mapP.get("idfv_scope");
                        num.intValue();
                        mapP.remove("idfv");
                        mapP.remove("idfv_scope");
                        mapH.put("idfv", str);
                        mapH.put("idfv_scope", num);
                    }
                    mapH.put("server_installed_at", this.a.a(c5.o));
                    mapH.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.a.k0());
                    map.put(TapjoyConstants.TJC_APP_PLACEMENT, mapH);
                    map.put("device", mapP);
                } else {
                    millis = millis;
                    i = i;
                }
            }
            this.a.s0().a((n5) new o0(appLovinCommunicatorMessage.getPublisherId(), com.applovin.impl.sdk.network.a.a(this.a).b(messageData2.getString("url")).a(messageData2.getString("backup_url")).b(stringMap3).c(string2).a((Map) BundleUtils.toStringMap(messageData2.getBundle("headers"))).a(map != null ? new JSONObject(map) : null).c((int) millis).a(i).b((int) millis2).a((Object) new JSONObject()).a(messageData2.getBoolean("is_encoding_enabled", false)).a(), this.a), i6.b.OTHER);
        }
    }
}

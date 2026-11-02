package com.google.android.libraries.ads.mobile.sdk.initialization;

import android.os.Bundle;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.libraries.ads.mobile.sdk.common.RequestConfiguration;
import com.ironsource.adapters.admob.AdMobConstants;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 &2\u00020\u0001:\u0002'&R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0010\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\n\u001a\u0004\b\u000f\u0010\fR\u0017\u0010\u0016\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\u001c\u001a\u00020\u00178\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0019\u0010\"\u001a\u0004\u0018\u00010\u001d8\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\u0017\u0010%\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b#\u0010\n\u001a\u0004\b$\u0010\f¨\u0006("}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;", "", "", "a", "Ljava/lang/String;", "getApplicationId", "()Ljava/lang/String;", "applicationId", "", "b", "Z", "getNativeAdDebuggerDisabled", "()Z", "nativeAdDebuggerDisabled", "c", "getMediationAdapterInitializationDisabled", "mediationAdapterInitializationDisabled", "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;", "d", "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;", "getRequestConfiguration", "()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;", "requestConfiguration", "Landroid/os/Bundle;", "e", "Landroid/os/Bundle;", "getExtras", "()Landroid/os/Bundle;", HandleInvocationsFromAdViewer.KEY_EXTRAS, "Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;", "f", "Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;", "getAdapterInitializationConfig", "()Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;", "adapterInitializationConfig", "h", "getSdkCrashReportingDisabled", "sdkCrashReportingDisabled", "Companion", "Builder", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class InitializationConfig {
    public static final String FORCE_CRONET_FALLBACK_KEY = "force_cronet_java_fallback_provider";
    public static final String FORCE_CRONET_KEY = "force_use_cronet";
    public static final String WEBVIEW_APIS_FOR_ADS_APPLICATION_ID = "webview_api_for_ads_application_id";

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final String applicationId;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final boolean nativeAdDebuggerDisabled;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final boolean mediationAdapterInitializationDisabled;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final RequestConfiguration requestConfiguration;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private final Bundle extras;

    /* JADX INFO: renamed from: f, reason: from kotlin metadata */
    private final AdapterInitializationConfig adapterInitializationConfig;
    private final String g;

    /* JADX INFO: renamed from: h, reason: from kotlin metadata */
    private final boolean sdkCrashReportingDisabled;

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0019\u001a\u00020\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\b\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\r\u0010\n\u001a\u00020\u0000¢\u0006\u0004\b\n\u0010\u000bJ\u0015\u0010\u000e\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\u0000¢\u0006\u0004\b\u0010\u0010\u000bJ\r\u0010\u0011\u001a\u00020\u0000¢\u0006\u0004\b\u0011\u0010\u000bJ\u0017\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0012H\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\r\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;", "", "", "plugin", "setPlugin", "(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;", "Landroid/os/Bundle;", HandleInvocationsFromAdViewer.KEY_EXTRAS, "setExtras", "(Landroid/os/Bundle;)Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;", "setNativeValidatorDisabled", "()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;", "requestConfiguration", "setRequestConfiguration", "(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;)Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;", AdMobConstants.Logs.DISABLE_MEDIATION_ADAPTER_INIT, "disableSdkCrashReporting", "Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;", "adapterInitializationConfig", "setAdapterInitializationConfig", "(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;)Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;", "build", "()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;", "applicationId", "<init>", "(Ljava/lang/String;)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class Builder {
        private final String a;
        private Bundle b;
        private RequestConfiguration c;
        private boolean d;
        private boolean e;
        private AdapterInitializationConfig f;
        private String g;
        private boolean h;

        public Builder(String applicationId) {
            Intrinsics.checkNotNullParameter(applicationId, "applicationId");
            this.a = applicationId;
            this.b = new Bundle();
            this.c = new RequestConfiguration.Builder().build();
        }

        @KeepForSdk
        private final Builder setPlugin(String plugin) {
            this.g = plugin;
            return this;
        }

        public final InitializationConfig build() {
            return new InitializationConfig(this.a, this.d, this.e, this.c, this.b, this.f, this.g, this.h, 0);
        }

        public final Builder disableMediationAdapterInitialization() {
            this.e = true;
            return this;
        }

        public final Builder disableSdkCrashReporting() {
            this.h = true;
            return this;
        }

        public final Builder setAdapterInitializationConfig(AdapterInitializationConfig adapterInitializationConfig) {
            Intrinsics.checkNotNullParameter(adapterInitializationConfig, "adapterInitializationConfig");
            this.f = adapterInitializationConfig;
            return this;
        }

        public final Builder setExtras(Bundle extras) {
            Intrinsics.checkNotNullParameter(extras, "extras");
            this.b = extras;
            return this;
        }

        public final Builder setNativeValidatorDisabled() {
            this.d = true;
            return this;
        }

        public final Builder setRequestConfiguration(RequestConfiguration requestConfiguration) {
            Intrinsics.checkNotNullParameter(requestConfiguration, "requestConfiguration");
            this.c = requestConfiguration;
            return this;
        }
    }

    private InitializationConfig(String str, boolean z, boolean z2, RequestConfiguration requestConfiguration, Bundle bundle, AdapterInitializationConfig adapterInitializationConfig, String str2, boolean z3) {
        this.applicationId = str;
        this.nativeAdDebuggerDisabled = z;
        this.mediationAdapterInitializationDisabled = z2;
        this.requestConfiguration = requestConfiguration;
        this.extras = bundle;
        this.adapterInitializationConfig = adapterInitializationConfig;
        this.g = str2;
        this.sdkCrashReportingDisabled = z3;
    }

    public /* synthetic */ InitializationConfig(String str, boolean z, boolean z2, RequestConfiguration requestConfiguration, Bundle bundle, AdapterInitializationConfig adapterInitializationConfig, String str2, boolean z3, int i) {
        this(str, z, z2, requestConfiguration, bundle, adapterInitializationConfig, str2, z3);
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final /* synthetic */ String getG() {
        return this.g;
    }

    public final AdapterInitializationConfig getAdapterInitializationConfig() {
        return this.adapterInitializationConfig;
    }

    public final String getApplicationId() {
        return this.applicationId;
    }

    public final Bundle getExtras() {
        return this.extras;
    }

    public final boolean getMediationAdapterInitializationDisabled() {
        return this.mediationAdapterInitializationDisabled;
    }

    public final boolean getNativeAdDebuggerDisabled() {
        return this.nativeAdDebuggerDisabled;
    }

    public final RequestConfiguration getRequestConfiguration() {
        return this.requestConfiguration;
    }

    public final boolean getSdkCrashReportingDisabled() {
        return this.sdkCrashReportingDisabled;
    }
}

package com.unity3d.ads.core.configuration;

import com.ironsource.C3510b4;
import com.unity3d.ads.core.data.model.InitializationConfigurationInternal;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.services.core.misc.JsonStorage;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: compiled from: MediationTraitsMetadataReader.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\b\u0000\u0018\u0000 \u00132\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0013B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ\u0010\u0010\u000e\u001a\u0004\u0018\u00010\f2\u0006\u0010\u000b\u001a\u00020\fJ\u0015\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\u0011J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\f2\u0006\u0010\u000b\u001a\u00020\fH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader;", "Lcom/unity3d/ads/core/configuration/MetadataReader;", "Lorg/json/JSONObject;", "jsonStorage", "Lcom/unity3d/services/core/misc/JsonStorage;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "<init>", "(Lcom/unity3d/services/core/misc/JsonStorage;Lcom/unity3d/ads/core/data/repository/SessionRepository;)V", "getBooleanTrait", "", C3510b4.i.W, "", "(Ljava/lang/String;)Ljava/lang/Boolean;", "getStringTrait", "getLongTrait", "", "(Ljava/lang/String;)Ljava/lang/Long;", "extra", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MediationTraitsMetadataReader extends MetadataReader<JSONObject> {
    public static final String ASYNC_TOKEN_SIGNALS = "asyncTokenSignals";
    public static final String BOLD_SDK_ENABLED = "boldSdkEnabled";
    public static final String HTTP_CLIENT_FETCH_TIMEOUT_MS = "httpClientFetchTimeoutMs";
    public static final String LAZY_STATIC_DEVICE_INFO = "lazyStaticDeviceInfo";
    public static final String MEDIATION_TRAITS = "mediation.traits.value";
    public static final String REPORT_CAPABILITIES = "reportCapabilities";
    public static final String USE_FAST_INIT = "useFastInit";
    public static final String USE_HTTP_CLIENT = "useHttpClient";
    private final SessionRepository sessionRepository;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediationTraitsMetadataReader(JsonStorage jsonStorage, SessionRepository sessionRepository) {
        super(jsonStorage, MEDIATION_TRAITS);
        Intrinsics.checkNotNullParameter(jsonStorage, "jsonStorage");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        this.sessionRepository = sessionRepository;
    }

    private final String extra(String key) {
        Map<String, String> extras;
        InitializationConfigurationInternal initializationConfiguration = this.sessionRepository.getInitializationConfiguration();
        if (initializationConfiguration == null || (extras = initializationConfiguration.getExtras()) == null) {
            return null;
        }
        return extras.get(key);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0031  */
    public final Boolean getBooleanTrait(String key) throws JSONException {
        Boolean booleanStrictOrNull;
        Intrinsics.checkNotNullParameter(key, "key");
        String strExtra = extra(key);
        if (strExtra != null && (booleanStrictOrNull = StringsKt.toBooleanStrictOrNull(strExtra)) != null) {
            return booleanStrictOrNull;
        }
        MediationTraitsMetadataReader mediationTraitsMetadataReader = this;
        Object obj = mediationTraitsMetadataReader.getJsonStorage().get(mediationTraitsMetadataReader.getKey());
        if (obj == null) {
            obj = null;
        } else {
            if (!(obj != null ? obj instanceof JSONObject : true)) {
                obj = null;
            }
            if (obj == null) {
                obj = null;
            }
        }
        JSONObject jSONObject = (JSONObject) obj;
        if (jSONObject != null) {
            if (!jSONObject.has(key)) {
                jSONObject = null;
            }
            if (jSONObject != null) {
                return Boolean.valueOf(jSONObject.optBoolean(key));
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0031  */
    public final Long getLongTrait(String key) throws JSONException {
        Long longOrNull;
        Intrinsics.checkNotNullParameter(key, "key");
        String strExtra = extra(key);
        if (strExtra != null && (longOrNull = StringsKt.toLongOrNull(strExtra)) != null) {
            return longOrNull;
        }
        MediationTraitsMetadataReader mediationTraitsMetadataReader = this;
        Object obj = mediationTraitsMetadataReader.getJsonStorage().get(mediationTraitsMetadataReader.getKey());
        if (obj == null) {
            obj = null;
        } else {
            if (!(obj != null ? obj instanceof JSONObject : true)) {
                obj = null;
            }
            if (obj == null) {
                obj = null;
            }
        }
        JSONObject jSONObject = (JSONObject) obj;
        if (jSONObject != null) {
            if (!jSONObject.has(key)) {
                jSONObject = null;
            }
            if (jSONObject != null) {
                return Long.valueOf(jSONObject.optLong(key));
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0029  */
    public final String getStringTrait(String key) throws JSONException {
        Intrinsics.checkNotNullParameter(key, "key");
        String strExtra = extra(key);
        if (strExtra != null) {
            return strExtra;
        }
        MediationTraitsMetadataReader mediationTraitsMetadataReader = this;
        Object obj = mediationTraitsMetadataReader.getJsonStorage().get(mediationTraitsMetadataReader.getKey());
        if (obj == null) {
            obj = null;
        } else {
            if (!(obj != null ? obj instanceof JSONObject : true)) {
                obj = null;
            }
            if (obj == null) {
                obj = null;
            }
        }
        JSONObject jSONObject = (JSONObject) obj;
        if (jSONObject != null) {
            if (!jSONObject.has(key)) {
                jSONObject = null;
            }
            if (jSONObject != null) {
                return jSONObject.optString(key);
            }
        }
        return null;
    }
}

package com.unity3d.ads.core.configuration;

import com.google.android.gms.ads.RequestConfiguration;
import com.ironsource.C3510b4;
import com.unity3d.services.core.misc.JsonStorage;
import org.json.JSONException;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MetadataReader.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ$\u0010\r\u001a\u0004\u0018\u0001H\u0001\"\u0006\b\u0001\u0010\u0001\u0018\u00012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u0001H\u0001H\u0086\b¢\u0006\u0002\u0010\u000fJ$\u0010\u0010\u001a\u0004\u0018\u0001H\u0001\"\u0006\b\u0001\u0010\u0001\u0018\u00012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u0001H\u0001H\u0086\b¢\u0006\u0002\u0010\u000fR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0011"}, d2 = {"Lcom/unity3d/ads/core/configuration/MetadataReader;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "", "jsonStorage", "Lcom/unity3d/services/core/misc/JsonStorage;", C3510b4.i.W, "", "<init>", "(Lcom/unity3d/services/core/misc/JsonStorage;Ljava/lang/String;)V", "getJsonStorage", "()Lcom/unity3d/services/core/misc/JsonStorage;", "getKey", "()Ljava/lang/String;", "read", "defaultValue", "(Ljava/lang/Object;)Ljava/lang/Object;", "readAndDelete", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class MetadataReader<T> {
    private final JsonStorage jsonStorage;
    private final String key;

    public MetadataReader(JsonStorage jsonStorage, String key) {
        Intrinsics.checkNotNullParameter(jsonStorage, "jsonStorage");
        Intrinsics.checkNotNullParameter(key, "key");
        this.jsonStorage = jsonStorage;
        this.key = key;
    }

    public static /* synthetic */ Object read$default(MetadataReader metadataReader, Object obj, int i, Object obj2) throws JSONException {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: read");
        }
        if ((i & 1) != 0) {
            obj = null;
        }
        Object obj3 = metadataReader.getJsonStorage().get(metadataReader.getKey());
        if (obj3 != null) {
            Intrinsics.reifiedOperationMarker(3, RequestConfiguration.MAX_AD_CONTENT_RATING_T);
            if (!(obj3 instanceof Object)) {
                obj3 = obj;
            }
            if (obj3 != null) {
                return obj3;
            }
        }
        return obj;
    }

    public static /* synthetic */ Object readAndDelete$default(MetadataReader metadataReader, Object obj, int i, Object obj2) throws JSONException {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: readAndDelete");
        }
        if ((i & 1) != 0) {
            obj = null;
        }
        Object obj3 = metadataReader.getJsonStorage().get(metadataReader.getKey());
        if (obj3 != null) {
            Intrinsics.reifiedOperationMarker(3, RequestConfiguration.MAX_AD_CONTENT_RATING_T);
            if (!(obj3 instanceof Object)) {
                obj3 = obj;
            }
            if (obj3 != null) {
                obj = obj3;
            }
        }
        if (metadataReader.getJsonStorage().get(metadataReader.getKey()) != null) {
            metadataReader.getJsonStorage().delete(metadataReader.getKey());
        }
        return obj;
    }

    public final JsonStorage getJsonStorage() {
        return this.jsonStorage;
    }

    public final String getKey() {
        return this.key;
    }

    public final /* synthetic */ <T> T read(T defaultValue) {
        T t = (T) getJsonStorage().get(getKey());
        if (t != null) {
            Intrinsics.reifiedOperationMarker(3, RequestConfiguration.MAX_AD_CONTENT_RATING_T);
            if (!(t instanceof Object)) {
                t = defaultValue;
            }
            if (t != null) {
                return t;
            }
        }
        return defaultValue;
    }

    public final /* synthetic */ <T> T readAndDelete(T defaultValue) throws JSONException {
        Object obj = getJsonStorage().get(getKey());
        if (obj != null) {
            Intrinsics.reifiedOperationMarker(3, RequestConfiguration.MAX_AD_CONTENT_RATING_T);
            if (!(obj instanceof Object)) {
                obj = defaultValue;
            }
            if (obj != null) {
                defaultValue = (T) obj;
            }
        }
        if (getJsonStorage().get(getKey()) != null) {
            getJsonStorage().delete(getKey());
        }
        return defaultValue;
    }
}

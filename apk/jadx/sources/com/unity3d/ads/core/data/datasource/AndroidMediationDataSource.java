package com.unity3d.ads.core.data.datasource;

import com.ironsource.C3510b4;
import com.ironsource.C3813rg;
import com.ironsource.Pf;
import com.unity3d.services.core.misc.JsonStorage;
import org.json.JSONException;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidMediationDataSource.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0016\u0010\n\u001a\u0004\u0018\u00010\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\tR\u0016\u0010\f\u001a\u0004\u0018\u00010\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\t¨\u0006\u000f"}, d2 = {"Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource;", "Lcom/unity3d/ads/core/data/datasource/MediationDataSource;", C3510b4.a.k, "Lcom/unity3d/services/core/misc/JsonStorage;", "<init>", "(Lcom/unity3d/services/core/misc/JsonStorage;)V", "name", "", "getName", "()Ljava/lang/String;", "version", C3813rg.b, Pf.b, "getAdapterVersion", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidMediationDataSource implements MediationDataSource {
    private static final String MEDIATION_ADAPTER_VERSION = "adapter_version";
    public static final String MEDIATION_ADAPTER_VERSION_KEY = "mediation.adapter_version.value";
    private static final String MEDIATION_NAME = "name";
    public static final String MEDIATION_NAME_KEY = "mediation.name.value";
    private static final String MEDIATION_STORAGE_NAME = "mediation";
    private static final String MEDIATION_VALUE = "value";
    private static final String MEDIATION_VERSION = "version";
    public static final String MEDIATION_VERSION_KEY = "mediation.version.value";
    private final JsonStorage storage;

    public AndroidMediationDataSource(JsonStorage storage) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        this.storage = storage;
    }

    @Override // com.unity3d.ads.core.data.datasource.MediationDataSource
    public String getAdapterVersion() throws JSONException {
        Object obj = this.storage.get(MEDIATION_ADAPTER_VERSION_KEY);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    @Override // com.unity3d.ads.core.data.datasource.MediationDataSource
    public String getName() throws JSONException {
        Object obj = this.storage.get(MEDIATION_NAME_KEY);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    @Override // com.unity3d.ads.core.data.datasource.MediationDataSource
    public String getVersion() throws JSONException {
        Object obj = this.storage.get(MEDIATION_VERSION_KEY);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }
}

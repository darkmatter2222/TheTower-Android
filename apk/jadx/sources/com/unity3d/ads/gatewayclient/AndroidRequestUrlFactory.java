package com.unity3d.ads.gatewayclient;

import com.unity3d.ads.core.data.model.OperationType;
import com.unity3d.ads.core.data.repository.SessionRepository;
import gatewayprotocol.v1.InitializationResponseOuterClass;
import java.util.Iterator;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidRequestUrlFactory.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u001a\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u0007H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/unity3d/ads/gatewayclient/AndroidRequestUrlFactory;", "Lcom/unity3d/ads/gatewayclient/RequestUrlFactory;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "<init>", "(Lcom/unity3d/ads/core/data/repository/SessionRepository;)V", "getRequestUrl", "", "operationType", "Lcom/unity3d/ads/core/data/model/OperationType;", "defaultUrl", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidRequestUrlFactory implements RequestUrlFactory {
    private final SessionRepository sessionRepository;

    public AndroidRequestUrlFactory(SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        this.sessionRepository = sessionRepository;
    }

    @Override // com.unity3d.ads.gatewayclient.RequestUrlFactory
    public String getRequestUrl(OperationType operationType, String defaultUrl) {
        Object next;
        Intrinsics.checkNotNullParameter(operationType, "operationType");
        InitializationResponseOuterClass.RequestType requestUrlOverrideType = AndroidRequestUrlFactoryKt.getRequestUrlOverrideType(operationType);
        if (requestUrlOverrideType != null) {
            Iterator<T> it = this.sessionRepository.getRequestUrlOverrides().iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (((InitializationResponseOuterClass.RequestUrlOverride) next).getRequestType() != requestUrlOverrideType);
            InitializationResponseOuterClass.RequestUrlOverride requestUrlOverride = (InitializationResponseOuterClass.RequestUrlOverride) next;
            String url = requestUrlOverride != null ? requestUrlOverride.getUrl() : null;
            if (url != null) {
                return url;
            }
        }
        return defaultUrl == null ? "" : defaultUrl;
    }
}

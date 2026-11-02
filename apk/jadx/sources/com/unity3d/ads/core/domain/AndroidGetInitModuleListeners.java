package com.unity3d.ads.core.domain;

import com.google.protobuf.ByteString;
import com.unity3d.ads.MediationInfo;
import com.unity3d.ads.UnityAdsInitModuleListener;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.extensions.TimeExtensionsKt;
import com.unity3d.ads.core.log.Logger;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.ServiceLoader;
import p005kotlin.Lazy;
import p005kotlin.LazyKt;
import p005kotlin.Metadata;
import p005kotlin.TuplesKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.TimeSource;

/* JADX INFO: compiled from: AndroidGetInitModuleListeners.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0096\u0002J\u000e\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R!\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000e¨\u0006\u0013"}, d2 = {"Lcom/unity3d/ads/core/domain/AndroidGetInitModuleListeners;", "Lcom/unity3d/ads/core/domain/GetInitModuleListeners;", "sendDiagnosticEvent", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "logger", "Lcom/unity3d/ads/core/log/Logger;", "classLoader", "Ljava/lang/ClassLoader;", "<init>", "(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/log/Logger;Ljava/lang/ClassLoader;)V", "moduleListeners", "", "Lcom/unity3d/ads/UnityAdsInitModuleListener;", "getModuleListeners", "()Ljava/util/List;", "moduleListeners$delegate", "Lkotlin/Lazy;", "invoke", "discover", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidGetInitModuleListeners implements GetInitModuleListeners {
    private final ClassLoader classLoader;
    private final Logger logger;

    /* JADX INFO: renamed from: moduleListeners$delegate, reason: from kotlin metadata */
    private final Lazy moduleListeners;
    private final SendDiagnosticEvent sendDiagnosticEvent;

    public AndroidGetInitModuleListeners(SendDiagnosticEvent sendDiagnosticEvent, Logger logger, ClassLoader classLoader) {
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.logger = logger;
        this.classLoader = classLoader;
        this.moduleListeners = LazyKt.lazy(new Function0() { // from class: com.unity3d.ads.core.domain.AndroidGetInitModuleListeners$$ExternalSyntheticLambda0
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f$0.discover();
            }
        });
    }

    public /* synthetic */ AndroidGetInitModuleListeners(SendDiagnosticEvent sendDiagnosticEvent, Logger logger, ClassLoader classLoader, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(sendDiagnosticEvent, logger, (i & 4) != 0 ? AndroidGetInitModuleListeners.class.getClassLoader() : classLoader);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<UnityAdsInitModuleListener> discover() {
        long jM4482markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m4482markNowz9LOYto();
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_MODULE_DISCOVERY_STARTED, (Double) null, (Map) null, (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 254, (Object) null);
        ArrayList arrayList = new ArrayList();
        try {
            Iterator it = ServiceLoader.load(UnityAdsInitModuleListener.class, this.classLoader).iterator();
            Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
            while (it.hasNext()) {
                try {
                    Object next = it.next();
                    Intrinsics.checkNotNullExpressionValue(next, "next(...)");
                    arrayList.add(next);
                } catch (Throwable th) {
                    this.logger.error("Failed to load an init module listener", th);
                }
            }
        } catch (Throwable th2) {
            this.logger.error("Init module listener discovery failed", th2);
        }
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_MODULE_DISCOVERY_COMPLETED_TIME, Double.valueOf(TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(jM4482markNowz9LOYto))), (Map) null, MapsKt.mapOf(TuplesKt.to("module_count", Integer.valueOf(arrayList.size()))), (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 244, (Object) null);
        return arrayList;
    }

    private final List<UnityAdsInitModuleListener> getModuleListeners() {
        return (List) this.moduleListeners.getValue();
    }

    @Override // com.unity3d.ads.core.domain.GetInitModuleListeners
    public List<UnityAdsInitModuleListener> invoke() {
        return getModuleListeners();
    }
}

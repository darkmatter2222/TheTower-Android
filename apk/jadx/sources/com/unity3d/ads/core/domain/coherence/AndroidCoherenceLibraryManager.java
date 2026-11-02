package com.unity3d.ads.core.domain.coherence;

import android.content.Context;
import com.google.protobuf.ByteString;
import com.unity3d.ads.MediationInfo;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.extensions.TimeExtensionsKt;
import com.unity3d.ads.core.log.Logger;
import com.unity3d.coherence.CoherenceInitConfig;
import com.unity3d.coherence.CoherenceLibrary;
import com.unity3d.coherence.CoherencePipeline;
import com.unity3d.coherence.CoherencePipelineConfig;
import com.unity3d.coherence.CommonAttributesConfig;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import p005kotlin.Metadata;
import p005kotlin.Unit;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.TimeSource;

/* JADX INFO: compiled from: AndroidCoherenceLibraryManager.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0000\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\b\u0010\u0012\u001a\u00020\u0013H\u0002J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0015H\u0016J\n\u0010\u001a\u001a\u0004\u0018\u00010\u0015H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \u000b*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/unity3d/ads/core/domain/coherence/AndroidCoherenceLibraryManager;", "Lcom/unity3d/ads/core/domain/coherence/CoherenceLibraryManager;", "context", "Landroid/content/Context;", "logger", "Lcom/unity3d/ads/core/log/Logger;", "sendDiagnosticEvent", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "<init>", "(Landroid/content/Context;Lcom/unity3d/ads/core/log/Logger;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)V", "appContext", "kotlin.jvm.PlatformType", "initialized", "Ljava/util/concurrent/atomic/AtomicBoolean;", "pipelineLock", "", "cachedPipeline", "Lcom/unity3d/coherence/CoherencePipeline;", "initializeLibrary", "", "getCommonAttributes", "", "eventId", "", "initialize", "wasmModule", "executeWasmData", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidCoherenceLibraryManager implements CoherenceLibraryManager {
    private static final Companion Companion = new Companion(null);
    private static final int PRODUCT_ID = 2;
    private final Context appContext;
    private CoherencePipeline cachedPipeline;
    private final AtomicBoolean initialized;
    private final Logger logger;
    private final Object pipelineLock;
    private final SendDiagnosticEvent sendDiagnosticEvent;

    /* JADX INFO: compiled from: AndroidCoherenceLibraryManager.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/unity3d/ads/core/domain/coherence/AndroidCoherenceLibraryManager$Companion;", "", "<init>", "()V", "PRODUCT_ID", "", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    private static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public AndroidCoherenceLibraryManager(Context context, Logger logger, SendDiagnosticEvent sendDiagnosticEvent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        this.logger = logger;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.appContext = context.getApplicationContext();
        this.initialized = new AtomicBoolean(false);
        this.pipelineLock = new Object();
    }

    private final void initializeLibrary() {
        if (this.initialized.get()) {
            return;
        }
        synchronized (this) {
            if (this.initialized.get()) {
                return;
            }
            CoherenceInitConfig coherenceInitConfigBuild = new CoherenceInitConfig.Builder(this.appContext).setSource(2).build();
            Intrinsics.checkNotNullExpressionValue(coherenceInitConfigBuild, "build(...)");
            long jM4482markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m4482markNowz9LOYto();
            CoherenceLibrary.init(coherenceInitConfigBuild);
            this.initialized.set(true);
            Unit unit = Unit.INSTANCE;
            SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_coherence_init_time", Double.valueOf(TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(jM4482markNowz9LOYto))), (Map) null, (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 252, (Object) null);
        }
    }

    @Override // com.unity3d.ads.core.domain.coherence.CoherenceLibraryManager
    public byte[] executeWasmData() {
        CoherencePipeline coherencePipeline;
        synchronized (this.pipelineLock) {
            coherencePipeline = this.cachedPipeline;
        }
        if (coherencePipeline == null) {
            return new byte[0];
        }
        try {
            long jM4482markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m4482markNowz9LOYto();
            byte[] bArrExecute = coherencePipeline.execute(new byte[0]);
            Intrinsics.checkNotNullExpressionValue(bArrExecute, "execute(...)");
            SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_coherence_execute_wasm_time", Double.valueOf(TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(jM4482markNowz9LOYto))), (Map) null, (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 252, (Object) null);
            return bArrExecute;
        } catch (Throwable th) {
            this.logger.error("CoherenceLibrary WASM execution failed", th);
            return null;
        }
    }

    @Override // com.unity3d.ads.core.domain.coherence.CoherenceLibraryManager
    public byte[] getCommonAttributes(int eventId) {
        try {
            initializeLibrary();
            CommonAttributesConfig commonAttributesConfigBuild = new CommonAttributesConfig.Builder().setProductId(2).setEventId(eventId).build();
            Intrinsics.checkNotNullExpressionValue(commonAttributesConfigBuild, "build(...)");
            long jM4482markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m4482markNowz9LOYto();
            byte[] commonAttributes = CoherenceLibrary.getInstance().getAttributesProvider().getCommonAttributes(commonAttributesConfigBuild);
            if (commonAttributes != null) {
                SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_coherence_get_common_attributes_time", Double.valueOf(TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(jM4482markNowz9LOYto))), (Map) null, (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 252, (Object) null);
            }
            return commonAttributes;
        } catch (Throwable th) {
            this.logger.error("CoherenceLibrary fetching payload failed", th);
            return null;
        }
    }

    @Override // com.unity3d.ads.core.domain.coherence.CoherenceLibraryManager
    public void initialize(byte[] wasmModule) {
        Intrinsics.checkNotNullParameter(wasmModule, "wasmModule");
        try {
            initializeLibrary();
            if (wasmModule.length == 0) {
                return;
            }
            long jM4482markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m4482markNowz9LOYto();
            synchronized (this.pipelineLock) {
                CoherencePipeline coherencePipeline = this.cachedPipeline;
                if (coherencePipeline != null) {
                    coherencePipeline.load(wasmModule);
                } else {
                    CoherencePipelineConfig coherencePipelineConfigBuild = new CoherencePipelineConfig.Builder().setWasmBytes(wasmModule).setConcurrency(1).build();
                    Intrinsics.checkNotNullExpressionValue(coherencePipelineConfigBuild, "build(...)");
                    this.cachedPipeline = CoherenceLibrary.getInstance().getCoherenceProvider().create(coherencePipelineConfigBuild);
                }
                Unit unit = Unit.INSTANCE;
            }
            SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_coherence_warm_wasm_time", Double.valueOf(TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(jM4482markNowz9LOYto))), (Map) null, (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 252, (Object) null);
        } catch (Throwable th) {
            this.logger.error("CoherenceLibrary WASM warm-up failed", th);
        }
    }
}

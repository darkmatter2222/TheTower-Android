package com.unity3d.ads.core.data.datasource;

import com.google.protobuf.ByteString;
import com.google.protobuf.kotlin.ByteStringsKt;
import com.unity3d.ads.MediationInfo;
import com.unity3d.ads.UnityAdsInitModuleListener;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.domain.GetInitModuleListeners;
import com.unity3d.ads.core.domain.GetIsModulesInitEnabled;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.extensions.ExceptionExtensionsKt;
import com.unity3d.ads.core.extensions.TimeExtensionsKt;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import gatewayprotocol.v1.ModuleInitParamsKt;
import gatewayprotocol.v1.ModuleInitParamsOuterClass;
import java.util.List;
import java.util.Map;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.Metadata;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.TuplesKt;
import p005kotlin.Unit;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.TimeSource;

/* JADX INFO: compiled from: AndroidModuleInitParamsDataSource.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rH\u0096B¢\u0006\u0002\u0010\u000fJ\u000e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000e0\rH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource;", "Lcom/unity3d/ads/core/data/datasource/ModuleInitParamsDataSource;", "getInitModuleListeners", "Lcom/unity3d/ads/core/domain/GetInitModuleListeners;", "sendDiagnosticEvent", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "ioDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "getIsModulesInitEnabled", "Lcom/unity3d/ads/core/domain/GetIsModulesInitEnabled;", "<init>", "(Lcom/unity3d/ads/core/domain/GetInitModuleListeners;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/GetIsModulesInitEnabled;)V", "invoke", "", "Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "collectInitParams", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidModuleInitParamsDataSource implements ModuleInitParamsDataSource {
    private final GetInitModuleListeners getInitModuleListeners;
    private final GetIsModulesInitEnabled getIsModulesInitEnabled;
    private final CoroutineDispatcher ioDispatcher;
    private final SendDiagnosticEvent sendDiagnosticEvent;

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.datasource.AndroidModuleInitParamsDataSource$invoke$2, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidModuleInitParamsDataSource.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.data.datasource.AndroidModuleInitParamsDataSource$invoke$2", f = "AndroidModuleInitParamsDataSource.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends ModuleInitParamsOuterClass.ModuleInitParams>>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidModuleInitParamsDataSource.this.new AnonymousClass2(continuation);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super List<? extends ModuleInitParamsOuterClass.ModuleInitParams>> continuation) {
            return invoke2(coroutineScope, (Continuation<? super List<ModuleInitParamsOuterClass.ModuleInitParams>>) continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super List<ModuleInitParamsOuterClass.ModuleInitParams>> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return AndroidModuleInitParamsDataSource.this.collectInitParams();
        }
    }

    public AndroidModuleInitParamsDataSource(GetInitModuleListeners getInitModuleListeners, SendDiagnosticEvent sendDiagnosticEvent, CoroutineDispatcher ioDispatcher, GetIsModulesInitEnabled getIsModulesInitEnabled) {
        Intrinsics.checkNotNullParameter(getInitModuleListeners, "getInitModuleListeners");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(ioDispatcher, "ioDispatcher");
        Intrinsics.checkNotNullParameter(getIsModulesInitEnabled, "getIsModulesInitEnabled");
        this.getInitModuleListeners = getInitModuleListeners;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.ioDispatcher = ioDispatcher;
        this.getIsModulesInitEnabled = getIsModulesInitEnabled;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<ModuleInitParamsOuterClass.ModuleInitParams> collectInitParams() {
        Object objM3022constructorimpl;
        Object objM3022constructorimpl2;
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        Map<String, ? extends Object> mapEmptyMap = MapsKt.emptyMap();
        for (UnityAdsInitModuleListener unityAdsInitModuleListener : this.getInitModuleListeners.invoke()) {
            long jM4482markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m4482markNowz9LOYto();
            try {
                Result.Companion companion = Result.INSTANCE;
                String strModuleName = unityAdsInitModuleListener.moduleName();
                SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_MODULE_INIT_PARAMS_STARTED, (Double) null, MapsKt.mapOf(TuplesKt.to("module_name", strModuleName)), (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 250, (Object) null);
                byte[] bArrInitParams = unityAdsInitModuleListener.initParams(mapEmptyMap);
                if (bArrInitParams != null) {
                    ModuleInitParamsKt.Dsl.Companion companion2 = ModuleInitParamsKt.Dsl.INSTANCE;
                    ModuleInitParamsOuterClass.ModuleInitParams.Builder builderNewBuilder = ModuleInitParamsOuterClass.ModuleInitParams.newBuilder();
                    Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
                    ModuleInitParamsKt.Dsl dsl_create = companion2._create(builderNewBuilder);
                    dsl_create.setName(strModuleName);
                    dsl_create.setParams(ByteStringsKt.toByteString(bArrInitParams));
                    String name = unityAdsInitModuleListener.getClass().getName();
                    Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                    dsl_create.setClassName(name);
                    listCreateListBuilder.add(dsl_create._build());
                }
                SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_MODULE_INIT_PARAMS_SUCCESS_TIME, Double.valueOf(TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(jM4482markNowz9LOYto))), MapsKt.mapOf(TuplesKt.to("module_name", strModuleName)), (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 248, (Object) null);
                objM3022constructorimpl = Result.m3022constructorimpl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion3 = Result.INSTANCE;
                objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
            }
            Throwable thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(objM3022constructorimpl);
            if (thM3025exceptionOrNullimpl != null) {
                try {
                    Result.Companion companion4 = Result.INSTANCE;
                    objM3022constructorimpl2 = Result.m3022constructorimpl(unityAdsInitModuleListener.moduleName());
                } catch (Throwable th2) {
                    Result.Companion companion5 = Result.INSTANCE;
                    objM3022constructorimpl2 = Result.m3022constructorimpl(ResultKt.createFailure(th2));
                }
                if (Result.m3028isFailureimpl(objM3022constructorimpl2)) {
                    objM3022constructorimpl2 = "";
                }
                SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_MODULE_INIT_PARAMS_FAILURE_TIME, Double.valueOf(TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(jM4482markNowz9LOYto))), MapsKt.mapOf(TuplesKt.to("module_name", (String) objM3022constructorimpl2), TuplesKt.to("reason", "uncaught_exception"), TuplesKt.to("reason_debug", ExceptionExtensionsKt.getShortenedStackTrace$default(thM3025exceptionOrNullimpl, 0, 1, null))), (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 248, (Object) null);
            }
        }
        return CollectionsKt.build(listCreateListBuilder);
    }

    @Override // com.unity3d.ads.core.data.datasource.ModuleInitParamsDataSource
    public Object invoke(Continuation<? super List<ModuleInitParamsOuterClass.ModuleInitParams>> continuation) {
        return !this.getIsModulesInitEnabled.invoke() ? CollectionsKt.emptyList() : BuildersKt.withContext(this.ioDispatcher, new AnonymousClass2(null), continuation);
    }
}

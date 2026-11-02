package com.unity3d.ads.core.domain;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.protobuf.ByteString;
import com.ironsource.C3510b4;
import com.unity3d.ads.MediationInfo;
import com.unity3d.ads.UnityAdsInitModuleListener;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.extensions.ExceptionExtensionsKt;
import com.unity3d.ads.core.extensions.ProtobufExtensionsKt;
import com.unity3d.ads.core.extensions.TimeExtensionsKt;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import gatewayprotocol.v1.InitializationResponseOuterClass;
import gatewayprotocol.v1.ModuleOuterClass;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.Metadata;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.TuplesKt;
import p005kotlin.Unit;
import p005kotlin.collections.MapsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;
import p005kotlin.time.TimeSource;

/* JADX INFO: compiled from: AndroidDeliverModuleConfigs.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0004\b\u000e\u0010\u000fJ\u0011\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0096\u0002J\u0010\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0010\u0010\u001b\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u0012H\u0002J\u0014\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001f0\u001eH\u0002J,\u0010 \u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00172\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001f0\u001eH\u0002J\u0018\u0010\"\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u001aH\u0002JA\u0010#\u001a\u00020\u00152\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u001a2\n\b\u0002\u0010'\u001a\u0004\u0018\u00010(2\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u001aH\u0002¢\u0006\u0002\u0010*R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006+"}, d2 = {"Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;", "Lcom/unity3d/ads/core/domain/DeliverModuleConfigs;", "getInitModuleListeners", "Lcom/unity3d/ads/core/domain/GetInitModuleListeners;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "sendDiagnosticEvent", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "ioDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "getIsModulesInitEnabled", "Lcom/unity3d/ads/core/domain/GetIsModulesInitEnabled;", "<init>", "(Lcom/unity3d/ads/core/domain/GetInitModuleListeners;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/GetIsModulesInitEnabled;)V", "listenerLocks", "Ljava/util/concurrent/ConcurrentHashMap;", "Lcom/unity3d/ads/UnityAdsInitModuleListener;", "Lkotlinx/coroutines/sync/Mutex;", "invoke", "", "initResponse", "Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;", "notifyFailure", "reason", "", "lockFor", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "sessionExtras", "", "", "deliver", "extraData", C3510b4.g.e, "sendModuleDiagnostic", "event", "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;", "moduleName", "value", "", "reasonDebug", "(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidDeliverModuleConfigs implements DeliverModuleConfigs {
    private final GetInitModuleListeners getInitModuleListeners;
    private final GetIsModulesInitEnabled getIsModulesInitEnabled;
    private final CoroutineDispatcher ioDispatcher;
    private final ConcurrentHashMap<UnityAdsInitModuleListener, Mutex> listenerLocks;
    private final CoroutineScope scope;
    private final SendDiagnosticEvent sendDiagnosticEvent;
    private final SessionRepository sessionRepository;

    public AndroidDeliverModuleConfigs(GetInitModuleListeners getInitModuleListeners, SessionRepository sessionRepository, SendDiagnosticEvent sendDiagnosticEvent, CoroutineScope scope, CoroutineDispatcher ioDispatcher, GetIsModulesInitEnabled getIsModulesInitEnabled) {
        Intrinsics.checkNotNullParameter(getInitModuleListeners, "getInitModuleListeners");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(ioDispatcher, "ioDispatcher");
        Intrinsics.checkNotNullParameter(getIsModulesInitEnabled, "getIsModulesInitEnabled");
        this.getInitModuleListeners = getInitModuleListeners;
        this.sessionRepository = sessionRepository;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.scope = scope;
        this.ioDispatcher = ioDispatcher;
        this.getIsModulesInitEnabled = getIsModulesInitEnabled;
        this.listenerLocks = new ConcurrentHashMap<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void deliver(UnityAdsInitModuleListener listener, InitializationResponseOuterClass.InitializationResponse initResponse, Map<String, ? extends Object> extraData) {
        String strModuleName;
        Throwable th;
        boolean z;
        Object next;
        long jM4482markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m4482markNowz9LOYto();
        try {
            strModuleName = listener.moduleName();
            try {
                sendModuleDiagnostic$default(this, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_MODULE_INIT_STARTED, strModuleName, null, null, null, 28, null);
                List<ModuleOuterClass.Module> modulesList = initResponse.getModulesList();
                Intrinsics.checkNotNullExpressionValue(modulesList, "getModulesList(...)");
                Iterator<T> it = modulesList.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!StringsKt.equals(((ModuleOuterClass.Module) next).getName(), strModuleName, true));
                ModuleOuterClass.Module module = (ModuleOuterClass.Module) next;
                ByteString config = module != null ? module.getConfig() : null;
                try {
                    if (config == null || config.isEmpty()) {
                        String str = "no config for " + strModuleName;
                        listener.onFailure(str, 2);
                        sendModuleDiagnostic(DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_MODULE_INIT_FAILURE, strModuleName, Double.valueOf(TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(jM4482markNowz9LOYto))), "no_config", str);
                        return;
                    } else {
                        byte[] byteArray = config.toByteArray();
                        Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
                        listener.onSuccess(byteArray, extraData);
                        sendModuleDiagnostic$default(this, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_MODULE_INIT_SUCCESS, strModuleName, Double.valueOf(TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(jM4482markNowz9LOYto))), null, null, 24, null);
                        return;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    z = true;
                }
            } catch (Throwable th3) {
                th = th3;
                th = th;
                z = false;
            }
        } catch (Throwable th4) {
            th = th4;
            strModuleName = "";
        }
        String str2 = strModuleName;
        String message = th.getMessage();
        if (message == null) {
            message = "module init failed";
        }
        if (!z) {
            try {
                Result.Companion companion = Result.INSTANCE;
                listener.onFailure(message, 3);
                Result.m3022constructorimpl(Unit.INSTANCE);
            } catch (Throwable th5) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m3022constructorimpl(ResultKt.createFailure(th5));
            }
        }
        sendModuleDiagnostic(DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_MODULE_INIT_FAILURE, str2, Double.valueOf(TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(jM4482markNowz9LOYto))), "uncaught_exception", ExceptionExtensionsKt.getShortenedStackTrace$default(th, 0, 1, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void fail(UnityAdsInitModuleListener listener, String reason) {
        Object objM3022constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            AndroidDeliverModuleConfigs androidDeliverModuleConfigs = this;
            listener.onFailure(reason, 1);
            Result.m3022constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
        try {
            Result.Companion companion3 = Result.INSTANCE;
            AndroidDeliverModuleConfigs androidDeliverModuleConfigs2 = this;
            objM3022constructorimpl = Result.m3022constructorimpl(listener.moduleName());
        } catch (Throwable th2) {
            Result.Companion companion4 = Result.INSTANCE;
            objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th2));
        }
        if (Result.m3028isFailureimpl(objM3022constructorimpl)) {
            objM3022constructorimpl = "unknown";
        }
        sendModuleDiagnostic$default(this, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_MODULE_INIT_FAILURE, (String) objM3022constructorimpl, null, "failed", reason, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Mutex lockFor(UnityAdsInitModuleListener listener) {
        Mutex mutexPutIfAbsent;
        ConcurrentHashMap<UnityAdsInitModuleListener, Mutex> concurrentHashMap = this.listenerLocks;
        Mutex mutexMutex$default = concurrentHashMap.get(listener);
        if (mutexMutex$default == null && (mutexPutIfAbsent = concurrentHashMap.putIfAbsent(listener, (mutexMutex$default = MutexKt.Mutex$default(false, 1, null)))) != null) {
            mutexMutex$default = mutexPutIfAbsent;
        }
        Intrinsics.checkNotNullExpressionValue(mutexMutex$default, "getOrPut(...)");
        return mutexMutex$default;
    }

    private final void sendModuleDiagnostic(DiagnosticEventRequestOuterClass.DiagnosticEventType event, String moduleName, Double value, String reason, String reasonDebug) {
        SendDiagnosticEvent sendDiagnosticEvent = this.sendDiagnosticEvent;
        Map mapCreateMapBuilder = MapsKt.createMapBuilder();
        mapCreateMapBuilder.put("module_name", moduleName);
        if (reason != null) {
        }
        if (reasonDebug != null) {
            mapCreateMapBuilder.put("reason_debug", reasonDebug);
        }
        Unit unit = Unit.INSTANCE;
        SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, event, value, MapsKt.build(mapCreateMapBuilder), (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 248, (Object) null);
    }

    static /* synthetic */ void sendModuleDiagnostic$default(AndroidDeliverModuleConfigs androidDeliverModuleConfigs, DiagnosticEventRequestOuterClass.DiagnosticEventType diagnosticEventType, String str, Double d, String str2, String str3, int i, Object obj) {
        if ((i & 4) != 0) {
            d = null;
        }
        if ((i & 8) != 0) {
            str2 = null;
        }
        if ((i & 16) != 0) {
            str3 = null;
        }
        androidDeliverModuleConfigs.sendModuleDiagnostic(diagnosticEventType, str, d, str2, str3);
    }

    private final Map<String, Object> sessionExtras() {
        Object objM3022constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            AndroidDeliverModuleConfigs androidDeliverModuleConfigs = this;
            objM3022constructorimpl = Result.m3022constructorimpl(MapsKt.mapOf(TuplesKt.to("sessionId", ProtobufExtensionsKt.toUUID(this.sessionRepository.getSessionId()).toString()), TuplesKt.to("sessionToken", this.sessionRepository.getSessionToken().toByteArray())));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
        Map mapEmptyMap = MapsKt.emptyMap();
        if (Result.m3028isFailureimpl(objM3022constructorimpl)) {
            objM3022constructorimpl = mapEmptyMap;
        }
        return (Map) objM3022constructorimpl;
    }

    @Override // com.unity3d.ads.core.domain.DeliverModuleConfigs
    public void invoke(InitializationResponseOuterClass.InitializationResponse initResponse) {
        Intrinsics.checkNotNullParameter(initResponse, "initResponse");
        if (this.getIsModulesInitEnabled.invoke()) {
            List<UnityAdsInitModuleListener> listInvoke = this.getInitModuleListeners.invoke();
            if (listInvoke.isEmpty()) {
                return;
            }
            Map<String, Object> mapSessionExtras = sessionExtras();
            Iterator<T> it = listInvoke.iterator();
            while (it.hasNext()) {
                BuildersKt__Builders_commonKt.launch$default(this.scope, this.ioDispatcher, null, new AndroidDeliverModuleConfigs$invoke$1$1(this, (UnityAdsInitModuleListener) it.next(), initResponse, mapSessionExtras, null), 2, null);
            }
        }
    }

    @Override // com.unity3d.ads.core.domain.DeliverModuleConfigs
    public void notifyFailure(String reason) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        if (this.getIsModulesInitEnabled.invoke()) {
            List<UnityAdsInitModuleListener> listInvoke = this.getInitModuleListeners.invoke();
            if (listInvoke.isEmpty()) {
                return;
            }
            Iterator<T> it = listInvoke.iterator();
            while (it.hasNext()) {
                BuildersKt__Builders_commonKt.launch$default(this.scope, this.ioDispatcher, null, new AndroidDeliverModuleConfigs$notifyFailure$1$1(this, (UnityAdsInitModuleListener) it.next(), reason, null), 2, null);
            }
        }
    }
}

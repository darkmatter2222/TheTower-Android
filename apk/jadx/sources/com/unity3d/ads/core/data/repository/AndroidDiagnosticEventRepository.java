package com.unity3d.ads.core.data.repository;

import com.unity3d.ads.core.domain.events.GetDiagnosticEventRequest;
import com.unity3d.ads.core.utils.CoroutineTimer;
import com.unity3d.services.core.log.DeviceLog;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.StateFlowKt;
import p005kotlin.Metadata;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.sequences.SequencesKt;

/* JADX INFO: compiled from: AndroidDiagnosticEventRepository.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u000fH\u0016J\b\u0010$\u001a\u00020\"H\u0016J\b\u0010%\u001a\u00020\"H\u0016J\u0010\u0010&\u001a\u00020\"2\u0006\u0010'\u001a\u00020(H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u000e0\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R2\u0010\u0012\u001a&\u0012\f\u0012\n \u0015*\u0004\u0018\u00010\u00140\u0014 \u0015*\u0012\u0012\f\u0012\n \u0015*\u0004\u0018\u00010\u00140\u0014\u0018\u00010\u00160\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R2\u0010\u0017\u001a&\u0012\f\u0012\n \u0015*\u0004\u0018\u00010\u00140\u0014 \u0015*\u0012\u0012\f\u0012\n \u0015*\u0004\u0018\u00010\u00140\u0014\u0018\u00010\u00160\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00190\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u001b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u000e0\u001cX\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u001d\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u000e0\u001eX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 ¨\u0006)"}, d2 = {"Lcom/unity3d/ads/core/data/repository/AndroidDiagnosticEventRepository;", "Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;", "flushTimer", "Lcom/unity3d/ads/core/utils/CoroutineTimer;", "getDiagnosticEventRequest", "Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "<init>", "(Lcom/unity3d/ads/core/utils/CoroutineTimer;Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest;Lkotlinx/coroutines/CoroutineDispatcher;)V", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "batch", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;", "maxBatchSize", "", "allowedEvents", "", "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;", "kotlin.jvm.PlatformType", "", "blockedEvents", "enabled", "", "configured", "_diagnosticEvents", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "diagnosticEvents", "Lkotlinx/coroutines/flow/SharedFlow;", "getDiagnosticEvents", "()Lkotlinx/coroutines/flow/SharedFlow;", "addDiagnosticEvent", "", "diagnosticEvent", "flush", "clear", "configure", "diagnosticsEventsConfiguration", "Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidDiagnosticEventRepository implements DiagnosticEventRepository {
    private final MutableSharedFlow<List<DiagnosticEventRequestOuterClass.DiagnosticEvent>> _diagnosticEvents;
    private final Set<DiagnosticEventRequestOuterClass.DiagnosticEventType> allowedEvents;
    private final MutableStateFlow<List<DiagnosticEventRequestOuterClass.DiagnosticEvent>> batch;
    private final Set<DiagnosticEventRequestOuterClass.DiagnosticEventType> blockedEvents;
    private final MutableStateFlow<Boolean> configured;
    private final CoroutineScope coroutineScope;
    private final SharedFlow<List<DiagnosticEventRequestOuterClass.DiagnosticEvent>> diagnosticEvents;
    private final MutableStateFlow<Boolean> enabled;
    private final CoroutineTimer flushTimer;
    private final GetDiagnosticEventRequest getDiagnosticEventRequest;
    private int maxBatchSize;

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.repository.AndroidDiagnosticEventRepository$flush$2, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidDiagnosticEventRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.data.repository.AndroidDiagnosticEventRepository$flush$2", f = "AndroidDiagnosticEventRepository.kt", i = {}, l = {71}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ List<DiagnosticEventRequestOuterClass.DiagnosticEvent> $events;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(List<DiagnosticEventRequestOuterClass.DiagnosticEvent> list, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$events = list;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidDiagnosticEventRepository.this.new AnonymousClass2(this.$events, continuation);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (AndroidDiagnosticEventRepository.this._diagnosticEvents.emit(this.$events, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    public AndroidDiagnosticEventRepository(CoroutineTimer flushTimer, GetDiagnosticEventRequest getDiagnosticEventRequest, CoroutineDispatcher dispatcher) {
        Intrinsics.checkNotNullParameter(flushTimer, "flushTimer");
        Intrinsics.checkNotNullParameter(getDiagnosticEventRequest, "getDiagnosticEventRequest");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        this.flushTimer = flushTimer;
        this.getDiagnosticEventRequest = getDiagnosticEventRequest;
        this.coroutineScope = CoroutineScopeKt.plus(CoroutineScopeKt.plus(CoroutineScopeKt.CoroutineScope(dispatcher), new CoroutineName("DiagnosticEventRepository")), new AndroidDiagnosticEventRepository$special$$inlined$CoroutineExceptionHandler$1(CoroutineExceptionHandler.INSTANCE));
        this.batch = StateFlowKt.MutableStateFlow(CollectionsKt.emptyList());
        this.maxBatchSize = Integer.MAX_VALUE;
        this.allowedEvents = Collections.synchronizedSet(new LinkedHashSet());
        this.blockedEvents = Collections.synchronizedSet(new LinkedHashSet());
        this.enabled = StateFlowKt.MutableStateFlow(false);
        this.configured = StateFlowKt.MutableStateFlow(false);
        MutableSharedFlow<List<DiagnosticEventRequestOuterClass.DiagnosticEvent>> mutableSharedFlowMutableSharedFlow$default = SharedFlowKt.MutableSharedFlow$default(100, 0, null, 6, null);
        this._diagnosticEvents = mutableSharedFlowMutableSharedFlow$default;
        this.diagnosticEvents = FlowKt.asSharedFlow(mutableSharedFlowMutableSharedFlow$default);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit configure$lambda$9(AndroidDiagnosticEventRepository androidDiagnosticEventRepository) {
        androidDiagnosticEventRepository.flush();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DiagnosticEventRequestOuterClass.DiagnosticEvent flush$lambda$4(AndroidDiagnosticEventRepository androidDiagnosticEventRepository, DiagnosticEventRequestOuterClass.DiagnosticEvent diagnosticEvent) {
        return diagnosticEvent == null ? androidDiagnosticEventRepository.getDiagnosticEventRequest.invoke(DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_CUSTOM, "null_diagnostic_event", null, null, null, null, null, null, null, null, (1024 & 1024) != 0 ? null : null) : diagnosticEvent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean flush$lambda$5(AndroidDiagnosticEventRepository androidDiagnosticEventRepository, DiagnosticEventRequestOuterClass.DiagnosticEvent it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return androidDiagnosticEventRepository.allowedEvents.isEmpty() || androidDiagnosticEventRepository.allowedEvents.contains(it.getEventType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean flush$lambda$6(AndroidDiagnosticEventRepository androidDiagnosticEventRepository, DiagnosticEventRequestOuterClass.DiagnosticEvent it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return !androidDiagnosticEventRepository.blockedEvents.contains(it.getEventType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String flush$lambda$7(AndroidDiagnosticEventRepository androidDiagnosticEventRepository, List list) {
        return "Unity Ads Sending diagnostic batch enabled: " + androidDiagnosticEventRepository.enabled.getValue().booleanValue() + " size: " + list.size() + " :: " + list;
    }

    @Override // com.unity3d.ads.core.data.repository.DiagnosticEventRepository
    public void addDiagnosticEvent(DiagnosticEventRequestOuterClass.DiagnosticEvent diagnosticEvent) {
        List<DiagnosticEventRequestOuterClass.DiagnosticEvent> value;
        List<DiagnosticEventRequestOuterClass.DiagnosticEvent> value2;
        Intrinsics.checkNotNullParameter(diagnosticEvent, "diagnosticEvent");
        if (!this.configured.getValue().booleanValue()) {
            MutableStateFlow<List<DiagnosticEventRequestOuterClass.DiagnosticEvent>> mutableStateFlow = this.batch;
            do {
                value2 = mutableStateFlow.getValue();
            } while (!mutableStateFlow.compareAndSet(value2, CollectionsKt.plus((Collection<? extends DiagnosticEventRequestOuterClass.DiagnosticEvent>) value2, diagnosticEvent)));
        } else if (this.enabled.getValue().booleanValue()) {
            MutableStateFlow<List<DiagnosticEventRequestOuterClass.DiagnosticEvent>> mutableStateFlow2 = this.batch;
            do {
                value = mutableStateFlow2.getValue();
            } while (!mutableStateFlow2.compareAndSet(value, CollectionsKt.plus((Collection<? extends DiagnosticEventRequestOuterClass.DiagnosticEvent>) value, diagnosticEvent)));
            if (this.batch.getValue().size() >= this.maxBatchSize) {
                flush();
            }
        }
    }

    @Override // com.unity3d.ads.core.data.repository.DiagnosticEventRepository
    public void clear() {
        MutableStateFlow<List<DiagnosticEventRequestOuterClass.DiagnosticEvent>> mutableStateFlow = this.batch;
        while (!mutableStateFlow.compareAndSet(mutableStateFlow.getValue(), CollectionsKt.emptyList())) {
        }
    }

    @Override // com.unity3d.ads.core.data.repository.DiagnosticEventRepository
    public void configure(NativeConfigurationOuterClass.DiagnosticEventsConfiguration diagnosticsEventsConfiguration) {
        Intrinsics.checkNotNullParameter(diagnosticsEventsConfiguration, "diagnosticsEventsConfiguration");
        this.configured.setValue(true);
        this.enabled.setValue(Boolean.valueOf(diagnosticsEventsConfiguration.getEnabled()));
        if (!this.enabled.getValue().booleanValue()) {
            clear();
            return;
        }
        this.maxBatchSize = diagnosticsEventsConfiguration.getMaxBatchSize();
        Set<DiagnosticEventRequestOuterClass.DiagnosticEventType> set = this.allowedEvents;
        List<DiagnosticEventRequestOuterClass.DiagnosticEventType> allowedEventsList = diagnosticsEventsConfiguration.getAllowedEventsList();
        Intrinsics.checkNotNullExpressionValue(allowedEventsList, "getAllowedEventsList(...)");
        set.addAll(allowedEventsList);
        Set<DiagnosticEventRequestOuterClass.DiagnosticEventType> set2 = this.blockedEvents;
        List<DiagnosticEventRequestOuterClass.DiagnosticEventType> blockedEventsList = diagnosticsEventsConfiguration.getBlockedEventsList();
        Intrinsics.checkNotNullExpressionValue(blockedEventsList, "getBlockedEventsList(...)");
        set2.addAll(blockedEventsList);
        this.flushTimer.start(0L, diagnosticsEventsConfiguration.getMaxBatchIntervalMs(), new Function0() { // from class: com.unity3d.ads.core.data.repository.AndroidDiagnosticEventRepository$$ExternalSyntheticLambda0
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return AndroidDiagnosticEventRepository.configure$lambda$9(this.f$0);
            }
        });
    }

    @Override // com.unity3d.ads.core.data.repository.DiagnosticEventRepository
    public void flush() {
        List<DiagnosticEventRequestOuterClass.DiagnosticEvent> value;
        if (this.enabled.getValue().booleanValue()) {
            MutableStateFlow<List<DiagnosticEventRequestOuterClass.DiagnosticEvent>> mutableStateFlow = this.batch;
            do {
                value = mutableStateFlow.getValue();
            } while (!mutableStateFlow.compareAndSet(value, CollectionsKt.emptyList()));
            final List list = SequencesKt.toList(SequencesKt.filter(SequencesKt.filter(SequencesKt.map(CollectionsKt.asSequence(value), new Function1() { // from class: com.unity3d.ads.core.data.repository.AndroidDiagnosticEventRepository$$ExternalSyntheticLambda1
                @Override // p005kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AndroidDiagnosticEventRepository.flush$lambda$4(this.f$0, (DiagnosticEventRequestOuterClass.DiagnosticEvent) obj);
                }
            }), new Function1() { // from class: com.unity3d.ads.core.data.repository.AndroidDiagnosticEventRepository$$ExternalSyntheticLambda2
                @Override // p005kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(AndroidDiagnosticEventRepository.flush$lambda$5(this.f$0, (DiagnosticEventRequestOuterClass.DiagnosticEvent) obj));
                }
            }), new Function1() { // from class: com.unity3d.ads.core.data.repository.AndroidDiagnosticEventRepository$$ExternalSyntheticLambda3
                @Override // p005kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(AndroidDiagnosticEventRepository.flush$lambda$6(this.f$0, (DiagnosticEventRequestOuterClass.DiagnosticEvent) obj));
                }
            }));
            if (list.isEmpty()) {
                return;
            }
            DeviceLog.debug((Callable<String>) new Callable() { // from class: com.unity3d.ads.core.data.repository.AndroidDiagnosticEventRepository$$ExternalSyntheticLambda4
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return AndroidDiagnosticEventRepository.flush$lambda$7(this.f$0, list);
                }
            });
            BuildersKt__Builders_commonKt.launch$default(this.coroutineScope, null, null, new AnonymousClass2(list, null), 3, null);
        }
    }

    @Override // com.unity3d.ads.core.data.repository.DiagnosticEventRepository
    public SharedFlow<List<DiagnosticEventRequestOuterClass.DiagnosticEvent>> getDiagnosticEvents() {
        return this.diagnosticEvents;
    }
}

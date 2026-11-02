package com.unity3d.ads.core.data.datasource;

import android.os.SystemClock;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.unity3d.services.core.properties.SdkProperties;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import p005kotlin.Metadata;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AppForegroundDurationObserver.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0016\u001a\u00020\u0017H\u0086\u0002J\u0018\u0010\u001b\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\bH\u0002J\b\u0010\u001e\u001a\u00020\u0017H\u0002J\b\u0010\u001f\u001a\u00020\u0017H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001a¨\u0006 "}, d2 = {"Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;", "Lcom/unity3d/ads/core/data/datasource/ForegroundDurationReader;", "lifecycleDataSource", "Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;", "defaultDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "elapsedRealtimeProvider", "Lkotlin/Function0;", "", "initTimeProvider", "<init>", "(Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "isRunning", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "accumulatedBackgroundMs", "Ljava/util/concurrent/atomic/AtomicLong;", "backgroundStartMs", "isInBackground", "Ljava/util/concurrent/atomic/AtomicBoolean;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "", "sessionDurationInForegroundMs", "getSessionDurationInForegroundMs", "()J", "currentAccumulatedBackgroundMs", "initTime", "now", "onBackground", "onForeground", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AppForegroundDurationObserver implements ForegroundDurationReader {
    private final AtomicLong accumulatedBackgroundMs;
    private final AtomicLong backgroundStartMs;
    private final CoroutineDispatcher defaultDispatcher;
    private final Function0<Long> elapsedRealtimeProvider;
    private final Function0<Long> initTimeProvider;
    private final AtomicBoolean isInBackground;
    private final MutableStateFlow<Boolean> isRunning;
    private final LifecycleDataSource lifecycleDataSource;
    private final CoroutineScope scope;

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.datasource.AppForegroundDurationObserver$invoke$2, reason: invalid class name */
    /* JADX INFO: compiled from: AppForegroundDurationObserver.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", AppMeasurementSdk.ConditionalUserProperty.ACTIVE, ""}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.data.datasource.AppForegroundDurationObserver$invoke$2", f = "AppForegroundDurationObserver.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<Boolean, Continuation<? super Unit>, Object> {
        /* synthetic */ boolean Z$0;
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = AppForegroundDurationObserver.this.new AnonymousClass2(continuation);
            anonymousClass2.Z$0 = ((Boolean) obj).booleanValue();
            return anonymousClass2;
        }

        @Override // p005kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Continuation<? super Unit> continuation) {
            return invoke(bool.booleanValue(), continuation);
        }

        public final Object invoke(boolean z, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(Boolean.valueOf(z), continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            if (this.Z$0) {
                AppForegroundDurationObserver.this.onForeground();
            } else {
                AppForegroundDurationObserver.this.onBackground();
            }
            return Unit.INSTANCE;
        }
    }

    public AppForegroundDurationObserver(LifecycleDataSource lifecycleDataSource, CoroutineDispatcher defaultDispatcher, Function0<Long> elapsedRealtimeProvider, Function0<Long> initTimeProvider) {
        Intrinsics.checkNotNullParameter(lifecycleDataSource, "lifecycleDataSource");
        Intrinsics.checkNotNullParameter(defaultDispatcher, "defaultDispatcher");
        Intrinsics.checkNotNullParameter(elapsedRealtimeProvider, "elapsedRealtimeProvider");
        Intrinsics.checkNotNullParameter(initTimeProvider, "initTimeProvider");
        this.lifecycleDataSource = lifecycleDataSource;
        this.defaultDispatcher = defaultDispatcher;
        this.elapsedRealtimeProvider = elapsedRealtimeProvider;
        this.initTimeProvider = initTimeProvider;
        this.isRunning = StateFlowKt.MutableStateFlow(false);
        this.accumulatedBackgroundMs = new AtomicLong(0L);
        this.backgroundStartMs = new AtomicLong(0L);
        this.isInBackground = new AtomicBoolean(false);
        this.scope = CoroutineScopeKt.CoroutineScope(defaultDispatcher.plus(new AppForegroundDurationObserver$special$$inlined$CoroutineExceptionHandler$1(CoroutineExceptionHandler.INSTANCE)));
    }

    public /* synthetic */ AppForegroundDurationObserver(LifecycleDataSource lifecycleDataSource, CoroutineDispatcher coroutineDispatcher, Function0 function0, Function0 function1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(lifecycleDataSource, coroutineDispatcher, (i & 4) != 0 ? new Function0() { // from class: com.unity3d.ads.core.data.datasource.AppForegroundDurationObserver$$ExternalSyntheticLambda0
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Long.valueOf(SystemClock.elapsedRealtime());
            }
        } : function0, (i & 8) != 0 ? new Function0() { // from class: com.unity3d.ads.core.data.datasource.AppForegroundDurationObserver$$ExternalSyntheticLambda1
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Long.valueOf(SdkProperties.getInitializationTime());
            }
        } : function1);
    }

    private final long currentAccumulatedBackgroundMs(long initTime, long now) {
        long j = this.accumulatedBackgroundMs.get();
        return !this.isInBackground.get() ? j : j + Math.max(0L, now - Math.max(this.backgroundStartMs.get(), initTime));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onBackground() {
        if (this.isInBackground.compareAndSet(false, true)) {
            this.backgroundStartMs.set(this.elapsedRealtimeProvider.invoke().longValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onForeground() {
        if (this.isInBackground.compareAndSet(true, false)) {
            long jLongValue = this.initTimeProvider.invoke().longValue();
            if (jLongValue == 0) {
                return;
            }
            long jMax = Math.max(this.backgroundStartMs.get(), jLongValue);
            this.accumulatedBackgroundMs.addAndGet(Math.max(0L, this.elapsedRealtimeProvider.invoke().longValue() - jMax));
        }
    }

    @Override // com.unity3d.ads.core.data.datasource.ForegroundDurationReader
    public long getSessionDurationInForegroundMs() {
        long jLongValue = this.initTimeProvider.invoke().longValue();
        if (jLongValue == 0) {
            return 0L;
        }
        long jLongValue2 = this.elapsedRealtimeProvider.invoke().longValue();
        return Math.max(0L, (jLongValue2 - jLongValue) - currentAccumulatedBackgroundMs(jLongValue, jLongValue2));
    }

    public final void invoke() {
        Boolean value;
        Boolean bool;
        MutableStateFlow<Boolean> mutableStateFlow = this.isRunning;
        do {
            value = mutableStateFlow.getValue();
            bool = value;
            bool.booleanValue();
        } while (!mutableStateFlow.compareAndSet(value, true));
        if (bool.booleanValue()) {
            return;
        }
        if (!this.lifecycleDataSource.appIsForeground()) {
            this.isInBackground.set(true);
            long jLongValue = this.initTimeProvider.invoke().longValue();
            AtomicLong atomicLong = this.backgroundStartMs;
            if (jLongValue == 0) {
                jLongValue = this.elapsedRealtimeProvider.invoke().longValue();
            }
            atomicLong.set(jLongValue);
        }
        FlowKt.launchIn(FlowKt.onEach(this.lifecycleDataSource.getAppActive(), new AnonymousClass2(null)), this.scope);
    }
}

package com.unity3d.ads.core.domain;

import android.app.Activity;
import com.ironsource.C3510b4;
import com.unity3d.ads.core.data.repository.FocusRepository;
import com.unity3d.ads.core.data.repository.FocusState;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.log.Logger;
import java.util.concurrent.ConcurrentHashMap;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import p005kotlin.Metadata;
import p005kotlin.NoWhenBranchMatchedException;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Reflection;
import p005kotlin.time.ComparableTimeMark;
import p005kotlin.time.Duration;
import p005kotlin.time.TimeSource;

/* JADX INFO: compiled from: AndroidHandleFocusCounters.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\r¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0011H\u0002J\u0010\u0010#\u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0011H\u0002J\u0010\u0010$\u001a\u00020!2\u0006\u0010%\u001a\u00020\u001dH\u0002J\t\u0010&\u001a\u00020!H\u0086\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R&\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u001a0\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001d0\u001cX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lcom/unity3d/ads/core/domain/AndroidHandleFocusCounters;", "", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "focusRepository", "Lcom/unity3d/ads/core/data/repository/FocusRepository;", "isAdActivity", "Lcom/unity3d/ads/core/domain/AndroidGetIsAdActivity;", "defaultDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "logger", "Lcom/unity3d/ads/core/log/Logger;", "timeSource", "Lkotlin/time/TimeSource$WithComparableMarks;", "<init>", "(Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/FocusRepository;Lcom/unity3d/ads/core/domain/AndroidGetIsAdActivity;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/log/Logger;Lkotlin/time/TimeSource$WithComparableMarks;)V", "latestKnownActivityResumed", "", "getLatestKnownActivityResumed$annotations", "()V", "getLatestKnownActivityResumed", "()Ljava/lang/String;", "setLatestKnownActivityResumed", "(Ljava/lang/String;)V", "focusTimesPerActivity", "Ljava/util/concurrent/ConcurrentHashMap;", "Lkotlin/time/ComparableTimeMark;", "previousFocusState", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/unity3d/ads/core/data/repository/FocusState;", "coroutineExceptionHandler", "Lkotlinx/coroutines/CoroutineExceptionHandler;", C3510b4.i.u0, "", "activityName", C3510b4.i.t0, "onFocusStateChange", "newState", "invoke", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidHandleFocusCounters {
    private final CoroutineExceptionHandler coroutineExceptionHandler;
    private final CoroutineDispatcher defaultDispatcher;
    private final FocusRepository focusRepository;
    private final ConcurrentHashMap<String, ComparableTimeMark> focusTimesPerActivity;
    private final AndroidGetIsAdActivity isAdActivity;
    private volatile String latestKnownActivityResumed;
    private final Logger logger;
    private final MutableStateFlow<FocusState> previousFocusState;
    private final SessionRepository sessionRepository;
    private final TimeSource.WithComparableMarks timeSource;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidHandleFocusCounters$invoke$1, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidHandleFocusCounters.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "event", "Lcom/unity3d/ads/core/data/repository/FocusState;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidHandleFocusCounters$invoke$1", f = "AndroidHandleFocusCounters.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<FocusState, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = AndroidHandleFocusCounters.this.new AnonymousClass1(continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(FocusState focusState, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(focusState, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            String qualifiedName;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            FocusState focusState = (FocusState) this.L$0;
            AndroidHandleFocusCounters.this.onFocusStateChange(focusState);
            Activity activity = focusState.getActivity().get();
            if (activity == null || (qualifiedName = Reflection.getOrCreateKotlinClass(activity.getClass()).getQualifiedName()) == null) {
                qualifiedName = "unknown_activity_name";
            }
            if (!AndroidHandleFocusCounters.this.isAdActivity.invoke(qualifiedName)) {
                return Unit.INSTANCE;
            }
            AndroidHandleFocusCounters.this.sessionRepository.incrementGlobalAdsFocusChangeCount();
            if (focusState instanceof FocusState.Focused) {
                AndroidHandleFocusCounters.this.onResume(qualifiedName);
            } else {
                if (!(focusState instanceof FocusState.Unfocused)) {
                    throw new NoWhenBranchMatchedException();
                }
                AndroidHandleFocusCounters.this.onPause(qualifiedName);
            }
            return Unit.INSTANCE;
        }
    }

    public AndroidHandleFocusCounters(SessionRepository sessionRepository, FocusRepository focusRepository, AndroidGetIsAdActivity isAdActivity, CoroutineDispatcher defaultDispatcher, Logger logger, TimeSource.WithComparableMarks timeSource) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(focusRepository, "focusRepository");
        Intrinsics.checkNotNullParameter(isAdActivity, "isAdActivity");
        Intrinsics.checkNotNullParameter(defaultDispatcher, "defaultDispatcher");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(timeSource, "timeSource");
        this.sessionRepository = sessionRepository;
        this.focusRepository = focusRepository;
        this.isAdActivity = isAdActivity;
        this.defaultDispatcher = defaultDispatcher;
        this.logger = logger;
        this.timeSource = timeSource;
        this.focusTimesPerActivity = new ConcurrentHashMap<>();
        this.previousFocusState = StateFlowKt.MutableStateFlow(null);
        this.coroutineExceptionHandler = new AndroidHandleFocusCounters$special$$inlined$CoroutineExceptionHandler$1(CoroutineExceptionHandler.INSTANCE, this);
    }

    public /* synthetic */ AndroidHandleFocusCounters(SessionRepository sessionRepository, FocusRepository focusRepository, AndroidGetIsAdActivity androidGetIsAdActivity, CoroutineDispatcher coroutineDispatcher, Logger logger, TimeSource.Monotonic monotonic, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(sessionRepository, focusRepository, androidGetIsAdActivity, coroutineDispatcher, logger, (i & 32) != 0 ? TimeSource.Monotonic.INSTANCE : monotonic);
    }

    public static /* synthetic */ void getLatestKnownActivityResumed$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onFocusStateChange(FocusState newState) {
        FocusState value;
        FocusState focusState;
        MutableStateFlow<FocusState> mutableStateFlow = this.previousFocusState;
        do {
            value = mutableStateFlow.getValue();
            focusState = value;
        } while (!mutableStateFlow.compareAndSet(value, newState));
        if (focusState == null || newState.getClass() == focusState.getClass()) {
            return;
        }
        this.sessionRepository.incrementFocusChangeCount();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onPause(String activityName) {
        String str = this.latestKnownActivityResumed;
        if (str == null || Intrinsics.areEqual(str, activityName)) {
            ComparableTimeMark comparableTimeMarkRemove = this.focusTimesPerActivity.remove(activityName);
            if (comparableTimeMarkRemove == null) {
                comparableTimeMarkRemove = this.timeSource.markNow();
            }
            this.sessionRepository.addTimeToGlobalAdsFocusTime((int) Duration.m4378getInWholeMillisecondsimpl(comparableTimeMarkRemove.mo4357elapsedNowUwyO8pc()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onResume(String activityName) {
        this.latestKnownActivityResumed = activityName;
        this.focusTimesPerActivity.put(activityName, this.timeSource.markNow());
    }

    public final String getLatestKnownActivityResumed() {
        return this.latestKnownActivityResumed;
    }

    public final void invoke() {
        FlowKt.launchIn(FlowKt.onEach(this.focusRepository.getFocusState(), new AnonymousClass1(null)), CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null).plus(this.defaultDispatcher).plus(this.coroutineExceptionHandler)));
    }

    public final void setLatestKnownActivityResumed(String str) {
        this.latestKnownActivityResumed = str;
    }
}

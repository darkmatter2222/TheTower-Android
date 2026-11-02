package com.unity3d.ads.adplayer;

import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import com.google.protobuf.ByteString;
import com.ironsource.C3510b4;
import com.ironsource.InterfaceC3669k1;
import com.tapjoy.TJAdUnitConstants;
import com.unity3d.ads.MediationInfo;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.repository.FocusRepository;
import com.unity3d.ads.core.data.repository.OrientationRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableSharedFlow;
import org.json.JSONObject;
import p005kotlin.Metadata;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.TuplesKt;
import p005kotlin.Unit;
import p005kotlin.collections.MapsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DisplayRecoverer.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000 12\u00020\u0001:\u00011BI\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011¢\u0006\u0004\b\u0012\u0010\u0013J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bJ\u0016\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001dH\u0086@¢\u0006\u0002\u0010\u001fJ\u0006\u0010 \u001a\u00020\u0019J\u0016\u0010!\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020\u001dH\u0082@¢\u0006\u0002\u0010\u001fJ\b\u0010#\u001a\u00020$H\u0002J\u0010\u0010%\u001a\u00020\u00192\u0006\u0010&\u001a\u00020\u0003H\u0002J\u0018\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020\r2\u0006\u0010*\u001a\u00020+H\u0002J\u001d\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00190-2\u0006\u0010.\u001a\u00020\rH\u0002¢\u0006\u0004\b/\u00100R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00062"}, d2 = {"Lcom/unity3d/ads/adplayer/DisplayRecoverer;", "", "opportunityId", "", "adObject", "Lcom/unity3d/ads/core/data/model/AdObject;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "focusRepository", "Lcom/unity3d/ads/core/data/repository/FocusRepository;", "sendDiagnosticEvent", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "context", "Landroid/content/Context;", "orientationRepository", "Lcom/unity3d/ads/core/data/repository/OrientationRepository;", "showOptions", "Lcom/unity3d/ads/adplayer/AndroidShowOptions;", "<init>", "(Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/FocusRepository;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Landroid/content/Context;Lcom/unity3d/ads/core/data/repository/OrientationRepository;Lcom/unity3d/ads/adplayer/AndroidShowOptions;)V", "incidentInProgress", "Ljava/util/concurrent/atomic/AtomicBoolean;", "displayHiddenAtMs", "Ljava/util/concurrent/atomic/AtomicLong;", TJAdUnitConstants.String.VIDEO_START, "", "scope", "Lkotlinx/coroutines/CoroutineScope;", "handleExternalDestroy", "", "sdkAlreadyDestroyed", "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "stop", "attemptDisplayRecovery", "taskRemoved", "maxBackgroundAgeMs", "", C3510b4.g.e, "reason", "getIntent", "Landroid/content/Intent;", "providedContext", "intentFlags", "", "launchDisplay", "Lkotlin/Result;", "startContext", "launchDisplay-IoAF18A", "(Landroid/content/Context;)Ljava/lang/Object;", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DisplayRecoverer {
    public static final long DEFAULT_MAX_BACKGROUND_AGE_MS = 30000;
    public static final String EXTRA_RECOVERY_REATTACH = "isRecoveryReattach";
    private static final long RECOVERY_TIMEOUT_MS = 5000;
    private final AdObject adObject;
    private final Context context;
    private final AtomicLong displayHiddenAtMs;
    private final FocusRepository focusRepository;
    private final AtomicBoolean incidentInProgress;
    private final String opportunityId;
    private final OrientationRepository orientationRepository;
    private final SendDiagnosticEvent sendDiagnosticEvent;
    private final SessionRepository sessionRepository;
    private final AndroidShowOptions showOptions;

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.DisplayRecoverer$attemptDisplayRecovery$1, reason: invalid class name */
    /* JADX INFO: compiled from: DisplayRecoverer.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.adplayer.DisplayRecoverer", f = "DisplayRecoverer.kt", i = {}, l = {151, 172}, m = "attemptDisplayRecovery", n = {}, s = {})
    static final class AnonymousClass1 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DisplayRecoverer.this.attemptDisplayRecovery(false, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.DisplayRecoverer$handleExternalDestroy$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DisplayRecoverer.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.adplayer.DisplayRecoverer", f = "DisplayRecoverer.kt", i = {}, l = {InterfaceC3669k1.d.b.k}, m = "handleExternalDestroy", n = {}, s = {})
    static final class C39731 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C39731(Continuation<? super C39731> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DisplayRecoverer.this.handleExternalDestroy(false, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.DisplayRecoverer$start$2, reason: invalid class name */
    /* JADX INFO: compiled from: DisplayRecoverer.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", TJAdUnitConstants.String.MESSAGE, "Lcom/unity3d/ads/adplayer/DisplayMessage$VisibilityChanged;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.adplayer.DisplayRecoverer$start$2", f = "DisplayRecoverer.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<DisplayMessage.VisibilityChanged, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = DisplayRecoverer.this.new AnonymousClass2(continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(DisplayMessage.VisibilityChanged visibilityChanged, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(visibilityChanged, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            if (((DisplayMessage.VisibilityChanged) this.L$0).getIsVisible()) {
                DisplayRecoverer.this.displayHiddenAtMs.set(0L);
            } else {
                Boxing.boxBoolean(DisplayRecoverer.this.displayHiddenAtMs.compareAndSet(0L, SystemClock.elapsedRealtime()));
            }
            return Unit.INSTANCE;
        }
    }

    public DisplayRecoverer(String opportunityId, AdObject adObject, SessionRepository sessionRepository, FocusRepository focusRepository, SendDiagnosticEvent sendDiagnosticEvent, Context context, OrientationRepository orientationRepository, AndroidShowOptions showOptions) {
        Intrinsics.checkNotNullParameter(opportunityId, "opportunityId");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(focusRepository, "focusRepository");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(orientationRepository, "orientationRepository");
        Intrinsics.checkNotNullParameter(showOptions, "showOptions");
        this.opportunityId = opportunityId;
        this.adObject = adObject;
        this.sessionRepository = sessionRepository;
        this.focusRepository = focusRepository;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.context = context;
        this.orientationRepository = orientationRepository;
        this.showOptions = showOptions;
        this.incidentInProgress = new AtomicBoolean(false);
        this.displayHiddenAtMs = new AtomicLong(0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00ee, code lost:
    
        if (r1 == r3) goto L51;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object attemptDisplayRecovery(boolean r23, p005kotlin.coroutines.Continuation<? super java.lang.Boolean> r24) {
        /*
            Method dump skipped, instruction units count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.DisplayRecoverer.attemptDisplayRecovery(boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final void fail(String reason) {
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_show_display_recovery_failure", (Double) null, MapsKt.mapOf(TuplesKt.to("reason", reason)), (Map) null, this.adObject, (Integer) null, (ByteString) null, (MediationInfo) null, 234, (Object) null);
    }

    private final Intent getIntent(Context providedContext, int intentFlags) {
        Intent intent = new Intent(providedContext, (Class<?>) FullScreenWebViewDisplay.class);
        intent.putExtra("opportunityId", this.opportunityId);
        Map<String, Object> unityAdsShowOptions = this.showOptions.getUnityAdsShowOptions();
        if (unityAdsShowOptions != null) {
            intent.putExtra("showOptions", new JSONObject(unityAdsShowOptions).toString());
        }
        intent.addFlags(intentFlags);
        intent.putExtra("orientation", this.orientationRepository.getResumedActivityOrientation().getValue().intValue());
        intent.putExtra(EXTRA_RECOVERY_REATTACH, true);
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: launchDisplay-IoAF18A, reason: not valid java name */
    public final Object m2723launchDisplayIoAF18A(Context startContext) {
        Object objM3022constructorimpl;
        Object objM3022constructorimpl2;
        Integer numValueOf = Integer.valueOf(this.sessionRepository.getNativeConfiguration().getOverwriteIntentFlagActivity());
        if (numValueOf.intValue() == 0) {
            numValueOf = null;
        }
        int iIntValue = numValueOf != null ? numValueOf.intValue() : 268500992;
        try {
            Result.Companion companion = Result.INSTANCE;
            DisplayRecoverer displayRecoverer = this;
            startContext.startActivity(getIntent(startContext, iIntValue));
            objM3022constructorimpl = Result.m3022constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(objM3022constructorimpl);
        if (thM3025exceptionOrNullimpl == null) {
            return objM3022constructorimpl;
        }
        try {
            Result.Companion companion3 = Result.INSTANCE;
            if (iIntValue == 268500992) {
                throw thM3025exceptionOrNullimpl;
            }
            startContext.startActivity(getIntent(startContext, 268500992));
            objM3022constructorimpl2 = Result.m3022constructorimpl(Unit.INSTANCE);
            return objM3022constructorimpl2;
        } catch (Throwable th2) {
            Result.Companion companion4 = Result.INSTANCE;
            objM3022constructorimpl2 = Result.m3022constructorimpl(ResultKt.createFailure(th2));
        }
    }

    private final long maxBackgroundAgeMs() {
        Integer numValueOf = Integer.valueOf(this.sessionRepository.getFeatureFlags().getRecoverFullscreenDisplayMaxBackgroundAgeMs());
        if (numValueOf.intValue() == 0) {
            numValueOf = null;
        }
        if (numValueOf != null) {
            return numValueOf.intValue();
        }
        return 30000L;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0082  */
    /* JADX WARN: Code duplicated, block: B:33:0x0085 A[Catch: all -> 0x002f, CancellationException -> 0x0031, TryCatch #2 {CancellationException -> 0x0031, all -> 0x002f, blocks: (B:11:0x002b, B:28:0x0079, B:33:0x0085, B:34:0x008c, B:23:0x004c, B:25:0x0070), top: B:42:0x0027 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:44:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    public final Object handleExternalDestroy(boolean z, Continuation<? super Boolean> continuation) {
        C39731 c39731;
        Object objM3022constructorimpl;
        Boolean boolBoxBoolean;
        if (continuation instanceof C39731) {
            c39731 = (C39731) continuation;
            if ((c39731.label & Integer.MIN_VALUE) != 0) {
                c39731.label -= Integer.MIN_VALUE;
            } else {
                c39731 = new C39731(continuation);
            }
        } else {
            c39731 = new C39731(continuation);
        }
        Object objAttemptDisplayRecovery = c39731.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c39731.label;
        boolean z2 = true;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(objAttemptDisplayRecovery);
                if (!this.incidentInProgress.compareAndSet(false, true)) {
                    return Boxing.boxBoolean(true);
                }
                Result.Companion companion = Result.INSTANCE;
                SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_show_display_external_destroy", (Double) null, (Map) null, (Map) null, this.adObject, (Integer) null, (ByteString) null, (MediationInfo) null, 238, (Object) null);
                boolean zConsumeTaskRemoved = AdTaskRemovalDetectionService.INSTANCE.consumeTaskRemoved();
                if (z) {
                    z2 = false;
                } else {
                    c39731.label = 1;
                    objAttemptDisplayRecovery = attemptDisplayRecovery(zConsumeTaskRemoved, c39731);
                    if (objAttemptDisplayRecovery == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                if (z2) {
                    this.incidentInProgress.set(false);
                }
                objM3022constructorimpl = Result.m3022constructorimpl(Boxing.boxBoolean(z2));
                boolBoxBoolean = Boxing.boxBoolean(false);
                if (Result.m3028isFailureimpl(objM3022constructorimpl)) {
                    return boolBoxBoolean;
                }
                return objM3022constructorimpl;
            }
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objAttemptDisplayRecovery);
            if (!((Boolean) objAttemptDisplayRecovery).booleanValue()) {
                z2 = false;
            }
            if (z2) {
                this.incidentInProgress.set(false);
            }
            objM3022constructorimpl = Result.m3022constructorimpl(Boxing.boxBoolean(z2));
        } catch (CancellationException e) {
            throw e;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
        boolBoxBoolean = Boxing.boxBoolean(false);
        if (Result.m3028isFailureimpl(objM3022constructorimpl)) {
            return boolBoxBoolean;
        }
        return objM3022constructorimpl;
    }

    public final void start(CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        final MutableSharedFlow<DisplayMessage> displayMessages = AndroidFullscreenWebViewAdPlayer.INSTANCE.getDisplayMessages();
        final Flow<Object> flow = new Flow<Object>() { // from class: com.unity3d.ads.adplayer.DisplayRecoverer$start$$inlined$filterIsInstance$1

            /* JADX INFO: renamed from: com.unity3d.ads.adplayer.DisplayRecoverer$start$$inlined$filterIsInstance$1$2, reason: invalid class name */
            /* JADX INFO: compiled from: Emitters.kt */
            @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* JADX INFO: renamed from: com.unity3d.ads.adplayer.DisplayRecoverer$start$$inlined$filterIsInstance$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
                @DebugMetadata(c = "com.unity3d.ads.adplayer.DisplayRecoverer$start$$inlined$filterIsInstance$1$2", f = "DisplayRecoverer.kt", i = {}, l = {50}, m = "emit", n = {}, s = {})
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    Object L$1;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.$this_unsafeFlow = flowCollector;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0014  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.label -= Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(continuation);
                    }
                    Object obj2 = anonymousClass1.result;
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i = anonymousClass1.label;
                    if (i == 0) {
                        ResultKt.throwOnFailure(obj2);
                        FlowCollector flowCollector = this.$this_unsafeFlow;
                        if (obj instanceof DisplayMessage.VisibilityChanged) {
                            anonymousClass1.label = 1;
                            if (flowCollector.emit(obj, anonymousClass1) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        }
                    } else {
                        if (i != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj2);
                    }
                    return Unit.INSTANCE;
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super Object> flowCollector, Continuation continuation) {
                Object objCollect = displayMessages.collect(new AnonymousClass2(flowCollector), continuation);
                return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
            }
        };
        FlowKt.launchIn(FlowKt.onEach(new Flow<DisplayMessage.VisibilityChanged>() { // from class: com.unity3d.ads.adplayer.DisplayRecoverer$start$$inlined$filter$1

            /* JADX INFO: renamed from: com.unity3d.ads.adplayer.DisplayRecoverer$start$$inlined$filter$1$2, reason: invalid class name */
            /* JADX INFO: compiled from: Emitters.kt */
            @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;
                final /* synthetic */ DisplayRecoverer this$0;

                /* JADX INFO: renamed from: com.unity3d.ads.adplayer.DisplayRecoverer$start$$inlined$filter$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
                @DebugMetadata(c = "com.unity3d.ads.adplayer.DisplayRecoverer$start$$inlined$filter$1$2", f = "DisplayRecoverer.kt", i = {}, l = {50}, m = "emit", n = {}, s = {})
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    Object L$1;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector, DisplayRecoverer displayRecoverer) {
                    this.$this_unsafeFlow = flowCollector;
                    this.this$0 = displayRecoverer;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0014  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.label -= Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(continuation);
                    }
                    Object obj2 = anonymousClass1.result;
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i = anonymousClass1.label;
                    if (i == 0) {
                        ResultKt.throwOnFailure(obj2);
                        FlowCollector flowCollector = this.$this_unsafeFlow;
                        if (Intrinsics.areEqual(((DisplayMessage.VisibilityChanged) obj).getOpportunityId(), this.this$0.opportunityId)) {
                            anonymousClass1.label = 1;
                            if (flowCollector.emit(obj, anonymousClass1) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        }
                    } else {
                        if (i != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj2);
                    }
                    return Unit.INSTANCE;
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super DisplayMessage.VisibilityChanged> flowCollector, Continuation continuation) {
                Object objCollect = flow.collect(new AnonymousClass2(flowCollector, this), continuation);
                return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
            }
        }, new AnonymousClass2(null)), scope);
    }

    public final void stop() {
        AdTaskRemovalDetectionService.INSTANCE.stop(this.context);
    }
}

package com.unity3d.ads.core.data.manager;

import com.google.protobuf.ByteString;
import com.unity3d.ads.MediationInfo;
import com.unity3d.ads.core.data.datasource.StaticDeviceInfoDataSource;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.domain.TriggerInitializeListener;
import com.unity3d.ads.core.log.Logger;
import com.unity3d.services.core.preferences.AndroidPreferences;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Job;
import p005kotlin.Metadata;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidOptimisticInitializationManager.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0000\u0018\u0000  2\u00020\u0001:\u0001 B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0016\u001a\u00020\u0017H\u0096@¢\u0006\u0002\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0017H\u0016J\b\u0010\u001c\u001a\u00020\u001aH\u0002J\u000e\u0010\u001d\u001a\u00020\u001aH\u0082@¢\u0006\u0002\u0010\u0018J\b\u0010\u001e\u001a\u00020\u001fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;", "Lcom/unity3d/ads/core/data/manager/OptimisticInitializationManager;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "triggerInitializeListener", "Lcom/unity3d/ads/core/domain/TriggerInitializeListener;", "sendDiagnosticEvent", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "optimisticScope", "Lkotlinx/coroutines/CoroutineScope;", "staticDeviceInfoDataSource", "Lcom/unity3d/ads/core/data/datasource/StaticDeviceInfoDataSource;", "logger", "Lcom/unity3d/ads/core/log/Logger;", "ioDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "<init>", "(Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/domain/TriggerInitializeListener;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/data/datasource/StaticDeviceInfoDataSource;Lcom/unity3d/ads/core/log/Logger;Lkotlinx/coroutines/CoroutineDispatcher;)V", "terminal", "Ljava/util/concurrent/atomic/AtomicBoolean;", "timerJob", "Lkotlinx/coroutines/Job;", "tryOptimisticCompletion", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onInitializationFinished", "", "success", "sendOptimistic", "storeKey", "computeKey", "", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidOptimisticInitializationManager implements OptimisticInitializationManager {
    private static final String DIAGNOSTIC_EVENT = "native_initialize_success_optimistically";
    private static final String KEY_LAST_SUCCESS = "last_init_success";
    private static final String PREFERENCES_FILE = "unityads-optimistic-init";
    private final CoroutineDispatcher ioDispatcher;
    private final Logger logger;
    private final CoroutineScope optimisticScope;
    private final SendDiagnosticEvent sendDiagnosticEvent;
    private final SessionRepository sessionRepository;
    private final StaticDeviceInfoDataSource staticDeviceInfoDataSource;
    private final AtomicBoolean terminal;
    private volatile Job timerJob;
    private final TriggerInitializeListener triggerInitializeListener;

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$onInitializationFinished$1, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidOptimisticInitializationManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$onInitializationFinished$1", f = "AndroidOptimisticInitializationManager.kt", i = {}, l = {91}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidOptimisticInitializationManager.this.new AnonymousClass1(continuation);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (AndroidOptimisticInitializationManager.this.storeKey(this) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$storeKey$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidOptimisticInitializationManager.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager", f = "AndroidOptimisticInitializationManager.kt", i = {}, l = {108}, m = "storeKey", n = {}, s = {})
    static final class C39991 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C39991(Continuation<? super C39991> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidOptimisticInitializationManager.this.storeKey(this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$storeKey$2, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidOptimisticInitializationManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$storeKey$2", f = "AndroidOptimisticInitializationManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $key;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(String str, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$key = str;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$key, continuation);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            AndroidPreferences.setString(AndroidOptimisticInitializationManager.PREFERENCES_FILE, AndroidOptimisticInitializationManager.KEY_LAST_SUCCESS, this.$key);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$tryOptimisticCompletion$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidOptimisticInitializationManager.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager", f = "AndroidOptimisticInitializationManager.kt", i = {0, 0, 1}, l = {59, 71}, m = "tryOptimisticCompletion", n = {"currentKey", "delayMs", "delayMs"}, s = {"L$0", "I$0", "I$0"})
    static final class C40001 extends ContinuationImpl {
        int I$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C40001(Continuation<? super C40001> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidOptimisticInitializationManager.this.tryOptimisticCompletion(this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$tryOptimisticCompletion$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidOptimisticInitializationManager.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "kotlin.jvm.PlatformType", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$tryOptimisticCompletion$2", f = "AndroidOptimisticInitializationManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C40012 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super String>, Object> {
        int label;

        C40012(Continuation<? super C40012> continuation) {
            super(2, continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C40012(continuation);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super String> continuation) {
            return ((C40012) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return AndroidPreferences.getString(AndroidOptimisticInitializationManager.PREFERENCES_FILE, AndroidOptimisticInitializationManager.KEY_LAST_SUCCESS);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$tryOptimisticCompletion$3, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidOptimisticInitializationManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$tryOptimisticCompletion$3", f = "AndroidOptimisticInitializationManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass3(Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass3(continuation);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            AndroidPreferences.removeKey(AndroidOptimisticInitializationManager.PREFERENCES_FILE, AndroidOptimisticInitializationManager.KEY_LAST_SUCCESS);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$tryOptimisticCompletion$4, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidOptimisticInitializationManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$tryOptimisticCompletion$4", f = "AndroidOptimisticInitializationManager.kt", i = {}, l = {80}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass4 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $delayMs;
        int label;
        final /* synthetic */ AndroidOptimisticInitializationManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass4(int i, AndroidOptimisticInitializationManager androidOptimisticInitializationManager, Continuation<? super AnonymousClass4> continuation) {
            super(2, continuation);
            this.$delayMs = i;
            this.this$0 = androidOptimisticInitializationManager;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass4(this.$delayMs, this.this$0, continuation);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass4) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (DelayKt.delay(this.$delayMs, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            this.this$0.sendOptimistic();
            return Unit.INSTANCE;
        }
    }

    public AndroidOptimisticInitializationManager(SessionRepository sessionRepository, TriggerInitializeListener triggerInitializeListener, SendDiagnosticEvent sendDiagnosticEvent, CoroutineScope optimisticScope, StaticDeviceInfoDataSource staticDeviceInfoDataSource, Logger logger, CoroutineDispatcher ioDispatcher) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(triggerInitializeListener, "triggerInitializeListener");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(optimisticScope, "optimisticScope");
        Intrinsics.checkNotNullParameter(staticDeviceInfoDataSource, "staticDeviceInfoDataSource");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(ioDispatcher, "ioDispatcher");
        this.sessionRepository = sessionRepository;
        this.triggerInitializeListener = triggerInitializeListener;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.optimisticScope = optimisticScope;
        this.staticDeviceInfoDataSource = staticDeviceInfoDataSource;
        this.logger = logger;
        this.ioDispatcher = ioDispatcher;
        this.terminal = new AtomicBoolean(false);
    }

    private final String computeKey() {
        String[] strArr = new String[3];
        String gameId = this.sessionRepository.getGameId();
        if (gameId == null) {
            gameId = "";
        }
        strArr[0] = gameId;
        strArr[1] = "4.21.0";
        strArr[2] = this.staticDeviceInfoDataSource.getBundleVersion();
        return CollectionsKt.joinToString$default(CollectionsKt.listOf((Object[]) strArr), "|", null, null, 0, null, null, 62, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendOptimistic() {
        if (this.terminal.compareAndSet(false, true)) {
            try {
                Logger.DefaultImpls.trace$default(this.logger, "Optimistic init: timer fired, sending success callback", null, 2, null);
                this.triggerInitializeListener.success();
                SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, DIAGNOSTIC_EVENT, (Double) null, (Map) null, (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 254, (Object) null);
            } catch (Throwable th) {
                this.logger.trace("Optimistic init: failed to send success callback: " + th.getMessage(), th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object storeKey(Continuation<? super Unit> continuation) {
        C39991 c39991;
        if (continuation instanceof C39991) {
            c39991 = (C39991) continuation;
            if ((c39991.label & Integer.MIN_VALUE) != 0) {
                c39991.label -= Integer.MIN_VALUE;
            } else {
                c39991 = new C39991(continuation);
            }
        } else {
            c39991 = new C39991(continuation);
        }
        Object obj = c39991.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c39991.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                String strComputeKey = computeKey();
                CoroutineDispatcher coroutineDispatcher = this.ioDispatcher;
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(strComputeKey, null);
                c39991.label = 1;
                if (BuildersKt.withContext(coroutineDispatcher, anonymousClass2, c39991) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
        } catch (Exception e) {
            Logger.DefaultImpls.trace$default(this.logger, "Optimistic init: failed to store key: " + e.getMessage(), null, 2, null);
        }
        return Unit.INSTANCE;
    }

    @Override // com.unity3d.ads.core.data.manager.OptimisticInitializationManager
    public void onInitializationFinished(boolean success) {
        this.terminal.set(true);
        Job job = this.timerJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        if (success) {
            BuildersKt__Builders_commonKt.launch$default(this.optimisticScope, null, null, new AnonymousClass1(null), 3, null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.unity3d.ads.core.data.manager.OptimisticInitializationManager
    public Object tryOptimisticCompletion(Continuation<? super Boolean> continuation) {
        C40001 c40001;
        String strComputeKey;
        int i;
        Exception exc;
        int i2;
        if (continuation instanceof C40001) {
            c40001 = (C40001) continuation;
            if ((c40001.label & Integer.MIN_VALUE) != 0) {
                c40001.label -= Integer.MIN_VALUE;
            } else {
                c40001 = new C40001(continuation);
            }
        } else {
            c40001 = new C40001(continuation);
        }
        Object obj = c40001.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = c40001.label;
        try {
            if (i3 != 0) {
                if (i3 == 1) {
                    i = c40001.I$0;
                    strComputeKey = (String) c40001.L$0;
                    ResultKt.throwOnFailure(obj);
                } else {
                    if (i3 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    i2 = c40001.I$0;
                    try {
                        ResultKt.throwOnFailure(obj);
                    } catch (Exception e) {
                        exc = e;
                        Logger.DefaultImpls.trace$default(this.logger, "Optimistic init: failed to delete key: " + exc.getMessage(), null, 2, null);
                    }
                }
                this.timerJob = BuildersKt__Builders_commonKt.launch$default(this.optimisticScope, null, null, new AnonymousClass4(i2, this, null), 3, null);
                Logger.DefaultImpls.trace$default(this.logger, "Optimistic init: timer armed for " + i2 + "ms", null, 2, null);
                return Boxing.boxBoolean(true);
            }
            ResultKt.throwOnFailure(obj);
            Job job = this.timerJob;
            if (job != null) {
                Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
            }
            this.timerJob = null;
            this.terminal.set(false);
            int optimisticInitDelayMs = this.sessionRepository.getNativeConfiguration().getOptimisticInitDelayMs();
            if (optimisticInitDelayMs <= 0) {
                return Boxing.boxBoolean(false);
            }
            strComputeKey = computeKey();
            CoroutineDispatcher coroutineDispatcher = this.ioDispatcher;
            C40012 c40012 = new C40012(null);
            c40001.L$0 = strComputeKey;
            c40001.I$0 = optimisticInitDelayMs;
            c40001.label = 1;
            Object objWithContext = BuildersKt.withContext(coroutineDispatcher, c40012, c40001);
            if (objWithContext != coroutine_suspended) {
                i = optimisticInitDelayMs;
                obj = objWithContext;
            }
            return coroutine_suspended;
            if (!Intrinsics.areEqual((String) obj, strComputeKey)) {
                return Boxing.boxBoolean(false);
            }
            try {
                CoroutineDispatcher coroutineDispatcher2 = this.ioDispatcher;
                AnonymousClass3 anonymousClass3 = new AnonymousClass3(null);
                c40001.L$0 = null;
                c40001.I$0 = i;
                c40001.label = 2;
                if (BuildersKt.withContext(coroutineDispatcher2, anonymousClass3, c40001) != coroutine_suspended) {
                    i2 = i;
                    this.timerJob = BuildersKt__Builders_commonKt.launch$default(this.optimisticScope, null, null, new AnonymousClass4(i2, this, null), 3, null);
                    Logger.DefaultImpls.trace$default(this.logger, "Optimistic init: timer armed for " + i2 + "ms", null, 2, null);
                    return Boxing.boxBoolean(true);
                }
                return coroutine_suspended;
            } catch (Exception e2) {
                exc = e2;
                i2 = i;
                Logger.DefaultImpls.trace$default(this.logger, "Optimistic init: failed to delete key: " + exc.getMessage(), null, 2, null);
            }
        } catch (Exception e3) {
            Logger.DefaultImpls.trace$default(this.logger, "Optimistic init: failed to read key: " + e3.getMessage(), null, 2, null);
            return Boxing.boxBoolean(false);
        }
    }
}

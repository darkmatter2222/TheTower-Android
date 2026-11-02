package com.unity3d.ads.core.domain;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.unity3d.ads.core.log.Logger;
import java.lang.ref.WeakReference;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__ContextKt;
import p005kotlin.Metadata;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidGetLifecycleFlow.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0019\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0086\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow;", "", "applicationContext", "Landroid/content/Context;", "logger", "Lcom/unity3d/ads/core/log/Logger;", "<init>", "(Landroid/content/Context;Lcom/unity3d/ads/core/log/Logger;)V", "invoke", "Lkotlinx/coroutines/flow/Flow;", "Lcom/unity3d/ads/core/domain/LifecycleEvent;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidGetLifecycleFlow {
    private final Context applicationContext;
    private final Logger logger;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidGetLifecycleFlow$invoke$2, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidGetLifecycleFlow.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;", "Lcom/unity3d/ads/core/domain/LifecycleEvent;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidGetLifecycleFlow$invoke$2", f = "AndroidGetLifecycleFlow.kt", i = {}, l = {77}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<ProducerScope<? super LifecycleEvent>, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$emit(ProducerScope<? super LifecycleEvent> producerScope, AndroidGetLifecycleFlow androidGetLifecycleFlow, LifecycleEvent lifecycleEvent) {
            try {
                producerScope.mo4525trySendJP2dKIU(lifecycleEvent);
            } catch (Throwable th) {
                Logger.DefaultImpls.error$default(androidGetLifecycleFlow.logger, "Unity Ads failed to observe the activity lifecycle: " + th.getClass().getName(), null, 2, null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invokeSuspend$lambda$0(AndroidGetLifecycleFlow androidGetLifecycleFlow, AndroidGetLifecycleFlow$invoke$2$listener$1 androidGetLifecycleFlow$invoke$2$listener$1) {
            ((Application) androidGetLifecycleFlow.applicationContext).unregisterActivityLifecycleCallbacks(androidGetLifecycleFlow$invoke$2$listener$1);
            return Unit.INSTANCE;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = AndroidGetLifecycleFlow.this.new AnonymousClass2(continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope<? super LifecycleEvent> producerScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [com.unity3d.ads.core.domain.AndroidGetLifecycleFlow$invoke$2$listener$1] */
        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                final ProducerScope producerScope = (ProducerScope) this.L$0;
                final AndroidGetLifecycleFlow androidGetLifecycleFlow = AndroidGetLifecycleFlow.this;
                final ?? r1 = new Application.ActivityLifecycleCallbacks() { // from class: com.unity3d.ads.core.domain.AndroidGetLifecycleFlow$invoke$2$listener$1
                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityCreated(Activity activity, Bundle bundle) {
                        Intrinsics.checkNotNullParameter(activity, "activity");
                        AndroidGetLifecycleFlow.AnonymousClass2.invokeSuspend$emit(producerScope, androidGetLifecycleFlow, new LifecycleEvent.Created(new WeakReference(activity), bundle));
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityDestroyed(Activity activity) {
                        Intrinsics.checkNotNullParameter(activity, "activity");
                        AndroidGetLifecycleFlow.AnonymousClass2.invokeSuspend$emit(producerScope, androidGetLifecycleFlow, new LifecycleEvent.Destroyed(new WeakReference(activity)));
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityPaused(Activity activity) {
                        Intrinsics.checkNotNullParameter(activity, "activity");
                        AndroidGetLifecycleFlow.AnonymousClass2.invokeSuspend$emit(producerScope, androidGetLifecycleFlow, new LifecycleEvent.Paused(new WeakReference(activity)));
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityResumed(Activity activity) {
                        Intrinsics.checkNotNullParameter(activity, "activity");
                        AndroidGetLifecycleFlow.AnonymousClass2.invokeSuspend$emit(producerScope, androidGetLifecycleFlow, new LifecycleEvent.Resumed(new WeakReference(activity)));
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                        Intrinsics.checkNotNullParameter(activity, "activity");
                        Intrinsics.checkNotNullParameter(bundle, "bundle");
                        AndroidGetLifecycleFlow.AnonymousClass2.invokeSuspend$emit(producerScope, androidGetLifecycleFlow, new LifecycleEvent.SaveInstanceState(new WeakReference(activity), bundle));
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityStarted(Activity activity) {
                        Intrinsics.checkNotNullParameter(activity, "activity");
                        AndroidGetLifecycleFlow.AnonymousClass2.invokeSuspend$emit(producerScope, androidGetLifecycleFlow, new LifecycleEvent.Started(new WeakReference(activity)));
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityStopped(Activity activity) {
                        Intrinsics.checkNotNullParameter(activity, "activity");
                        AndroidGetLifecycleFlow.AnonymousClass2.invokeSuspend$emit(producerScope, androidGetLifecycleFlow, new LifecycleEvent.Stopped(new WeakReference(activity)));
                    }
                };
                ((Application) AndroidGetLifecycleFlow.this.applicationContext).registerActivityLifecycleCallbacks((Application.ActivityLifecycleCallbacks) r1);
                final AndroidGetLifecycleFlow androidGetLifecycleFlow2 = AndroidGetLifecycleFlow.this;
                this.label = 1;
                if (ProduceKt.awaitClose(producerScope, new Function0() { // from class: com.unity3d.ads.core.domain.AndroidGetLifecycleFlow$invoke$2$$ExternalSyntheticLambda0
                    @Override // p005kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return AndroidGetLifecycleFlow.AnonymousClass2.invokeSuspend$lambda$0(androidGetLifecycleFlow2, r1);
                    }
                }, this) == coroutine_suspended) {
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

    public AndroidGetLifecycleFlow(Context applicationContext, Logger logger) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.applicationContext = applicationContext;
        this.logger = logger;
    }

    public final Flow<LifecycleEvent> invoke() {
        if (this.applicationContext instanceof Application) {
            return FlowKt__ContextKt.buffer$default(FlowKt.channelFlow(new AnonymousClass2(null)), Integer.MAX_VALUE, null, 2, null);
        }
        throw new IllegalArgumentException("Application context is required".toString());
    }
}

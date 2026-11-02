package com.unity3d.ads;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.ironsource.C3813rg;
import com.tapjoy.TapjoyConstants;
import com.unity3d.ads.core.domain.AndroidGetAdPlayerContext;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import com.unity3d.ads.metadata.MediationMetaData;
import com.unity3d.services.UnityServices;
import com.unity3d.services.ads.IUnityAds;
import com.unity3d.services.ads.UnityAdsImplementation;
import com.unity3d.services.core.di.ServiceKey;
import com.unity3d.services.core.di.ServiceProvider;
import com.unity3d.services.core.misc.Utilities;
import com.unity3d.services.core.properties.ClientProperties;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.Deprecated;
import p005kotlin.Metadata;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.enums.EnumEntries;
import p005kotlin.enums.EnumEntriesKt;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: UnityAds.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0019\bÆ\u0002\u0018\u00002\u00020\u0001:\u0004EFGHB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0007J&\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007J$\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\f\u001a\u00020\rH\u0007J.\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\f\u001a\u00020\r2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007J\u001c\u0010\u0017\u001a\u00020\u00052\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\tH\u0007J&\u0010\u0017\u001a\u00020\u00052\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\t2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0007J&\u0010\u0017\u001a\u00020\u00052\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\t2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0007J0\u0010\u0017\u001a\u00020\u00052\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\t2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0007J\u0012\u0010$\u001a\u00020\u00052\b\u0010\u001a\u001a\u0004\u0018\u00010\tH\u0007J\u001c\u0010$\u001a\u00020\u00052\b\u0010\u001a\u001a\u0004\u0018\u00010\t2\b\u0010%\u001a\u0004\u0018\u00010&H\u0007J&\u0010$\u001a\u00020\u00052\b\u0010\u001a\u001a\u0004\u0018\u00010\t2\b\u0010'\u001a\u0004\u0018\u00010(2\b\u0010%\u001a\u0004\u0018\u00010&H\u0007J\u0012\u0010+\u001a\u00020\u00052\b\u0010%\u001a\u0004\u0018\u00010,H\u0007J\u0018\u0010+\u001a\u00020\u00052\u0006\u0010-\u001a\u00020.2\u0006\u0010%\u001a\u00020,H\u0007J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010-\u001a\u00020/2\u0006\u0010%\u001a\u000200H\u0007R\u001a\u0010\u000e\u001a\u00020\r8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u000f\u0010\u0003\u001a\u0004\b\u000e\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\r8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0012\u0010\u0003\u001a\u0004\b\u0011\u0010\u0010R\u001a\u0010\u0013\u001a\u00020\t8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0014\u0010\u0003\u001a\u0004\b\u0015\u0010\u0016R*\u0010\u001f\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\r8F@FX\u0087\u000e¢\u0006\u0012\u0012\u0004\b \u0010\u0003\u001a\u0004\b!\u0010\u0010\"\u0004\b\"\u0010#R\u001c\u0010)\u001a\u0004\u0018\u00010\t8FX\u0087\u0004¢\u0006\f\u0012\u0004\b*\u0010\u0003\u001a\u0004\b+\u0010\u0016R&\u00101\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b2\u0010\u0003\u001a\u0004\b3\u0010\u0016\"\u0004\b4\u00105R(\u00106\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0002\u0010<\u0012\u0004\b7\u0010\u0003\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R(\u0010=\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0002\u0010<\u0012\u0004\b>\u0010\u0003\u001a\u0004\b?\u00109\"\u0004\b@\u0010;R(\u0010A\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0002\u0010<\u0012\u0004\bB\u0010\u0003\u001a\u0004\bC\u00109\"\u0004\bD\u0010;¨\u0006I"}, d2 = {"Lcom/unity3d/ads/UnityAds;", "", "<init>", "()V", "initialize", "", "context", "Landroid/content/Context;", AndroidGetAdPlayerContext.KEY_GAME_ID, "", "initializationListener", "Lcom/unity3d/ads/IUnityAdsInitializationListener;", "testMode", "", "isInitialized", "isInitialized$annotations", "()Z", "isSupported", "isSupported$annotations", "version", "getVersion$annotations", C3813rg.b, "()Ljava/lang/String;", "show", "activity", "Landroid/app/Activity;", "placementId", "showListener", "Lcom/unity3d/ads/IUnityAdsShowListener;", "options", "Lcom/unity3d/ads/UnityAdsShowOptions;", "debugMode", "getDebugMode$annotations", "getDebugMode", "setDebugMode", "(Z)V", "load", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/unity3d/ads/IUnityAdsLoadListener;", HandleInvocationsFromAdViewer.KEY_LOAD_OPTIONS, "Lcom/unity3d/ads/UnityAdsLoadOptions;", "token", "getToken$annotations", "getToken", "Lcom/unity3d/ads/IUnityAdsTokenListener;", "configuration", "Lcom/unity3d/ads/TokenConfiguration;", "Lcom/unity3d/ads/InitializationConfiguration;", "Lcom/unity3d/ads/InitializationListener;", "userIdentifier", "getUserIdentifier$annotations", "getUserIdentifier", "setUserIdentifier", "(Ljava/lang/String;)V", "userConsent", "getUserConsent$annotations", "getUserConsent", "()Ljava/lang/Boolean;", "setUserConsent", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "userOptOut", "getUserOptOut$annotations", "getUserOptOut", "setUserOptOut", "nonBehavioral", "getNonBehavioral$annotations", "getNonBehavioral", "setNonBehavioral", "UnityAdsShowCompletionState", "UnityAdsInitializationError", "UnityAdsLoadError", "UnityAdsShowError", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class UnityAds {
    public static final UnityAds INSTANCE = new UnityAds();
    private static Boolean nonBehavioral;
    private static Boolean userConsent;
    private static String userIdentifier;
    private static Boolean userOptOut;

    /* JADX INFO: compiled from: UnityAds.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;", "", "<init>", "(Ljava/lang/String;I)V", "INTERNAL_ERROR", "INVALID_ARGUMENT", "AD_BLOCKER_DETECTED", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public enum UnityAdsInitializationError {
        INTERNAL_ERROR,
        INVALID_ARGUMENT,
        AD_BLOCKER_DETECTED;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        public static EnumEntries<UnityAdsInitializationError> getEntries() {
            return $ENTRIES;
        }
    }

    /* JADX INFO: compiled from: UnityAds.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;", "", "<init>", "(Ljava/lang/String;I)V", "INITIALIZE_FAILED", "INTERNAL_ERROR", "INVALID_ARGUMENT", "NO_FILL", "TIMEOUT", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public enum UnityAdsLoadError {
        INITIALIZE_FAILED,
        INTERNAL_ERROR,
        INVALID_ARGUMENT,
        NO_FILL,
        TIMEOUT;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        public static EnumEntries<UnityAdsLoadError> getEntries() {
            return $ENTRIES;
        }
    }

    /* JADX INFO: compiled from: UnityAds.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;", "", "<init>", "(Ljava/lang/String;I)V", "SKIPPED", "COMPLETED", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public enum UnityAdsShowCompletionState {
        SKIPPED,
        COMPLETED;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        public static EnumEntries<UnityAdsShowCompletionState> getEntries() {
            return $ENTRIES;
        }
    }

    /* JADX INFO: compiled from: UnityAds.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\f\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/unity3d/ads/UnityAds$UnityAdsShowError;", "", "<init>", "(Ljava/lang/String;I)V", "NOT_INITIALIZED", "NOT_READY", "VIDEO_PLAYER_ERROR", "INVALID_ARGUMENT", "NO_CONNECTION", "ALREADY_SHOWING", "INTERNAL_ERROR", "TIMEOUT", "EXPIRED", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public enum UnityAdsShowError {
        NOT_INITIALIZED,
        NOT_READY,
        VIDEO_PLAYER_ERROR,
        INVALID_ARGUMENT,
        NO_CONNECTION,
        ALREADY_SHOWING,
        INTERNAL_ERROR,
        TIMEOUT,
        EXPIRED;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        public static EnumEntries<UnityAdsShowError> getEntries() {
            return $ENTRIES;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.UnityAds$initialize$7, reason: invalid class name */
    /* JADX INFO: compiled from: UnityAds.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.UnityAds$initialize$7", f = "UnityAds.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass7 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ InitializationConfiguration $configuration;
        final /* synthetic */ InitializationListener $listener;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass7(InitializationConfiguration initializationConfiguration, InitializationListener initializationListener, Continuation<? super AnonymousClass7> continuation) {
            super(2, continuation);
            this.$configuration = initializationConfiguration;
            this.$listener = initializationListener;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass7(this.$configuration, this.$listener, continuation);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass7) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            if (this.$configuration.getMediationInfo() != null) {
                MediationMetaData mediationMetaData = new MediationMetaData(ClientProperties.getApplicationContext());
                InitializationConfiguration initializationConfiguration = this.$configuration;
                mediationMetaData.setName(initializationConfiguration.getMediationInfo().getName());
                mediationMetaData.setVersion(initializationConfiguration.getMediationInfo().getVersion());
                mediationMetaData.set(TapjoyConstants.TJC_ADAPTER_VERSION, initializationConfiguration.getMediationInfo().getAdapterVersion());
                mediationMetaData.commit();
            }
            UnityServices.initialize(ClientProperties.getApplicationContext(), this.$configuration.getGameId(), this.$configuration.getIsTestModeEnabled(), this.$configuration, this.$listener);
            return Unit.INSTANCE;
        }
    }

    private UnityAds() {
    }

    public static final boolean getDebugMode() {
        return UnityAdsImplementation.getInstance().getDebugMode();
    }

    @Deprecated(message = "Use logLevel in InitializationConfiguration instead.")
    @JvmStatic
    public static /* synthetic */ void getDebugMode$annotations() {
    }

    public static final Boolean getNonBehavioral() {
        return nonBehavioral;
    }

    @JvmStatic
    public static /* synthetic */ void getNonBehavioral$annotations() {
    }

    public static final String getToken() {
        return UnityAdsImplementation.getInstance().getToken();
    }

    @Deprecated(message = "Use getToken(TokenConfiguration, IUnityAdsTokenListener) instead")
    @JvmStatic
    public static final void getToken(final IUnityAdsTokenListener listener) {
        Object objM3022constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            UnityAdsImplementation.getInstance().getToken(listener);
            objM3022constructorimpl = Result.m3022constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m3025exceptionOrNullimpl(objM3022constructorimpl) == null || listener == null) {
            return;
        }
        Utilities.wrapCustomerListener(new Runnable() { // from class: com.unity3d.ads.UnityAds$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                listener.onUnityAdsTokenReady(null);
            }
        });
    }

    @JvmStatic
    public static final void getToken(TokenConfiguration configuration, final IUnityAdsTokenListener listener) {
        Object objM3022constructorimpl;
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(listener, "listener");
        try {
            Result.Companion companion = Result.INSTANCE;
            UnityAdsImplementation.getInstance().getToken(configuration, listener);
            objM3022constructorimpl = Result.m3022constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m3025exceptionOrNullimpl(objM3022constructorimpl) != null) {
            Utilities.wrapCustomerListener(new Runnable() { // from class: com.unity3d.ads.UnityAds$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onUnityAdsTokenReady(null);
                }
            });
        }
    }

    @Deprecated(message = "Use getToken(TokenConfiguration, IUnityAdsTokenListener) instead")
    @JvmStatic
    public static /* synthetic */ void getToken$annotations() {
    }

    public static final Boolean getUserConsent() {
        return userConsent;
    }

    @JvmStatic
    public static /* synthetic */ void getUserConsent$annotations() {
    }

    public static final String getUserIdentifier() {
        return userIdentifier;
    }

    @JvmStatic
    public static /* synthetic */ void getUserIdentifier$annotations() {
    }

    public static final Boolean getUserOptOut() {
        return userOptOut;
    }

    @JvmStatic
    public static /* synthetic */ void getUserOptOut$annotations() {
    }

    public static final String getVersion() {
        String version = UnityAdsImplementation.getInstance().getVersion();
        Intrinsics.checkNotNullExpressionValue(version, "getVersion(...)");
        return version;
    }

    @JvmStatic
    public static /* synthetic */ void getVersion$annotations() {
    }

    @Deprecated(message = "Use initialize(InitializationConfiguration, InitializationListener) instead")
    @JvmStatic
    public static final void initialize(Context context, String gameId) {
        try {
            Result.Companion companion = Result.INSTANCE;
            UnityAdsImplementation.getInstance().initialize(context, gameId, false, null);
            Result.m3022constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
    }

    @Deprecated(message = "Use initialize(InitializationConfiguration, InitializationListener) instead")
    @JvmStatic
    public static final void initialize(Context context, String gameId, final IUnityAdsInitializationListener initializationListener) {
        Object objM3022constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            UnityAdsImplementation.getInstance().initialize(context, gameId, false, initializationListener);
            objM3022constructorimpl = Result.m3022constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
        final Throwable thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(objM3022constructorimpl);
        if (thM3025exceptionOrNullimpl == null || initializationListener == null) {
            return;
        }
        Utilities.wrapCustomerListener(new Runnable() { // from class: com.unity3d.ads.UnityAds$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                UnityAds.initialize$lambda$4$lambda$3$lambda$2(initializationListener, thM3025exceptionOrNullimpl);
            }
        });
    }

    @Deprecated(message = "Use initialize(InitializationConfiguration, InitializationListener) instead")
    @JvmStatic
    public static final void initialize(Context context, String gameId, boolean testMode) {
        try {
            Result.Companion companion = Result.INSTANCE;
            UnityAdsImplementation.getInstance().initialize(context, gameId, testMode, null);
            Result.m3022constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
    }

    @Deprecated(message = "Use initialize(InitializationConfiguration, InitializationListener) instead")
    @JvmStatic
    public static final void initialize(Context context, String gameId, boolean testMode, final IUnityAdsInitializationListener initializationListener) {
        Object objM3022constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            UnityAdsImplementation.getInstance().initialize(context, gameId, testMode, initializationListener);
            objM3022constructorimpl = Result.m3022constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
        final Throwable thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(objM3022constructorimpl);
        if (thM3025exceptionOrNullimpl == null || initializationListener == null) {
            return;
        }
        Utilities.wrapCustomerListener(new Runnable() { // from class: com.unity3d.ads.UnityAds$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                UnityAds.initialize$lambda$9$lambda$8$lambda$7(initializationListener, thM3025exceptionOrNullimpl);
            }
        });
    }

    @JvmStatic
    public static final void initialize(InitializationConfiguration configuration, InitializationListener listener) {
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(listener, "listener");
        BuildersKt__Builders_commonKt.launch$default((CoroutineScope) ServiceProvider.INSTANCE.getRegistry().resolveService(new ServiceKey(ServiceProvider.NAMED_INIT_SCOPE, Reflection.getOrCreateKotlinClass(CoroutineScope.class))), null, null, new AnonymousClass7(configuration, listener, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initialize$lambda$4$lambda$3$lambda$2(IUnityAdsInitializationListener iUnityAdsInitializationListener, Throwable th) {
        iUnityAdsInitializationListener.onInitializationFailed(UnityAdsInitializationError.INTERNAL_ERROR, "Unity Ads SDK initialization failed due to unexpected error: " + th.getMessage());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initialize$lambda$9$lambda$8$lambda$7(IUnityAdsInitializationListener iUnityAdsInitializationListener, Throwable th) {
        iUnityAdsInitializationListener.onInitializationFailed(UnityAdsInitializationError.INTERNAL_ERROR, "Unity Ads SDK initialization failed due to unexpected error: " + th.getMessage());
    }

    public static final boolean isInitialized() {
        return UnityAdsImplementation.getInstance().isInitialized();
    }

    @JvmStatic
    public static /* synthetic */ void isInitialized$annotations() {
    }

    public static final boolean isSupported() {
        return UnityAdsImplementation.getInstance().isSupported();
    }

    @Deprecated(message = "isSupported always returns true and will be removed in a future version.")
    @JvmStatic
    public static /* synthetic */ void isSupported$annotations() {
    }

    @Deprecated(message = "Use InterstitialAd.load() or RewardedAd.load() instead")
    @JvmStatic
    public static final void load(String placementId) {
        try {
            Result.Companion companion = Result.INSTANCE;
            load(placementId, new IUnityAdsLoadListener() { // from class: com.unity3d.ads.UnityAds$load$1$1
                @Override // com.unity3d.ads.IUnityAdsLoadListener
                public void onUnityAdsAdLoaded(String placementId2) {
                    Intrinsics.checkNotNullParameter(placementId2, "placementId");
                }

                @Override // com.unity3d.ads.IUnityAdsLoadListener
                public void onUnityAdsFailedToLoad(String placementId2, UnityAds.UnityAdsLoadError error, String message) {
                    Intrinsics.checkNotNullParameter(placementId2, "placementId");
                    Intrinsics.checkNotNullParameter(error, "error");
                    Intrinsics.checkNotNullParameter(message, "message");
                }
            });
            Result.m3022constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
    }

    @Deprecated(message = "Use InterstitialAd.load() or RewardedAd.load() instead")
    @JvmStatic
    public static final void load(String placementId, IUnityAdsLoadListener listener) {
        load(placementId, new UnityAdsLoadOptions(), listener);
    }

    @Deprecated(message = "Use InterstitialAd.load() or RewardedAd.load() instead")
    @JvmStatic
    public static final void load(final String placementId, UnityAdsLoadOptions loadOptions, final IUnityAdsLoadListener listener) {
        Object objM3022constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            IUnityAds unityAdsImplementation = UnityAdsImplementation.getInstance();
            if (loadOptions == null) {
                loadOptions = new UnityAdsLoadOptions();
            }
            unityAdsImplementation.load(placementId, loadOptions, listener);
            objM3022constructorimpl = Result.m3022constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
        final Throwable thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(objM3022constructorimpl);
        if (thM3025exceptionOrNullimpl == null || listener == null) {
            return;
        }
        Utilities.wrapCustomerListener(new Runnable() { // from class: com.unity3d.ads.UnityAds$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                UnityAds.load$lambda$22$lambda$21$lambda$20(listener, placementId, thM3025exceptionOrNullimpl);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void load$lambda$22$lambda$21$lambda$20(IUnityAdsLoadListener iUnityAdsLoadListener, String str, Throwable th) {
        if (str == null) {
            str = "unknown";
        }
        iUnityAdsLoadListener.onUnityAdsFailedToLoad(str, UnityAdsLoadError.INTERNAL_ERROR, "Unity Ads SDK load failed due to unexpected error: " + th.getMessage());
    }

    public static final void setDebugMode(boolean z) {
        try {
            Result.Companion companion = Result.INSTANCE;
            UnityAdsImplementation.getInstance().setDebugMode(z);
            Result.m3022constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
    }

    public static final void setNonBehavioral(Boolean bool) {
        nonBehavioral = bool;
    }

    public static final void setUserConsent(Boolean bool) {
        userConsent = bool;
    }

    public static final void setUserIdentifier(String str) {
        userIdentifier = str;
    }

    public static final void setUserOptOut(Boolean bool) {
        userOptOut = bool;
    }

    @Deprecated(message = "Use InterstitialAd or RewardedAd show APIs instead")
    @JvmStatic
    public static final void show(Activity activity, String placementId) {
        try {
            Result.Companion companion = Result.INSTANCE;
            UnityAdsImplementation.getInstance().show(activity, placementId, new UnityAdsShowOptions(), null);
            Result.m3022constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
    }

    @Deprecated(message = "Use InterstitialAd or RewardedAd show APIs instead")
    @JvmStatic
    public static final void show(Activity activity, String placementId, IUnityAdsShowListener showListener) {
        try {
            Result.Companion companion = Result.INSTANCE;
            UnityAdsImplementation.getInstance().show(activity, placementId, new UnityAdsShowOptions(), showListener);
            Result.m3022constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
    }

    @Deprecated(message = "Use InterstitialAd or RewardedAd show APIs instead")
    @JvmStatic
    public static final void show(Activity activity, String placementId, UnityAdsShowOptions options) {
        try {
            Result.Companion companion = Result.INSTANCE;
            UnityAdsImplementation.getInstance().show(activity, placementId, options, null);
            Result.m3022constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
    }

    @Deprecated(message = "Use InterstitialAd or RewardedAd show APIs instead")
    @JvmStatic
    public static final void show(Activity activity, final String placementId, UnityAdsShowOptions options, final IUnityAdsShowListener showListener) {
        Object objM3022constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            UnityAdsImplementation.getInstance().show(activity, placementId, options, showListener);
            objM3022constructorimpl = Result.m3022constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
        final Throwable thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(objM3022constructorimpl);
        if (thM3025exceptionOrNullimpl == null || showListener == null) {
            return;
        }
        Utilities.wrapCustomerListener(new Runnable() { // from class: com.unity3d.ads.UnityAds$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                UnityAds.show$lambda$16$lambda$15$lambda$14(showListener, placementId, thM3025exceptionOrNullimpl);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void show$lambda$16$lambda$15$lambda$14(IUnityAdsShowListener iUnityAdsShowListener, String str, Throwable th) {
        if (str == null) {
            str = "unknown";
        }
        iUnityAdsShowListener.onUnityAdsShowFailure(str, UnityAdsShowError.INTERNAL_ERROR, "Unity Ads SDK show failed due to unexpected error: " + th.getMessage());
    }
}

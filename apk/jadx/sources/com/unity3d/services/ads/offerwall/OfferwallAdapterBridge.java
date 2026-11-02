package com.unity3d.services.ads.offerwall;

import com.ironsource.C3813rg;
import com.ironsource.adapters.admob.AdMobConstants;
import com.tapjoy.TJAdUnitConstants;
import com.unity3d.ads.core.domain.offerwall.OfferwallEventData;
import com.unity3d.services.core.log.DeviceLog;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.HashMap;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;
import p005kotlin.Lazy;
import p005kotlin.LazyKt;
import p005kotlin.Metadata;
import p005kotlin.Result;
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

/* JADX INFO: compiled from: OfferwallAdapterBridge.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 )2\u00020\u0001:\u0001)B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0006\u0010\u001c\u001a\u00020\u0005J\u0006\u0010\u001d\u001a\u00020\u001eJ\u000e\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u0005J\u000e\u0010!\u001a\u00020\"2\u0006\u0010 \u001a\u00020\u0005J\u000e\u0010#\u001a\u00020\"2\u0006\u0010 \u001a\u00020\u0005J\b\u0010$\u001a\u00020%H\u0002J\u0012\u0010&\u001a\u0004\u0018\u00010\u00052\u0006\u0010'\u001a\u00020\u0001H\u0002J\u0012\u0010(\u001a\u0004\u0018\u00010\u00012\u0006\u0010 \u001a\u00020\u0005H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\f¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR.\u0010\u000f\u001a\"\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0010j\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0001`\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R!\u0010\u0012\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00138BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0014\u0010\u0015R\u001b\u0010\u0018\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u0017\u001a\u0004\b\u0019\u0010\u001a¨\u0006*"}, d2 = {"Lcom/unity3d/services/ads/offerwall/OfferwallAdapterBridge;", "", "scope", "Lkotlinx/coroutines/CoroutineScope;", "tapjoyClassName", "", "<init>", "(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;)V", "_offerwallEventFlow", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;", "offerwallEventFlow", "Lkotlinx/coroutines/flow/SharedFlow;", "getOfferwallEventFlow", "()Lkotlinx/coroutines/flow/SharedFlow;", "placementsMap", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "tapjoyClass", "Ljava/lang/Class;", "getTapjoyClass", "()Ljava/lang/Class;", "tapjoyClass$delegate", "Lkotlin/Lazy;", "cachedVersion", "getCachedVersion", "()Ljava/lang/String;", "cachedVersion$delegate", C3813rg.b, "isConnected", "", "isAdReady", "placementName", AdMobConstants.Logs.LOAD_AD, "", "showAd", "tapjoyPlacementListener", "Ljava/lang/reflect/InvocationHandler;", "getPlacementName", "placementObj", "getPlacement", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class OfferwallAdapterBridge {
    private static final String TAPJOY_CLASS_NAME = "com.tapjoy.Tapjoy";
    private static final String UNKNOWN_VERSION = "0.0.0";
    private final MutableSharedFlow<OfferwallEventData> _offerwallEventFlow;

    /* JADX INFO: renamed from: cachedVersion$delegate, reason: from kotlin metadata */
    private final Lazy cachedVersion;
    private final SharedFlow<OfferwallEventData> offerwallEventFlow;
    private final HashMap<String, Object> placementsMap;
    private final CoroutineScope scope;

    /* JADX INFO: renamed from: tapjoyClass$delegate, reason: from kotlin metadata */
    private final Lazy tapjoyClass;
    private final String tapjoyClassName;

    /* JADX INFO: renamed from: com.unity3d.services.ads.offerwall.OfferwallAdapterBridge$showAd$1, reason: invalid class name */
    /* JADX INFO: compiled from: OfferwallAdapterBridge.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.services.ads.offerwall.OfferwallAdapterBridge$showAd$1", f = "OfferwallAdapterBridge.kt", i = {}, l = {59}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $placementName;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String str, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$placementName = str;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return OfferwallAdapterBridge.this.new AnonymousClass1(this.$placementName, continuation);
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
                if (OfferwallAdapterBridge.this._offerwallEventFlow.emit(new OfferwallEventData(OfferwallEvent.SHOW_FAILED, this.$placementName, null, null, 12, null), this) == coroutine_suspended) {
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

    public OfferwallAdapterBridge(CoroutineScope scope, String tapjoyClassName) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(tapjoyClassName, "tapjoyClassName");
        this.scope = scope;
        this.tapjoyClassName = tapjoyClassName;
        MutableSharedFlow<OfferwallEventData> mutableSharedFlowMutableSharedFlow$default = SharedFlowKt.MutableSharedFlow$default(0, 0, null, 7, null);
        this._offerwallEventFlow = mutableSharedFlowMutableSharedFlow$default;
        this.offerwallEventFlow = FlowKt.asSharedFlow(mutableSharedFlowMutableSharedFlow$default);
        this.placementsMap = new HashMap<>();
        this.tapjoyClass = LazyKt.lazy(new Function0() { // from class: com.unity3d.services.ads.offerwall.OfferwallAdapterBridge$$ExternalSyntheticLambda0
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return OfferwallAdapterBridge.tapjoyClass_delegate$lambda$1(this.f$0);
            }
        });
        this.cachedVersion = LazyKt.lazy(new Function0() { // from class: com.unity3d.services.ads.offerwall.OfferwallAdapterBridge$$ExternalSyntheticLambda1
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return OfferwallAdapterBridge.cachedVersion_delegate$lambda$3(this.f$0);
            }
        });
    }

    public /* synthetic */ OfferwallAdapterBridge(CoroutineScope coroutineScope, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(coroutineScope, (i & 2) != 0 ? TAPJOY_CLASS_NAME : str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String cachedVersion_delegate$lambda$3(OfferwallAdapterBridge offerwallAdapterBridge) {
        Object objM3022constructorimpl;
        Method declaredMethod;
        try {
            Result.Companion companion = Result.INSTANCE;
            Class<?> tapjoyClass = offerwallAdapterBridge.getTapjoyClass();
            objM3022constructorimpl = Result.m3022constructorimpl((String) ((tapjoyClass == null || (declaredMethod = tapjoyClass.getDeclaredMethod(C3813rg.b, new Class[0])) == null) ? null : declaredMethod.invoke(null, new Object[0])));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
        String str = (String) (Result.m3028isFailureimpl(objM3022constructorimpl) ? null : objM3022constructorimpl);
        return str == null ? UNKNOWN_VERSION : str;
    }

    private final String getCachedVersion() {
        return (String) this.cachedVersion.getValue();
    }

    private final Object getPlacement(String placementName) {
        return Class.forName(this.tapjoyClassName).getDeclaredMethod("getPlacement", String.class, Class.forName("com.tapjoy.TJPlacementListener")).invoke(null, placementName, Proxy.newProxyInstance(Class.forName("com.tapjoy.TJPlacementListener").getClassLoader(), new Class[]{Class.forName("com.tapjoy.TJPlacementListener")}, tapjoyPlacementListener()));
    }

    private final String getPlacementName(Object placementObj) {
        return (String) placementObj.getClass().getDeclaredMethod("getName", new Class[0]).invoke(placementObj, new Object[0]);
    }

    private final Class<?> getTapjoyClass() {
        return (Class) this.tapjoyClass.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Class tapjoyClass_delegate$lambda$1(OfferwallAdapterBridge offerwallAdapterBridge) {
        Object objM3022constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM3022constructorimpl = Result.m3022constructorimpl(Class.forName(offerwallAdapterBridge.tapjoyClassName));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m3028isFailureimpl(objM3022constructorimpl)) {
            objM3022constructorimpl = null;
        }
        return (Class) objM3022constructorimpl;
    }

    private final InvocationHandler tapjoyPlacementListener() {
        return new InvocationHandler() { // from class: com.unity3d.services.ads.offerwall.OfferwallAdapterBridge$$ExternalSyntheticLambda2
            @Override // java.lang.reflect.InvocationHandler
            public final Object invoke(Object obj, Method method, Object[] objArr) {
                return OfferwallAdapterBridge.tapjoyPlacementListener$lambda$5(this.f$0, obj, method, objArr);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final Object tapjoyPlacementListener$lambda$5(OfferwallAdapterBridge offerwallAdapterBridge, Object obj, Method method, Object[] objArr) {
        String name = method.getName();
        if (name != null) {
            switch (name.hashCode()) {
                case -1508301783:
                    if (name.equals("onContentReady")) {
                        Object obj2 = objArr[0];
                        Intrinsics.checkNotNullExpressionValue(obj2, "get(...)");
                        String placementName = offerwallAdapterBridge.getPlacementName(obj2);
                        DeviceLog.debug("Placement content ready: " + placementName);
                        BuildersKt__Builders_commonKt.launch$default(offerwallAdapterBridge.scope, null, null, new OfferwallAdapterBridge$tapjoyPlacementListener$1$3(offerwallAdapterBridge, placementName, null), 3, null);
                    }
                    break;
                case -1482787952:
                    if (name.equals("onContentDismiss")) {
                        Object obj3 = objArr[0];
                        Intrinsics.checkNotNullExpressionValue(obj3, "get(...)");
                        String placementName2 = offerwallAdapterBridge.getPlacementName(obj3);
                        DeviceLog.debug("Placement content dismissed: " + placementName2);
                        BuildersKt__Builders_commonKt.launch$default(offerwallAdapterBridge.scope, null, null, new OfferwallAdapterBridge$tapjoyPlacementListener$1$5(offerwallAdapterBridge, placementName2, null), 3, null);
                    }
                    break;
                case 89925559:
                    if (name.equals("onContentShow")) {
                        Object obj4 = objArr[0];
                        Intrinsics.checkNotNullExpressionValue(obj4, "get(...)");
                        String placementName3 = offerwallAdapterBridge.getPlacementName(obj4);
                        DeviceLog.debug("Placement content shown: " + placementName3);
                        BuildersKt__Builders_commonKt.launch$default(offerwallAdapterBridge.scope, null, null, new OfferwallAdapterBridge$tapjoyPlacementListener$1$4(offerwallAdapterBridge, placementName3, null), 3, null);
                    }
                    break;
                case 1356881459:
                    if (name.equals("onRequestSuccess")) {
                        Object obj5 = objArr[0];
                        Intrinsics.checkNotNull(obj5);
                        String placementName4 = offerwallAdapterBridge.getPlacementName(obj5);
                        Boolean bool = (Boolean) obj5.getClass().getDeclaredMethod("isContentAvailable", new Class[0]).invoke(obj5, new Object[0]);
                        boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
                        DeviceLog.debug("Placement request succeeded: " + placementName4 + " - isContentAvailable: " + zBooleanValue);
                        BuildersKt__Builders_commonKt.launch$default(offerwallAdapterBridge.scope, null, null, new OfferwallAdapterBridge$tapjoyPlacementListener$1$1(zBooleanValue, offerwallAdapterBridge, placementName4, null), 3, null);
                    }
                    break;
                case 2137477050:
                    if (name.equals("onRequestFailure")) {
                        Object obj6 = objArr[0];
                        Intrinsics.checkNotNullExpressionValue(obj6, "get(...)");
                        String placementName5 = offerwallAdapterBridge.getPlacementName(obj6);
                        offerwallAdapterBridge.placementsMap.remove(placementName5 == null ? "" : placementName5);
                        Object obj7 = objArr[1];
                        DeviceLog.error("Placement request failed: " + placementName5 + " - errorCode: " + ((Integer) obj7.getClass().getField("code").get(obj7)) + ", errorMessage: " + ((String) obj7.getClass().getField(TJAdUnitConstants.String.MESSAGE).get(obj7)));
                        BuildersKt__Builders_commonKt.launch$default(offerwallAdapterBridge.scope, null, null, new OfferwallAdapterBridge$tapjoyPlacementListener$1$2(offerwallAdapterBridge, placementName5, null), 3, null);
                    }
                    break;
            }
        }
        return null;
    }

    public final SharedFlow<OfferwallEventData> getOfferwallEventFlow() {
        return this.offerwallEventFlow;
    }

    public final String getVersion() {
        return getCachedVersion();
    }

    public final boolean isAdReady(String placementName) {
        Class<?> cls;
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        Object placement = getPlacement(placementName);
        Method declaredMethod = (placement == null || (cls = placement.getClass()) == null) ? null : cls.getDeclaredMethod("isContentReady", new Class[0]);
        Boolean bool = (Boolean) (declaredMethod != null ? declaredMethod.invoke(placement, new Object[0]) : null);
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public final boolean isConnected() {
        Object objM3022constructorimpl;
        Method declaredMethod;
        try {
            Result.Companion companion = Result.INSTANCE;
            OfferwallAdapterBridge offerwallAdapterBridge = this;
            Class<?> tapjoyClass = getTapjoyClass();
            objM3022constructorimpl = Result.m3022constructorimpl((Boolean) ((tapjoyClass == null || (declaredMethod = tapjoyClass.getDeclaredMethod("isConnected", new Class[0])) == null) ? null : declaredMethod.invoke(null, new Object[0])));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
        Boolean bool = (Boolean) (Result.m3028isFailureimpl(objM3022constructorimpl) ? null : objM3022constructorimpl);
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public final void loadAd(String placementName) throws IllegalAccessException, InvocationTargetException {
        Class<?> cls;
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        Object placement = getPlacement(placementName);
        this.placementsMap.put(placementName, placement);
        Method declaredMethod = (placement == null || (cls = placement.getClass()) == null) ? null : cls.getDeclaredMethod("requestContent", new Class[0]);
        if (declaredMethod != null) {
            declaredMethod.invoke(placement, new Object[0]);
        }
    }

    public final void showAd(String placementName) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        Class<?> cls;
        Class<?> cls2;
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        Object obj = this.placementsMap.get(placementName);
        Method declaredMethod = null;
        Method declaredMethod2 = (obj == null || (cls2 = obj.getClass()) == null) ? null : cls2.getDeclaredMethod("isContentAvailable", new Class[0]);
        Boolean bool = (Boolean) (declaredMethod2 != null ? declaredMethod2.invoke(obj, new Object[0]) : null);
        if (bool != null ? bool.booleanValue() : false) {
            if (obj != null && (cls = obj.getClass()) != null) {
                declaredMethod = cls.getDeclaredMethod("showContent", new Class[0]);
            }
            if (declaredMethod != null) {
                declaredMethod.invoke(obj, new Object[0]);
            }
        } else {
            BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new AnonymousClass1(placementName, null), 3, null);
        }
        this.placementsMap.remove(placementName);
    }
}

package com.unity3d.ads.core.domain.capability;

import com.google.protobuf.kotlin.DslList;
import gatewayprotocol.v1.InitializationRequestOuterClass;
import gatewayprotocol.v1.QuickCapabilitiesKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p005kotlin.Lazy;
import p005kotlin.LazyKt;
import p005kotlin.Metadata;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidGatherQuickCapabilities.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\r\u001a\u00020\bH\u0096\u0002R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\n¨\u0006\u000e"}, d2 = {"Lcom/unity3d/ads/core/domain/capability/AndroidGatherQuickCapabilities;", "Lcom/unity3d/ads/core/domain/capability/GatherQuickCapabilities;", "checkers", "", "Lcom/unity3d/ads/core/domain/capability/CapabilitiesChecker;", "<init>", "(Ljava/util/List;)V", "capabilities", "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;", "getCapabilities", "()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;", "capabilities$delegate", "Lkotlin/Lazy;", "invoke", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidGatherQuickCapabilities implements GatherQuickCapabilities {

    /* JADX INFO: renamed from: capabilities$delegate, reason: from kotlin metadata */
    private final Lazy capabilities;
    private final List<CapabilitiesChecker> checkers;

    /* JADX WARN: Multi-variable type inference failed */
    public AndroidGatherQuickCapabilities(List<? extends CapabilitiesChecker> checkers) {
        Intrinsics.checkNotNullParameter(checkers, "checkers");
        this.checkers = checkers;
        this.capabilities = LazyKt.lazy(new Function0() { // from class: com.unity3d.ads.core.domain.capability.AndroidGatherQuickCapabilities$$ExternalSyntheticLambda0
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return AndroidGatherQuickCapabilities.capabilities_delegate$lambda$2(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final InitializationRequestOuterClass.QuickCapabilities.Android capabilities_delegate$lambda$2(AndroidGatherQuickCapabilities androidGatherQuickCapabilities) {
        QuickCapabilitiesKt quickCapabilitiesKt = QuickCapabilitiesKt.INSTANCE;
        QuickCapabilitiesKt.AndroidKt.Dsl.Companion companion = QuickCapabilitiesKt.AndroidKt.Dsl.INSTANCE;
        InitializationRequestOuterClass.QuickCapabilities.Android.Builder builderNewBuilder = InitializationRequestOuterClass.QuickCapabilities.Android.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        QuickCapabilitiesKt.AndroidKt.Dsl dsl_create = companion._create(builderNewBuilder);
        DslList capabilities = dsl_create.getCapabilities();
        List<CapabilitiesChecker> list = androidGatherQuickCapabilities.checkers;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            CollectionsKt.addAll(arrayList, ((CapabilitiesChecker) it.next()).invoke());
        }
        dsl_create.addAllCapabilities(capabilities, CollectionsKt.distinct(arrayList));
        return dsl_create._build();
    }

    private final InitializationRequestOuterClass.QuickCapabilities.Android getCapabilities() {
        return (InitializationRequestOuterClass.QuickCapabilities.Android) this.capabilities.getValue();
    }

    @Override // com.unity3d.ads.core.domain.capability.GatherQuickCapabilities
    public InitializationRequestOuterClass.QuickCapabilities.Android invoke() {
        return getCapabilities();
    }
}

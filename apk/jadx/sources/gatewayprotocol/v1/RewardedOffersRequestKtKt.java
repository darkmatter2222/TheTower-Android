package gatewayprotocol.v1;

import p005kotlin.Metadata;
import p005kotlin.Unit;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RewardedOffersRequestKt.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a*\u0010\u0000\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0087\bø\u0001\u0000¢\u0006\u0002\b\u0007\u001a)\u0010\b\u001a\u00020\u0001*\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\t"}, d2 = {"rewardedOffersRequest", "Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;", "block", "Lkotlin/Function1;", "Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl;", "", "Lkotlin/ExtensionFunctionType;", "-initializerewardedOffersRequest", "copy", "unity-ads_defaultRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class RewardedOffersRequestKtKt {
    /* JADX INFO: renamed from: -initializerewardedOffersRequest, reason: not valid java name */
    public static final RewardedOffersRequestOuterClass.RewardedOffersRequest m2993initializerewardedOffersRequest(Function1<? super RewardedOffersRequestKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        RewardedOffersRequestKt.Dsl.Companion companion = RewardedOffersRequestKt.Dsl.INSTANCE;
        RewardedOffersRequestOuterClass.RewardedOffersRequest.Builder builderNewBuilder = RewardedOffersRequestOuterClass.RewardedOffersRequest.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        RewardedOffersRequestKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    public static final RewardedOffersRequestOuterClass.RewardedOffersRequest copy(RewardedOffersRequestOuterClass.RewardedOffersRequest rewardedOffersRequest, Function1<? super RewardedOffersRequestKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(rewardedOffersRequest, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        RewardedOffersRequestKt.Dsl.Companion companion = RewardedOffersRequestKt.Dsl.INSTANCE;
        RewardedOffersRequestOuterClass.RewardedOffersRequest.Builder builder = rewardedOffersRequest.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
        RewardedOffersRequestKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }
}

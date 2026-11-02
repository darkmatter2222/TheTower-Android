package gatewayprotocol.v1;

import p005kotlin.Metadata;
import p005kotlin.Unit;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: InitializationDataKt.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a*\u0010\u0000\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0087\bø\u0001\u0000¢\u0006\u0002\b\u0007\u001a)\u0010\b\u001a\u00020\u0001*\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0086\bø\u0001\u0000\"\u0017\u0010\t\u001a\u0004\u0018\u00010\n*\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\f\u0010\r\"\u0017\u0010\u000e\u001a\u0004\u0018\u00010\u000f*\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0012"}, d2 = {"initializationData", "Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;", "block", "Lkotlin/Function1;", "Lgatewayprotocol/v1/InitializationDataKt$Dsl;", "", "Lkotlin/ExtensionFunctionType;", "-initializeinitializationData", "copy", "initializationRequestOrNull", "Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;", "Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationDataOrBuilder;", "getInitializationRequestOrNull", "(Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationDataOrBuilder;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;", "sharedDataOrNull", "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;", "getSharedDataOrNull", "(Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationDataOrBuilder;)Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;", "unity-ads_defaultRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class InitializationDataKtKt {
    /* JADX INFO: renamed from: -initializeinitializationData, reason: not valid java name */
    public static final InitializationDataOuterClass.InitializationData m2965initializeinitializationData(Function1<? super InitializationDataKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        InitializationDataKt.Dsl.Companion companion = InitializationDataKt.Dsl.INSTANCE;
        InitializationDataOuterClass.InitializationData.Builder builderNewBuilder = InitializationDataOuterClass.InitializationData.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        InitializationDataKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    public static final InitializationDataOuterClass.InitializationData copy(InitializationDataOuterClass.InitializationData initializationData, Function1<? super InitializationDataKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(initializationData, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        InitializationDataKt.Dsl.Companion companion = InitializationDataKt.Dsl.INSTANCE;
        InitializationDataOuterClass.InitializationData.Builder builder = initializationData.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
        InitializationDataKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    public static final InitializationRequestOuterClass.InitializationRequest getInitializationRequestOrNull(InitializationDataOuterClass.InitializationDataOrBuilder initializationDataOrBuilder) {
        Intrinsics.checkNotNullParameter(initializationDataOrBuilder, "<this>");
        if (initializationDataOrBuilder.hasInitializationRequest()) {
            return initializationDataOrBuilder.getInitializationRequest();
        }
        return null;
    }

    public static final UniversalRequestOuterClass.UniversalRequest.SharedData getSharedDataOrNull(InitializationDataOuterClass.InitializationDataOrBuilder initializationDataOrBuilder) {
        Intrinsics.checkNotNullParameter(initializationDataOrBuilder, "<this>");
        if (initializationDataOrBuilder.hasSharedData()) {
            return initializationDataOrBuilder.getSharedData();
        }
        return null;
    }
}

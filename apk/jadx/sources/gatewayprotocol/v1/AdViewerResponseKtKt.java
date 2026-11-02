package gatewayprotocol.v1;

import p005kotlin.Metadata;
import p005kotlin.Unit;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AdViewerResponseKt.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a*\u0010\u0000\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0087\bø\u0001\u0000¢\u0006\u0002\b\u0007\u001a)\u0010\b\u001a\u00020\u0001*\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0086\bø\u0001\u0000\"\u0017\u0010\t\u001a\u0004\u0018\u00010\n*\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\f\u0010\r\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"adViewerResponse", "Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;", "block", "Lkotlin/Function1;", "Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;", "", "Lkotlin/ExtensionFunctionType;", "-initializeadViewerResponse", "copy", "errorOrNull", "Lgatewayprotocol/v1/ErrorOuterClass$Error;", "Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponseOrBuilder;", "getErrorOrNull", "(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponseOrBuilder;)Lgatewayprotocol/v1/ErrorOuterClass$Error;", "unity-ads_defaultRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class AdViewerResponseKtKt {
    /* JADX INFO: renamed from: -initializeadViewerResponse, reason: not valid java name */
    public static final AdViewerResponseOuterClass.AdViewerResponse m2937initializeadViewerResponse(Function1<? super AdViewerResponseKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        AdViewerResponseKt.Dsl.Companion companion = AdViewerResponseKt.Dsl.INSTANCE;
        AdViewerResponseOuterClass.AdViewerResponse.Builder builderNewBuilder = AdViewerResponseOuterClass.AdViewerResponse.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        AdViewerResponseKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    public static final AdViewerResponseOuterClass.AdViewerResponse copy(AdViewerResponseOuterClass.AdViewerResponse adViewerResponse, Function1<? super AdViewerResponseKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(adViewerResponse, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        AdViewerResponseKt.Dsl.Companion companion = AdViewerResponseKt.Dsl.INSTANCE;
        AdViewerResponseOuterClass.AdViewerResponse.Builder builder = adViewerResponse.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
        AdViewerResponseKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    public static final ErrorOuterClass.Error getErrorOrNull(AdViewerResponseOuterClass.AdViewerResponseOrBuilder adViewerResponseOrBuilder) {
        Intrinsics.checkNotNullParameter(adViewerResponseOrBuilder, "<this>");
        if (adViewerResponseOrBuilder.hasError()) {
            return adViewerResponseOrBuilder.getError();
        }
        return null;
    }
}

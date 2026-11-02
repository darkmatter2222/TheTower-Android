package gatewayprotocol.v1;

import p005kotlin.Metadata;
import p005kotlin.Unit;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AdViewerRequestKt.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000@\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a*\u0010\u0000\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0087\bø\u0001\u0000¢\u0006\u0002\b\u0007\u001a)\u0010\b\u001a\u00020\u0001*\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0086\bø\u0001\u0000\"\u0017\u0010\t\u001a\u0004\u0018\u00010\n*\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\f\u0010\r\"\u0017\u0010\u000e\u001a\u0004\u0018\u00010\u000f*\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011\"\u0017\u0010\u0012\u001a\u0004\u0018\u00010\u0013*\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015\"\u0017\u0010\u0016\u001a\u0004\u0018\u00010\u0017*\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001a"}, d2 = {"adViewerRequest", "Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;", "block", "Lkotlin/Function1;", "Lgatewayprotocol/v1/AdViewerRequestKt$Dsl;", "", "Lkotlin/ExtensionFunctionType;", "-initializeadViewerRequest", "copy", "sessionCountersOrNull", "Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;", "Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequestOrBuilder;", "getSessionCountersOrNull", "(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequestOrBuilder;)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;", "staticDeviceInfoOrNull", "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;", "getStaticDeviceInfoOrNull", "(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequestOrBuilder;)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;", "dynamicDeviceInfoOrNull", "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;", "getDynamicDeviceInfoOrNull", "(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequestOrBuilder;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;", "campaignStateOrNull", "Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;", "getCampaignStateOrNull", "(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequestOrBuilder;)Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;", "unity-ads_defaultRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class AdViewerRequestKtKt {
    /* JADX INFO: renamed from: -initializeadViewerRequest, reason: not valid java name */
    public static final AdViewerRequestOuterClass.AdViewerRequest m2936initializeadViewerRequest(Function1<? super AdViewerRequestKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        AdViewerRequestKt.Dsl.Companion companion = AdViewerRequestKt.Dsl.INSTANCE;
        AdViewerRequestOuterClass.AdViewerRequest.Builder builderNewBuilder = AdViewerRequestOuterClass.AdViewerRequest.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        AdViewerRequestKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    public static final AdViewerRequestOuterClass.AdViewerRequest copy(AdViewerRequestOuterClass.AdViewerRequest adViewerRequest, Function1<? super AdViewerRequestKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(adViewerRequest, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        AdViewerRequestKt.Dsl.Companion companion = AdViewerRequestKt.Dsl.INSTANCE;
        AdViewerRequestOuterClass.AdViewerRequest.Builder builder = adViewerRequest.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
        AdViewerRequestKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    public static final CampaignStateOuterClass.CampaignState getCampaignStateOrNull(AdViewerRequestOuterClass.AdViewerRequestOrBuilder adViewerRequestOrBuilder) {
        Intrinsics.checkNotNullParameter(adViewerRequestOrBuilder, "<this>");
        if (adViewerRequestOrBuilder.hasCampaignState()) {
            return adViewerRequestOrBuilder.getCampaignState();
        }
        return null;
    }

    public static final DynamicDeviceInfoOuterClass.DynamicDeviceInfo getDynamicDeviceInfoOrNull(AdViewerRequestOuterClass.AdViewerRequestOrBuilder adViewerRequestOrBuilder) {
        Intrinsics.checkNotNullParameter(adViewerRequestOrBuilder, "<this>");
        if (adViewerRequestOrBuilder.hasDynamicDeviceInfo()) {
            return adViewerRequestOrBuilder.getDynamicDeviceInfo();
        }
        return null;
    }

    public static final SessionCountersOuterClass.SessionCounters getSessionCountersOrNull(AdViewerRequestOuterClass.AdViewerRequestOrBuilder adViewerRequestOrBuilder) {
        Intrinsics.checkNotNullParameter(adViewerRequestOrBuilder, "<this>");
        if (adViewerRequestOrBuilder.hasSessionCounters()) {
            return adViewerRequestOrBuilder.getSessionCounters();
        }
        return null;
    }

    public static final StaticDeviceInfoOuterClass.StaticDeviceInfo getStaticDeviceInfoOrNull(AdViewerRequestOuterClass.AdViewerRequestOrBuilder adViewerRequestOrBuilder) {
        Intrinsics.checkNotNullParameter(adViewerRequestOrBuilder, "<this>");
        if (adViewerRequestOrBuilder.hasStaticDeviceInfo()) {
            return adViewerRequestOrBuilder.getStaticDeviceInfo();
        }
        return null;
    }
}

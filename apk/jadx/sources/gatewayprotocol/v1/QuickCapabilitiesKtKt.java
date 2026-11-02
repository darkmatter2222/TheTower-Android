package gatewayprotocol.v1;

import p005kotlin.Metadata;
import p005kotlin.Unit;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: QuickCapabilitiesKt.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a*\u0010\u0000\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0087\bø\u0001\u0000¢\u0006\u0002\b\u0007\u001a)\u0010\b\u001a\u00020\u0001*\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0086\bø\u0001\u0000\u001a)\u0010\b\u001a\u00020\t*\u00020\t2\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0086\bø\u0001\u0000\u001a)\u0010\b\u001a\u00020\u000b*\u00020\u000b2\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0086\bø\u0001\u0000\"\u0017\u0010\r\u001a\u0004\u0018\u00010\t*\u00020\u000e8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010\"\u0017\u0010\u0011\u001a\u0004\u0018\u00010\u000b*\u00020\u000e8F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0014"}, d2 = {"quickCapabilities", "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;", "block", "Lkotlin/Function1;", "Lgatewayprotocol/v1/QuickCapabilitiesKt$Dsl;", "", "Lkotlin/ExtensionFunctionType;", "-initializequickCapabilities", "copy", "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;", "Lgatewayprotocol/v1/QuickCapabilitiesKt$AndroidKt$Dsl;", "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;", "Lgatewayprotocol/v1/QuickCapabilitiesKt$IosKt$Dsl;", "androidOrNull", "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilitiesOrBuilder;", "getAndroidOrNull", "(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilitiesOrBuilder;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;", "iosOrNull", "getIosOrNull", "(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilitiesOrBuilder;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;", "unity-ads_defaultRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class QuickCapabilitiesKtKt {
    /* JADX INFO: renamed from: -initializequickCapabilities, reason: not valid java name */
    public static final InitializationRequestOuterClass.QuickCapabilities m2988initializequickCapabilities(Function1<? super QuickCapabilitiesKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        QuickCapabilitiesKt.Dsl.Companion companion = QuickCapabilitiesKt.Dsl.INSTANCE;
        InitializationRequestOuterClass.QuickCapabilities.Builder builderNewBuilder = InitializationRequestOuterClass.QuickCapabilities.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        QuickCapabilitiesKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    public static final InitializationRequestOuterClass.QuickCapabilities.Android copy(InitializationRequestOuterClass.QuickCapabilities.Android android2, Function1<? super QuickCapabilitiesKt.AndroidKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(android2, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        QuickCapabilitiesKt.AndroidKt.Dsl.Companion companion = QuickCapabilitiesKt.AndroidKt.Dsl.INSTANCE;
        InitializationRequestOuterClass.QuickCapabilities.Android.Builder builder = android2.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
        QuickCapabilitiesKt.AndroidKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    public static final InitializationRequestOuterClass.QuickCapabilities.Ios copy(InitializationRequestOuterClass.QuickCapabilities.Ios ios, Function1<? super QuickCapabilitiesKt.IosKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(ios, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        QuickCapabilitiesKt.IosKt.Dsl.Companion companion = QuickCapabilitiesKt.IosKt.Dsl.INSTANCE;
        InitializationRequestOuterClass.QuickCapabilities.Ios.Builder builder = ios.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
        QuickCapabilitiesKt.IosKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    public static final InitializationRequestOuterClass.QuickCapabilities copy(InitializationRequestOuterClass.QuickCapabilities quickCapabilities, Function1<? super QuickCapabilitiesKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(quickCapabilities, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        QuickCapabilitiesKt.Dsl.Companion companion = QuickCapabilitiesKt.Dsl.INSTANCE;
        InitializationRequestOuterClass.QuickCapabilities.Builder builder = quickCapabilities.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
        QuickCapabilitiesKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    public static final InitializationRequestOuterClass.QuickCapabilities.Android getAndroidOrNull(InitializationRequestOuterClass.QuickCapabilitiesOrBuilder quickCapabilitiesOrBuilder) {
        Intrinsics.checkNotNullParameter(quickCapabilitiesOrBuilder, "<this>");
        if (quickCapabilitiesOrBuilder.hasAndroid()) {
            return quickCapabilitiesOrBuilder.getAndroid();
        }
        return null;
    }

    public static final InitializationRequestOuterClass.QuickCapabilities.Ios getIosOrNull(InitializationRequestOuterClass.QuickCapabilitiesOrBuilder quickCapabilitiesOrBuilder) {
        Intrinsics.checkNotNullParameter(quickCapabilitiesOrBuilder, "<this>");
        if (quickCapabilitiesOrBuilder.hasIos()) {
            return quickCapabilitiesOrBuilder.getIos();
        }
        return null;
    }
}

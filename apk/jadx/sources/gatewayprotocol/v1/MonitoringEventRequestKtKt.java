package gatewayprotocol.v1;

import p005kotlin.Metadata;
import p005kotlin.Unit;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MonitoringEventRequestKt.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a*\u0010\u0000\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0087\bø\u0001\u0000¢\u0006\u0002\b\u0007\u001a)\u0010\b\u001a\u00020\u0001*\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0086\bø\u0001\u0000\"\u0017\u0010\t\u001a\u0004\u0018\u00010\n*\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\f\u0010\r\"\u0017\u0010\u000e\u001a\u0004\u0018\u00010\u000f*\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011\"\u0017\u0010\u0012\u001a\u0004\u0018\u00010\u0013*\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0016"}, d2 = {"monitoringEventRequest", "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;", "block", "Lkotlin/Function1;", "Lgatewayprotocol/v1/MonitoringEventRequestKt$Dsl;", "", "Lkotlin/ExtensionFunctionType;", "-initializemonitoringEventRequest", "copy", "staticDeviceInfoOrNull", "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;", "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequestOrBuilder;", "getStaticDeviceInfoOrNull", "(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequestOrBuilder;)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;", "dynamicDeviceInfoOrNull", "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;", "getDynamicDeviceInfoOrNull", "(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequestOrBuilder;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;", "monitoringEventOrNull", "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;", "getMonitoringEventOrNull", "(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequestOrBuilder;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;", "unity-ads_defaultRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class MonitoringEventRequestKtKt {
    /* JADX INFO: renamed from: -initializemonitoringEventRequest, reason: not valid java name */
    public static final MonitoringEventRequestOuterClass.MonitoringEventRequest m2976initializemonitoringEventRequest(Function1<? super MonitoringEventRequestKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        MonitoringEventRequestKt.Dsl.Companion companion = MonitoringEventRequestKt.Dsl.INSTANCE;
        MonitoringEventRequestOuterClass.MonitoringEventRequest.Builder builderNewBuilder = MonitoringEventRequestOuterClass.MonitoringEventRequest.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        MonitoringEventRequestKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    public static final MonitoringEventRequestOuterClass.MonitoringEventRequest copy(MonitoringEventRequestOuterClass.MonitoringEventRequest monitoringEventRequest, Function1<? super MonitoringEventRequestKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(monitoringEventRequest, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        MonitoringEventRequestKt.Dsl.Companion companion = MonitoringEventRequestKt.Dsl.INSTANCE;
        MonitoringEventRequestOuterClass.MonitoringEventRequest.Builder builder = monitoringEventRequest.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
        MonitoringEventRequestKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    public static final DynamicDeviceInfoOuterClass.DynamicDeviceInfo getDynamicDeviceInfoOrNull(MonitoringEventRequestOuterClass.MonitoringEventRequestOrBuilder monitoringEventRequestOrBuilder) {
        Intrinsics.checkNotNullParameter(monitoringEventRequestOrBuilder, "<this>");
        if (monitoringEventRequestOrBuilder.hasDynamicDeviceInfo()) {
            return monitoringEventRequestOrBuilder.getDynamicDeviceInfo();
        }
        return null;
    }

    public static final MonitoringEventRequestOuterClass.MonitoringEvent getMonitoringEventOrNull(MonitoringEventRequestOuterClass.MonitoringEventRequestOrBuilder monitoringEventRequestOrBuilder) {
        Intrinsics.checkNotNullParameter(monitoringEventRequestOrBuilder, "<this>");
        if (monitoringEventRequestOrBuilder.hasMonitoringEvent()) {
            return monitoringEventRequestOrBuilder.getMonitoringEvent();
        }
        return null;
    }

    public static final StaticDeviceInfoOuterClass.StaticDeviceInfo getStaticDeviceInfoOrNull(MonitoringEventRequestOuterClass.MonitoringEventRequestOrBuilder monitoringEventRequestOrBuilder) {
        Intrinsics.checkNotNullParameter(monitoringEventRequestOrBuilder, "<this>");
        if (monitoringEventRequestOrBuilder.hasStaticDeviceInfo()) {
            return monitoringEventRequestOrBuilder.getStaticDeviceInfo();
        }
        return null;
    }
}

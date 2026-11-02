package gatewayprotocol.v1;

import p005kotlin.Metadata;
import p005kotlin.Unit;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MonitoringEventKt.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a*\u0010\u0000\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0087\bø\u0001\u0000¢\u0006\u0002\b\u0007\u001a)\u0010\b\u001a\u00020\u0001*\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\t"}, d2 = {"monitoringEvent", "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;", "block", "Lkotlin/Function1;", "Lgatewayprotocol/v1/MonitoringEventKt$Dsl;", "", "Lkotlin/ExtensionFunctionType;", "-initializemonitoringEvent", "copy", "unity-ads_defaultRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class MonitoringEventKtKt {
    /* JADX INFO: renamed from: -initializemonitoringEvent, reason: not valid java name */
    public static final MonitoringEventRequestOuterClass.MonitoringEvent m2975initializemonitoringEvent(Function1<? super MonitoringEventKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        MonitoringEventKt.Dsl.Companion companion = MonitoringEventKt.Dsl.INSTANCE;
        MonitoringEventRequestOuterClass.MonitoringEvent.Builder builderNewBuilder = MonitoringEventRequestOuterClass.MonitoringEvent.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        MonitoringEventKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    public static final MonitoringEventRequestOuterClass.MonitoringEvent copy(MonitoringEventRequestOuterClass.MonitoringEvent monitoringEvent, Function1<? super MonitoringEventKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(monitoringEvent, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        MonitoringEventKt.Dsl.Companion companion = MonitoringEventKt.Dsl.INSTANCE;
        MonitoringEventRequestOuterClass.MonitoringEvent.Builder builder = monitoringEvent.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
        MonitoringEventKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }
}

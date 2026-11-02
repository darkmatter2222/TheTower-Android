package gatewayprotocol.v1;

import p005kotlin.Metadata;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AccelerometerCollectionConfigurationKt.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0004B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lgatewayprotocol/v1/AccelerometerCollectionConfigurationKt;", "", "<init>", "()V", "Dsl", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AccelerometerCollectionConfigurationKt {
    public static final AccelerometerCollectionConfigurationKt INSTANCE = new AccelerometerCollectionConfigurationKt();

    /* JADX INFO: compiled from: AccelerometerCollectionConfigurationKt.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0001J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0014\u001a\u00020\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR$\u0010\u0011\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0012\u0010\f\"\u0004\b\u0013\u0010\u000e¨\u0006\u0016"}, d2 = {"Lgatewayprotocol/v1/AccelerometerCollectionConfigurationKt$Dsl;", "", "_builder", "Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;", "<init>", "(Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;)V", "_build", "Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;", "value", "", "samplingIntervalMs", "getSamplingIntervalMs", "()I", "setSamplingIntervalMs", "(I)V", "clearSamplingIntervalMs", "", "maxSamples", "getMaxSamples", "setMaxSamples", "clearMaxSamples", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Dsl {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final NativeConfigurationOuterClass.AccelerometerCollectionConfiguration.Builder _builder;

        /* JADX INFO: compiled from: AccelerometerCollectionConfigurationKt.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0001¨\u0006\b"}, d2 = {"Lgatewayprotocol/v1/AccelerometerCollectionConfigurationKt$Dsl$Companion;", "", "<init>", "()V", "_create", "Lgatewayprotocol/v1/AccelerometerCollectionConfigurationKt$Dsl;", "builder", "Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(NativeConfigurationOuterClass.AccelerometerCollectionConfiguration.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        private Dsl(NativeConfigurationOuterClass.AccelerometerCollectionConfiguration.Builder builder) {
            this._builder = builder;
        }

        public /* synthetic */ Dsl(NativeConfigurationOuterClass.AccelerometerCollectionConfiguration.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ NativeConfigurationOuterClass.AccelerometerCollectionConfiguration _build() {
            NativeConfigurationOuterClass.AccelerometerCollectionConfiguration accelerometerCollectionConfigurationBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(accelerometerCollectionConfigurationBuild, "build(...)");
            return accelerometerCollectionConfigurationBuild;
        }

        public final void clearMaxSamples() {
            this._builder.clearMaxSamples();
        }

        public final void clearSamplingIntervalMs() {
            this._builder.clearSamplingIntervalMs();
        }

        public final int getMaxSamples() {
            return this._builder.getMaxSamples();
        }

        public final int getSamplingIntervalMs() {
            return this._builder.getSamplingIntervalMs();
        }

        public final void setMaxSamples(int i) {
            this._builder.setMaxSamples(i);
        }

        public final void setSamplingIntervalMs(int i) {
            this._builder.setSamplingIntervalMs(i);
        }
    }

    private AccelerometerCollectionConfigurationKt() {
    }
}

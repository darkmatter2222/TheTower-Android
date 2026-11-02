package gatewayprotocol.v1;

import com.google.protobuf.Timestamp;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AccelerometerSampleKt.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0004B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lgatewayprotocol/v1/AccelerometerSampleKt;", "", "<init>", "()V", "Dsl", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AccelerometerSampleKt {
    public static final AccelerometerSampleKt INSTANCE = new AccelerometerSampleKt();

    /* JADX INFO: compiled from: AccelerometerSampleKt.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\u0007\n\u0002\b\u0010\b\u0007\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0001J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0019\u001a\u00020\u0010J\u0006\u0010\u001d\u001a\u00020\u0010J\u0006\u0010!\u001a\u00020\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR$\u0010\u0014\u001a\u00020\u00132\u0006\u0010\b\u001a\u00020\u00138G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R$\u0010\u001a\u001a\u00020\u00132\u0006\u0010\b\u001a\u00020\u00138G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001b\u0010\u0016\"\u0004\b\u001c\u0010\u0018R$\u0010\u001e\u001a\u00020\u00132\u0006\u0010\b\u001a\u00020\u00138G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001f\u0010\u0016\"\u0004\b \u0010\u0018¨\u0006#"}, d2 = {"Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;", "", "_builder", "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;", "<init>", "(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;)V", "_build", "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;", "value", "Lcom/google/protobuf/Timestamp;", "clientTimestamp", "getClientTimestamp", "()Lcom/google/protobuf/Timestamp;", "setClientTimestamp", "(Lcom/google/protobuf/Timestamp;)V", "clearClientTimestamp", "", "hasClientTimestamp", "", "", "x", "getX", "()F", "setX", "(F)V", "clearX", "y", "getY", "setY", "clearY", "z", "getZ", "setZ", "clearZ", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Dsl {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final DynamicDeviceInfoOuterClass.AccelerometerSample.Builder _builder;

        /* JADX INFO: compiled from: AccelerometerSampleKt.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0001¨\u0006\b"}, d2 = {"Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl$Companion;", "", "<init>", "()V", "_create", "Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;", "builder", "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(DynamicDeviceInfoOuterClass.AccelerometerSample.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        private Dsl(DynamicDeviceInfoOuterClass.AccelerometerSample.Builder builder) {
            this._builder = builder;
        }

        public /* synthetic */ Dsl(DynamicDeviceInfoOuterClass.AccelerometerSample.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ DynamicDeviceInfoOuterClass.AccelerometerSample _build() {
            DynamicDeviceInfoOuterClass.AccelerometerSample accelerometerSampleBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(accelerometerSampleBuild, "build(...)");
            return accelerometerSampleBuild;
        }

        public final void clearClientTimestamp() {
            this._builder.clearClientTimestamp();
        }

        public final void clearX() {
            this._builder.clearX();
        }

        public final void clearY() {
            this._builder.clearY();
        }

        public final void clearZ() {
            this._builder.clearZ();
        }

        public final Timestamp getClientTimestamp() {
            Timestamp clientTimestamp = this._builder.getClientTimestamp();
            Intrinsics.checkNotNullExpressionValue(clientTimestamp, "getClientTimestamp(...)");
            return clientTimestamp;
        }

        public final float getX() {
            return this._builder.getX();
        }

        public final float getY() {
            return this._builder.getY();
        }

        public final float getZ() {
            return this._builder.getZ();
        }

        public final boolean hasClientTimestamp() {
            return this._builder.hasClientTimestamp();
        }

        public final void setClientTimestamp(Timestamp value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setClientTimestamp(value);
        }

        public final void setX(float f) {
            this._builder.setX(f);
        }

        public final void setY(float f) {
            this._builder.setY(f);
        }

        public final void setZ(float f) {
            this._builder.setZ(f);
        }
    }

    private AccelerometerSampleKt() {
    }
}

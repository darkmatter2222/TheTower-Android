package gatewayprotocol.v1;

import com.google.protobuf.ByteString;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AdViewerResponseKt.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0004B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lgatewayprotocol/v1/AdViewerResponseKt;", "", "<init>", "()V", "Dsl", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AdViewerResponseKt {
    public static final AdViewerResponseKt INSTANCE = new AdViewerResponseKt();

    /* JADX INFO: compiled from: AdViewerResponseKt.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0007\u0018\u0000 $2\u00020\u0001:\u0001$B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0001J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0017\u001a\u00020\u0010J\u0006\u0010\u001e\u001a\u00020\u0010J\u0006\u0010\u001f\u001a\u00020 R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR$\u0010\u0012\u001a\u00020\u00112\u0006\u0010\b\u001a\u00020\u00118G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R$\u0010\u0019\u001a\u00020\u00182\u0006\u0010\b\u001a\u00020\u00188G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u0017\u0010!\u001a\u0004\u0018\u00010\u0018*\u00020\u00008F¢\u0006\u0006\u001a\u0004\b\"\u0010#¨\u0006%"}, d2 = {"Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;", "", "_builder", "Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;", "<init>", "(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;)V", "_build", "Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;", "value", "Lcom/google/protobuf/ByteString;", HandleInvocationsFromAdViewer.KEY_PAYLOAD, "getPayload", "()Lcom/google/protobuf/ByteString;", "setPayload", "(Lcom/google/protobuf/ByteString;)V", "clearPayload", "", "", HandleInvocationsFromAdViewer.KEY_PAYLOAD_VERSION, "getPayloadVersion", "()I", "setPayloadVersion", "(I)V", "clearPayloadVersion", "Lgatewayprotocol/v1/ErrorOuterClass$Error;", "error", "getError", "()Lgatewayprotocol/v1/ErrorOuterClass$Error;", "setError", "(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V", "clearError", "hasError", "", "errorOrNull", "getErrorOrNull", "(Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;)Lgatewayprotocol/v1/ErrorOuterClass$Error;", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Dsl {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final AdViewerResponseOuterClass.AdViewerResponse.Builder _builder;

        /* JADX INFO: compiled from: AdViewerResponseKt.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0001¨\u0006\b"}, d2 = {"Lgatewayprotocol/v1/AdViewerResponseKt$Dsl$Companion;", "", "<init>", "()V", "_create", "Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;", "builder", "Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(AdViewerResponseOuterClass.AdViewerResponse.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        private Dsl(AdViewerResponseOuterClass.AdViewerResponse.Builder builder) {
            this._builder = builder;
        }

        public /* synthetic */ Dsl(AdViewerResponseOuterClass.AdViewerResponse.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ AdViewerResponseOuterClass.AdViewerResponse _build() {
            AdViewerResponseOuterClass.AdViewerResponse adViewerResponseBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(adViewerResponseBuild, "build(...)");
            return adViewerResponseBuild;
        }

        public final void clearError() {
            this._builder.clearError();
        }

        public final void clearPayload() {
            this._builder.clearPayload();
        }

        public final void clearPayloadVersion() {
            this._builder.clearPayloadVersion();
        }

        public final ErrorOuterClass.Error getError() {
            ErrorOuterClass.Error error = this._builder.getError();
            Intrinsics.checkNotNullExpressionValue(error, "getError(...)");
            return error;
        }

        public final ErrorOuterClass.Error getErrorOrNull(Dsl dsl) {
            Intrinsics.checkNotNullParameter(dsl, "<this>");
            return AdViewerResponseKtKt.getErrorOrNull(dsl._builder);
        }

        public final ByteString getPayload() {
            ByteString payload = this._builder.getPayload();
            Intrinsics.checkNotNullExpressionValue(payload, "getPayload(...)");
            return payload;
        }

        public final int getPayloadVersion() {
            return this._builder.getPayloadVersion();
        }

        public final boolean hasError() {
            return this._builder.hasError();
        }

        public final void setError(ErrorOuterClass.Error value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setError(value);
        }

        public final void setPayload(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setPayload(value);
        }

        public final void setPayloadVersion(int i) {
            this._builder.setPayloadVersion(i);
        }
    }

    private AdViewerResponseKt() {
    }
}

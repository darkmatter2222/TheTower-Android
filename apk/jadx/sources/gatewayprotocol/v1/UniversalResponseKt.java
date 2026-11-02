package gatewayprotocol.v1;

import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import p005kotlin.Deprecated;
import p005kotlin.Metadata;
import p005kotlin.Unit;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UniversalResponseKt.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002\f\rB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J*\u0010\u0004\u001a\u00020\u00052\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007¢\u0006\u0002\b\nH\u0087\bø\u0001\u0000¢\u0006\u0002\b\u000b\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lgatewayprotocol/v1/UniversalResponseKt;", "", "<init>", "()V", HandleInvocationsFromAdViewer.KEY_PAYLOAD, "Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;", "block", "Lkotlin/Function1;", "Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;", "", "Lkotlin/ExtensionFunctionType;", "-initializepayload", "Dsl", "PayloadKt", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class UniversalResponseKt {
    public static final UniversalResponseKt INSTANCE = new UniversalResponseKt();

    /* JADX INFO: compiled from: UniversalResponseKt.kt */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\f\b\u0007\u0018\u0000 )2\u00020\u0001:\u0001)B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0001J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0019\u001a\u00020\u0010J\u0006\u0010\u001a\u001a\u00020\u0012J\u0006\u0010$\u001a\u00020\u0010J\u0006\u0010%\u001a\u00020\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR$\u0010\u0014\u001a\u00020\u00132\u0006\u0010\b\u001a\u00020\u00138G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u0017\u0010\u001b\u001a\u0004\u0018\u00010\u0013*\u00020\u00008F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR$\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\b\u001a\u00020\u001e8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u0017\u0010&\u001a\u0004\u0018\u00010\u001e*\u00020\u00008F¢\u0006\u0006\u001a\u0004\b'\u0010(¨\u0006*"}, d2 = {"Lgatewayprotocol/v1/UniversalResponseKt$Dsl;", "", "_builder", "Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;", "<init>", "(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;)V", "_build", "Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;", "value", "Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;", HandleInvocationsFromAdViewer.KEY_PAYLOAD, "getPayload", "()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;", "setPayload", "(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V", "clearPayload", "", "hasPayload", "", "Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;", "mutableData", "getMutableData", "()Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;", "setMutableData", "(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;)V", "clearMutableData", "hasMutableData", "mutableDataOrNull", "getMutableDataOrNull", "(Lgatewayprotocol/v1/UniversalResponseKt$Dsl;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;", "Lgatewayprotocol/v1/ErrorOuterClass$Error;", "error", "getError", "()Lgatewayprotocol/v1/ErrorOuterClass$Error;", "setError", "(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V", "clearError", "hasError", "errorOrNull", "getErrorOrNull", "(Lgatewayprotocol/v1/UniversalResponseKt$Dsl;)Lgatewayprotocol/v1/ErrorOuterClass$Error;", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Dsl {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final UniversalResponseOuterClass.UniversalResponse.Builder _builder;

        /* JADX INFO: compiled from: UniversalResponseKt.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0001¨\u0006\b"}, d2 = {"Lgatewayprotocol/v1/UniversalResponseKt$Dsl$Companion;", "", "<init>", "()V", "_create", "Lgatewayprotocol/v1/UniversalResponseKt$Dsl;", "builder", "Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(UniversalResponseOuterClass.UniversalResponse.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        private Dsl(UniversalResponseOuterClass.UniversalResponse.Builder builder) {
            this._builder = builder;
        }

        public /* synthetic */ Dsl(UniversalResponseOuterClass.UniversalResponse.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ UniversalResponseOuterClass.UniversalResponse _build() {
            UniversalResponseOuterClass.UniversalResponse universalResponseBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(universalResponseBuild, "build(...)");
            return universalResponseBuild;
        }

        public final void clearError() {
            this._builder.clearError();
        }

        public final void clearMutableData() {
            this._builder.clearMutableData();
        }

        public final void clearPayload() {
            this._builder.clearPayload();
        }

        public final ErrorOuterClass.Error getError() {
            ErrorOuterClass.Error error = this._builder.getError();
            Intrinsics.checkNotNullExpressionValue(error, "getError(...)");
            return error;
        }

        public final ErrorOuterClass.Error getErrorOrNull(Dsl dsl) {
            Intrinsics.checkNotNullParameter(dsl, "<this>");
            return UniversalResponseKtKt.getErrorOrNull(dsl._builder);
        }

        public final MutableDataOuterClass.MutableData getMutableData() {
            MutableDataOuterClass.MutableData mutableData = this._builder.getMutableData();
            Intrinsics.checkNotNullExpressionValue(mutableData, "getMutableData(...)");
            return mutableData;
        }

        public final MutableDataOuterClass.MutableData getMutableDataOrNull(Dsl dsl) {
            Intrinsics.checkNotNullParameter(dsl, "<this>");
            return UniversalResponseKtKt.getMutableDataOrNull(dsl._builder);
        }

        public final UniversalResponseOuterClass.UniversalResponse.Payload getPayload() {
            UniversalResponseOuterClass.UniversalResponse.Payload payload = this._builder.getPayload();
            Intrinsics.checkNotNullExpressionValue(payload, "getPayload(...)");
            return payload;
        }

        public final boolean hasError() {
            return this._builder.hasError();
        }

        public final boolean hasMutableData() {
            return this._builder.hasMutableData();
        }

        public final boolean hasPayload() {
            return this._builder.hasPayload();
        }

        public final void setError(ErrorOuterClass.Error value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setError(value);
        }

        public final void setMutableData(MutableDataOuterClass.MutableData value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setMutableData(value);
        }

        public final void setPayload(UniversalResponseOuterClass.UniversalResponse.Payload value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setPayload(value);
        }
    }

    /* JADX INFO: compiled from: UniversalResponseKt.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0004B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt;", "", "<init>", "()V", "Dsl", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class PayloadKt {
        public static final PayloadKt INSTANCE = new PayloadKt();

        /* JADX INFO: compiled from: UniversalResponseKt.kt */
        @Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 R2\u00020\u0001:\u0001RB\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0001J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0019\u001a\u00020\u0010J\u0006\u0010\u001a\u001a\u00020\u0012J\u0006\u0010!\u001a\u00020\u0010J\u0006\u0010\"\u001a\u00020\u0012J\u0006\u0010)\u001a\u00020\u0010J\u0006\u0010*\u001a\u00020\u0012J\u0006\u00101\u001a\u00020\u0010J\u0006\u00102\u001a\u00020\u0012J\u0006\u00109\u001a\u00020\u0010J\u0006\u0010:\u001a\u00020\u0012J\u0006\u0010C\u001a\u00020\u0010J\u0006\u0010D\u001a\u00020\u0012J\u0006\u0010K\u001a\u00020\u0010J\u0006\u0010L\u001a\u00020\u0012J\u0006\u0010Q\u001a\u00020\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR$\u0010\u0014\u001a\u00020\u00132\u0006\u0010\b\u001a\u00020\u00138G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R$\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\b\u001a\u00020\u001b8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R$\u0010$\u001a\u00020#2\u0006\u0010\b\u001a\u00020#8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R$\u0010,\u001a\u00020+2\u0006\u0010\b\u001a\u00020+8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R$\u00104\u001a\u0002032\u0006\u0010\b\u001a\u0002038G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b5\u00106\"\u0004\b7\u00108R*\u0010<\u001a\u00020;2\u0006\u0010\b\u001a\u00020;8G@GX\u0087\u000e¢\u0006\u0012\u0012\u0004\b=\u0010>\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR$\u0010F\u001a\u00020E2\u0006\u0010\b\u001a\u00020E8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bG\u0010H\"\u0004\bI\u0010JR\u0011\u0010M\u001a\u00020N8G¢\u0006\u0006\u001a\u0004\bO\u0010P¨\u0006S"}, d2 = {"Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;", "", "_builder", "Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;", "<init>", "(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;)V", "_build", "Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;", "value", "Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;", "initializationResponse", "getInitializationResponse", "()Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;", "setInitializationResponse", "(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)V", "clearInitializationResponse", "", "hasInitializationResponse", "", "Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;", "adResponse", "getAdResponse", "()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;", "setAdResponse", "(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V", "clearAdResponse", "hasAdResponse", "Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;", "adPlayerConfigResponse", "getAdPlayerConfigResponse", "()Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;", "setAdPlayerConfigResponse", "(Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;)V", "clearAdPlayerConfigResponse", "hasAdPlayerConfigResponse", "Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;", "adDataRefreshResponse", "getAdDataRefreshResponse", "()Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;", "setAdDataRefreshResponse", "(Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;)V", "clearAdDataRefreshResponse", "hasAdDataRefreshResponse", "Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;", "privacyUpdateResponse", "getPrivacyUpdateResponse", "()Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;", "setPrivacyUpdateResponse", "(Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;)V", "clearPrivacyUpdateResponse", "hasPrivacyUpdateResponse", "Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;", "audienceManagementResponse", "getAudienceManagementResponse", "()Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;", "setAudienceManagementResponse", "(Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;)V", "clearAudienceManagementResponse", "hasAudienceManagementResponse", "Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;", "rewardedOffersResponse", "getRewardedOffersResponse$annotations", "()V", "getRewardedOffersResponse", "()Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;", "setRewardedOffersResponse", "(Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;)V", "clearRewardedOffersResponse", "hasRewardedOffersResponse", "Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;", "adViewerResponse", "getAdViewerResponse", "()Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;", "setAdViewerResponse", "(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;)V", "clearAdViewerResponse", "hasAdViewerResponse", "valueCase", "Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;", "getValueCase", "()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;", "clearValue", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Dsl {

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private final UniversalResponseOuterClass.UniversalResponse.Payload.Builder _builder;

            /* JADX INFO: compiled from: UniversalResponseKt.kt */
            @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0001¨\u0006\b"}, d2 = {"Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl$Companion;", "", "<init>", "()V", "_create", "Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;", "builder", "Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
            public static final class Companion {
                private Companion() {
                }

                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                public final /* synthetic */ Dsl _create(UniversalResponseOuterClass.UniversalResponse.Payload.Builder builder) {
                    Intrinsics.checkNotNullParameter(builder, "builder");
                    return new Dsl(builder, null);
                }
            }

            private Dsl(UniversalResponseOuterClass.UniversalResponse.Payload.Builder builder) {
                this._builder = builder;
            }

            public /* synthetic */ Dsl(UniversalResponseOuterClass.UniversalResponse.Payload.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
                this(builder);
            }

            @Deprecated(message = "Field rewardedOffersResponse is deprecated")
            public static /* synthetic */ void getRewardedOffersResponse$annotations() {
            }

            public final /* synthetic */ UniversalResponseOuterClass.UniversalResponse.Payload _build() {
                UniversalResponseOuterClass.UniversalResponse.Payload payloadBuild = this._builder.build();
                Intrinsics.checkNotNullExpressionValue(payloadBuild, "build(...)");
                return payloadBuild;
            }

            public final void clearAdDataRefreshResponse() {
                this._builder.clearAdDataRefreshResponse();
            }

            public final void clearAdPlayerConfigResponse() {
                this._builder.clearAdPlayerConfigResponse();
            }

            public final void clearAdResponse() {
                this._builder.clearAdResponse();
            }

            public final void clearAdViewerResponse() {
                this._builder.clearAdViewerResponse();
            }

            public final void clearAudienceManagementResponse() {
                this._builder.clearAudienceManagementResponse();
            }

            public final void clearInitializationResponse() {
                this._builder.clearInitializationResponse();
            }

            public final void clearPrivacyUpdateResponse() {
                this._builder.clearPrivacyUpdateResponse();
            }

            public final void clearRewardedOffersResponse() {
                this._builder.clearRewardedOffersResponse();
            }

            public final void clearValue() {
                this._builder.clearValue();
            }

            public final AdDataRefreshResponseOuterClass.AdDataRefreshResponse getAdDataRefreshResponse() {
                AdDataRefreshResponseOuterClass.AdDataRefreshResponse adDataRefreshResponse = this._builder.getAdDataRefreshResponse();
                Intrinsics.checkNotNullExpressionValue(adDataRefreshResponse, "getAdDataRefreshResponse(...)");
                return adDataRefreshResponse;
            }

            public final AdPlayerConfigResponseOuterClass.AdPlayerConfigResponse getAdPlayerConfigResponse() {
                AdPlayerConfigResponseOuterClass.AdPlayerConfigResponse adPlayerConfigResponse = this._builder.getAdPlayerConfigResponse();
                Intrinsics.checkNotNullExpressionValue(adPlayerConfigResponse, "getAdPlayerConfigResponse(...)");
                return adPlayerConfigResponse;
            }

            public final AdResponseOuterClass.AdResponse getAdResponse() {
                AdResponseOuterClass.AdResponse adResponse = this._builder.getAdResponse();
                Intrinsics.checkNotNullExpressionValue(adResponse, "getAdResponse(...)");
                return adResponse;
            }

            public final AdViewerResponseOuterClass.AdViewerResponse getAdViewerResponse() {
                AdViewerResponseOuterClass.AdViewerResponse adViewerResponse = this._builder.getAdViewerResponse();
                Intrinsics.checkNotNullExpressionValue(adViewerResponse, "getAdViewerResponse(...)");
                return adViewerResponse;
            }

            public final AudienceManagementResponseOuterClass.AudienceManagementResponse getAudienceManagementResponse() {
                AudienceManagementResponseOuterClass.AudienceManagementResponse audienceManagementResponse = this._builder.getAudienceManagementResponse();
                Intrinsics.checkNotNullExpressionValue(audienceManagementResponse, "getAudienceManagementResponse(...)");
                return audienceManagementResponse;
            }

            public final InitializationResponseOuterClass.InitializationResponse getInitializationResponse() {
                InitializationResponseOuterClass.InitializationResponse initializationResponse = this._builder.getInitializationResponse();
                Intrinsics.checkNotNullExpressionValue(initializationResponse, "getInitializationResponse(...)");
                return initializationResponse;
            }

            public final PrivacyUpdateResponseOuterClass.PrivacyUpdateResponse getPrivacyUpdateResponse() {
                PrivacyUpdateResponseOuterClass.PrivacyUpdateResponse privacyUpdateResponse = this._builder.getPrivacyUpdateResponse();
                Intrinsics.checkNotNullExpressionValue(privacyUpdateResponse, "getPrivacyUpdateResponse(...)");
                return privacyUpdateResponse;
            }

            public final RewardedOffersResponseOuterClass.RewardedOffersResponse getRewardedOffersResponse() {
                RewardedOffersResponseOuterClass.RewardedOffersResponse rewardedOffersResponse = this._builder.getRewardedOffersResponse();
                Intrinsics.checkNotNullExpressionValue(rewardedOffersResponse, "getRewardedOffersResponse(...)");
                return rewardedOffersResponse;
            }

            public final UniversalResponseOuterClass.UniversalResponse.Payload.ValueCase getValueCase() {
                UniversalResponseOuterClass.UniversalResponse.Payload.ValueCase valueCase = this._builder.getValueCase();
                Intrinsics.checkNotNullExpressionValue(valueCase, "getValueCase(...)");
                return valueCase;
            }

            public final boolean hasAdDataRefreshResponse() {
                return this._builder.hasAdDataRefreshResponse();
            }

            public final boolean hasAdPlayerConfigResponse() {
                return this._builder.hasAdPlayerConfigResponse();
            }

            public final boolean hasAdResponse() {
                return this._builder.hasAdResponse();
            }

            public final boolean hasAdViewerResponse() {
                return this._builder.hasAdViewerResponse();
            }

            public final boolean hasAudienceManagementResponse() {
                return this._builder.hasAudienceManagementResponse();
            }

            public final boolean hasInitializationResponse() {
                return this._builder.hasInitializationResponse();
            }

            public final boolean hasPrivacyUpdateResponse() {
                return this._builder.hasPrivacyUpdateResponse();
            }

            public final boolean hasRewardedOffersResponse() {
                return this._builder.hasRewardedOffersResponse();
            }

            public final void setAdDataRefreshResponse(AdDataRefreshResponseOuterClass.AdDataRefreshResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setAdDataRefreshResponse(value);
            }

            public final void setAdPlayerConfigResponse(AdPlayerConfigResponseOuterClass.AdPlayerConfigResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setAdPlayerConfigResponse(value);
            }

            public final void setAdResponse(AdResponseOuterClass.AdResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setAdResponse(value);
            }

            public final void setAdViewerResponse(AdViewerResponseOuterClass.AdViewerResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setAdViewerResponse(value);
            }

            public final void setAudienceManagementResponse(AudienceManagementResponseOuterClass.AudienceManagementResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setAudienceManagementResponse(value);
            }

            public final void setInitializationResponse(InitializationResponseOuterClass.InitializationResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setInitializationResponse(value);
            }

            public final void setPrivacyUpdateResponse(PrivacyUpdateResponseOuterClass.PrivacyUpdateResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setPrivacyUpdateResponse(value);
            }

            public final void setRewardedOffersResponse(RewardedOffersResponseOuterClass.RewardedOffersResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setRewardedOffersResponse(value);
            }
        }

        private PayloadKt() {
        }
    }

    private UniversalResponseKt() {
    }

    /* JADX INFO: renamed from: -initializepayload, reason: not valid java name */
    public final UniversalResponseOuterClass.UniversalResponse.Payload m3008initializepayload(Function1<? super PayloadKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        PayloadKt.Dsl.Companion companion = PayloadKt.Dsl.INSTANCE;
        UniversalResponseOuterClass.UniversalResponse.Payload.Builder builderNewBuilder = UniversalResponseOuterClass.UniversalResponse.Payload.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        PayloadKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }
}

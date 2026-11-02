package com.google.android.libraries.ads.mobile.sdk.common;

import com.google.android.libraries.ads.mobile.sdk.internal.util.AndroidBundleTypeAdapterFactory;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.google.gson.annotations.SerializedName;
import com.ironsource.C3635i2;
import com.tapjoy.TJAdUnitConstants;
import java.lang.reflect.Type;
import kotlin.ob;
import p005kotlin.Metadata;
import p005kotlin.enums.EnumEntriesKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000f\b\u0086\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001$B#\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\"\u0010#J\u000f\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0003HÆ\u0003¢\u0006\u0004\b\b\u0010\u0005J\u0012\u0010\n\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0004\b\n\u0010\u000bJ0\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\f\u001a\u00020\u00022\b\b\u0002\u0010\r\u001a\u00020\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\tHÆ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0012\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u001a\u0010\u0017\u001a\u00020\u00162\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014HÖ\u0003¢\u0006\u0004\b\u0017\u0010\u0018R\u001a\u0010\f\u001a\u00020\u00028\u0016X\u0097\u0004¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u0007R\u001a\u0010\r\u001a\u00020\u00038\u0016X\u0097\u0004¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u0005R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\u000b¨\u0006%"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;", "Lcom/google/android/libraries/ads/mobile/sdk/common/BaseError;", "Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;", "", "toString", "()Ljava/lang/String;", "component1", "()Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;", "component2", "Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;", "component3", "()Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;", "code", TJAdUnitConstants.String.MESSAGE, "responseInfo", "copy", "(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;)Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;", "", "hashCode", "()I", "", C3635i2.d, "", "equals", "(Ljava/lang/Object;)Z", "a", "Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;", "getCode", "b", "Ljava/lang/String;", "getMessage", "c", "Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;", "getResponseInfo", "<init>", "(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;)V", "ErrorCode", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final /* data */ class LoadAdError extends BaseError<ErrorCode> {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    @SerializedName("Code")
    private final ErrorCode code;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    @SerializedName("Message")
    private final String message;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    @SerializedName("Response Info")
    private final ResponseInfo responseInfo;

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.google.android.libraries.ads.mobile.sdk.common.LoadAdError$ErrorCode[], still in use, count: 1, list:
  (r0v1 com.google.android.libraries.ads.mobile.sdk.common.LoadAdError$ErrorCode[]) from 0x007b: INVOKE (r0v1 com.google.android.libraries.ads.mobile.sdk.common.LoadAdError$ErrorCode[]) STATIC call: kotlin.enums.EnumEntriesKt.enumEntries(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:<E extends java.lang.Enum<E>>:(E extends java.lang.Enum<E>[]):kotlin.enums.EnumEntries<E extends java.lang.Enum<E>> (m)]
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\u0011\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012¨\u0006\u0013"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;", "", "", "a", "I", "getValue", "()I", "value", "INTERNAL_ERROR", "INVALID_REQUEST", "NETWORK_ERROR", "NO_FILL", "TIMEOUT", "CANCELLED", "NOT_FOUND", "APP_ID_MISSING", "REQUEST_ID_MISMATCH", "INVALID_AD_RESPONSE", "AD_RESPONSE_ALREADY_USED", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class ErrorCode {
        INTERNAL_ERROR(0),
        INVALID_REQUEST(1),
        NETWORK_ERROR(2),
        NO_FILL(3),
        TIMEOUT(4),
        CANCELLED(5),
        NOT_FOUND(7),
        APP_ID_MISSING(8),
        REQUEST_ID_MISMATCH(10),
        INVALID_AD_RESPONSE(11),
        AD_RESPONSE_ALREADY_USED(12);


        /* JADX INFO: renamed from: a, reason: from kotlin metadata */
        private final int value;

        static {
            EnumEntriesKt.enumEntries(errorCodeArr);
        }

        private ErrorCode(int i) {
            super(str, i);
            this.value = i;
        }

        public static ErrorCode[] values() {
            return (ErrorCode[]) b.clone();
        }

        public final int getValue() {
            return this.value;
        }
    }

    public LoadAdError(ErrorCode code, String message, ResponseInfo responseInfo) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(message, "message");
        this.code = code;
        this.message = message;
        this.responseInfo = responseInfo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final JsonElement a(ErrorCode errorCode, Type type, JsonSerializationContext jsonSerializationContext) {
        return new JsonPrimitive(errorCode.name() + " (" + errorCode.getValue() + ")");
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final ErrorCode getCode() {
        return this.code;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getMessage() {
        return this.message;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final ResponseInfo getResponseInfo() {
        return this.responseInfo;
    }

    public final LoadAdError copy(ErrorCode code, String message, ResponseInfo responseInfo) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(message, "message");
        return new LoadAdError(code, message, responseInfo);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LoadAdError)) {
            return false;
        }
        LoadAdError loadAdError = (LoadAdError) other;
        return this.code == loadAdError.code && Intrinsics.areEqual(this.message, loadAdError.message) && Intrinsics.areEqual(this.responseInfo, loadAdError.responseInfo);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.libraries.ads.mobile.sdk.common.BaseError
    public ErrorCode getCode() {
        return this.code;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.BaseError
    /* JADX INFO: renamed from: getMessage */
    public String getCom.tapjoy.TJAdUnitConstants.String.MESSAGE java.lang.String() {
        return this.message;
    }

    public final ResponseInfo getResponseInfo() {
        return this.responseInfo;
    }

    public int hashCode() {
        int iA = ob.a(this.message, this.code.hashCode() * 31, 31);
        ResponseInfo responseInfo = this.responseInfo;
        return iA + (responseInfo == null ? 0 : responseInfo.hashCode());
    }

    public String toString() {
        String json = new GsonBuilder().registerTypeAdapterFactory(new AndroidBundleTypeAdapterFactory()).registerTypeAdapter(ErrorCode.class, new JsonSerializer() { // from class: com.google.android.libraries.ads.mobile.sdk.common.LoadAdError$$ExternalSyntheticLambda0
            @Override // com.google.gson.JsonSerializer
            public final JsonElement serialize(Object obj, Type type, JsonSerializationContext jsonSerializationContext) {
                return LoadAdError.a((LoadAdError.ErrorCode) obj, type, jsonSerializationContext);
            }
        }).setPrettyPrinting().serializeNulls().create().toJson(this);
        Intrinsics.checkNotNullExpressionValue(json, "toJson(...)");
        return json;
    }
}

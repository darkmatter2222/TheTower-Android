package com.google.android.libraries.ads.mobile.sdk.common;

import com.ironsource.C3635i2;
import com.tapjoy.TJAdUnitConstants;
import kotlin.ob;
import p005kotlin.Metadata;
import p005kotlin.enums.EnumEntriesKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000f\b\u0086\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001$B#\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0005\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\"\u0010#J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0012\u0010\t\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0004\b\t\u0010\nJ0\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u00052\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0007J\u0010\u0010\u0012\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u001a\u0010\u0017\u001a\u00020\u00162\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014HÖ\u0003¢\u0006\u0004\b\u0017\u0010\u0018R\u001a\u0010\u000b\u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u0004R\u001a\u0010\f\u001a\u00020\u00058\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u0007R\u0019\u0010\r\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\n¨\u0006%"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;", "Lcom/google/android/libraries/ads/mobile/sdk/common/BaseError;", "Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError$ErrorCode;", "component1", "()Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError$ErrorCode;", "", "component2", "()Ljava/lang/String;", "Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;", "component3", "()Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;", "code", TJAdUnitConstants.String.MESSAGE, "mediationAdError", "copy", "(Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError$ErrorCode;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;)Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;", "toString", "", "hashCode", "()I", "", C3635i2.d, "", "equals", "(Ljava/lang/Object;)Z", "a", "Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError$ErrorCode;", "getCode", "b", "Ljava/lang/String;", "getMessage", "c", "Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;", "getMediationAdError", "<init>", "(Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError$ErrorCode;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;)V", "ErrorCode", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final /* data */ class FullScreenContentError extends BaseError<ErrorCode> {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final ErrorCode code;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final String message;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final MediationAdError mediationAdError;

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.google.android.libraries.ads.mobile.sdk.common.FullScreenContentError$ErrorCode[], still in use, count: 1, list:
  (r0v1 com.google.android.libraries.ads.mobile.sdk.common.FullScreenContentError$ErrorCode[]) from 0x0039: INVOKE (r0v1 com.google.android.libraries.ads.mobile.sdk.common.FullScreenContentError$ErrorCode[]) STATIC call: kotlin.enums.EnumEntriesKt.enumEntries(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:<E extends java.lang.Enum<E>>:(E extends java.lang.Enum<E>[]):kotlin.enums.EnumEntries<E extends java.lang.Enum<E>> (m)]
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
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\u000b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError$ErrorCode;", "", "", "a", "I", "getValue", "()I", "value", "INTERNAL_ERROR", "AD_REUSED", "APP_NOT_FOREGROUND", "MEDIATION_SHOW_ERROR", "H5_SHOW_AD_NOT_LOADED", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class ErrorCode {
        INTERNAL_ERROR(0),
        AD_REUSED(1),
        APP_NOT_FOREGROUND(3),
        MEDIATION_SHOW_ERROR(4),
        H5_SHOW_AD_NOT_LOADED(5);


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

    public FullScreenContentError(ErrorCode code, String message, MediationAdError mediationAdError) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(message, "message");
        this.code = code;
        this.message = message;
        this.mediationAdError = mediationAdError;
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
    public final MediationAdError getMediationAdError() {
        return this.mediationAdError;
    }

    public final FullScreenContentError copy(ErrorCode code, String message, MediationAdError mediationAdError) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(message, "message");
        return new FullScreenContentError(code, message, mediationAdError);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FullScreenContentError)) {
            return false;
        }
        FullScreenContentError fullScreenContentError = (FullScreenContentError) other;
        return this.code == fullScreenContentError.code && Intrinsics.areEqual(this.message, fullScreenContentError.message) && Intrinsics.areEqual(this.mediationAdError, fullScreenContentError.mediationAdError);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.libraries.ads.mobile.sdk.common.BaseError
    public ErrorCode getCode() {
        return this.code;
    }

    public final MediationAdError getMediationAdError() {
        return this.mediationAdError;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.BaseError
    /* JADX INFO: renamed from: getMessage */
    public String getCom.tapjoy.TJAdUnitConstants.String.MESSAGE java.lang.String() {
        return this.message;
    }

    public int hashCode() {
        int iA = ob.a(this.message, this.code.hashCode() * 31, 31);
        MediationAdError mediationAdError = this.mediationAdError;
        return iA + (mediationAdError == null ? 0 : mediationAdError.hashCode());
    }

    public String toString() {
        return "FullScreenContentError(code=" + this.code + ", message=" + this.message + ", mediationAdError=" + this.mediationAdError + ")";
    }
}

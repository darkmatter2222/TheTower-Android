package com.google.android.libraries.ads.mobile.sdk.signal;

import com.google.android.libraries.ads.mobile.sdk.common.BaseError;
import com.ironsource.C3635i2;
import com.tapjoy.TJAdUnitConstants;
import p005kotlin.Metadata;
import p005kotlin.enums.EnumEntriesKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001dB\u0017\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J$\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\f\u0010\u0007J\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010HÖ\u0003¢\u0006\u0004\b\u0013\u0010\u0014R\u001a\u0010\b\u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0004R\u001a\u0010\t\u001a\u00020\u00058\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u0007¨\u0006\u001e"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalError;", "Lcom/google/android/libraries/ads/mobile/sdk/common/BaseError;", "Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalError$ErrorCode;", "component1", "()Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalError$ErrorCode;", "", "component2", "()Ljava/lang/String;", "code", TJAdUnitConstants.String.MESSAGE, "copy", "(Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalError$ErrorCode;Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalError;", "toString", "", "hashCode", "()I", "", C3635i2.d, "", "equals", "(Ljava/lang/Object;)Z", "a", "Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalError$ErrorCode;", "getCode", "b", "Ljava/lang/String;", "getMessage", "<init>", "(Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalError$ErrorCode;Ljava/lang/String;)V", "ErrorCode", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final /* data */ class SignalError extends BaseError<ErrorCode> {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final ErrorCode code;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final String message;

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.google.android.libraries.ads.mobile.sdk.signal.SignalError$ErrorCode[], still in use, count: 1, list:
  (r0v1 com.google.android.libraries.ads.mobile.sdk.signal.SignalError$ErrorCode[]) from 0x0024: INVOKE (r0v1 com.google.android.libraries.ads.mobile.sdk.signal.SignalError$ErrorCode[]) STATIC call: kotlin.enums.EnumEntriesKt.enumEntries(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:<E extends java.lang.Enum<E>>:(E extends java.lang.Enum<E>[]):kotlin.enums.EnumEntries<E extends java.lang.Enum<E>> (m)]
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
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalError$ErrorCode;", "", "", "a", "I", "getValue", "()I", "value", "INTERNAL_ERROR", "INVALID_REQUEST", "TIMEOUT", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class ErrorCode {
        INTERNAL_ERROR(0),
        INVALID_REQUEST(1),
        TIMEOUT(2);


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

    public SignalError(ErrorCode code, String message) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(message, "message");
        this.code = code;
        this.message = message;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final ErrorCode getCode() {
        return this.code;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getMessage() {
        return this.message;
    }

    public final SignalError copy(ErrorCode code, String message) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(message, "message");
        return new SignalError(code, message);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SignalError)) {
            return false;
        }
        SignalError signalError = (SignalError) other;
        return this.code == signalError.code && Intrinsics.areEqual(this.message, signalError.message);
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

    public int hashCode() {
        return this.message.hashCode() + (this.code.hashCode() * 31);
    }

    public String toString() {
        return "SignalError(code=" + this.code + ", message=" + this.message + ")";
    }
}

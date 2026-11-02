package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import p005kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v20 ads_mobile_sdk.kk1[], still in use, count: 1, list:
  (r0v20 ads_mobile_sdk.kk1[]) from 0x00e8: INVOKE (r0v20 ads_mobile_sdk.kk1[]) STATIC call: kotlin.enums.EnumEntriesKt.enumEntries(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:<E extends java.lang.Enum<E>>:(E extends java.lang.Enum<E>[]):kotlin.enums.EnumEntries<E extends java.lang.Enum<E>> (m)]
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
/* JADX INFO: loaded from: classes.dex */
public final class kk1 {
    INTERNAL_ERROR,
    INVALID_REQUEST,
    NO_FILL,
    APP_ID_MISSING,
    NETWORK_ERROR,
    /* JADX INFO: Fake field, exist only in values array */
    INVALID_AD_UNIT_ID,
    /* JADX INFO: Fake field, exist only in values array */
    INVALID_AD_SIZE,
    /* JADX INFO: Fake field, exist only in values array */
    MEDIATION_SHOW_ERROR,
    /* JADX INFO: Fake field, exist only in values array */
    NOT_READY,
    AD_RESPONSE_ALREADY_USED,
    /* JADX INFO: Fake field, exist only in values array */
    APP_NOT_FOREGROUND,
    /* JADX INFO: Fake field, exist only in values array */
    INTERNAL_SHOW_ERROR,
    MEDIATION_NO_FILL,
    INVALID_AD_RESPONSE,
    REQUEST_ID_MISMATCH,
    TIMEOUT,
    CANCELLED,
    WEB_VIEW_DESTROYED_ERROR,
    ADAPTER_INITIALIZATION_ERROR,
    INVALID_DATA_URL;

    static {
        EnumEntriesKt.enumEntries(kk1VarArr);
    }

    public kk1() {
        super(str, i);
    }

    public static kk1[] values() {
        return (kk1[]) o.clone();
    }

    public final LoadAdError.ErrorCode d() {
        switch (this) {
            case INTERNAL_ERROR:
                return LoadAdError.ErrorCode.INTERNAL_ERROR;
            case INVALID_REQUEST:
                return LoadAdError.ErrorCode.INVALID_REQUEST;
            case NO_FILL:
                return LoadAdError.ErrorCode.NO_FILL;
            case APP_ID_MISSING:
                return LoadAdError.ErrorCode.APP_ID_MISSING;
            case NETWORK_ERROR:
                return LoadAdError.ErrorCode.NETWORK_ERROR;
            case INVALID_AD_UNIT_ID:
                return LoadAdError.ErrorCode.INVALID_REQUEST;
            case INVALID_AD_SIZE:
                return LoadAdError.ErrorCode.INVALID_REQUEST;
            case MEDIATION_SHOW_ERROR:
                return LoadAdError.ErrorCode.INTERNAL_ERROR;
            case NOT_READY:
                return LoadAdError.ErrorCode.INTERNAL_ERROR;
            case AD_RESPONSE_ALREADY_USED:
                return LoadAdError.ErrorCode.AD_RESPONSE_ALREADY_USED;
            case APP_NOT_FOREGROUND:
                return LoadAdError.ErrorCode.INTERNAL_ERROR;
            case INTERNAL_SHOW_ERROR:
                return LoadAdError.ErrorCode.INTERNAL_ERROR;
            case MEDIATION_NO_FILL:
                return LoadAdError.ErrorCode.NO_FILL;
            case INVALID_AD_RESPONSE:
                return LoadAdError.ErrorCode.INVALID_AD_RESPONSE;
            case REQUEST_ID_MISMATCH:
                return LoadAdError.ErrorCode.REQUEST_ID_MISMATCH;
            case TIMEOUT:
                return LoadAdError.ErrorCode.TIMEOUT;
            case CANCELLED:
                return LoadAdError.ErrorCode.CANCELLED;
            case WEB_VIEW_DESTROYED_ERROR:
                return LoadAdError.ErrorCode.INTERNAL_ERROR;
            case ADAPTER_INITIALIZATION_ERROR:
                return LoadAdError.ErrorCode.INTERNAL_ERROR;
            case INVALID_DATA_URL:
                return LoadAdError.ErrorCode.INTERNAL_ERROR;
            default:
                throw new p005kotlin.NoWhenBranchMatchedException();
        }
    }
}

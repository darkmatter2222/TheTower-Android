package kotlin;

import com.ironsource.C3510b4;
import p005kotlin.enums.EnumEntriesKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 ads_mobile_sdk.bu2[], still in use, count: 1, list:
  (r0v1 ads_mobile_sdk.bu2[]) from 0x005a: INVOKE (r0v1 ads_mobile_sdk.bu2[]) STATIC call: kotlin.enums.EnumEntriesKt.enumEntries(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:<E extends java.lang.Enum<E>>:(E extends java.lang.Enum<E>[]):kotlin.enums.EnumEntries<E extends java.lang.Enum<E>> (m)]
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
public final class bu2 {
    POLLED_IN_AD_PRELOADED_CALLBACK("pollAd() was called synchronously inside the onAdPreloaded() callback. Call pollAd from an application or UI event instead.", vt2.VIOLATION_REASON_POLLED_IN_CALLBACK),
    STARTED_OR_STOPPED_IN_AD_FAILED_CALLBACK("startPreload() or stopPreload() was called synchronously inside the onAdFailedToPreload() callback. Zenith automatically manages retries with exponential backoff; do not restart preloading on failure.", vt2.VIOLATION_REASON_STARTED_OR_STOPPED_IN_FAILED_CALLBACK),
    HELD_TOO_LONG_AFTER_POLL("An ad was polled without being immediately shown. Show polled ads immediately, do not cache a polled ad. If you want to inspect an ad response use the peekAd API instead.", vt2.VIOLATION_REASON_HELD_TOO_LONG_AFTER_POLL),
    EXCESSIVE_AVAILABILITY_CHECKS("Do not call isAdAvailable in a loop. Call isAdAvailable from an application or UI event instead.", vt2.VIOLATION_REASON_EXCESSIVE_AVAILABILITY_CHECKS),
    /* JADX INFO: Fake field, exist only in values array */
    RAPID_REINITIALIZATION("Frequent start/stop preloading calls detected. Avoid rapid startPreload/stopPreload cycles; initialize preloading once per app lifecycle or user journey.", vt2.VIOLATION_REASON_RAPID_REINITIALIZATION),
    EXCESSIVE_BUFFER("Buffer size exceeds recommended maximum.", vt2.VIOLATION_REASON_EXCESSIVE_BUFFER);

    public final String a;
    public final vt2 b;

    static {
        hy3[] hy3VarArr = hy3.a;
        EnumEntriesKt.enumEntries(bu2VarArr);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bu2(String str, vt2 vt2Var) {
        super(str, i);
        hy3[] hy3VarArr = hy3.a;
        this.a = str;
        this.b = vt2Var;
    }

    public static bu2[] values() {
        return (bu2[]) h.clone();
    }

    public final String a(String preloadId, String str) {
        Intrinsics.checkNotNullParameter(preloadId, "preloadId");
        hy3[] hy3VarArr = hy3.a;
        return "[GMA Validator WARNING] Violation detected (" + this + ") for preload ID '" + preloadId + "': " + this.a + (str != null ? " [" + str + C3510b4.j.e : "");
    }
}

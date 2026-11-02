package kotlin;

import p005kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 ads_mobile_sdk.ir0[], still in use, count: 1, list:
  (r0v1 ads_mobile_sdk.ir0[]) from 0x004e: INVOKE (r0v1 ads_mobile_sdk.ir0[]) STATIC call: kotlin.enums.EnumEntriesKt.enumEntries(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:<E extends java.lang.Enum<E>>:(E extends java.lang.Enum<E>[]):kotlin.enums.EnumEntries<E extends java.lang.Enum<E>> (m)]
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
public final class ir0 {
    b("Internal error."),
    c("No fill."),
    d("Operation timed out."),
    e("The system WebView required for this operation was terminated."),
    f("Swipeable Interstitial is not supported for "),
    g("Both SDK and publisher determined Custom Click Gesture are enabled on this request. Pick one to enable and make sure your ad unit is eligible.");

    public final String a;

    static {
        EnumEntriesKt.enumEntries(ir0VarArr);
    }

    public ir0(String str) {
        super(str, i);
        this.a = str;
    }

    public static ir0[] values() {
        return (ir0[]) h.clone();
    }

    public final String d() {
        return this.a;
    }
}

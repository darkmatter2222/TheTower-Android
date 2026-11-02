package kotlin;

import p005kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 ads_mobile_sdk.k41[], still in use, count: 1, list:
  (r0v1 ads_mobile_sdk.k41[]) from 0x0037: INVOKE (r0v1 ads_mobile_sdk.k41[]) STATIC call: kotlin.enums.EnumEntriesKt.enumEntries(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:<E extends java.lang.Enum<E>>:(E extends java.lang.Enum<E>[]):kotlin.enums.EnumEntries<E extends java.lang.Enum<E>> (m)]
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
public final class k41 {
    UNKNOWN(0),
    PLAYING(1),
    PAUSED(2),
    ENDED(3),
    /* JADX INFO: Fake field, exist only in values array */
    READY(5);

    public final int a;

    static {
        EnumEntriesKt.enumEntries(k41VarArr);
    }

    public k41(int i) {
        super(str, i);
        this.a = i;
    }

    public static k41[] values() {
        return (k41[]) f.clone();
    }
}

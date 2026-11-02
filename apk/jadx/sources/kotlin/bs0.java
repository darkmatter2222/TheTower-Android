package kotlin;

import p005kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 ads_mobile_sdk.bs0[], still in use, count: 1, list:
  (r0v1 ads_mobile_sdk.bs0[]) from 0x0063: INVOKE (r0v1 ads_mobile_sdk.bs0[]) STATIC call: kotlin.enums.EnumEntriesKt.enumEntries(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:<E extends java.lang.Enum<E>>:(E extends java.lang.Enum<E>[]):kotlin.enums.EnumEntries<E extends java.lang.Enum<E>> (m)]
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
public final class bs0 {
    FILL(0),
    NO_FILL(1),
    TIMEOUT(2),
    NOT_FOUND(3),
    CANCELLED(4),
    EXCEPTION(5),
    ERROR(6),
    RENDERED_BUT_LOST(8),
    INFLIGHT(9);

    public static final as0 b;
    public final int a;

    static {
        EnumEntriesKt.enumEntries(bs0VarArr);
        b = new as0();
    }

    public bs0(int i) {
        super(str, i);
        this.a = i;
    }

    public static bs0[] values() {
        return (bs0[]) l.clone();
    }

    public final int d() {
        return this.a;
    }
}

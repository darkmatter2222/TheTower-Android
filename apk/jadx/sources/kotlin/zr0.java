package kotlin;

import p005kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 ads_mobile_sdk.zr0[], still in use, count: 1, list:
  (r0v1 ads_mobile_sdk.zr0[]) from 0x002e: INVOKE (r0v1 ads_mobile_sdk.zr0[]) STATIC call: kotlin.enums.EnumEntriesKt.enumEntries(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:<E extends java.lang.Enum<E>>:(E extends java.lang.Enum<E>[]):kotlin.enums.EnumEntries<E extends java.lang.Enum<E>> (m)]
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
public final class zr0 {
    INVALID(0),
    HAS_WATERFALL(1),
    WATERFALL_FILL(2),
    AD_SHOW(3);

    public static final yr0 b;
    public final int a;

    static {
        EnumEntriesKt.enumEntries(zr0VarArr);
        b = new yr0();
    }

    public zr0(int i) {
        super(str, i);
        this.a = i;
    }

    public static zr0[] values() {
        return (zr0[]) g.clone();
    }
}

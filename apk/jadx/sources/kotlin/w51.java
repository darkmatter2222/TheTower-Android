package kotlin;

import com.tapjoy.TJAdUnitConstants;
import p005kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 ads_mobile_sdk.w51[], still in use, count: 1, list:
  (r0v1 ads_mobile_sdk.w51[]) from 0x0036: INVOKE (r0v1 ads_mobile_sdk.w51[]) STATIC call: kotlin.enums.EnumEntriesKt.enumEntries(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:<E extends java.lang.Enum<E>>:(E extends java.lang.Enum<E>[]):kotlin.enums.EnumEntries<E extends java.lang.Enum<E>> (m)]
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
public final class w51 {
    b("unknown"),
    c(TJAdUnitConstants.String.LEFT),
    d(TJAdUnitConstants.String.RIGHT),
    e("device_flat");

    public final String a;

    static {
        EnumEntriesKt.enumEntries(w51VarArr);
    }

    public w51(String str) {
        super(str, i);
        this.a = str;
    }

    public static w51[] values() {
        return (w51[]) f.clone();
    }
}

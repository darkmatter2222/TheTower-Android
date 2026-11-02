package kotlin;

import java.util.LinkedHashMap;
import p005kotlin.collections.MapsKt;
import p005kotlin.enums.EnumEntriesKt;
import p005kotlin.ranges.RangesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 ads_mobile_sdk.h2[], still in use, count: 1, list:
  (r0v1 ads_mobile_sdk.h2[]) from 0x002e: INVOKE (r0v1 ads_mobile_sdk.h2[]) STATIC call: kotlin.enums.EnumEntriesKt.enumEntries(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:<E extends java.lang.Enum<E>>:(E extends java.lang.Enum<E>[]):kotlin.enums.EnumEntries<E extends java.lang.Enum<E>> (m)]
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
public final class h2 {
    FORMAT_DEFAULT(0),
    ON_AD_OPENED(1),
    ON_AD_SHOW(2),
    THIRD_PARTY_SDK_CALLBACK(3);

    public static final g2 b;
    public static final LinkedHashMap c;
    public final int a;

    static {
        EnumEntriesKt.enumEntries(new h2[]{r0, r1, r3, r4});
        b = new g2();
        h2[] h2VarArrValues = values();
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(h2VarArrValues.length), 16));
        for (h2 h2Var : h2VarArrValues) {
            linkedHashMap.put(Integer.valueOf(h2Var.a), h2Var);
        }
        c = linkedHashMap;
    }

    public h2(int i) {
        super(str, i);
        this.a = i;
    }

    public static h2[] values() {
        return (h2[]) h.clone();
    }
}

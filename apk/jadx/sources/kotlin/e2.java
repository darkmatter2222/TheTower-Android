package kotlin;

import java.util.LinkedHashMap;
import p005kotlin.collections.MapsKt;
import p005kotlin.enums.EnumEntriesKt;
import p005kotlin.ranges.RangesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 ads_mobile_sdk.e2[], still in use, count: 1, list:
  (r0v1 ads_mobile_sdk.e2[]) from 0x0034: INVOKE (r0v1 ads_mobile_sdk.e2[]) STATIC call: kotlin.enums.EnumEntriesKt.enumEntries(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:<E extends java.lang.Enum<E>>:(E extends java.lang.Enum<E>[]):kotlin.enums.EnumEntries<E extends java.lang.Enum<E>> (m)]
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
public final class e2 {
    FORMAT_DEFAULT(0),
    ONE_PIXEL(1),
    /* JADX INFO: Fake field, exist only in values array */
    AD_LOAD(2),
    /* JADX INFO: Fake field, exist only in values array */
    NO_IMPRESSION(3),
    THIRD_PARTY_SDK_CALLBACK(4);

    public static final d2 b;
    public static final LinkedHashMap c;
    public final int a;

    static {
        EnumEntriesKt.enumEntries(new e2[]{r0, r1, r3, r4, r5});
        b = new d2();
        e2[] e2VarArrValues = values();
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(e2VarArrValues.length), 16));
        for (e2 e2Var : e2VarArrValues) {
            linkedHashMap.put(Integer.valueOf(e2Var.a), e2Var);
        }
        c = linkedHashMap;
    }

    public e2(int i) {
        super(str, i);
        this.a = i;
    }

    public static e2[] values() {
        return (e2[]) g.clone();
    }
}

package kotlin;

import java.util.LinkedHashMap;
import p005kotlin.collections.MapsKt;
import p005kotlin.enums.EnumEntriesKt;
import p005kotlin.ranges.RangesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 ads_mobile_sdk.zc[], still in use, count: 1, list:
  (r0v1 ads_mobile_sdk.zc[]) from 0x002e: INVOKE (r0v1 ads_mobile_sdk.zc[]) STATIC call: kotlin.enums.EnumEntriesKt.enumEntries(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:<E extends java.lang.Enum<E>>:(E extends java.lang.Enum<E>[]):kotlin.enums.EnumEntries<E extends java.lang.Enum<E>> (m)]
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
public final class zc {
    UNKNOWN(0),
    CPM(1),
    CPC(2),
    ONE_PIXEL(3);

    public static final yc b;
    public static final LinkedHashMap c;
    public final int a;

    static {
        EnumEntriesKt.enumEntries(new zc[]{r0, r1, r3, r4});
        b = new yc();
        zc[] zcVarArrValues = values();
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(zcVarArrValues.length), 16));
        for (zc zcVar : zcVarArrValues) {
            linkedHashMap.put(Integer.valueOf(zcVar.a), zcVar);
        }
        c = linkedHashMap;
    }

    public zc(int i) {
        super(str, i);
        this.a = i;
    }

    public static zc[] values() {
        return (zc[]) h.clone();
    }
}

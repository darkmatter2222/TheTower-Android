package kotlin;

import com.tapjoy.TJAdUnitConstants;
import java.util.LinkedHashMap;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.enums.EnumEntries;
import p005kotlin.enums.EnumEntriesKt;
import p005kotlin.ranges.RangesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 ads_mobile_sdk.yy[], still in use, count: 1, list:
  (r0v1 ads_mobile_sdk.yy[]) from 0x001e: INVOKE (r0v2 kotlin.enums.EnumEntries) = (r0v1 ads_mobile_sdk.yy[]) STATIC call: kotlin.enums.EnumEntriesKt.enumEntries(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:<E extends java.lang.Enum<E>>:(E extends java.lang.Enum<E>[]):kotlin.enums.EnumEntries<E extends java.lang.Enum<E>> (m)]
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
public final class yy {
    d("create"),
    e(TJAdUnitConstants.String.VISIBLE);

    public static final xy b;
    public static final LinkedHashMap c;
    public final String a;

    static {
        EnumEntries enumEntries = EnumEntriesKt.enumEntries(yyVarArr);
        b = new xy();
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(enumEntries, 10)), 16));
        for (Object obj : enumEntries) {
            linkedHashMap.put(((yy) obj).a, obj);
        }
        c = linkedHashMap;
    }

    public yy(String str) {
        super(str, i);
        this.a = str;
    }

    public static yy[] values() {
        return (yy[]) f.clone();
    }
}

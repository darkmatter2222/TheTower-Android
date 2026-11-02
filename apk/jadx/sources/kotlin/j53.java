package kotlin;

import com.ironsource.C3510b4;
import java.util.LinkedHashMap;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.enums.EnumEntries;
import p005kotlin.enums.EnumEntriesKt;
import p005kotlin.ranges.RangesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 ads_mobile_sdk.j53[], still in use, count: 1, list:
  (r0v1 ads_mobile_sdk.j53[]) from 0x0073: INVOKE (r0v2 kotlin.enums.EnumEntries) = (r0v1 ads_mobile_sdk.j53[]) STATIC call: kotlin.enums.EnumEntriesKt.enumEntries(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:<E extends java.lang.Enum<E>>:(E extends java.lang.Enum<E>[]):kotlin.enums.EnumEntries<E extends java.lang.Enum<E>> (m)]
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
public final class j53 {
    d(""),
    e("app_open_ad"),
    f("banner"),
    g(C3510b4.i.H0),
    h("interstitial"),
    i("native"),
    j("rewarded"),
    k("rewarded_interstitial"),
    l("swipeable_interstitial");

    public static final h53 b;
    public static final LinkedHashMap c;
    public static final /* synthetic */ EnumEntries n;
    public final String a;

    static {
        EnumEntries enumEntries = EnumEntriesKt.enumEntries(j53VarArr);
        n = enumEntries;
        b = new h53();
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(enumEntries, 10)), 16));
        for (Object obj : enumEntries) {
            linkedHashMap.put(((j53) obj).a, obj);
        }
        c = linkedHashMap;
    }

    public j53(String str) {
        super(str, i);
        this.a = str;
    }

    public static j53[] values() {
        return (j53[]) m.clone();
    }

    public final String d() {
        return this.a;
    }
}

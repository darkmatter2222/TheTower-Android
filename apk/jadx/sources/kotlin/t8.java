package kotlin;

import java.util.Comparator;
import java.util.Map;
import p005kotlin.comparisons.ComparisonsKt;

/* JADX INFO: loaded from: classes.dex */
public final class t8 implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return ComparisonsKt.compareValues(String.valueOf(((Map.Entry) obj).getKey()), String.valueOf(((Map.Entry) obj2).getKey()));
    }
}

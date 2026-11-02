package kotlin;

import java.util.Comparator;
import p005kotlin.comparisons.ComparisonsKt;

/* JADX INFO: loaded from: classes.dex */
public final class r8 implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return ComparisonsKt.compareValues(obj != null ? obj.toString() : null, obj2 != null ? obj2.toString() : null);
    }
}

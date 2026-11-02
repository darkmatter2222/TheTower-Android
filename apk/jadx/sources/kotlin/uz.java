package kotlin;

import java.util.Comparator;
import p005kotlin.comparisons.ComparisonsKt;

/* JADX INFO: loaded from: classes.dex */
public final class uz implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return ComparisonsKt.compareValues(Integer.valueOf(((String) obj2).length()), Integer.valueOf(((String) obj).length()));
    }
}

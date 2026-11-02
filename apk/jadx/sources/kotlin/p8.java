package kotlin;

import java.util.Comparator;
import p005kotlin.comparisons.ComparisonsKt;

/* JADX INFO: loaded from: classes.dex */
public final class p8 implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return ComparisonsKt.compareValues(String.valueOf(((Boolean) obj).booleanValue()), String.valueOf(((Boolean) obj2).booleanValue()));
    }
}

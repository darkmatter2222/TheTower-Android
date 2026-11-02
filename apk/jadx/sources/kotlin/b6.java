package kotlin;

import java.util.Comparator;
import p005kotlin.comparisons.ComparisonsKt;
import p005kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class b6 implements Comparator {
    public final /* synthetic */ Comparator a;

    public b6(a6 a6Var) {
        this.a = a6Var;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int iCompare = this.a.compare(obj, obj2);
        return iCompare != 0 ? iCompare : ComparisonsKt.compareValues(Duration.m4365boximpl(((yt2) obj).b), Duration.m4365boximpl(((yt2) obj2).b));
    }
}

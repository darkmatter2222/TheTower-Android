package com.unity3d.services.core.network.domain;

import com.unity3d.ads.core.log.Logger;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import p005kotlin.Metadata;
import p005kotlin.Pair;
import p005kotlin.TuplesKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.comparisons.ComparisonsKt;
import p005kotlin.io.FilesKt;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.sequences.Sequence;
import p005kotlin.sequences.SequencesKt;

/* JADX INFO: compiled from: CleanupDirectory.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J!\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0086\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/unity3d/services/core/network/domain/CleanupDirectory;", "", "logger", "Lcom/unity3d/ads/core/log/Logger;", "<init>", "(Lcom/unity3d/ads/core/log/Logger;)V", "invoke", "", "directory", "Ljava/io/File;", "sizeLimitMb", "", "ageLimitMs", "", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CleanupDirectory {
    private final Logger logger;

    public CleanupDirectory(Logger logger) {
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.logger = logger;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Pair invoke$lambda$3(Pair pair, File file) {
        Intrinsics.checkNotNullParameter(pair, "<destruct>");
        Intrinsics.checkNotNullParameter(file, "file");
        return TuplesKt.to(Long.valueOf(((Number) pair.component1()).longValue() - file.length()), CollectionsKt.plus((Collection<? extends File>) pair.component2(), file));
    }

    public final void invoke(File directory, int sizeLimitMb, long ageLimitMs) {
        List list;
        Intrinsics.checkNotNullParameter(directory, "directory");
        if (!directory.exists() || !directory.isDirectory()) {
            this.logger.debug("Directory does not exist or is not a directory: " + directory + ", nothing to clean up.");
            return;
        }
        Object obj = null;
        Sequence sequenceFilter = SequencesKt.filter(FilesKt.walk$default(directory, null, 1, null), CleanupDirectory$invoke$cachedFiles$1.INSTANCE);
        Iterator it = sequenceFilter.iterator();
        long length = 0;
        long length2 = 0;
        while (it.hasNext()) {
            length2 += ((File) it.next()).length();
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : sequenceFilter) {
            if (((File) obj2).lastModified() + ageLimitMs < jCurrentTimeMillis) {
                arrayList.add(obj2);
            } else {
                arrayList2.add(obj2);
            }
        }
        Pair pair = new Pair(arrayList, arrayList2);
        List list2 = (List) pair.component1();
        List list3 = (List) pair.component2();
        List list4 = list2;
        Iterator it2 = list4.iterator();
        while (it2.hasNext()) {
            length += ((File) it2.next()).length();
        }
        long j = length2 - length;
        Iterator it3 = list4.iterator();
        while (it3.hasNext()) {
            ((File) it3.next()).delete();
        }
        long j2 = sizeLimitMb * 1048576;
        if (j > j2) {
            for (Object obj3 : SequencesKt.runningFold(SequencesKt.sortedWith(CollectionsKt.asSequence(list3), new Comparator() { // from class: com.unity3d.services.core.network.domain.CleanupDirectory$invoke$$inlined$sortedBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return ComparisonsKt.compareValues(Long.valueOf(((File) t).lastModified()), Long.valueOf(((File) t2).lastModified()));
                }
            }), TuplesKt.to(Long.valueOf(j), CollectionsKt.emptyList()), new Function2() { // from class: com.unity3d.services.core.network.domain.CleanupDirectory$$ExternalSyntheticLambda0
                @Override // p005kotlin.jvm.functions.Function2
                public final Object invoke(Object obj4, Object obj5) {
                    return CleanupDirectory.invoke$lambda$3((Pair) obj4, (File) obj5);
                }
            })) {
                if (((Number) ((Pair) obj3).component1()).longValue() <= j2) {
                    obj = obj3;
                    break;
                }
            }
            Pair pair2 = (Pair) obj;
            if (pair2 != null && (list = (List) pair2.component2()) != null) {
                list3 = list;
            }
            Iterator it4 = list3.iterator();
            while (it4.hasNext()) {
                ((File) it4.next()).delete();
            }
        }
    }
}

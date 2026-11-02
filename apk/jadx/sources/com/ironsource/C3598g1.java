package com.ironsource;

import android.content.Context;
import com.ironsource.mediationsdk.logger.IronLog;
import com.unity3d.mediation.LevelPlayAdSize;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.comparisons.ComparisonsKt;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.g1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3598g1 {
    public static final a b = new a(null);
    private static final int c = -1;
    private final C3704m0 a;

    /* JADX INFO: renamed from: com.ironsource.g1$a */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: renamed from: com.ironsource.g1$b */
    public static final class b<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return ComparisonsKt.compareValues(Integer.valueOf(((LevelPlayAdSize) t2).getWidth()), Integer.valueOf(((LevelPlayAdSize) t).getWidth()));
        }
    }

    /* JADX INFO: renamed from: com.ironsource.g1$c */
    public static final class c<T> implements Comparator {
        final /* synthetic */ Comparator a;

        public c(Comparator comparator) {
            this.a = comparator;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            int iCompare = this.a.compare(t, t2);
            return iCompare != 0 ? iCompare : ComparisonsKt.compareValues(Integer.valueOf(((LevelPlayAdSize) t2).getHeight()), Integer.valueOf(((LevelPlayAdSize) t).getHeight()));
        }
    }

    public C3598g1(C3704m0 adSizeTools) {
        Intrinsics.checkNotNullParameter(adSizeTools, "adSizeTools");
        this.a = adSizeTools;
    }

    private final int a(Integer num, Context context) {
        if (num == null || num.intValue() >= 0) {
            return num == null ? C3566e5.a.b(context) : num.intValue();
        }
        IronLog.API.info(C3704m0.a(this.a, "Width is invalid, screen width will be used", (String) null, 2, (Object) null));
        return C3566e5.a.b(context);
    }

    private final List<LevelPlayAdSize> a() {
        return CollectionsKt.sortedWith(this.a.c(), new c(new b()));
    }

    private final List<LevelPlayAdSize> a(List<LevelPlayAdSize> list, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            LevelPlayAdSize levelPlayAdSize = (LevelPlayAdSize) obj;
            if (levelPlayAdSize.getHeight() <= i && levelPlayAdSize.getWidth() <= i2) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final LevelPlayAdSize a(Context context, Integer num) {
        LevelPlayAdSize levelPlayAdSizeCreateCustomSize;
        Intrinsics.checkNotNullParameter(context, "context");
        if (!this.a.a()) {
            IronLog.API.error(C3704m0.a(this.a, "The SDK must be successfully initialized to create an Adaptive Ad Size", (String) null, 2, (Object) null));
            return null;
        }
        Integer numB = this.a.b(context);
        if (numB == null) {
            IronLog.API.error(C3704m0.a(this.a, "Error getting max current orientation banner height", (String) null, 2, (Object) null));
            return null;
        }
        int iIntValue = numB.intValue();
        int iA = a(num, context);
        int iA2 = this.a.a(iA);
        List<LevelPlayAdSize> listA = a();
        Iterator<T> it = a(listA, iIntValue, iA).iterator();
        while (true) {
            if (!it.hasNext()) {
                levelPlayAdSizeCreateCustomSize = null;
                break;
            }
            levelPlayAdSizeCreateCustomSize = (LevelPlayAdSize) it.next();
            if (levelPlayAdSizeCreateCustomSize.getWidth() <= iA && (levelPlayAdSizeCreateCustomSize.getHeight() <= iA2 || iA2 == -1)) {
                iA2 = Math.max(iA2, levelPlayAdSizeCreateCustomSize.getHeight());
                break;
            }
        }
        if (levelPlayAdSizeCreateCustomSize == null) {
            iA2 = ((LevelPlayAdSize) CollectionsKt.last((List) listA)).getHeight();
            levelPlayAdSizeCreateCustomSize = LevelPlayAdSize.Companion.createCustomSize(iA, iA2);
        }
        int i = iA2;
        LevelPlayAdSize levelPlayAdSize = levelPlayAdSizeCreateCustomSize;
        IronLog.INTERNAL.info(C3704m0.a(this.a, "Adaptive: " + iA + "x" + i + " Fallback: " + levelPlayAdSize, (String) null, 2, (Object) null));
        return new LevelPlayAdSize(iA, i, "CUSTOM", true, levelPlayAdSize);
    }
}

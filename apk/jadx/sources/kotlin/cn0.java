package kotlin;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import com.ironsource.C3510b4;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class cn0 {
    public static final long[] f = {1, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000, 10000000000L, 100000000000L, 1000000000000L, 10000000000000L, 100000000000000L, 1000000000000000L, 10000000000000000L, 100000000000000000L, 1000000000000000000L};
    public final ex0 a;
    public final AtomicReference b;
    public final AtomicReference c;
    public final AtomicLong d;
    public final ActivityManager e;

    public cn0(Context context, ex0 flags) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = flags;
        this.b = new AtomicReference(mm0.TIER_UNKNOWN);
        this.c = new AtomicReference(om0.PROCESSOR_TIER_UNKNOWN);
        this.d = new AtomicLong(-1L);
        this.e = (ActivityManager) context.getSystemService(ActivityManager.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.util.ArrayList] */
    public static Object a(long j, List list, List list2, List list3, Enum r7, Enum r8, long j2) {
        if (j <= 0) {
            return r7;
        }
        if (!list.isEmpty()) {
            list2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                list2.add(Long.valueOf(((Number) it.next()).intValue()));
            }
        }
        int size = list2.size();
        for (int i = 0; i < size && i < list3.size(); i++) {
            if (j <= ((Number) list2.get(i)).longValue() * j2) {
                return list3.get(i);
            }
        }
        return r8;
    }

    public final nm0 a() {
        ex0 ex0Var = this.a;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:available_memory_tier:enabled", C3510b4.i.W);
        if (!((Boolean) ex0Var.a("gads:available_memory_tier:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
            return nm0.AVAILABLE_MEMORY_TIER_UNKNOWN;
        }
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        this.e.getMemoryInfo(memoryInfo);
        long j = memoryInfo.availMem;
        ex0 ex0Var2 = this.a;
        ex0Var2.getClass();
        List defaultValue = CollectionsKt.listOf((Object[]) new Integer[]{1, 2, 4, 6, 8, 12, 16});
        Intrinsics.checkNotNullParameter("gads:device_tier:available_memory_thresholds_gb", C3510b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return (nm0) a(j, (List) ex0Var2.a("gads:device_tier:available_memory_thresholds_gb", defaultValue, yr.h), CollectionsKt.listOf((Object[]) new Long[]{1L, 2L, 4L, 6L, 8L, 12L, 16L}), CollectionsKt.listOf((Object[]) new nm0[]{nm0.AVAILABLE_MEMORY_TIER_EXTREME_LOW, nm0.AVAILABLE_MEMORY_TIER_VERY_LOW, nm0.AVAILABLE_MEMORY_TIER_LOW, nm0.AVAILABLE_MEMORY_TIER_MID, nm0.AVAILABLE_MEMORY_TIER_MID_PLUS, nm0.AVAILABLE_MEMORY_TIER_HIGH, nm0.AVAILABLE_MEMORY_TIER_VERY_HIGH}), nm0.AVAILABLE_MEMORY_TIER_INVALID_DATA_SOURCE, nm0.AVAILABLE_MEMORY_TIER_EXTREME_HIGH, 1073741824L);
    }

    public final om0 a(int i) {
        long j = i;
        ex0 ex0Var = this.a;
        ex0Var.getClass();
        List defaultValue = CollectionsKt.listOf((Object[]) new Integer[]{2, 4, 6, 8, 10});
        Intrinsics.checkNotNullParameter("gads:device_tier:available_processor_thresholds", C3510b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return (om0) a(j, (List) ex0Var.a("gads:device_tier:available_processor_thresholds", defaultValue, yr.h), CollectionsKt.listOf((Object[]) new Long[]{2L, 4L, 6L, 8L, 10L}), CollectionsKt.listOf((Object[]) new om0[]{om0.PROCESSOR_TIER_EXTREME_LOW, om0.PROCESSOR_TIER_LOW, om0.PROCESSOR_TIER_MID, om0.PROCESSOR_TIER_MID_PLUS, om0.PROCESSOR_TIER_HIGH}), om0.PROCESSOR_TIER_INVALID_DATA_SOURCE, om0.PROCESSOR_TIER_EXTREME_HIGH, 1L);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0140  */
    public final void b() {
        long j;
        if (this.b.get() == mm0.TIER_UNKNOWN || this.c.get() == om0.PROCESSOR_TIER_UNKNOWN || this.d.get() == -1) {
            if (Build.VERSION.SDK_INT >= 34) {
                ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                this.e.getMemoryInfo(memoryInfo);
                j = memoryInfo.advertisedMem;
            } else {
                ActivityManager.MemoryInfo memoryInfo2 = new ActivityManager.MemoryInfo();
                this.e.getMemoryInfo(memoryInfo2);
                j = memoryInfo2.totalMem;
            }
            long j2 = j;
            AtomicReference atomicReference = this.b;
            ex0 ex0Var = this.a;
            ex0Var.getClass();
            List defaultValue = CollectionsKt.listOf((Object[]) new Integer[]{1, 2, 4, 6, 8, 12, 16});
            Intrinsics.checkNotNullParameter("gads:device_tier:advertised_memory_thresholds_gb", C3510b4.i.W);
            Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
            atomicReference.set((mm0) a(j2, (List) ex0Var.a("gads:device_tier:advertised_memory_thresholds_gb", defaultValue, yr.h), CollectionsKt.listOf((Object[]) new Long[]{1L, 2L, 4L, 6L, 8L, 12L, 16L}), CollectionsKt.listOf((Object[]) new mm0[]{mm0.TIER_EXTREME_LOW, mm0.TIER_VERY_LOW, mm0.TIER_LOW, mm0.TIER_MID, mm0.TIER_MID_PLUS, mm0.TIER_HIGH, mm0.TIER_VERY_HIGH}), mm0.TIER_INVALID_DATA_SOURCE, mm0.TIER_EXTREME_HIGH, 1073741824L));
            AtomicLong atomicLong = this.d;
            ex0 ex0Var2 = this.a;
            int iIntValue = ((Number) ex0Var2.a("gads:device_tier:advertised_memory_granularity", by0.a(ex0Var2, "gads:device_tier:advertised_memory_granularity", C3510b4.i.W, 7), yr.f)).intValue();
            if (j2 > 0) {
                long[] jArr = f;
                if (iIntValue >= 19) {
                    j2 = 0;
                } else if (iIntValue > 0) {
                    long j3 = jArr[iIntValue];
                    j2 = (j2 / j3) * j3;
                }
            } else {
                j2 = 0;
            }
            atomicLong.set(j2);
            this.c.set(a(Runtime.getRuntime().availableProcessors()));
        }
    }
}

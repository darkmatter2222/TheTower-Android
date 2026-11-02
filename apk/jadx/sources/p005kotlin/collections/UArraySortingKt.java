package p005kotlin.collections;

import com.tapjoy.TJAdUnitConstants;
import p005kotlin.Metadata;
import p005kotlin.UByteArray;
import p005kotlin.UIntArray;
import p005kotlin.ULongArray;
import p005kotlin.UShort;
import p005kotlin.UShortArray;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UArraySorting.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0006\u0010\u0007\u001a'\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\n\u0010\u000b\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\r\u0010\u000e\u001a'\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u000f\u0010\u0010\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0012\u0010\u0013\u001a'\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0014\u0010\u0015\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00162\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0017\u0010\u0018\u001a'\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00162\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0019\u0010\u001a\u001a'\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b\u001e\u0010\u000b\u001a'\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b\u001f\u0010\u0010\u001a'\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b \u0010\u0015\u001a'\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b!\u0010\u001a¨\u0006\""}, d2 = {"partition", "", "array", "Lkotlin/UByteArray;", TJAdUnitConstants.String.LEFT, TJAdUnitConstants.String.RIGHT, "partition-4UcCI2c", "([BII)I", "quickSort", "", "quickSort-4UcCI2c", "([BII)V", "Lkotlin/UShortArray;", "partition-Aa5vz7o", "([SII)I", "quickSort-Aa5vz7o", "([SII)V", "Lkotlin/UIntArray;", "partition-oBK06Vg", "([III)I", "quickSort-oBK06Vg", "([III)V", "Lkotlin/ULongArray;", "partition--nroSd4", "([JII)I", "quickSort--nroSd4", "([JII)V", "sortArray", "fromIndex", "toIndex", "sortArray-4UcCI2c", "sortArray-Aa5vz7o", "sortArray-oBK06Vg", "sortArray--nroSd4", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class UArraySortingKt {
    /* JADX INFO: renamed from: partition--nroSd4, reason: not valid java name */
    private static final int m3481partitionnroSd4(long[] jArr, int i, int i2) {
        long jM3256getsVKNKU = ULongArray.m3256getsVKNKU(jArr, (i + i2) / 2);
        while (i <= i2) {
            while (Long.compareUnsigned(ULongArray.m3256getsVKNKU(jArr, i), jM3256getsVKNKU) < 0) {
                i++;
            }
            while (Long.compareUnsigned(ULongArray.m3256getsVKNKU(jArr, i2), jM3256getsVKNKU) > 0) {
                i2--;
            }
            if (i <= i2) {
                long jM3256getsVKNKU2 = ULongArray.m3256getsVKNKU(jArr, i);
                ULongArray.m3261setk8EXiF4(jArr, i, ULongArray.m3256getsVKNKU(jArr, i2));
                ULongArray.m3261setk8EXiF4(jArr, i2, jM3256getsVKNKU2);
                i++;
                i2--;
            }
        }
        return i;
    }

    /* JADX INFO: renamed from: partition-4UcCI2c, reason: not valid java name */
    private static final int m3482partition4UcCI2c(byte[] bArr, int i, int i2) {
        int i3;
        byte bM3098getw2LRezQ = UByteArray.m3098getw2LRezQ(bArr, (i + i2) / 2);
        while (i <= i2) {
            while (true) {
                i3 = bM3098getw2LRezQ & 255;
                if (Intrinsics.compare(UByteArray.m3098getw2LRezQ(bArr, i) & 255, i3) >= 0) {
                    break;
                }
                i++;
            }
            while (Intrinsics.compare(UByteArray.m3098getw2LRezQ(bArr, i2) & 255, i3) > 0) {
                i2--;
            }
            if (i <= i2) {
                byte bM3098getw2LRezQ2 = UByteArray.m3098getw2LRezQ(bArr, i);
                UByteArray.m3103setVurrAj0(bArr, i, UByteArray.m3098getw2LRezQ(bArr, i2));
                UByteArray.m3103setVurrAj0(bArr, i2, bM3098getw2LRezQ2);
                i++;
                i2--;
            }
        }
        return i;
    }

    /* JADX INFO: renamed from: partition-Aa5vz7o, reason: not valid java name */
    private static final int m3483partitionAa5vz7o(short[] sArr, int i, int i2) {
        int i3;
        short sM3361getMh2AYeg = UShortArray.m3361getMh2AYeg(sArr, (i + i2) / 2);
        while (i <= i2) {
            while (true) {
                int iM3361getMh2AYeg = UShortArray.m3361getMh2AYeg(sArr, i) & UShort.MAX_VALUE;
                i3 = sM3361getMh2AYeg & UShort.MAX_VALUE;
                if (Intrinsics.compare(iM3361getMh2AYeg, i3) >= 0) {
                    break;
                }
                i++;
            }
            while (Intrinsics.compare(UShortArray.m3361getMh2AYeg(sArr, i2) & UShort.MAX_VALUE, i3) > 0) {
                i2--;
            }
            if (i <= i2) {
                short sM3361getMh2AYeg2 = UShortArray.m3361getMh2AYeg(sArr, i);
                UShortArray.m3366set01HTLdE(sArr, i, UShortArray.m3361getMh2AYeg(sArr, i2));
                UShortArray.m3366set01HTLdE(sArr, i2, sM3361getMh2AYeg2);
                i++;
                i2--;
            }
        }
        return i;
    }

    /* JADX INFO: renamed from: partition-oBK06Vg, reason: not valid java name */
    private static final int m3484partitionoBK06Vg(int[] iArr, int i, int i2) {
        int iM3177getpVg5ArA = UIntArray.m3177getpVg5ArA(iArr, (i + i2) / 2);
        while (i <= i2) {
            while (Integer.compareUnsigned(UIntArray.m3177getpVg5ArA(iArr, i), iM3177getpVg5ArA) < 0) {
                i++;
            }
            while (Integer.compareUnsigned(UIntArray.m3177getpVg5ArA(iArr, i2), iM3177getpVg5ArA) > 0) {
                i2--;
            }
            if (i <= i2) {
                int iM3177getpVg5ArA2 = UIntArray.m3177getpVg5ArA(iArr, i);
                UIntArray.m3182setVXSXFK8(iArr, i, UIntArray.m3177getpVg5ArA(iArr, i2));
                UIntArray.m3182setVXSXFK8(iArr, i2, iM3177getpVg5ArA2);
                i++;
                i2--;
            }
        }
        return i;
    }

    /* JADX INFO: renamed from: quickSort--nroSd4, reason: not valid java name */
    private static final void m3485quickSortnroSd4(long[] jArr, int i, int i2) {
        int iM3481partitionnroSd4 = m3481partitionnroSd4(jArr, i, i2);
        int i3 = iM3481partitionnroSd4 - 1;
        if (i < i3) {
            m3485quickSortnroSd4(jArr, i, i3);
        }
        if (iM3481partitionnroSd4 < i2) {
            m3485quickSortnroSd4(jArr, iM3481partitionnroSd4, i2);
        }
    }

    /* JADX INFO: renamed from: quickSort-4UcCI2c, reason: not valid java name */
    private static final void m3486quickSort4UcCI2c(byte[] bArr, int i, int i2) {
        int iM3482partition4UcCI2c = m3482partition4UcCI2c(bArr, i, i2);
        int i3 = iM3482partition4UcCI2c - 1;
        if (i < i3) {
            m3486quickSort4UcCI2c(bArr, i, i3);
        }
        if (iM3482partition4UcCI2c < i2) {
            m3486quickSort4UcCI2c(bArr, iM3482partition4UcCI2c, i2);
        }
    }

    /* JADX INFO: renamed from: quickSort-Aa5vz7o, reason: not valid java name */
    private static final void m3487quickSortAa5vz7o(short[] sArr, int i, int i2) {
        int iM3483partitionAa5vz7o = m3483partitionAa5vz7o(sArr, i, i2);
        int i3 = iM3483partitionAa5vz7o - 1;
        if (i < i3) {
            m3487quickSortAa5vz7o(sArr, i, i3);
        }
        if (iM3483partitionAa5vz7o < i2) {
            m3487quickSortAa5vz7o(sArr, iM3483partitionAa5vz7o, i2);
        }
    }

    /* JADX INFO: renamed from: quickSort-oBK06Vg, reason: not valid java name */
    private static final void m3488quickSortoBK06Vg(int[] iArr, int i, int i2) {
        int iM3484partitionoBK06Vg = m3484partitionoBK06Vg(iArr, i, i2);
        int i3 = iM3484partitionoBK06Vg - 1;
        if (i < i3) {
            m3488quickSortoBK06Vg(iArr, i, i3);
        }
        if (iM3484partitionoBK06Vg < i2) {
            m3488quickSortoBK06Vg(iArr, iM3484partitionoBK06Vg, i2);
        }
    }

    /* JADX INFO: renamed from: sortArray--nroSd4, reason: not valid java name */
    public static final void m3489sortArraynroSd4(long[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m3485quickSortnroSd4(array, i, i2 - 1);
    }

    /* JADX INFO: renamed from: sortArray-4UcCI2c, reason: not valid java name */
    public static final void m3490sortArray4UcCI2c(byte[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m3486quickSort4UcCI2c(array, i, i2 - 1);
    }

    /* JADX INFO: renamed from: sortArray-Aa5vz7o, reason: not valid java name */
    public static final void m3491sortArrayAa5vz7o(short[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m3487quickSortAa5vz7o(array, i, i2 - 1);
    }

    /* JADX INFO: renamed from: sortArray-oBK06Vg, reason: not valid java name */
    public static final void m3492sortArrayoBK06Vg(int[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m3488quickSortoBK06Vg(array, i, i2 - 1);
    }
}

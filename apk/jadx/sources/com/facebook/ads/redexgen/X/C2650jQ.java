package com.facebook.ads.redexgen.X;

import android.os.Looper;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.jQ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2650jQ {
    public static byte[] A00;

    static {
        A02();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 3);
        }
        return new String(bArrCopyOfRange);
    }

    private Map<Thread, StackTraceElement[]> A01() {
        TreeMap treeMap = new TreeMap(new C2649jP(this, Looper.getMainLooper().getThread()));
        treeMap.putAll(Thread.getAllStackTraces());
        return treeMap;
    }

    public static void A02() {
        A00 = new byte[]{Ascii.CR, 72, 85, 89, 39, 107, 108, 123, 108, 106, 123, 108, 107, 65, -43, -31, -33, -96, -40, -45, -43, -41, -44, -31, -31, -35, -96, -45, -42, -27};
    }

    public final String A03() {
        for (StackTraceElement stackTraceElement : Looper.getMainLooper().getThread().getStackTrace()) {
            if (stackTraceElement.getClassName().startsWith(A00(14, 16, 111))) {
                return stackTraceElement.toString();
            }
        }
        return null;
    }

    public final String A04(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(A00(1, 13, 4));
        sb.append(str);
        String strA00 = A00(0, 1, 0);
        sb.append(strA00);
        for (Map.Entry<Thread, StackTraceElement[]> entry : A01().entrySet()) {
            sb.append(entry.getKey().getName());
            sb.append(strA00);
            for (StackTraceElement stackTraceElement : entry.getValue()) {
                sb.append('\t');
                sb.append(stackTraceElement.toString());
                sb.append(strA00);
            }
        }
        return sb.toString();
    }
}

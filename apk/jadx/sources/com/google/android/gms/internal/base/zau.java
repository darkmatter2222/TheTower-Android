package com.google.android.gms.internal.base;

import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.10.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zau {
    public static int zaa(int i, int i2, String str) {
        String strZaa;
        if (i >= 0 && i < i2) {
            return i;
        }
        if (i < 0) {
            strZaa = zav.zaa("%s (%s) must not be negative", FirebaseAnalytics.Param.INDEX, Integer.valueOf(i));
        } else {
            if (i2 < 0) {
                StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 15);
                sb.append("negative size: ");
                sb.append(i2);
                throw new IllegalArgumentException(sb.toString());
            }
            strZaa = zav.zaa("%s (%s) must be less than size (%s)", FirebaseAnalytics.Param.INDEX, Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IndexOutOfBoundsException(strZaa);
    }

    public static int zab(int i, int i2, String str) {
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(zad(i, i2, FirebaseAnalytics.Param.INDEX));
        }
        return i;
    }

    public static void zac(int i, int i2, int i3) {
        String strZad;
        if (i < 0 || i2 < i || i2 > i3) {
            if (i < 0 || i > i3) {
                strZad = zad(i, i3, "start index");
            } else {
                strZad = (i2 < 0 || i2 > i3) ? zad(i2, i3, "end index") : zav.zaa("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i));
            }
            throw new IndexOutOfBoundsException(strZad);
        }
    }

    private static String zad(int i, int i2, String str) {
        if (i < 0) {
            return zav.zaa("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return zav.zaa("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 15);
        sb.append("negative size: ");
        sb.append(i2);
        throw new IllegalArgumentException(sb.toString());
    }
}

package com.appsflyer.internal;

import android.os.Process;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import kotlin.fh;

/* JADX INFO: loaded from: classes2.dex */
public final class AFf1qSDK {
    private static int $10 = 0;
    private static int $11 = 1;
    private static int AFAdRevenueData = 0;
    private static int areAllFieldsValid = 0;
    private static int component1 = 1;
    private static int getCurrencyIso4217Code;
    private static byte[] getMediationNetwork;
    private static short[] getMonetizationNetwork;
    private static int getRevenue;

    static {
        getRevenue();
        ViewConfiguration.getMaximumDrawingCacheSize();
        TypedValue.complexToFloat(0);
        ExpandableListView.getPackedPositionForChild(0, 0);
        AndroidCharacter.getMirror('0');
        AndroidCharacter.getMirror('0');
        int i = areAllFieldsValid + 71;
        component1 = i % 128;
        if (i % 2 != 0) {
            return;
        }
        Object obj = null;
        obj.hashCode();
        throw null;
    }

    private static void a(int i, byte b, short s, int i2, int i3, Object[] objArr) {
        int i4;
        int length;
        byte[] bArr;
        int i5;
        int i6 = 2 % 2;
        AFk1kSDK aFk1kSDK = new AFk1kSDK();
        StringBuilder sb = new StringBuilder();
        int i7 = i2 + ((int) (((long) AFAdRevenueData) ^ 6918351348135370604L));
        boolean z = i7 == -1;
        if (z) {
            byte[] bArr2 = getMediationNetwork;
            if (bArr2 != null) {
                int length2 = bArr2.length;
                byte[] bArr3 = new byte[length2];
                for (int i8 = 0; i8 < length2; i8++) {
                    int i9 = $11 + 69;
                    $10 = i9 % 128;
                    int i10 = i9 % 2;
                    bArr3[i8] = (byte) (((long) bArr2[i8]) ^ 6918351348135370604L);
                }
                bArr2 = bArr3;
            }
            if (bArr2 != null) {
                i7 = (byte) (((byte) (((long) getMediationNetwork[((int) (((long) getCurrencyIso4217Code) ^ 6918351348135370604L)) + i]) ^ 6918351348135370604L)) + ((int) (((long) AFAdRevenueData) ^ 6918351348135370604L)));
                int i11 = $11 + 91;
                $10 = i11 % 128;
                int i12 = i11 % 2;
            } else {
                i7 = (short) (((short) (((long) getMonetizationNetwork[((int) (((long) getCurrencyIso4217Code) ^ 6918351348135370604L)) + i]) ^ 6918351348135370604L)) + ((int) (((long) AFAdRevenueData) ^ 6918351348135370604L)));
            }
        }
        if (i7 > 0) {
            int i13 = ((i + i7) - 2) + ((int) (((long) getCurrencyIso4217Code) ^ 6918351348135370604L));
            if (z) {
                i4 = 1;
            } else {
                int i14 = $11 + fh.h1;
                $10 = i14 % 128;
                int i15 = i14 % 2;
                i4 = 0;
            }
            aFk1kSDK.getCurrencyIso4217Code = i13 + i4;
            aFk1kSDK.getRevenue = (char) (i3 + ((int) (((long) getRevenue) ^ 6918351348135370604L)));
            sb.append(aFk1kSDK.getRevenue);
            aFk1kSDK.getMediationNetwork = aFk1kSDK.getRevenue;
            byte[] bArr4 = getMediationNetwork;
            if (bArr4 != null) {
                int i16 = $10 + 97;
                $11 = i16 % 128;
                if (i16 % 2 == 0) {
                    length = bArr4.length;
                    bArr = new byte[length];
                    i5 = 1;
                } else {
                    length = bArr4.length;
                    bArr = new byte[length];
                    i5 = 0;
                }
                while (i5 < length) {
                    bArr[i5] = (byte) (((long) bArr4[i5]) ^ 6918351348135370604L);
                    i5++;
                }
                bArr4 = bArr;
            }
            boolean z2 = bArr4 != null;
            aFk1kSDK.AFAdRevenueData = 1;
            while (aFk1kSDK.AFAdRevenueData < i7) {
                if (!(!z2)) {
                    byte[] bArr5 = getMediationNetwork;
                    int i17 = aFk1kSDK.getCurrencyIso4217Code;
                    aFk1kSDK.getCurrencyIso4217Code = i17 - 1;
                    aFk1kSDK.getRevenue = (char) (aFk1kSDK.getMediationNetwork + (((byte) (((byte) (((long) bArr5[i17]) ^ 6918351348135370604L)) + s)) ^ b));
                } else {
                    short[] sArr = getMonetizationNetwork;
                    int i18 = aFk1kSDK.getCurrencyIso4217Code;
                    aFk1kSDK.getCurrencyIso4217Code = i18 - 1;
                    aFk1kSDK.getRevenue = (char) (aFk1kSDK.getMediationNetwork + (((short) (((short) (((long) sArr[i18]) ^ 6918351348135370604L)) + s)) ^ b));
                }
                sb.append(aFk1kSDK.getRevenue);
                aFk1kSDK.getMediationNetwork = aFk1kSDK.getRevenue;
                aFk1kSDK.AFAdRevenueData++;
                int i19 = $11 + 31;
                $10 = i19 % 128;
                int i20 = i19 % 2;
            }
        }
        objArr[0] = sb.toString();
    }

    private static AFi1rSDK getCurrencyIso4217Code(AFi1wSDK aFi1wSDK, String str, String str2, String str3) {
        if (str == null) {
            return new AFi1rSDK(aFi1wSDK.getMediationNetwork == AFh1cSDK.DEFAULT, AFi1uSDK.NA);
        }
        String string = "";
        Object[] objArr = new Object[1];
        a((ViewConfiguration.getKeyRepeatDelay() >> 16) + 1522762699, (byte) (-(ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1))), (short) ((ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)) + fh.h1), (-82) - ((Process.getThreadPriority(0) + 20) >> 6), TextUtils.indexOf((CharSequence) "", '0', 0, 0) - 1963671201, objArr);
        String strIntern = ((String) objArr[0]).intern();
        if (aFi1wSDK.getMediationNetwork == AFh1cSDK.CUSTOM) {
            string = new StringBuilder(str2).reverse().toString();
        } else {
            str3 = strIntern;
        }
        boolean zEquals = getMediationNetwork(new StringBuilder(str3).reverse().toString(), aFi1wSDK.getRevenue, "android", "v1", string).equals(str);
        return new AFi1rSDK(zEquals, zEquals ? AFi1uSDK.SUCCESS : AFi1uSDK.FAILURE);
    }

    private static String getMediationNetwork(String str, String str2, String str3, String str4, String str5) {
        int i = 2 % 2;
        int i2 = areAllFieldsValid + 17;
        component1 = i2 % 128;
        int i3 = i2 % 2;
        String revenue = AFj1bSDK.getRevenue(TextUtils.join("\u2063", new String[]{str2, str3, str4, str5, ""}), str);
        if (revenue.length() >= 12) {
            return revenue.substring(0, 12);
        }
        int i4 = areAllFieldsValid + 109;
        component1 = i4 % 128;
        int i5 = i4 % 2;
        return revenue;
    }

    static void getRevenue() {
        getCurrencyIso4217Code = -842505383;
        AFAdRevenueData = 1760829245;
        getRevenue = 503259577;
        getMediationNetwork = new byte[]{-125, -23, -7, -7, -7, -3, -49, -26, -30, -7, -11, -8, -8, -4, -7, -5, -3, -1, -2, -10, -14, -28, -56, -23, -7, -2, -52, -27, -2, -7, -7, -8, -29, -12, -2, -5, -50, -24, -4, -12, -12, -4, -11, -31, -5, -1, -6, -4, -8, -6, -8, -2, -9, -2, -6, -30, -5, -7, -1, -3, -8, -12, -4, -8};
    }

    public final AFi1rSDK getRevenue(AFi1wSDK aFi1wSDK, String str, String str2, String str3) {
        int i = 2 % 2;
        int i2 = areAllFieldsValid + 67;
        int i3 = i2 % 128;
        component1 = i3;
        int i4 = i2 % 2;
        if (aFi1wSDK != null && str2 != null) {
            int i5 = i3 + 61;
            areAllFieldsValid = i5 % 128;
            if (i5 % 2 != 0) {
                Object obj = null;
                obj.hashCode();
                throw null;
            }
            if (str3 != null) {
                return getCurrencyIso4217Code(aFi1wSDK, str, str2, str3);
            }
        }
        AFi1rSDK aFi1rSDK = new AFi1rSDK(false, AFi1uSDK.INTERNAL_ERROR);
        int i6 = component1 + 59;
        areAllFieldsValid = i6 % 128;
        int i7 = i6 % 2;
        return aFi1rSDK;
    }
}

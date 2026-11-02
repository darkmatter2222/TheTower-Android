package com.facebook.ads.redexgen.X;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.ads.internal.util.activity.ActivityUtils;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3669k1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.eg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2362eg {
    public static byte[] A00;
    public static String[] A01 = {"88AoqknPZ4rnlocmRSd1iIvU160OI6Up", "Xa", "c0t0ITAkOrWkNbi2AOUUle7x7Lv9c02n", "B7XNNyfmW5R2wceLmJkXAkDES3fZG3Pt", "MUV", "NALjFYAH0tlSEiNw3RaQSfKZY5jyxbRm", "XF7p93xq3OHri6co5HggQunfVTz3vEaG", "n2FdIZz9zx79PfKUryB9rXi8CBHMM9xX"};
    public static final String A02;

    static {
        A03();
        A02 = C2362eg.class.getSimpleName();
    }

    public static AbstractC2361ef A00(C1618Hi c1618Hi, InterfaceC2884nG interfaceC2884nG, String str, Uri uri, Map<String, String> map, C2410fT c2410fT) {
        return A01(c1618Hi, interfaceC2884nG, str, uri, map, true, false, c2410fT);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:26:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:29:0x00af  */
    /* JADX WARN: Code duplicated, block: B:31:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:33:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:34:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:36:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:37:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:39:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:40:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:42:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:44:0x010c  */
    /* JADX WARN: Code duplicated, block: B:46:0x0112 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:47:0x0114  */
    /* JADX WARN: Code duplicated, block: B:49:0x011a  */
    /* JADX WARN: Code duplicated, block: B:51:0x0120 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:52:0x0122 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:53:0x0123  */
    public static AbstractC2361ef A01(final C1618Hi c1618Hi, final InterfaceC2884nG interfaceC2884nG, final String str, final Uri uri, final Map<String, String> map, final boolean z, boolean z2, final C2410fT c2410fT) {
        final C2367em c2367emA00;
        byte b;
        if (uri == null || uri.getAuthority() == null) {
            return null;
        }
        String authority = uri.getAuthority();
        String queryParameter = uri.getQueryParameter(A02(InterfaceC3669k1.d.b.k, 9, 44));
        String queryParameter2 = uri.getQueryParameter(A02(45, 4, 86));
        if (queryParameter2 != null) {
            boolean zIsEmpty = TextUtils.isEmpty(queryParameter2);
            if (A01[2].charAt(25) != 'L') {
                throw new RuntimeException();
            }
            A01[2] = "ISDJ842CIGTTmPHzT0dMVnvZcLrwzpZ1";
            if (!zIsEmpty) {
                try {
                    JSONObject jSONObject = new JSONObject(queryParameter2);
                    Iterator<String> itKeys = jSONObject.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        try {
                            map.put(next, jSONObject.getString(next));
                        } catch (JSONException e) {
                            e = e;
                            c1618Hi.A08().ABz(A02(64, 7, 51), AbstractC2786lf.A23, new C2787lg(e));
                            Log.w(A02, A02(0, 45, 27), e);
                            c2367emA00 = C2367em.A00(interfaceC2884nG, ActivityUtils.A00());
                            switch (authority.hashCode()) {
                                case -1458789996:
                                    if (authority.equals(A02(71, 11, 74))) {
                                        b = -1;
                                    } else {
                                        b = 2;
                                    }
                                    break;
                                case 109770977:
                                    if (authority.equals(A02(82, 5, 117))) {
                                        b = -1;
                                    } else {
                                        b = 0;
                                    }
                                    break;
                                case 1546100943:
                                    if (authority.equals(A02(55, 9, 15))) {
                                        b = -1;
                                    } else {
                                        b = 1;
                                    }
                                    break;
                                default:
                                    b = -1;
                                    break;
                            }
                            switch (b) {
                                case 0:
                                    if (queryParameter != null) {
                                        return null;
                                    }
                                    if (z2) {
                                    }
                                    break;
                                case 1:
                                    if (A02(109, 4, 100).equals(uri.getQueryParameter(A02(49, 6, 28)))) {
                                        return new MH(c1618Hi, interfaceC2884nG, str, uri, map, c2367emA00, z) { // from class: com.facebook.ads.redexgen.X.7t
                                            public static byte[] A02;
                                            public static final String A03;
                                            public final Uri A00;
                                            public final Map<String, String> A01;

                                            static {
                                                A01();
                                                A03 = C13877t.class.getSimpleName();
                                            }

                                            {
                                                this.A00 = uri;
                                                this.A01 = map;
                                            }

                                            public static String A00(int i, int i2, int i3) {
                                                byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
                                                for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
                                                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 79);
                                                }
                                                return new String(bArrCopyOfRange);
                                            }

                                            public static void A01() {
                                                A02 = new byte[]{122, 93, 85, 80, 89, 88, Ascii.FS, 72, 83, Ascii.FS, 83, 76, 89, 82, Ascii.FS, 80, 85, 82, 87, Ascii.FS, 73, 78, 80, 6, Ascii.FS, 43, 46, 41, 44};
                                            }

                                            @Override // com.facebook.ads.redexgen.X.MH
                                            public final EnumC2358ec A0J() {
                                                String queryParameter3;
                                                EnumC2358ec enumC2358ecA0O = EnumC2358ec.A08;
                                                if (((MH) this).A03 && (enumC2358ecA0O = A0O()) != EnumC2358ec.A03 && this.A01 != null && (queryParameter3 = this.A00.getQueryParameter(A00(25, 4, 8))) != null) {
                                                    try {
                                                        Uri uriA00 = AbstractC3011pP.A00(queryParameter3);
                                                        if (uriA00 != null) {
                                                            new C3278ti(this.A01).A03(((AbstractC2361ef) this).A01, uriA00.toString());
                                                        }
                                                    } catch (Exception unused) {
                                                    }
                                                }
                                                A0L(this.A01, enumC2358ecA0O);
                                                return enumC2358ecA0O;
                                            }

                                            public final EnumC2358ec A0O() {
                                                EnumC2358ec enumC2358ec = EnumC2358ec.A08;
                                                try {
                                                    C3007pK.A0D(new C3007pK(), ((AbstractC2361ef) this).A01, AbstractC3011pP.A00(this.A00.getQueryParameter(A00(25, 4, 8))), ((AbstractC2361ef) this).A03);
                                                    return enumC2358ec;
                                                } catch (Exception unused) {
                                                    String str2 = A00(0, 25, 115) + this.A00.toString();
                                                    return EnumC2358ec.A03;
                                                }
                                            }
                                        };
                                    }
                                    return z2 ? new C13897v(c1618Hi, interfaceC2884nG, str, uri, map) : new MH(c1618Hi, interfaceC2884nG, str, uri, map, c2367emA00, z) { // from class: com.facebook.ads.redexgen.X.7u
                                        public static byte[] A02;
                                        public static String[] A03 = {"EO73VH", "Qgz5bq7vpM6wgaeZrwJ0N", "K0RixItTLV229tIQ9volfY9Fr2yfBG4Z", "0XJd0xzB9RaoqzSBbOWrwbmO5Qd7B1Hm", "", "cDFQfUnzrKwrnb1BC8KnyL9IHyRAK9fC", "Q7Q0M0vYffDRrtcuJmKxnq", "hygqtGcON2Cep"};
                                        public static final String A04;
                                        public final Uri A00;
                                        public final Map<String, String> A01;

                                        static {
                                            A01();
                                            A04 = C13887u.class.getSimpleName();
                                        }

                                        {
                                            this.A00 = uri;
                                            this.A01 = map;
                                        }

                                        public static String A00(int i, int i2, int i3) {
                                            byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
                                            for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
                                                bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 99);
                                            }
                                            return new String(bArrCopyOfRange);
                                        }

                                        public static void A01() {
                                            byte[] bArr = {Ascii.SO, 41, 49, 52, 45, 44, -24, 60, 55, -24, 55, 56, 45, 54, -24, 52, 49, 54, 51, -24, Base64.padSymbol, 58, 52, 2, -24, -14, -17, -12, -15, 35, Ascii.FS, Ascii.ETB, 36, 19, 32, 33, Ascii.SI, Ascii.SUB, Ascii.CR, Ascii.SUB, Ascii.ETB, Ascii.FS, Ascii.EM};
                                            if (A03[0].length() == 23) {
                                                throw new RuntimeException();
                                            }
                                            String[] strArr = A03;
                                            strArr[3] = "z2LBMWL3UZ6mgEOfq1wT6wdWGhdUBaxY";
                                            strArr[2] = "LNV6u0tAGiEAXpu6l5ZCQkq7c5KJBKxy";
                                            A02 = bArr;
                                        }

                                        @Override // com.facebook.ads.redexgen.X.MH
                                        public final EnumC2358ec A0J() {
                                            EnumC2358ec enumC2358ecA0O = EnumC2358ec.A08;
                                            if (((MH) this).A03) {
                                                enumC2358ecA0O = A0O();
                                            }
                                            if (!AbstractC3086qc.A0j(((AbstractC2361ef) this).A01, enumC2358ecA0O, this.A01)) {
                                                A0L(this.A01, enumC2358ecA0O);
                                            }
                                            return enumC2358ecA0O;
                                        }

                                        public final EnumC2358ec A0O() {
                                            EnumC2358ec enumC2358ecA06;
                                            if (A0M(this.A00)) {
                                                String queryParameter3 = this.A00.getQueryParameter(A00(29, 14, 75));
                                                if (this.A01 != null) {
                                                    new C3278ti(this.A01).A03(((AbstractC2361ef) this).A01, queryParameter3);
                                                }
                                                return EnumC2358ec.A09;
                                            }
                                            Uri uriA00 = null;
                                            try {
                                                uriA00 = AbstractC3011pP.A00(this.A00.getQueryParameter(A00(25, 4, 35)));
                                                enumC2358ecA06 = C3007pK.A06(new C3007pK(), ((AbstractC2361ef) this).A01, uriA00, ((AbstractC2361ef) this).A03, this.A01);
                                            } catch (Exception unused) {
                                                String str2 = A00(0, 25, 101) + this.A00.toString();
                                                enumC2358ecA06 = EnumC2358ec.A03;
                                            }
                                            if (enumC2358ecA06 != EnumC2358ec.A03 && this.A01 != null && uriA00 != null) {
                                                new C3278ti(this.A01).A03(((AbstractC2361ef) this).A01, uriA00.toString());
                                            }
                                            return enumC2358ecA06;
                                        }
                                    };
                                case 2:
                                    return new MG(c1618Hi, interfaceC2884nG, str, uri, map);
                                default:
                                    return new MF(c1618Hi, interfaceC2884nG, str, uri);
                            }
                        }
                    }
                } catch (JSONException e2) {
                    e = e2;
                }
            }
        }
        c2367emA00 = C2367em.A00(interfaceC2884nG, ActivityUtils.A00());
        switch (authority.hashCode()) {
            case -1458789996:
                if (authority.equals(A02(71, 11, 74))) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            case 109770977:
                if (authority.equals(A02(82, 5, 117))) {
                    b = -1;
                } else {
                    b = 0;
                }
                break;
            case 1546100943:
                if (authority.equals(A02(55, 9, 15))) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                if (queryParameter != null) {
                    return null;
                }
                return (z2 || TextUtils.isEmpty(uri.getQueryParameter(A02(87, 22, 122)))) ? new MH(c1618Hi, interfaceC2884nG, str, uri, map, c2367emA00, z, c2410fT) { // from class: com.facebook.ads.redexgen.X.7w
                    public static byte[] A04;
                    public static String[] A05 = {"eZwrQOnpnpQE2xbRo0zNjy7tlobdqdqH", "SFt7WwZUn", "NjRPf9lXQVcUlHZaPZ2tHyzwDKEOZm5m", "vsw9aGbGyLBdbL44W3z8tEYPUFR7w9", "bZApvv", "GYK1wV", "jBSwIULngy0dc0IzE6SbgF9ev3BAFzHy", "9HFC3JFq8"};
                    public static final String A06;
                    public String A00;
                    public final Uri A01;
                    public final C2410fT A02;
                    public final Map<String, String> A03;

                    static {
                        A07();
                        A06 = C13907w.class.getSimpleName();
                    }

                    {
                        this.A01 = uri;
                        this.A03 = map;
                        this.A02 = c2410fT;
                    }

                    /* JADX WARN: Code duplicated, block: B:53:0x011d  */
                    /* JADX WARN: Code duplicated, block: B:55:0x0125 A[RETURN] */
                    /* JADX WARN: Code duplicated, block: B:56:0x0126  */
                    private Intent A00(C2366ek c2366ek) {
                        if (TextUtils.isEmpty(c2366ek.A05())) {
                            return null;
                        }
                        String strA03 = c2366ek.A03();
                        if (!AbstractC3057q9.A04(((AbstractC2361ef) this).A01, c2366ek.A05()) && !A09(((AbstractC2361ef) this).A01, strA03)) {
                            return null;
                        }
                        if (!TextUtils.isEmpty(strA03) && (strA03.startsWith(A04(250, 4, 23)) || strA03.startsWith(A04(254, 10, 41)))) {
                            return new Intent(A04(62, 26, 24), AbstractC3011pP.A00(strA03));
                        }
                        PackageManager packageManager = ((AbstractC2361ef) this).A01.getPackageManager();
                        if (packageManager == null) {
                            return null;
                        }
                        if (TextUtils.isEmpty(c2366ek.A04()) && TextUtils.isEmpty(strA03)) {
                            return packageManager.getLaunchIntentForPackage(c2366ek.A05());
                        }
                        Intent intentA01 = A01(c2366ek);
                        List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intentA01, 65536);
                        if (intentA01.getComponent() == null) {
                            Iterator<ResolveInfo> it = listQueryIntentActivities.iterator();
                            while (true) {
                                boolean zHasNext = it.hasNext();
                                String[] strArr = A05;
                                if (strArr[5].length() == strArr[4].length()) {
                                    String[] strArr2 = A05;
                                    strArr2[7] = "mdy3DwQER";
                                    strArr2[1] = "z4eGZXaiq";
                                    if (!zHasNext) {
                                        break;
                                    }
                                    ResolveInfo next2 = it.next();
                                    if (next2.activityInfo != null && next2.activityInfo.packageName != null && next2.activityInfo.name != null && next2.activityInfo.packageName.equals(c2366ek.A05())) {
                                        intentA01.setComponent(new ComponentName(next2.activityInfo.packageName, next2.activityInfo.name));
                                        break;
                                    }
                                } else {
                                    throw new RuntimeException();
                                }
                            }
                        }
                        if (!listQueryIntentActivities.isEmpty()) {
                            ComponentName component = intentA01.getComponent();
                            String[] strArr3 = A05;
                            if (strArr3[5].length() != strArr3[4].length()) {
                                throw new RuntimeException();
                            }
                            A05[2] = "8xekkGfEbM0UNtDVsVek4v0mq2iI8UOu";
                            if (component == null) {
                                if (!A09(((AbstractC2361ef) this).A01, strA03)) {
                                    return null;
                                }
                                intentA01.setPackage(c2366ek.A05());
                            }
                        } else {
                            if (!A09(((AbstractC2361ef) this).A01, strA03)) {
                                return null;
                            }
                            intentA01.setPackage(c2366ek.A05());
                        }
                        return intentA01;
                    }

                    private Intent A01(C2366ek c2366ek) {
                        Intent intent = new Intent(A04(88, 26, 38));
                        intent.addFlags(268435456);
                        if (!TextUtils.isEmpty(c2366ek.A05()) && !TextUtils.isEmpty(c2366ek.A04())) {
                            intent.setComponent(new ComponentName(c2366ek.A05(), c2366ek.A04()));
                        }
                        if (!TextUtils.isEmpty(c2366ek.A03())) {
                            intent.setData(AbstractC3011pP.A00(c2366ek.A03()));
                        }
                        return intent;
                    }

                    private final Uri A02() {
                        String queryParameter3 = this.A01.getQueryParameter(A04(219, 9, 104));
                        if (!TextUtils.isEmpty(queryParameter3)) {
                            return AbstractC3011pP.A00(queryParameter3);
                        }
                        return AbstractC3011pP.A00(String.format(Locale.US, A04(126, 22, 117), this.A01.getQueryParameter(A04(211, 8, 63))));
                    }

                    private EnumC2358ec A03() throws C2995p6 {
                        this.A00 = null;
                        C3007pK c3007pK = new C3007pK();
                        try {
                            Uri uriA02 = A02();
                            EnumC2358ec enumC2358ecA06 = C3007pK.A06(c3007pK, ((AbstractC2361ef) this).A01, uriA02, ((AbstractC2361ef) this).A03, this.A03);
                            if (enumC2358ecA06 != EnumC2358ec.A08) {
                                this.A00 = uriA02 != null ? uriA02.toString() : null;
                            }
                            return enumC2358ecA06;
                        } catch (C2995p6 unused) {
                            String str2 = A04(26, 27, 35) + this.A01.toString();
                            String queryParameter3 = this.A01.getQueryParameter(A04(228, 22, 18));
                            if (queryParameter3 != null) {
                                int length = queryParameter3.length();
                                String[] strArr = A05;
                                if (strArr[5].length() != strArr[4].length()) {
                                    throw new RuntimeException();
                                }
                                A05[2] = "UmbMkLHRt7mU5WI1cGYqu3JtAtwRZWLm";
                                if (length > 0) {
                                    Uri uriA00 = AbstractC3011pP.A00(queryParameter3);
                                    C3007pK.A0E(c3007pK, ((AbstractC2361ef) this).A01, uriA00, ((AbstractC2361ef) this).A03);
                                    this.A00 = uriA00 != null ? uriA00.toString() : null;
                                }
                            }
                            return EnumC2358ec.A08;
                        }
                    }

                    public static String A04(int i, int i2, int i3) {
                        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
                        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
                            int i5 = (bArrCopyOfRange[i4] - i3) - 27;
                            String[] strArr = A05;
                            if (strArr[6].charAt(23) == strArr[0].charAt(23)) {
                                throw new RuntimeException();
                            }
                            A05[3] = "uqLwDcTKX4SWJds2FMBMp5QNw2MnWtU";
                            bArrCopyOfRange[i4] = (byte) i5;
                        }
                        return new String(bArrCopyOfRange);
                    }

                    private List<C2366ek> A05() {
                        String queryParameter3 = this.A01.getQueryParameter(A04(114, 12, 124));
                        if (TextUtils.isEmpty(queryParameter3) || A04(53, 2, 109).equals(queryParameter3)) {
                            return null;
                        }
                        ArrayList arrayList = new ArrayList();
                        try {
                            JSONArray jSONArrayOptJSONArray = new JSONObject(queryParameter3).optJSONArray(A04(55, 7, 127));
                            if (jSONArrayOptJSONArray != null) {
                                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                                    C2366ek c2366ekA00 = C2366ek.A00(jSONArrayOptJSONArray.optJSONObject(i));
                                    if (c2366ekA00 != null) {
                                        arrayList.add(c2366ekA00);
                                    }
                                }
                            }
                        } catch (JSONException e3) {
                            ((AbstractC2361ef) this).A01.A08().ABz(A04(204, 7, 47), AbstractC2786lf.A24, new C2787lg(e3));
                            Log.w(A06, A04(0, 26, 10), e3);
                        }
                        return arrayList;
                    }

                    private final List<Intent> A06() {
                        List<C2366ek> listA05 = A05();
                        ArrayList arrayList = new ArrayList();
                        if (listA05 != null) {
                            Iterator<C2366ek> it = listA05.iterator();
                            while (it.hasNext()) {
                                Intent intentA00 = A00(it.next());
                                if (intentA00 != null) {
                                    arrayList.add(intentA00);
                                }
                            }
                        }
                        return arrayList;
                    }

                    public static void A07() {
                        A04 = new byte[]{106, -105, -105, -108, -105, 69, -107, -122, -105, -104, -114, -109, -116, 69, -122, -107, -107, -104, -114, -103, -118, -124, -119, -122, -103, -122, -124, -97, -89, -86, -93, -94, 94, -78, -83, 94, -83, -82, -93, -84, 94, -85, -97, -80, -87, -93, -78, 94, -77, -80, -86, 120, 94, -29, -27, -5, 8, -2, Ascii.FF, 9, 3, -2, -108, -95, -105, -91, -94, -100, -105, 97, -100, -95, -89, -104, -95, -89, 97, -108, -106, -89, -100, -94, -95, 97, 119, 124, 116, 127, -94, -81, -91, -77, -80, -86, -91, 111, -86, -81, -75, -90, -81, -75, 111, -94, -92, -75, -86, -80, -81, 111, -105, -118, -122, -104, -8, 7, 7, 10, 0, Ascii.VT, -4, -10, -5, -8, Ascii.VT, -8, -3, -15, 2, -5, -11, 4, -54, -65, -65, -12, -11, 4, -15, -7, -4, 3, -49, -7, -12, -51, -75, 3, -26, -25, -36, -27, -36, -37, -42, -37, -36, -36, -25, -29, -32, -27, -30, -108, -107, -118, -109, -118, -119, -124, -104, -103, -108, -105, -118, -124, -117, -122, -111, -111, -121, -122, -120, -112, -124, -102, -105, -111, -38, -37, -48, -39, -48, -49, -54, -34, -33, -38, -35, -48, -54, -32, -35, -41, -70, -85, -68, -67, -77, -72, -79, -51, -50, -55, -52, -65, -71, -61, -66, -10, -9, -14, -11, -24, -30, -8, -11, -17, -96, -95, -100, -97, -110, -116, -94, -97, -103, -116, -92, -110, -113, -116, -109, -114, -103, -103, -113, -114, -112, -104, -90, -105, -98, 108, -72, -87, -80, -76, -74, -77, -79, -76, -72, 126, -61, -68, -73, -60, -77, -64, -63, -81, -70, -83, -70, -73, -68, -71};
                    }

                    private boolean A08() {
                        List<Intent> listA06 = A06();
                        if (listA06 == null) {
                            return false;
                        }
                        Iterator<Intent> it = listA06.iterator();
                        while (it.hasNext()) {
                            try {
                                if (C2997p8.A0F(((AbstractC2361ef) this).A01, it.next())) {
                                    return true;
                                }
                            } catch (Exception unused) {
                            }
                        }
                        return false;
                    }

                    public static boolean A09(C1618Hi c1618Hi2, String str2) {
                        if (Build.VERSION.SDK_INT >= 30 && str2 != null) {
                            boolean zA29 = C2863mv.A29(c1618Hi2);
                            if (A05[3].length() == 13) {
                                throw new RuntimeException();
                            }
                            String[] strArr = A05;
                            strArr[7] = "1LqNNd92i";
                            strArr[1] = "QkgxMECyk";
                            if (zA29) {
                                return true;
                            }
                        }
                        return false;
                    }

                    @Override // com.facebook.ads.redexgen.X.MH
                    public final EnumC2358ec A0J() {
                        EnumC2358ec enumC2358ecA0O = EnumC2358ec.A08;
                        if (((MH) this).A03) {
                            enumC2358ecA0O = A0O();
                        } else {
                            this.A03.put(A04(188, 16, 80), String.valueOf(true));
                        }
                        A0L(this.A03, enumC2358ecA0O);
                        C2410fT.A06(this.A02, ((AbstractC2361ef) this).A01);
                        return enumC2358ecA0O;
                    }

                    public final EnumC2358ec A0O() {
                        EnumC2358ec enumC2358ecA03 = EnumC2358ec.A08;
                        String strA04 = A04(148, 15, 92);
                        String queryParameter3 = null;
                        boolean zA0M = A0M(this.A01);
                        if (!zA0M) {
                            zA0M = A08();
                        }
                        if (zA0M) {
                            queryParameter3 = this.A01.getQueryParameter(A04(264, 14, 51));
                        } else {
                            try {
                                enumC2358ecA03 = A03();
                                strA04 = enumC2358ecA03 != EnumC2358ec.A08 ? A04(188, 16, 80) : A04(163, 25, 10);
                                queryParameter3 = this.A00;
                            } catch (Exception unused) {
                                enumC2358ecA03 = EnumC2358ec.A03;
                            }
                        }
                        this.A03.put(strA04, String.valueOf(true));
                        new C3278ti(this.A03).A03(((AbstractC2361ef) this).A01, queryParameter3);
                        return enumC2358ecA03;
                    }
                } : new C13897v(c1618Hi, interfaceC2884nG, str, uri, map);
            case 1:
                if (A02(109, 4, 100).equals(uri.getQueryParameter(A02(49, 6, 28)))) {
                    return new MH(c1618Hi, interfaceC2884nG, str, uri, map, c2367emA00, z) { // from class: com.facebook.ads.redexgen.X.7t
                        public static byte[] A02;
                        public static final String A03;
                        public final Uri A00;
                        public final Map<String, String> A01;

                        static {
                            A01();
                            A03 = C13877t.class.getSimpleName();
                        }

                        {
                            this.A00 = uri;
                            this.A01 = map;
                        }

                        public static String A00(int i, int i2, int i3) {
                            byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
                            for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
                                bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 79);
                            }
                            return new String(bArrCopyOfRange);
                        }

                        public static void A01() {
                            A02 = new byte[]{122, 93, 85, 80, 89, 88, Ascii.FS, 72, 83, Ascii.FS, 83, 76, 89, 82, Ascii.FS, 80, 85, 82, 87, Ascii.FS, 73, 78, 80, 6, Ascii.FS, 43, 46, 41, 44};
                        }

                        @Override // com.facebook.ads.redexgen.X.MH
                        public final EnumC2358ec A0J() {
                            String queryParameter3;
                            EnumC2358ec enumC2358ecA0O = EnumC2358ec.A08;
                            if (((MH) this).A03 && (enumC2358ecA0O = A0O()) != EnumC2358ec.A03 && this.A01 != null && (queryParameter3 = this.A00.getQueryParameter(A00(25, 4, 8))) != null) {
                                try {
                                    Uri uriA00 = AbstractC3011pP.A00(queryParameter3);
                                    if (uriA00 != null) {
                                        new C3278ti(this.A01).A03(((AbstractC2361ef) this).A01, uriA00.toString());
                                    }
                                } catch (Exception unused) {
                                }
                            }
                            A0L(this.A01, enumC2358ecA0O);
                            return enumC2358ecA0O;
                        }

                        public final EnumC2358ec A0O() {
                            EnumC2358ec enumC2358ec = EnumC2358ec.A08;
                            try {
                                C3007pK.A0D(new C3007pK(), ((AbstractC2361ef) this).A01, AbstractC3011pP.A00(this.A00.getQueryParameter(A00(25, 4, 8))), ((AbstractC2361ef) this).A03);
                                return enumC2358ec;
                            } catch (Exception unused) {
                                String str2 = A00(0, 25, 115) + this.A00.toString();
                                return EnumC2358ec.A03;
                            }
                        }
                    };
                }
                if (z2) {
                }
            case 2:
                return new MG(c1618Hi, interfaceC2884nG, str, uri, map);
            default:
                return new MF(c1618Hi, interfaceC2884nG, str, uri);
        }
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 33);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A00 = new byte[]{111, 84, 91, 88, 86, 95, Ascii.SUB, 78, 85, Ascii.SUB, 74, 91, 72, 73, 95, Ascii.SUB, 80, 73, 85, 84, Ascii.SUB, 94, 91, 78, 91, Ascii.SUB, 83, 84, Ascii.SUB, 123, 94, 123, 89, 78, 83, 85, 84, 124, 91, 89, 78, 85, 72, 67, Ascii.DC4, 19, Ascii.SYN, 3, Ascii.SYN, 82, 83, 78, 84, 73, 88, 65, 94, 75, SignedBytes.MAX_POWER_OF_TWO, 113, 66, 71, SignedBytes.MAX_POWER_OF_TWO, 69, 98, 115, 96, 97, 123, 124, 117, Ascii.ESC, 10, Ascii.CAN, Ascii.CAN, Ascii.US, 3, Ascii.EM, 4, Ascii.RS, Ascii.FF, 3, 39, 32, 59, 38, 49, 40, 47, 52, 41, 62, 4, 46, 41, 55, 4, 44, 62, 57, 4, Base64.padSymbol, 58, 55, 55, 57, 58, 56, 48, 49, 55, 48, 32, 123, 100, 105, 104, 98, 82, 120, 127, 97};
    }

    public static boolean A04(String str) {
        return A02(82, 5, 117).equalsIgnoreCase(str) || A02(55, 9, 15).equalsIgnoreCase(str);
    }
}

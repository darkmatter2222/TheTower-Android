package com.facebook.ads.redexgen.X;

import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Mf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1739Mf implements InterfaceC2352eW {
    public static String[] A02 = {"tHIxLrLE", "IxFhKPvaoxD0VQesnJF3iXAhHFCBXd3U", "Mt7WkNRkSixWeZ", "3NLK6E697RszsRzeaJINeoLCJHfPDhsT", "JeqM7ySnSEcfJ46rEA5WOjR5cPawbBex", "7hWC3g29mNlfw9Sa6a96dfCrmBFd", "u4ezoTfN06taZhCQIP75LuZm3JbllhhD", "boKPMSmNS7UHIj0vys9qYc8OI4xdhwBV"};
    public static final C1739Mf A03 = new C1739Mf(Collections.emptyMap());
    public int A00;
    public final Map<String, byte[]> A01;

    public C1739Mf() {
        this(Collections.emptyMap());
    }

    public C1739Mf(Map<String, byte[]> map) {
        this.A01 = Collections.unmodifiableMap(map);
    }

    public static Map<String, byte[]> A00(Map<String, byte[]> map, C2353eX c2353eX) {
        HashMap map2 = new HashMap(map);
        A01(map2, c2353eX.A08());
        A02(map2, c2353eX.A09());
        return map2;
    }

    public static void A01(HashMap<String, byte[]> map, List<String> list) {
        for (int i = 0; i < list.size(); i++) {
            map.remove(list.get(i));
        }
    }

    public static void A02(HashMap<String, byte[]> map, Map<String, Object> map2) {
        for (Map.Entry<String, Object> entry : map2.entrySet()) {
            map.put(entry.getKey(), A04(entry.getValue()));
        }
    }

    public static boolean A03(Map<String, byte[]> map, Map<String, byte[]> map2) {
        if (map.size() != map2.size()) {
            return false;
        }
        for (Map.Entry<String, byte[]> entry : map.entrySet()) {
            if (!Arrays.equals(entry.getValue(), map2.get(entry.getKey()))) {
                return false;
            }
        }
        return true;
    }

    public static byte[] A04(Object obj) {
        if (obj instanceof Long) {
            return ByteBuffer.allocate(8).putLong(((Long) obj).longValue()).array();
        }
        if (obj instanceof String) {
            return ((String) obj).getBytes(XA.A05);
        }
        if (obj instanceof byte[]) {
            return (byte[]) obj;
        }
        throw new IllegalArgumentException();
    }

    public final C1739Mf A05(C2353eX c2353eX) {
        Map<String, byte[]> mapA00 = A00(this.A01, c2353eX);
        return A03(this.A01, mapA00) ? this : new C1739Mf(mapA00);
    }

    public final Set<Map.Entry<String, byte[]>> A06() {
        return this.A01.entrySet();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2352eW
    public final long A7H(String str, long j) {
        byte[] bArr = this.A01.get(str);
        return bArr != null ? ByteBuffer.wrap(bArr).getLong() : j;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2352eW
    public final String A7J(String str, String str2) {
        byte[] bArr = this.A01.get(str);
        return bArr != null ? new String(bArr, XA.A05) : str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        Class<?> cls = getClass();
        if (A02[1].charAt(18) == 'T') {
            throw new RuntimeException();
        }
        String[] strArr = A02;
        strArr[7] = "6r2AG8KzSIJYPm0ymJrbXII3fUPa22Nm";
        strArr[4] = "C0ekPVmQSraQipc5Ub5LGRKtpypKPfgh";
        if (cls != obj.getClass()) {
            return false;
        }
        return A03(this.A01, ((C1739Mf) obj).A01);
    }

    public final int hashCode() {
        if (this.A00 == 0) {
            int iHashCode = 0;
            for (Map.Entry<String, byte[]> entry : this.A01.entrySet()) {
                iHashCode += entry.getKey().hashCode() ^ Arrays.hashCode(entry.getValue());
            }
            this.A00 = iHashCode;
        }
        int i = this.A00;
        if (A02[1].charAt(18) == 'T') {
            throw new RuntimeException();
        }
        String[] strArr = A02;
        strArr[0] = "KdxSxAZt";
        strArr[2] = "LTz56xi50lNSvM";
        return i;
    }
}

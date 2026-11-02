package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Gz, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1609Gz implements InterfaceC2469gQ {
    public static C1609Gz A01;
    public static byte[] A02;
    public static String[] A03 = {"F9VPCRzHFTAYh6WHGcx0Jd90Enb3hSh2", "fH8nu2kqsRdgHbOq", "0ARAQCTuMPQjF7tJb0MjvB18yGPry4Qu", "N48QVONPfFEZdhqNPTKHT8FFB7x206Ht", "sPSH6DBrw2hyfCGwQm6LEVZ2ITL2jpSj", "gRA8laRbRDS4iSEHtkOaasMfi52gbS0", "x", "ATQcDE"};
    public static final String A04;
    public final LinkedHashMap<String, C2876n8> A00 = new LinkedHashMap<>();

    static {
        A02();
        A04 = C1609Gz.class.getSimpleName();
    }

    public static C1609Gz A00() {
        C1609Gz c1609Gz = A01;
        if (A03[3].charAt(18) != 'K') {
            throw new RuntimeException();
        }
        A03[1] = "1qA3QfWMYYAsctqz";
        if (c1609Gz == null) {
            A01 = new C1609Gz();
        }
        C1609Gz c1609Gz2 = A01;
        String[] strArr = A03;
        if (strArr[5].length() == strArr[6].length()) {
            throw new RuntimeException();
        }
        A03[3] = "jddXnAGVDmATkeoPPEKFEO5X5Iu6IeIG";
        return c1609Gz2;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 1);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A02 = new byte[]{19, 4, Ascii.US, Ascii.NAK, Ascii.GS, Ascii.DC4, Ascii.SO, Ascii.DC4, 9, 5, 3, Ascii.DLE, 2, Ascii.SO, Ascii.SUB, Ascii.DC4, 8, 66, 99, 117, 114, 116, 105, 127, 99, 98, 38, 71, 98, 38, 84, 83, 85, 88, 70, 67, 88, 78, 67, 88, 76, 66, 94};
    }

    public final InterfaceC2450g7 A03(String str) {
        C2876n8 c2876n8 = this.A00.get(str);
        if (c2876n8 != null) {
            return c2876n8.A00;
        }
        return null;
    }

    public final C2876n8 A04(String str) {
        return this.A00.get(str);
    }

    public final C2876n8 A05(String str, Messenger messenger, String str2) {
        C2876n8 c2876n8 = new C2876n8(str, messenger, str2);
        this.A00.put(str, c2876n8);
        return c2876n8;
    }

    public final void A06() {
        Iterator<Map.Entry<String, C2876n8>> it = this.A00.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<String, C2876n8> next = it.next();
            if (A03[0].charAt(11) == 'O') {
                throw new RuntimeException();
            }
            A03[1] = "vlvRe5nph1i3Qvfj";
            InterfaceC2450g7 interfaceC2450g7 = next.getValue().A00;
            if (interfaceC2450g7 != null) {
                interfaceC2450g7.destroy();
            }
            it.remove();
        }
    }

    public final void A07(int i, String str, Bundle bundle, Messenger messenger) {
        try {
            Message messageObtain = Message.obtain((Handler) null, i);
            if (str != null) {
                messageObtain.getData().putString(A01(30, 13, 6), str);
            }
            if (bundle != null) {
                messageObtain.getData().putBundle(A01(0, 17, 80), bundle);
            }
            messenger.send(messageObtain);
        } catch (RemoteException unused) {
            if (str != null) {
                A08(str);
            }
        }
    }

    public final void A08(String str) {
        C2876n8 c2876n8 = this.A00.get(str);
        if (c2876n8 == null || c2876n8.A00 == null) {
            return;
        }
        String str2 = A01(17, 13, 7) + str;
        c2876n8.A00.destroy();
        this.A00.remove(str);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2469gQ
    public final void AFw(int i, String str, Bundle bundle) {
        C2876n8 c2876n8A04 = A04(str);
        if (c2876n8A04 != null) {
            A07(i, str, bundle, c2876n8A04.A02);
        }
        HashSet hashSet = new HashSet();
        Iterator<Map.Entry<String, C2876n8>> it = this.A00.entrySet().iterator();
        while (it.hasNext()) {
            C2876n8 value = it.next().getValue();
            try {
                value.A02.send(Message.obtain((Handler) null, 3));
            } catch (RemoteException unused) {
                hashSet.add(value.A03);
            }
        }
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            A08((String) it2.next());
        }
    }
}

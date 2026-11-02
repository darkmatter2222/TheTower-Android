package com.facebook.ads.redexgen.X;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.common.base.Ascii;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.eU, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@MetaExoPlayerCustomization
public final class C2350eU {
    public static byte[] A06;
    public static String[] A07 = {"uCLNqHbvUbwpkTMVOdq8Ax", "5gQ54", "yhjbU1", "eNcf7", "T0VlcLw5DR5PRhsfdvDAVu3stwC9yT9n", "4MdHmKt40ylS0JNbgRQnV7YVt1eOrGpS", "QCD5gpimh1JgBoNbXFIs8WNpeJpo1ZES", "jW155fMl75uIKo88X2q8iVtfsWToKp6t"};
    public InterfaceC2349eT A00;
    public InterfaceC2349eT A01;
    public final SparseArray<String> A02;
    public final SparseBooleanArray A03;
    public final SparseBooleanArray A04;
    public final HashMap<String, C2348eS> A05;

    static {
        A07();
    }

    public C2350eU(ND nd, File file, byte[] bArr, boolean z, boolean z2) {
        AbstractC1722Ln.A08((nd == null && file == null) ? false : true);
        this.A05 = new HashMap<>();
        this.A02 = new SparseArray<>();
        this.A04 = new SparseBooleanArray();
        this.A03 = new SparseBooleanArray();
        C1741Mh c1741Mh = nd != null ? new C1741Mh(nd) : null;
        C1740Mg c1740Mg = file != null ? new C1740Mg(new File(file, A04(42, 24, 115)), bArr, z) : null;
        if (c1741Mh == null || (c1740Mg != null && z2)) {
            this.A01 = (InterfaceC2349eT) N1.A0f(c1740Mg);
            this.A00 = c1741Mh;
        } else {
            this.A01 = c1741Mh;
            this.A00 = c1740Mg;
        }
    }

    public static int A00(SparseArray<String> sparseArray) {
        int size = sparseArray.size();
        int iKeyAt = size == 0 ? 0 : sparseArray.keyAt(size - 1) + 1;
        if (iKeyAt < 0) {
            iKeyAt = 0;
            while (iKeyAt < size && iKeyAt == sparseArray.keyAt(iKeyAt)) {
                iKeyAt++;
            }
        }
        return iKeyAt;
    }

    private C2348eS A01(String str) {
        int iA00 = A00(this.A02);
        C2348eS c2348eS = new C2348eS(iA00, str);
        this.A05.put(str, c2348eS);
        this.A02.put(iA00, str);
        this.A03.put(iA00, true);
        this.A01.AHU(c2348eS);
        return c2348eS;
    }

    public static C1739Mf A02(DataInputStream dataInputStream) throws IOException {
        int i = dataInputStream.readInt();
        HashMap map = new HashMap();
        for (int i2 = 0; i2 < i; i2++) {
            String utf = dataInputStream.readUTF();
            int i3 = dataInputStream.readInt();
            if (i3 < 0) {
                throw new IOException(A04(22, 20, 102) + i3);
            }
            int i4 = 0;
            int iMin = Math.min(i3, 10485760);
            byte[] bArrCopyOf = N1.A07;
            while (i4 != i3) {
                bArrCopyOf = Arrays.copyOf(bArrCopyOf, i4 + iMin);
                dataInputStream.readFully(bArrCopyOf, i4, iMin);
                i4 += iMin;
                iMin = Math.min(i3 - i4, 10485760);
            }
            map.put(utf, bArrCopyOf);
        }
        return new C1739Mf(map);
    }

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A07;
            if (strArr[5].charAt(20) != strArr[4].charAt(20)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A07;
            strArr2[5] = "MgLVgui2fPxNExckRiC5VXYbEawkpgwZ";
            strArr2[4] = "qGMfynRLhhDVceSncoRPVQigUZh8yRBE";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 65);
            i4++;
        }
    }

    public static Cipher A05() throws NoSuchPaddingException, NoSuchAlgorithmException {
        int i = N1.A02;
        String strA04 = A04(0, 20, 95);
        if (i == 18) {
            try {
                return Cipher.getInstance(strA04, A04(20, 2, 7));
            } catch (Throwable unused) {
            }
        }
        return Cipher.getInstance(strA04);
    }

    public static void A07() {
        A06 = new byte[]{-31, -27, -13, -49, -29, -30, -29, -49, -16, -21, -29, -13, -43, -16, -31, -28, -28, -23, -18, -25, -118, -117, -16, Ascii.NAK, Ascii.GS, 8, 19, Ascii.DLE, Ascii.VT, -57, Ascii.GS, 8, 19, Ascii.FS, Ascii.FF, -57, Ascii.SUB, Ascii.DLE, 33, Ascii.FF, -31, -57, Ascii.ETB, Ascii.NAK, Ascii.ETB, Ascii.FS, Ascii.EM, Ascii.CAN, 19, Ascii.ETB, 35, 34, 40, Ascii.EM, 34, 40, 19, Ascii.GS, 34, Ascii.CAN, Ascii.EM, 44, -30, Ascii.EM, 44, Ascii.GS};
    }

    public static void A08(C1739Mf c1739Mf, DataOutputStream dataOutputStream) throws IOException {
        Set<Map.Entry<String, byte[]>> setA06 = c1739Mf.A06();
        dataOutputStream.writeInt(setA06.size());
        for (Map.Entry<String, byte[]> entry : setA06) {
            dataOutputStream.writeUTF(entry.getKey());
            byte[] value = entry.getValue();
            dataOutputStream.writeInt(value.length);
            dataOutputStream.write(value);
        }
    }

    public static boolean A0A(String str) {
        return str.startsWith(A04(42, 24, 115));
    }

    public final int A0B(String str) {
        return A0D(str).A01;
    }

    public final C2348eS A0C(String str) {
        return this.A05.get(str);
    }

    public final C2348eS A0D(String str) {
        C2348eS c2348eS = this.A05.get(str);
        return c2348eS == null ? A01(str) : c2348eS;
    }

    public final C1739Mf A0E(String str) {
        C2348eS c2348eSA0C = A0C(str);
        return c2348eSA0C != null ? c2348eSA0C.A03() : C1739Mf.A03;
    }

    public final String A0F(int i) {
        return this.A02.get(i);
    }

    public final Collection<C2348eS> A0G() {
        return Collections.unmodifiableCollection(this.A05.values());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void A0H() {
        VV vvA0N = AbstractC14139k.A07(this.A05.keySet()).A0N();
        while (vvA0N.hasNext()) {
            A0K((String) vvA0N.next());
        }
    }

    public final void A0I() throws IOException {
        this.A01.ALc(this.A05);
        int size = this.A04.size();
        for (int i = 0; i < size; i++) {
            this.A02.remove(this.A04.keyAt(i));
        }
        this.A04.clear();
        this.A03.clear();
    }

    public final void A0J(long j) throws IOException {
        this.A01.AAt(j);
        if (this.A00 != null) {
            this.A00.AAt(j);
        }
        if (this.A01.A71() || this.A00 == null || !this.A00.A71()) {
            this.A01.ABa(this.A05, this.A02);
        } else {
            InterfaceC2349eT interfaceC2349eT = this.A00;
            String[] strArr = A07;
            if (strArr[3].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A07;
            strArr2[3] = "RJ3xR";
            strArr2[1] = "XYRnk";
            interfaceC2349eT.ABa(this.A05, this.A02);
            this.A01.ALb(this.A05);
        }
        if (this.A00 != null) {
            this.A00.A6O();
            this.A00 = null;
        }
    }

    public final void A0K(String str) {
        C2348eS c2348eS = this.A05.get(str);
        if (c2348eS != null && c2348eS.A09() && c2348eS.A0A()) {
            this.A05.remove(str);
            int i = c2348eS.A01;
            boolean z = this.A03.get(i);
            this.A01.AGk(c2348eS, z);
            if (z) {
                this.A02.remove(i);
                this.A03.delete(i);
            } else {
                this.A02.put(i, null);
                this.A04.put(i, true);
            }
        }
    }

    public final void A0L(String str, C2353eX c2353eX) {
        C2348eS c2348eSA0D = A0D(str);
        if (c2348eSA0D.A0E(c2353eX)) {
            this.A01.AHU(c2348eSA0D);
        }
    }
}

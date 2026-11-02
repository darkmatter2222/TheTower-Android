package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Lh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1716Lh implements InterfaceC2364ei, InterfaceC2368en {
    public static byte[] A0C;
    public static String[] A0D = {"OTBhn", "woE0GsYsDC", "jJJsRhZ6eh", "RbmDZKGZyk", "MbYnCV2deeCvNEpfUSPgn7RvJuamywdV", "va4Mi1JJiq4w08mNkhVxy34L1bzftr4W", "QQZqW8pW387BdDH3gcXSwYVoWAeaIxNz", "E72k8"};
    public static final String A0E;
    public int A00;
    public LK A01;
    public InterfaceC2383f2 A02;
    public C2384f3 A03;
    public InterfaceC2911nh A04;
    public List<GT> A05;
    public boolean A06;
    public boolean A07;
    public boolean A08;
    public boolean A09;
    public final C1618Hi A0A;
    public final String A0B;

    static {
        A04();
        A0E = C1716Lh.class.getSimpleName();
    }

    public C1716Lh(C1618Hi c1618Hi) {
        this(c1618Hi, new LK());
    }

    public C1716Lh(C1618Hi c1618Hi, LK lk) {
        this.A0B = UUID.randomUUID().toString();
        this.A00 = 200;
        this.A01 = lk;
        this.A0A = c1618Hi;
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ kotlin.fh.g1);
        }
        return new String(bArrCopyOfRange);
    }

    private Map<String, String> A03(Map<String, String> map) {
        HashMap map2 = new HashMap();
        String strA02 = A02(138, 4, 8);
        if (map.containsKey(strA02)) {
            map2.put(strA02, map.get(strA02));
        }
        String strA03 = A02(122, 8, 8);
        if (map.containsKey(strA03)) {
            map2.put(strA03, map.get(strA03));
        }
        return map2;
    }

    public static void A04() {
        A0C = new byte[]{124, 89, 92, 77, 73, 88, 79, Ascii.GS, 92, 81, 79, 88, 92, 89, 68, Ascii.GS, 81, 82, 92, 89, 88, 89, Ascii.GS, 89, 92, 73, 92, 93, 114, 119, 125, 117, 62, 118, 127, 110, 110, 123, 112, 123, 122, 62, 113, 112, 62, 114, 113, 125, 117, 109, 125, 108, 123, 123, 112, 62, 127, 122, 104, 71, 66, 72, SignedBytes.MAX_POWER_OF_TWO, Ascii.VT, 71, 68, 76, 76, 78, 79, 10, Ascii.SUB, 7, Ascii.US, Ascii.ESC, Ascii.CR, Ascii.SUB, 55, Ascii.FS, 17, Ascii.CAN, Ascii.CR, SignedBytes.MAX_POWER_OF_TWO, 66, 79, 79, 70, 81, 119, 90, 83, 70, 54, 52, 39, 49, 54, 59, 33, 92, 94, 77, 91, 86, 81, 91, 32, 32, 55, Ascii.FS, 55, 58, 51, 38, 87, SignedBytes.MAX_POWER_OF_TWO, 82, 93, 72, 85, 74, 89, 17, Ascii.FF, 3, Ascii.DC2, 17, 10, Ascii.CR, Ascii.SYN, 93, 70, 65, 89, 93, 77, 97, 76, Ascii.DC4, Ascii.VT, 7, Ascii.NAK};
    }

    private void A05(LK lk) {
        if (this.A06) {
            throw new IllegalStateException(A02(0, 27, 87));
        }
        this.A01 = lk;
        List<LK> listA0f = this.A01.A0f();
        if (listA0f != null && listA0f.size() > 0) {
            int size = listA0f.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i = 0; i < size; i++) {
                C1716Lh c1716Lh = new C1716Lh(this.A0A);
                c1716Lh.A05(listA0f.get(i));
                arrayList.add(new GT(this.A0A, c1716Lh, (C2806lz) null, this.A04));
            }
            this.A05 = arrayList;
        }
        this.A06 = true;
        this.A07 = A07();
    }

    private void A06(Map<String, String> map, Map<String, String> map2) {
        try {
            new Handler().postDelayed(new C1718Lj(this, map2, A03(map)), this.A01.A09() * 1000);
        } catch (Exception unused) {
        }
    }

    private boolean A07() {
        if (((!this.A01.A0j() && !TextUtils.isEmpty(this.A01.A0Y())) || (!TextUtils.isEmpty(this.A01.A0V()) && this.A01.A0j())) && (this.A01.A0I() != null || this.A01.A0j())) {
            C2912ni c2912niA0H = this.A01.A0H();
            if (A0D[2].length() != 10) {
                throw new RuntimeException();
            }
            A0D[6] = "coz4LHwVNN2LSDndRSBnj9WvwXuRM5HO";
            if (c2912niA0H != null || A9N() == AdPlacementType.NATIVE_BANNER) {
                return true;
            }
        }
        return false;
    }

    public final int A08() {
        return this.A01.A02();
    }

    public final int A09() {
        return this.A01.A05();
    }

    public final int A0A() {
        int iA08 = this.A01.A08();
        if (iA08 < 0 || iA08 > 100) {
            return 0;
        }
        return iA08;
    }

    public final int A0B() {
        return this.A00;
    }

    public final int A0C() {
        return this.A01.A0B();
    }

    public final int A0D() {
        return this.A01.A0C();
    }

    public final LK A0E() {
        return this.A01;
    }

    public final InterfaceC2383f2 A0F() {
        return this.A02;
    }

    public final String A0G() {
        return this.A01.A0b();
    }

    public final List<GT> A0H() {
        if (A0R()) {
            return this.A05;
        }
        return null;
    }

    public final void A0I() {
        if (this.A09) {
            return;
        }
        String strA0c = A0E().A0c();
        if (A0D[2].length() != 10) {
            throw new RuntimeException();
        }
        A0D[5] = "8ArINtb0xmmgo9NmELWQk3NiIhKYvaDc";
        if (strA0c != null) {
            this.A0A.A0A().AIC(strA0c);
        }
        this.A09 = true;
    }

    public final void A0J() {
        Iterator<GT> it;
        if (this.A05 == null) {
            return;
        }
        boolean zIsEmpty = this.A05.isEmpty();
        if (A0D[6].charAt(13) != 'D') {
            throw new RuntimeException();
        }
        A0D[6] = "kj4WnsmCok25qDrlf1kxSYggARLvW33C";
        if (zIsEmpty) {
            return;
        }
        List<GT> list = this.A05;
        if (A0D[2].length() != 10) {
            it = list.iterator();
        } else {
            A0D[2] = "wGXHpE1nya";
            it = list.iterator();
        }
        while (true) {
            boolean zHasNext = it.hasNext();
            if (A0D[2].length() != 10) {
                A0D[6] = "0lb5BUzW8n1EJDWyWAqaA7d0lZJNpkzV";
                if (!zHasNext) {
                    return;
                }
            } else {
                A0D[5] = "QJQdkpg5cmGOeaue26HVF3aLtsB2qwfM";
                if (!zHasNext) {
                    return;
                }
            }
            it.next().unregisterView();
        }
    }

    public final void A0K(InterfaceC2383f2 interfaceC2383f2) {
        this.A02 = interfaceC2383f2;
    }

    public final void A0L(C1618Hi c1618Hi, InterfaceC2383f2 interfaceC2383f2, InterfaceC2884nG interfaceC2884nG, C2442fz c2442fz, InterfaceC2911nh interfaceC2911nh) {
        this.A02 = interfaceC2383f2;
        this.A04 = interfaceC2911nh;
        JSONObject jSONObjectA03 = c2442fz.A03();
        C2806lz c2806lzA01 = c2442fz.A01();
        this.A00 = c2806lzA01 != null ? c2806lzA01.A06() : 200;
        A05(AbstractC2385f4.A00(c1618Hi, jSONObjectA03, AbstractC3052q4.A02(jSONObjectA03, A02(114, 2, 94))));
        if (AbstractC2365ej.A06(c1618Hi, this, interfaceC2884nG)) {
            c1618Hi.A0F().A5b();
            interfaceC2383f2.AG3(this, C2922nt.A00(AdErrorType.NO_FILL));
        } else {
            if (interfaceC2383f2 != null) {
                interfaceC2383f2.AG0(this);
            }
            this.A03 = new C2384f3(c1618Hi, this.A0B, this, interfaceC2383f2);
            this.A03.A02();
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00dd  */
    public final void A0M(Map<String, String> map) {
        if (A0R()) {
            if (C2863mv.A26(this.A0A) && C3087qd.A03(map)) {
                String str = A0E;
                if (A0D[4].charAt(15) == 'f') {
                    A0D[6] = "D3JUlaax70Z19DqZX7Vx94n8SobUQcIP";
                    Log.e(str, A02(27, 31, 116));
                    return;
                }
            } else {
                HashMap map2 = new HashMap();
                if (map != null) {
                    map2.putAll(map);
                }
                if (this.A01.A0j()) {
                    map2.put(A02(99, 7, 85), String.valueOf(A0E().A04()));
                    map2.put(A02(92, 7, 63), String.valueOf(A0E().A03()));
                }
                map2.put(A02(82, 10, 73), AdPlacementType.NATIVE.name());
                map2.put(A02(130, 8, 66), this.A0B);
                String strA1V = this.A01.A0F() != null ? this.A01.A0F().A1V() : null;
                if (strA1V != null) {
                    map2.put(A02(70, 12, 2), strA1V);
                }
                String strA1W = this.A01.A0F() != null ? this.A01.A0F().A1W() : null;
                String[] strArr = A0D;
                if (strArr[0].length() == strArr[7].length()) {
                    A0D[2] = "05GUJTBpuf";
                    if (strA1W != null) {
                        map2.put(A02(kotlin.fh.g1, 8, 41), strA1W);
                    }
                } else if (strA1W != null) {
                    map2.put(A02(kotlin.fh.g1, 8, 41), strA1W);
                }
                AbstractC2361ef abstractC2361efA00 = C2362eg.A00(this.A0A, this.A0A.A0A(), this.A01.A7z(), this.A01.A0E(), map2, this.A01.A0F() != null ? this.A01.A0F().A33() : null);
                EnumC2358ec enumC2358ecA0G = EnumC2358ec.A08;
                if (abstractC2361efA00 != null) {
                    enumC2358ecA0G = abstractC2361efA00.A0G(null);
                }
                if (enumC2358ecA0G == EnumC2358ec.A05) {
                    return;
                }
                AbstractC3018pW.A04(this.A0A, A02(58, 12, 65));
                if (this.A02 == null) {
                    return;
                }
                InterfaceC2383f2 interfaceC2383f2 = this.A02;
                if (A0D[2].length() == 10) {
                    A0D[5] = "IfczvUCKZEGqvj8t95lX03j8qUuki18q";
                    interfaceC2383f2.AFz(this);
                    return;
                }
            }
            throw new RuntimeException();
        }
    }

    public final void A0N(Map<String, String> map) {
        this.A0A.A0A().ABr(this.A01.A7z(), map);
    }

    public final void A0O(Map<String, String> map) {
        if (A0R() && !this.A08) {
            if (this.A02 != null) {
                this.A02.AG1(this);
            }
            HashMap map2 = new HashMap();
            if (map != null) {
                map2.putAll(map);
            }
            if (this.A01.A0j()) {
                map2.put(A02(99, 7, 85), String.valueOf(A0E().A04()));
                map2.put(A02(92, 7, 63), String.valueOf(A0E().A03()));
            }
            if (!TextUtils.isEmpty(A7z())) {
                if (!this.A01.A0j()) {
                    this.A0A.A0F().A3h();
                    AbstractC2473gU.A02(this.A01.A0a(), AbstractC3061qD.A00(A02(116, 6, 86)));
                }
                this.A0A.A0A().AC7(A7z(), map2);
                C2988oz.A00(this.A0A).A0E(AdPlacementType.NATIVE.toString(), A7z());
            }
            if (A0T() || A0U()) {
                A06(map, map2);
            }
            this.A08 = true;
        }
    }

    public final boolean A0P() {
        return true;
    }

    public final boolean A0Q() {
        return A0R() && this.A01.A0E() != null;
    }

    public final boolean A0R() {
        return this.A06 && this.A07;
    }

    public final boolean A0S() {
        return this.A01.A0i();
    }

    public final boolean A0T() {
        if (C2863mv.A1b(this.A0A) && A0R()) {
            boolean zA0k = this.A01.A0k();
            if (A0D[4].charAt(15) != 'f') {
                throw new RuntimeException();
            }
            A0D[6] = "hsrOxssvGH6abDOIeI9T6FJFSNjQSl4a";
            if (zA0k) {
                return true;
            }
        }
        return false;
    }

    public final boolean A0U() {
        if (C2863mv.A1b(this.A0A) && A0R()) {
            boolean zA0l = this.A01.A0l();
            String[] strArr = A0D;
            if (strArr[0].length() != strArr[7].length()) {
                throw new RuntimeException();
            }
            A0D[2] = "qputmJyOXU";
            if (zA0l) {
                return true;
            }
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2364ei
    public final String A7z() {
        return this.A01.A7z();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2364ei
    public final Collection<String> A8Q() {
        return A0E().A8Q();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2364ei
    public final EnumC2363eh A8w() {
        return A0E().A8w();
    }

    public AdPlacementType A9N() {
        return AdPlacementType.NATIVE;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2368en
    public final boolean ALe() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2368en
    public final void onDestroy() {
        if (this.A03 != null) {
            this.A03.A03();
        }
    }
}

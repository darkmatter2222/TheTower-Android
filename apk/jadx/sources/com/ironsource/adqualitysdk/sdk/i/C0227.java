package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ˈ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0227 {

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public volatile C0693 f1150;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public C0723 f1151;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public Context f1152;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final C0680 f1153;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final C1091 f1154;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final C0929 f1155;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C1016 f1156;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0774 f1157;

    public C0227(C0774 c0774) {
        C1016 c1016 = new C1016();
        this.f1150 = new C0693(new C0714());
        this.f1157 = c0774;
        this.f1156 = c1016;
        C0929 c0929 = new C0929();
        this.f1155 = c0929;
        this.f1154 = new C1091(c1016, c0929, c0774);
        this.f1153 = new C0680();
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0693 m1976() {
        C1033 c1033;
        C0762 c0762;
        C0723 c0723 = this.f1151;
        if (c0723 == null) {
            throw new IllegalStateException(StringFog.decrypt("+7CkHk7r2AWOn487Le3ECdqYgSNk/s8EgNGjLmHoignAmJQmbOjDGsvZgyBj8M8Y2tjAKWT22RSA\n", "rvHgTw2EqmA=\n"));
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int i = 1;
        try {
            C1000 c1000 = c0723.f2692;
            Context context = c0723.f2693;
            c1000.getClass();
            c1033 = C1000.m2392(context);
        } catch (Exception e) {
            arrayList.add(StringFog.decrypt("+SUdxG0TQjXCOQbZRgUNZw==\n", "q0pysCV2N0c=\n") + e.getMessage());
            ArrayList arrayList3 = new ArrayList();
            arrayList3.add(7);
            c1033 = new C1033(true, true, arrayList3);
        }
        arrayList2.addAll(c1033.f3648);
        try {
            C0752 c0752 = c0723.f2691;
            Context context2 = c0723.f2693;
            c0752.getClass();
            c0762 = C0752.m2262(context2);
        } catch (Exception e2) {
            arrayList.add(StringFog.decrypt("iefi558AH8iu/fDnhBoc5aX84/qeARvOs7Ox\n", "wImRk+11cq0=\n") + e2.getMessage());
            ArrayList arrayList4 = new ArrayList();
            arrayList4.add(21);
            c0762 = new C0762(true, true, true, true, arrayList4);
        }
        arrayList2.addAll(c0762.f2821);
        HashMap map = new HashMap();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        ArrayList<C0732> arrayList7 = new ArrayList();
        for (InterfaceC0719 interfaceC0719 : c0723.f2690) {
            try {
                C0941 c0941Mo2093 = interfaceC0719.mo2093();
                arrayList7.add(new C0732(interfaceC0719.getName(), c0941Mo2093));
                arrayList2.addAll(c0941Mo2093.f3353);
                if (!c0941Mo2093.f3354 && c0941Mo2093.f3351 != null) {
                    arrayList.add(interfaceC0719.getName() + StringFog.decrypt("NWg=\n", "D0itlQVVmlE=\n") + c0941Mo2093.f3351);
                }
                if (c0941Mo2093.f3352 != null) {
                    map.put(interfaceC0719.getName(), c0941Mo2093.f3352);
                }
                interfaceC0719.getName();
                for (Integer num : c0941Mo2093.f3353) {
                    int iIntValue = num.intValue();
                    if (iIntValue != 30 && iIntValue != 31 && iIntValue != 33 && iIntValue != 32 && iIntValue != 40 && iIntValue != 42 && iIntValue != 44 && iIntValue != 41) {
                        if (iIntValue == 63 || iIntValue == 64 || iIntValue == 61 || iIntValue == 62 || iIntValue == 60) {
                            arrayList5.add(num);
                        } else if (iIntValue >= 50 && iIntValue <= 56) {
                            arrayList6.add(num);
                        }
                    }
                }
            } catch (Exception e3) {
                arrayList.add(interfaceC0719.getName() + StringFog.decrypt("WXY=\n", "Y1bvY782RPs=\n") + e3.getMessage());
                arrayList7.add(new C0732(interfaceC0719.getName(), new C0941(false, Collections.emptyList(), null, null)));
                i = i;
            }
        }
        int i2 = i;
        boolean z = c1033.f3650;
        boolean z2 = c1033.f3649;
        boolean z3 = c0762.f2825;
        boolean z4 = c0762.f2824;
        boolean z5 = c0762.f2823;
        boolean z6 = c0762.f2822;
        int iIntValue2 = !z ? 1 : 0;
        if (!z2) {
            iIntValue2++;
        }
        if (!z3 && !z4 && !z5 && !z6) {
            iIntValue2 += 2;
        }
        for (C0732 c0732 : arrayList7) {
            if (c0732.f2712.f3354) {
                Integer num2 = (Integer) C0723.f2688.get(c0732.f2713);
                iIntValue2 += num2 != null ? num2.intValue() : i2;
            }
        }
        C0714 c0714 = new C0714();
        c0714.f2674 = iIntValue2;
        c0714.f2673 = arrayList5;
        c0714.f2672 = arrayList6;
        c0714.f2671 = map;
        c0714.f2670 = arrayList2;
        c0714.f2669 = arrayList;
        C0693 c0693 = new C0693(c0714);
        this.f1150 = c0693;
        return c0693;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1977(Context context) {
        this.f1152 = context.getApplicationContext();
        Context context2 = this.f1152;
        C0956 c0956 = new C0956(this.f1152);
        C0684 c0684 = new C0684(this.f1152);
        Context context3 = this.f1152;
        this.f1151 = new C0723(context2, Arrays.asList(c0956, c0684, new C1087(context3), new C0417(context3)));
        m1976();
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final byte[] m1978(byte[] bArr, String str) {
        C0680 c0680 = this.f1153;
        C0308 c0308 = (C0308) c0680.f2592.remove(str);
        if (c0308 == null || System.currentTimeMillis() - c0308.f1548 > c0680.f2593) {
            c0308 = null;
        }
        if (c0308 != null) {
            return AbstractC0283.m2031(bArr, c0308, this.f1156);
        }
        throw new IllegalStateException(AbstractC0270.m2002("vlqJy/8OEC6fW4ne9QgNI9BTxsq6DwY2hVDazNMZWWc=\n", "8DWpuJp9Y0c=\n", new StringBuilder(), str));
    }
}

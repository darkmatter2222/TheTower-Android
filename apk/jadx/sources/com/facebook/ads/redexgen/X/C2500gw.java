package com.facebook.ads.redexgen.X;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import com.google.common.base.Ascii;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Set;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.gw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2500gw {
    public static C2500gw A05;
    public static byte[] A06;
    public static final Object A07;
    public final Context A00;
    public final Handler A01;
    public final HashMap<BroadcastReceiver, ArrayList<C2499gv>> A04 = new HashMap<>();
    public final HashMap<String, ArrayList<C2499gv>> A03 = new HashMap<>();
    public final ArrayList<C2498gu> A02 = new ArrayList<>();

    static {
        A03();
        A07 = new Object();
    }

    public C2500gw(Context context) {
        this.A00 = context;
        this.A01 = new HandlerC2497gt(this, context.getMainLooper());
    }

    public static C2500gw A00(Context context) {
        C2500gw c2500gw;
        synchronized (A07) {
            if (A05 == null) {
                A05 = new C2500gw(context.getApplicationContext());
            }
            c2500gw = A05;
        }
        return c2500gw;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 80);
        }
        return new String(bArrCopyOfRange);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A02() {
        C2498gu[] c2498guArr;
        while (true) {
            synchronized (this.A04) {
                int size = this.A02.size();
                if (size <= 0) {
                    return;
                }
                c2498guArr = new C2498gu[size];
                this.A02.toArray(c2498guArr);
                this.A02.clear();
            }
            for (C2498gu c2498gu : c2498guArr) {
                int size2 = c2498gu.A01.size();
                for (int i = 0; i < size2; i++) {
                    C2499gv c2499gv = c2498gu.A01.get(i);
                    if (!c2499gv.A01) {
                        c2499gv.A02.onReceive(this.A00, c2498gu.A00);
                    }
                }
            }
        }
    }

    public static void A03() {
        A06 = new byte[]{-116, -116, -78, -43, -40, -32, -47, -34, -116, -48, -43, -48, -116, -38, -37, -32, -116, -39, -51, -32, -49, -44, -90, -116, -111, -111, -73, -38, -35, -27, -42, -29, -111, -34, -46, -27, -44, -39, -42, -43, -110, -111, -111, -34, -46, -27, -44, -39, -82, -95, -23, -102, -23, -32, -102, -29, -24, -18, -33, -24, -18, -102, 126, -47, -63, -58, -61, -53, -61, 126, -88, -54, -37, -48, -42, -43, -121, -45, -48, -38, -37, -95, -121, Ascii.ESC, 62, 50, 48, 59, 17, 65, 62, 48, 51, 50, 48, 66, 67, Ascii.FS, 48, Base64.padSymbol, 48, 54, 52, 65, -51, -31, -12, -29, -24, -23, -18, -25, -96, -31, -25, -31, -23, -18, -13, -12, -96, -26, -23, -20, -12, -27, -14, -96, -80, -61, -47, -51, -54, -44, -57, -52, -59, 126, -46, -41, -50, -61, 126, -19, -17, 0, -11, -5, -6, -3, -5, Ascii.SO, -1, 1, 9, Ascii.FF, 19, 9, 6, Ascii.EM, 6, Ascii.GS, 34, Ascii.EM, Ascii.SO, -53, -60, -63, -60, -59, -51, -60, 118, -56, -69, -73, -55, -59, -60};
    }

    public final void A05(BroadcastReceiver broadcastReceiver) {
        synchronized (this.A04) {
            ArrayList<C2499gv> arrayListRemove = this.A04.remove(broadcastReceiver);
            if (arrayListRemove == null) {
                return;
            }
            for (int size = arrayListRemove.size() - 1; size >= 0; size--) {
                C2499gv c2499gv = arrayListRemove.get(size);
                c2499gv.A01 = true;
                for (int i = 0; i < c2499gv.A03.countActions(); i++) {
                    String action = c2499gv.A03.getAction(i);
                    ArrayList<C2499gv> arrayList = this.A03.get(action);
                    if (arrayList != null) {
                        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                            C2499gv c2499gv2 = arrayList.get(size2);
                            if (c2499gv2.A02 == broadcastReceiver) {
                                c2499gv2.A01 = true;
                                arrayList.remove(size2);
                            }
                        }
                        if (arrayList.size() <= 0) {
                            this.A03.remove(action);
                        }
                    }
                }
            }
        }
    }

    public final void A06(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this.A04) {
            C2499gv c2499gv = new C2499gv(intentFilter, broadcastReceiver);
            ArrayList<C2499gv> arrayList = this.A04.get(broadcastReceiver);
            if (arrayList == null) {
                arrayList = new ArrayList<>(1);
                this.A04.put(broadcastReceiver, arrayList);
            }
            arrayList.add(c2499gv);
            for (int i = 0; i < intentFilter.countActions(); i++) {
                String action = intentFilter.getAction(i);
                ArrayList<C2499gv> arrayList2 = this.A03.get(action);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList<>(1);
                    this.A03.put(action, arrayList2);
                }
                arrayList2.add(c2499gv);
            }
        }
    }

    public final boolean A07(Intent intent) {
        String strA01;
        synchronized (this.A04) {
            String action = intent.getAction();
            String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.A00.getContentResolver());
            Uri data = intent.getData();
            String scheme = intent.getScheme();
            Set<String> categories = intent.getCategories();
            boolean z = (intent.getFlags() & 8) != 0;
            if (z) {
                String str = A01(128, 15, 14) + strResolveTypeIfNeeded + A01(62, 8, 14) + scheme + A01(51, 11, 42) + intent;
            }
            ArrayList<C2499gv> arrayList = this.A03.get(intent.getAction());
            if (arrayList != null) {
                if (z) {
                    String str2 = A01(70, 13, 23) + arrayList;
                }
                ArrayList arrayList2 = null;
                for (int i = 0; i < arrayList.size(); i++) {
                    C2499gv c2499gv = arrayList.get(i);
                    if (z) {
                        String str3 = A01(104, 24, 48) + c2499gv.A03;
                    }
                    if (!c2499gv.A00) {
                        int iMatch = c2499gv.A03.match(action, strResolveTypeIfNeeded, scheme, data, categories, A01(83, 21, 127));
                        if (iMatch >= 0) {
                            if (z) {
                                String str4 = A01(24, 27, 33) + Integer.toHexString(iMatch);
                            }
                            if (arrayList2 == null) {
                                arrayList2 = new ArrayList();
                            }
                            arrayList2.add(c2499gv);
                            c2499gv.A00 = true;
                        } else if (z) {
                            switch (iMatch) {
                                case -4:
                                    strA01 = A01(149, 8, 74);
                                    break;
                                case -3:
                                    strA01 = A01(143, 6, 60);
                                    break;
                                case -2:
                                    strA01 = A01(157, 4, 85);
                                    break;
                                case -1:
                                    strA01 = A01(161, 4, 89);
                                    break;
                                default:
                                    strA01 = A01(165, 14, 6);
                                    break;
                            }
                            String str5 = A01(0, 24, 28) + strA01;
                        }
                    }
                }
                if (arrayList2 != null) {
                    for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                        ((C2499gv) arrayList2.get(i2)).A00 = false;
                    }
                    this.A02.add(new C2498gu(intent, arrayList2));
                    if (!this.A01.hasMessages(1)) {
                        this.A01.sendEmptyMessage(1);
                    }
                    return true;
                }
            }
            return false;
        }
    }
}

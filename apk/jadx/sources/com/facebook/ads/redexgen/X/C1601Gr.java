package com.facebook.ads.redexgen.X;

import android.content.SharedPreferences;
import com.facebook.ads.internal.util.process.ProcessUtils;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import java.util.Map;
import org.json.JSONException;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Gr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1601Gr extends AbstractRunnableC2979oq {
    public static byte[] A01;
    public final /* synthetic */ C2755lA A00;

    static {
        A01();
    }

    public C1601Gr(C2755lA c2755lA) {
        this.A00 = c2755lA;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 51);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{111, 99, 97, 34, 106, 109, 111, 105, 110, 99, 99, 103, 34, 109, 104, 127, 34, SignedBytes.MAX_POWER_OF_TWO, 67, 79, 77, SignedBytes.MAX_POWER_OF_TWO, 83, 79, 67, 89, 66, 88, 73, 94, 95, 88, 91, 87, 85, 88, 107, 87, 91, 65, 90, SignedBytes.MAX_POWER_OF_TWO, 81, 70, 71, 84, 92, 88, 74, 76, 75, 92, 93, 102, 74, 92, 74, 74, 80, 86, 87, 102, 80, 93, 108, 100, 96, 114, 116, 115, 100, 101, 94, 114, 100, 114, 114, 104, 110, 111, 94, 117, 104, 108, 100};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC2979oq
    public final void A07() {
        SharedPreferences sharedPreferences = null;
        try {
            sharedPreferences = this.A00.getApplicationContext().getSharedPreferences(ProcessUtils.getProcessSpecificName(A00(0, 31, 63), this.A00), 0);
            Map<String, ?> all = sharedPreferences.getAll();
            if (all.size() > 1) {
                C2895nR.A06(this.A00, C2114af.A00(this.A00), all);
            }
            sharedPreferences.edit().clear().apply();
            sharedPreferences.edit().putString(A00(45, 19, 10), this.A00.A09().A02()).putString(A00(64, 21, 50), C3076qS.A03(this.A00.A09().A01())).apply();
        } catch (JSONException e) {
            this.A00.A08().ABz(A00(31, 14, 7), 3502, new C2787lg(e));
            sharedPreferences.edit().clear().apply();
        }
        synchronized (C2895nR.class) {
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            for (Map.Entry entry : C2895nR.A02().entrySet()) {
                editorEdit.putInt((String) entry.getKey(), ((Integer) entry.getValue()).intValue());
            }
            editorEdit.apply();
            C2895nR.A04.set(2);
        }
    }
}

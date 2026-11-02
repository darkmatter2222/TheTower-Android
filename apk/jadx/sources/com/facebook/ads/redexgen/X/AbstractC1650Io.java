package com.facebook.ads.redexgen.X;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.customtabs.ICustomTabsService;
import android.util.Log;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Io, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC1650Io {
    public static byte[] A03;
    public final ComponentName A00;
    public final Context A01;
    public final ICustomTabsService A02;

    static {
        A05();
    }

    public AbstractC1650Io(ICustomTabsService iCustomTabsService, ComponentName componentName, Context context) {
        this.A02 = iCustomTabsService;
        this.A00 = componentName;
        this.A01 = context;
    }

    private BinderC1649In A00(IX ix) {
        return new BinderC1649In(this, ix);
    }

    private JQ A01(IX ix, PendingIntent pendingIntent) {
        boolean zNewSession;
        BinderC1649In binderC1649InA00 = A00(ix);
        try {
            if (pendingIntent != null) {
                Bundle bundle = new Bundle();
                bundle.putParcelable(A02(273, 43, 46), pendingIntent);
                zNewSession = this.A02.newSessionWithExtras(binderC1649InA00, bundle);
            } else {
                zNewSession = this.A02.newSession(binderC1649InA00);
            }
            if (zNewSession) {
                return new JQ(this.A02, binderC1649InA00, this.A00, pendingIntent);
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 56);
        }
        return new String(bArrCopyOfRange);
    }

    public static String A03(Context context, List<String> list) {
        return A04(context, list, false);
    }

    public static String A04(Context context, List<String> list, boolean z) {
        ResolveInfo resolveInfoResolveActivity;
        PackageManager packageManager = context.getPackageManager();
        List<String> arrayList = list == null ? new ArrayList<>() : list;
        Intent intent = new Intent(A02(196, 26, 121), Uri.parse(A02(TypedValues.AttributesType.TYPE_PATH_ROTATE, 7, 1)));
        if (!z && (resolveInfoResolveActivity = packageManager.resolveActivity(intent, 0)) != null) {
            String str = resolveInfoResolveActivity.activityInfo.packageName;
            arrayList = new ArrayList<>(arrayList.size() + 1);
            arrayList.add(str);
            if (list != null) {
                arrayList.addAll(list);
            }
        }
        Intent intent2 = new Intent(A02(222, 51, 98));
        for (String str2 : arrayList) {
            intent2.setPackage(str2);
            if (packageManager.resolveService(intent2, 0) != null) {
                return str2;
            }
        }
        if (Build.VERSION.SDK_INT < 30) {
            return null;
        }
        Log.w(A02(0, 16, 119), A02(48, 148, 25));
        return null;
    }

    public static void A05() {
        A03 = new byte[]{Ascii.FF, 58, 60, 59, 32, 34, Ascii.ESC, 46, 45, 60, Ascii.FF, 35, 38, 42, 33, 59, 77, 123, 108, 104, 119, 125, 123, 62, 87, 112, 106, 123, 112, 106, 109, 62, 115, 107, 109, 106, 62, 124, 123, 62, 123, 102, 110, 114, 119, 125, 119, 106, 116, 79, SignedBytes.MAX_POWER_OF_TWO, 67, 77, 68, 1, 85, 78, 1, 71, 72, 79, 69, 1, SignedBytes.MAX_POWER_OF_TWO, 79, 88, 1, 98, 84, 82, 85, 78, 76, 1, 117, SignedBytes.MAX_POWER_OF_TWO, 67, 82, 1, 81, SignedBytes.MAX_POWER_OF_TWO, 66, 74, SignedBytes.MAX_POWER_OF_TWO, 70, 68, 82, Ascii.CR, 1, 88, 78, 84, 1, 76, SignedBytes.MAX_POWER_OF_TWO, 88, 1, 79, 68, 68, 69, 1, 85, 78, 1, SignedBytes.MAX_POWER_OF_TWO, 69, 69, 1, SignedBytes.MAX_POWER_OF_TWO, 1, Ascii.GS, 80, 84, 68, 83, 72, 68, 82, Ascii.US, 1, 68, 77, 68, 76, 68, 79, 85, 1, 85, 78, 1, 88, 78, 84, 83, 1, 76, SignedBytes.MAX_POWER_OF_TWO, 79, 72, 71, 68, 82, 85, Ascii.SI, 1, 114, 68, 68, 1, 85, 73, 68, 1, 69, 78, 66, 82, 1, 71, 78, 83, 1, 98, 84, 82, 85, 78, 76, 117, SignedBytes.MAX_POWER_OF_TWO, 67, 82, 98, 77, 72, 68, 79, 85, 2, 70, 68, 85, 113, SignedBytes.MAX_POWER_OF_TWO, 66, 74, SignedBytes.MAX_POWER_OF_TWO, 70, 68, 111, SignedBytes.MAX_POWER_OF_TWO, 76, 68, Ascii.SI, 32, 47, 37, 51, 46, 40, 37, 111, 40, 47, 53, 36, 47, 53, 111, 32, 34, 53, 40, 46, 47, 111, Ascii.ETB, 8, 4, Ascii.SYN, 59, 52, 62, 40, 53, 51, 62, 116, 41, 47, 42, 42, 53, 40, 46, 116, 57, 47, 41, 46, 53, 55, 46, 59, 56, 41, 116, 59, 57, 46, 51, 53, 52, 116, Ascii.EM, 47, 41, 46, 53, 55, Ascii.SO, 59, 56, 41, 9, 63, 40, 44, 51, 57, 63, 119, 120, 114, 100, 121, 127, 114, 56, 101, 99, 102, 102, 121, 100, 98, 56, 117, 99, 101, 98, 121, 123, 98, 119, 116, 101, 56, 115, 110, 98, 100, 119, 56, 69, 83, 69, 69, 95, 89, 88, 73, 95, 82, 81, 77, 77, 73, 3, Ascii.SYN, Ascii.SYN};
    }

    public static boolean A06(Context context, String str, JF jf) {
        jf.A05(context.getApplicationContext());
        Intent intent = new Intent(A02(222, 51, 98));
        if (str.isEmpty()) {
            throw new IllegalArgumentException(A02(16, 32, 38));
        }
        intent.setPackage(str);
        return context.bindService(intent, jf, 33);
    }

    public final JQ A07(IX ix) {
        return A01(ix, null);
    }

    public final boolean A08(long j) {
        try {
            return this.A02.warmup(j);
        } catch (RemoteException unused) {
            return false;
        }
    }
}

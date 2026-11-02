package com.appsflyer.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.appsflyer.AFLogger;
import com.appsflyer.internal.components.network.http.ResponseNetwork;

/* JADX INFO: loaded from: classes2.dex */
public final class AFf1pSDK extends AFf1uSDK {
    private static int $10 = 0;
    private static int $11 = 1;
    private static int AFInAppEventParameterName = 1760829264;
    private static int AFInAppEventType = 2059786070;
    private static byte[] AFKeystoreWrapper = {-102, 97, -125, 124, 108};
    private static short[] AFLogger = null;
    private static int d = 0;
    private static int registerClient = -1524191679;
    private static int unregisterClient = 1;
    private final AFc1pSDK copydefault;
    private final AFg1rSDK equals;
    private final String hashCode;
    private final AFc1gSDK toString;

    public AFf1pSDK(String str, AFc1bSDK aFc1bSDK) {
        super(new AFg1uSDK(), aFc1bSDK, str);
        this.copydefault = aFc1bSDK.getCurrencyIso4217Code();
        this.toString = aFc1bSDK.registerClient();
        this.hashCode = str;
        this.equals = aFc1bSDK.component4();
    }

    /* JADX WARN: Code duplicated, block: B:28:0x00c7  */
    private static void a(int i, byte b, short s, int i2, int i3, Object[] objArr) {
        boolean z;
        int i4 = 2 % 2;
        AFk1kSDK aFk1kSDK = new AFk1kSDK();
        StringBuilder sb = new StringBuilder();
        int i5 = i2 + ((int) (((long) AFInAppEventParameterName) ^ 6918351348135370604L));
        int i6 = i5 == -1 ? 1 : 0;
        if (i6 != 0) {
            int i7 = $10 + 45;
            $11 = i7 % 128;
            int i8 = i7 % 2;
            byte[] bArr = AFKeystoreWrapper;
            if (bArr != null) {
                int length = bArr.length;
                byte[] bArr2 = new byte[length];
                for (int i9 = 0; i9 < length; i9++) {
                    int i10 = $11 + 35;
                    $10 = i10 % 128;
                    int i11 = i10 % 2;
                    bArr2[i9] = (byte) (((long) bArr[i9]) ^ 6918351348135370604L);
                }
                bArr = bArr2;
            }
            i5 = bArr != null ? (byte) (((byte) (((long) AFKeystoreWrapper[((int) (((long) registerClient) ^ 6918351348135370604L)) + i]) ^ 6918351348135370604L)) + ((int) (((long) AFInAppEventParameterName) ^ 6918351348135370604L))) : (short) (((short) (((long) AFLogger[((int) (((long) registerClient) ^ 6918351348135370604L)) + i]) ^ 6918351348135370604L)) + ((int) (((long) AFInAppEventParameterName) ^ 6918351348135370604L)));
        }
        if (i5 > 0) {
            aFk1kSDK.getCurrencyIso4217Code = ((i + i5) - 2) + ((int) (((long) registerClient) ^ 6918351348135370604L)) + i6;
            aFk1kSDK.getRevenue = (char) (i3 + ((int) (((long) AFInAppEventType) ^ 6918351348135370604L)));
            sb.append(aFk1kSDK.getRevenue);
            aFk1kSDK.getMediationNetwork = aFk1kSDK.getRevenue;
            byte[] bArr3 = AFKeystoreWrapper;
            if (bArr3 != null) {
                int length2 = bArr3.length;
                byte[] bArr4 = new byte[length2];
                int i12 = $10 + 117;
                $11 = i12 % 128;
                int i13 = i12 % 2;
                for (int i14 = 0; i14 < length2; i14++) {
                    bArr4[i14] = (byte) (((long) bArr3[i14]) ^ 6918351348135370604L);
                }
                bArr3 = bArr4;
            }
            if (bArr3 != null) {
                int i15 = $10 + 25;
                $11 = i15 % 128;
                if (i15 % 2 == 0) {
                    z = false;
                } else {
                    z = true;
                }
            } else {
                z = false;
            }
            aFk1kSDK.AFAdRevenueData = 1;
            while (aFk1kSDK.AFAdRevenueData < i5) {
                if (z) {
                    byte[] bArr5 = AFKeystoreWrapper;
                    int i16 = aFk1kSDK.getCurrencyIso4217Code;
                    aFk1kSDK.getCurrencyIso4217Code = i16 - 1;
                    aFk1kSDK.getRevenue = (char) (aFk1kSDK.getMediationNetwork + (((byte) (((byte) (((long) bArr5[i16]) ^ 6918351348135370604L)) + s)) ^ b));
                } else {
                    short[] sArr = AFLogger;
                    int i17 = aFk1kSDK.getCurrencyIso4217Code;
                    aFk1kSDK.getCurrencyIso4217Code = i17 - 1;
                    aFk1kSDK.getRevenue = (char) (aFk1kSDK.getMediationNetwork + (((short) (((short) (((long) sArr[i17]) ^ 6918351348135370604L)) + s)) ^ b));
                }
                sb.append(aFk1kSDK.getRevenue);
                aFk1kSDK.getMediationNetwork = aFk1kSDK.getRevenue;
                aFk1kSDK.AFAdRevenueData++;
            }
        }
        objArr[0] = sb.toString();
    }

    private void equals() {
        int i = 2 % 2;
        int i2 = d + 41;
        unregisterClient = i2 % 128;
        int i3 = i2 % 2;
        ((AFf1uSDK) this).areAllFieldsValid.getCurrencyIso4217Code("sentRegisterRequestToAF", true);
        AFLogger.afDebugLog("[register] Successfully registered for Uninstall Tracking");
        int i4 = d + 9;
        unregisterClient = i4 % 128;
        int i5 = i4 % 2;
    }

    private static /* synthetic */ Object getMediationNetwork(Object[] objArr) {
        int i = 2 % 2;
        int i2 = d + 35;
        int i3 = i2 % 128;
        unregisterClient = i3;
        int i4 = i2 % 2;
        int i5 = i3 + 69;
        d = i5 % 128;
        if (i5 % 2 != 0) {
            int i6 = 75 / 0;
        }
        return false;
    }

    public static /* synthetic */ Object getMediationNetwork(Object[] objArr, int i, int i2, int i3) {
        int i4 = ~i2;
        int i5 = (i * 319) + (i2 * (-317)) + (((~((~i) | i3)) | i4) * (-318));
        int i6 = ~(i4 | i3);
        int i7 = ~i3;
        return (i5 + ((i6 | (~((i7 | i) | i2))) * TypedValues.AttributesType.TYPE_PIVOT_TARGET)) + (((~((i | i2) | i3)) | (~((i4 | i7) | i))) * TypedValues.AttributesType.TYPE_PIVOT_TARGET) != 1 ? getMonetizationNetwork(objArr) : getMediationNetwork(objArr);
    }

    private static /* synthetic */ Object getMonetizationNetwork(Object[] objArr) {
        AFf1pSDK aFf1pSDK = (AFf1pSDK) objArr[0];
        PackageManager packageManager = (PackageManager) objArr[1];
        int i = 2 % 2;
        ApplicationInfo applicationInfo = aFf1pSDK.copydefault.n_().applicationInfo;
        Object obj = null;
        if (applicationInfo == null) {
            int i2 = unregisterClient + 103;
            d = i2 % 128;
            if (i2 % 2 == 0) {
                return "";
            }
            throw null;
        }
        String string = packageManager.getApplicationLabel(applicationInfo).toString();
        int i3 = d + 73;
        unregisterClient = i3 % 128;
        if (i3 % 2 != 0) {
            return string;
        }
        obj.hashCode();
        throw null;
    }

    private String s_(PackageManager packageManager) {
        return (String) getMediationNetwork(new Object[]{this, packageManager}, -182789500, 182789500, System.identityHashCode(this));
    }

    @Override // com.appsflyer.internal.AFf1uSDK
    protected final void AFAdRevenueData(AFh1jSDK aFh1jSDK) {
        int i = 2 % 2;
        int i2 = unregisterClient + 29;
        d = i2 % 128;
        if (i2 % 2 == 0) {
            return;
        }
        Object obj = null;
        obj.hashCode();
        throw null;
    }

    @Override // com.appsflyer.internal.AFf1uSDK
    protected final void areAllFieldsValid(AFh1jSDK aFh1jSDK) {
        int i = 2 % 2;
        int i2 = unregisterClient + 23;
        d = i2 % 128;
        if (i2 % 2 != 0) {
            this.copydefault.component4();
            Object obj = null;
            obj.hashCode();
            throw null;
        }
        String strComponent4 = this.copydefault.component4();
        if (strComponent4 != null) {
            aFh1jSDK.getMonetizationNetwork("advertiserId", strComponent4);
            int i3 = d + 35;
            unregisterClient = i3 % 128;
            int i4 = i3 % 2;
        }
    }

    @Override // com.appsflyer.internal.AFf1uSDK, com.appsflyer.internal.AFe1eSDK
    protected final boolean copydefault() {
        return ((Boolean) getMediationNetwork(new Object[]{this}, 222839034, -222839033, System.identityHashCode(this))).booleanValue();
    }

    @Override // com.appsflyer.internal.AFf1uSDK
    protected final void getCurrencyIso4217Code(AFh1jSDK aFh1jSDK) {
        int i = 2 % 2;
        int i2 = unregisterClient + 53;
        d = i2 % 128;
        int i3 = i2 % 2;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0101  */
    /* JADX WARN: Code duplicated, block: B:27:0x0110  */
    /* JADX WARN: Code duplicated, block: B:30:0x016e  */
    /* JADX WARN: Code duplicated, block: B:32:0x017b  */
    /* JADX WARN: Code duplicated, block: B:33:0x0182  */
    /* JADX WARN: Code duplicated, block: B:43:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x0035, code lost:
    
        if (r12.getRevenue() != false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0037, code lost:
    
        r14.getMonetizationNetwork("app_version_code", java.lang.Integer.toString(r13.copydefault.n_().versionCode));
        r14.getMonetizationNetwork("app_version_name", r13.copydefault.n_().versionName);
        r14.getMonetizationNetwork("app_name", (java.lang.String) getMediationNetwork(new java.lang.Object[]{r13, r3.getPackageManager()}, -182789500, 182789500, java.lang.System.identityHashCode(r13)));
        r14.getMonetizationNetwork("installDate", com.appsflyer.internal.AFa1uSDK.getMediationNetwork(new java.text.SimpleDateFormat("yyyy-MM-dd_HHmmssZ", java.util.Locale.US), r13.copydefault.n_().firstInstallTime));
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x008d, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x008e, code lost:
    
        com.appsflyer.AFLogger.afErrorLog("Exception while collecting application version info.", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0186, code lost:
    
        com.appsflyer.AFLogger.afInfoLog("CustomerUserId not set, Tracking is disabled", true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0192, code lost:
    
        throw new java.lang.IllegalStateException("CustomerUserId not set, register is not sent");
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x019a, code lost:
    
        throw new java.lang.IllegalStateException("Context is not provided, can't send register request");
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x001d, code lost:
    
        if (r0 != null) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x002b, code lost:
    
        if (r0 != null) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x002d, code lost:
    
        r12 = r3;
        r3 = r0;
     */
    @Override // com.appsflyer.internal.AFf1uSDK
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void getMediationNetwork(com.appsflyer.internal.AFh1jSDK r14) {
        /*
            Method dump skipped, instruction units count: 411
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFf1pSDK.getMediationNetwork(com.appsflyer.internal.AFh1jSDK):void");
    }

    @Override // com.appsflyer.internal.AFf1uSDK
    protected final void getMonetizationNetwork(AFh1jSDK aFh1jSDK) {
        int i = 2 % 2;
        int i2 = d + 103;
        unregisterClient = i2 % 128;
        int i3 = i2 % 2;
    }

    @Override // com.appsflyer.internal.AFe1eSDK, com.appsflyer.internal.AFe1lSDK
    public final void getRevenue() {
        int i = 2 % 2;
        int i2 = unregisterClient + 55;
        d = i2 % 128;
        int i3 = i2 % 2;
        super.getRevenue();
        ResponseNetwork responseNetwork = ((AFe1eSDK) this).component3;
        if (responseNetwork != null && responseNetwork.isSuccessful()) {
            equals();
        }
        int i4 = d + 49;
        unregisterClient = i4 % 128;
        int i5 = i4 % 2;
    }

    @Override // com.appsflyer.internal.AFf1uSDK
    protected final void getRevenue(AFh1jSDK aFh1jSDK) {
        int i = 2 % 2;
        int i2 = unregisterClient + 7;
        d = i2 % 128;
        if (i2 % 2 != 0) {
            throw null;
        }
    }
}

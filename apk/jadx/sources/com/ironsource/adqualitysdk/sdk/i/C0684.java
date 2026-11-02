package com.ironsource.adqualitysdk.sdk.i;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.SensorManager;
import android.os.Build;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᘆ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0684 implements InterfaceC0719 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Context f2607;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static final String[] f2606 = {StringFog.decrypt("ZFqK\n", "Fz7hgf3BWJA=\n"), StringFog.decrypt("tJ5Pt5Fhfau3mg==\n", "0/Eg0P0EItg=\n"), StringFog.decrypt("KFUw7OkhMI81VA==\n", "WzFbs45RWOA=\n")};

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String[] f2605 = {StringFog.decrypt("vf7p8XG0V2o=\n", "+JOcnRDAOBg=\n"), StringFog.decrypt("o2u58kC1rPWxQZY=\n", "4gXdgC/cyNU=\n")};

    public C0684(Context context) {
        this.f2607 = context;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static boolean m2221() {
        String lowerCase = Build.PRODUCT.toLowerCase();
        String str = Build.MODEL;
        for (String str2 : f2606) {
            if (lowerCase.contains(str2.toLowerCase())) {
                return true;
            }
        }
        for (String str3 : f2605) {
            if (str.toLowerCase().contains(str3.toLowerCase())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0719
    public final String getName() {
        return StringFog.decrypt("8LAPcmg0/YXZpAl+ejv7ifu4CW8=\n", "mNF9Fh9Vj+A=\n");
    }

    /* JADX WARN: Code duplicated, block: B:48:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:56:0x0105  */
    /* JADX WARN: Code duplicated, block: B:59:0x0126  */
    /* JADX WARN: Code duplicated, block: B:61:0x0130  */
    /* JADX WARN: Code duplicated, block: B:65:0x014c  */
    /* JADX WARN: Code duplicated, block: B:66:0x014d A[Catch: Exception -> 0x0156, TRY_LEAVE, TryCatch #9 {Exception -> 0x0156, blocks: (B:63:0x013a, B:66:0x014d), top: B:125:0x013a }] */
    /* JADX WARN: Code duplicated, block: B:70:0x015a  */
    /* JADX WARN: Code duplicated, block: B:75:0x0179  */
    /* JADX WARN: Code duplicated, block: B:76:0x017b A[Catch: Exception -> 0x0179, TRY_LEAVE, TryCatch #4 {Exception -> 0x0179, blocks: (B:73:0x0168, B:76:0x017b), top: B:116:0x0168 }] */
    /* JADX WARN: Code duplicated, block: B:84:0x018f  */
    /* JADX WARN: Code duplicated, block: B:88:0x01ab A[Catch: Exception -> 0x01ce, TryCatch #0 {Exception -> 0x01ce, blocks: (B:86:0x019d, B:88:0x01ab, B:90:0x01bb, B:95:0x01cb), top: B:108:0x019d }] */
    /* JADX WARN: Code duplicated, block: B:90:0x01bb A[Catch: Exception -> 0x01ce, TryCatch #0 {Exception -> 0x01ce, blocks: (B:86:0x019d, B:88:0x01ab, B:90:0x01bb, B:95:0x01cb), top: B:108:0x019d }] */
    /* JADX WARN: Code duplicated, block: B:94:0x01c9  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0719
    /* JADX INFO: renamed from: ﾒ */
    public final C0941 mo2093() {
        long j;
        char c;
        long j2;
        int i;
        long[] jArr;
        long j3;
        String lowerCase;
        int size;
        int i2;
        int intExtra;
        String strDecrypt;
        boolean z;
        String lowerCase2;
        Intent intentRegisterReceiver;
        SensorManager sensorManager;
        ArrayList arrayList = new ArrayList();
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        if (iAvailableProcessors < 3) {
            arrayList.add(50);
        }
        try {
            ActivityManager activityManager = (ActivityManager) this.f2607.getSystemService(StringFog.decrypt("XSZj3qYEaQo=\n", "PEUXt9BtHXM=\n"));
            if (activityManager == null) {
                j = 0;
            } else {
                ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                activityManager.getMemoryInfo(memoryInfo);
                j = memoryInfo.totalMem / 1048576;
            }
        } catch (Exception unused) {
        }
        if (j < 1024) {
            arrayList.add(51);
        }
        try {
            long[] jArr2 = new long[5];
            for (int i3 = 0; i3 < 5; i3++) {
                try {
                    long jNanoTime = System.nanoTime();
                    long j4 = 0;
                    j2 = 0;
                    for (int i4 = 0; i4 < 10000; i4++) {
                        long j5 = i4;
                        j4 = (j5 * j5) + j4;
                    }
                    try {
                        jArr2[i3] = System.nanoTime() - jNanoTime;
                        if (j4 == Long.MIN_VALUE) {
                            throw new RuntimeException(StringFog.decrypt("qPUZlbEZele/9w4=\n", "3Ztr8NB6EjY=\n"));
                        }
                    } catch (Exception unused2) {
                        c = 1;
                        i = 0;
                        jArr = new long[2];
                        jArr[i] = j2;
                        jArr[c] = -1;
                        long j6 = jArr[i];
                        j3 = jArr[c];
                        if (j3 > j2) {
                            arrayList.add(52);
                        }
                        if (m2221()) {
                            arrayList.add(53);
                        }
                        lowerCase = Build.FINGERPRINT.toLowerCase();
                        if (lowerCase.contains(StringFog.decrypt("ofHhDSvOMQ==\n", "xpSPaFmnUkk=\n"))) {
                            arrayList.add(54);
                        } else {
                            arrayList.add(54);
                        }
                        sensorManager = (SensorManager) this.f2607.getSystemService(StringFog.decrypt("Im1ByqHG\n", "UQgvuc60PK0=\n"));
                        if (sensorManager == null) {
                            size = i;
                        } else {
                            size = sensorManager.getSensorList(-1).size();
                        }
                        if (size < 5) {
                            arrayList.add(55);
                        }
                        try {
                            intentRegisterReceiver = this.f2607.registerReceiver(null, new IntentFilter(StringFog.decrypt("EEXPXgUKWsMYRd9JBBcQjBJfwkMETXysJX/ufjM8faUwZexpLg==\n", "cSurLGpjPu0=\n")));
                            if (intentRegisterReceiver != null) {
                                i2 = -1;
                                try {
                                    intExtra = intentRegisterReceiver.getIntExtra(StringFog.decrypt("Kci5wUSHJcEo37E=\n", "Xa3UsSH1RLU=\n"), -1);
                                } catch (Exception unused3) {
                                    intExtra = i2;
                                }
                                if (intExtra == 250) {
                                    arrayList.add(56);
                                }
                                JSONObject jSONObject = new JSONObject();
                                String strDecrypt2 = StringFog.decrypt("GTTac35TzuwfNQ==\n", "cEefHgs/r5g=\n");
                                if (m2221()) {
                                    z = c;
                                } else {
                                    lowerCase2 = Build.FINGERPRINT.toLowerCase();
                                    if (lowerCase2.contains(StringFog.decrypt("ofHhDSvOMQ==\n", "xpSPaFmnUkk=\n"))) {
                                        z = c;
                                    } else {
                                        z = c;
                                    }
                                }
                                jSONObject.put(strDecrypt2, z);
                                JSONObject jSONObject2 = new JSONObject();
                                jSONObject2.put(StringFog.decrypt("x0Gvieh5wizFcK+f434=\n", "tzPA6o0KsUM=\n"), iAvailableProcessors);
                                jSONObject2.put(StringFog.decrypt("wKXH4+Qt/p7buMrPyg==\n", "tMqzgohgm/M=\n"), j);
                                jSONObject2.put(StringFog.decrypt("XzwRA8w6BzJZPB0EwTgfIA==\n", "K1V8aqJdUVM=\n"), j3);
                                jSONObject2.put(StringFog.decrypt("rbX5FZjF+HOrvuM=\n", "3tCXZve3uxw=\n"), size);
                                jSONObject2.put(StringFog.decrypt("22xpVASYNtzcYG0=\n", "uQ0dIGHqT4g=\n"), intExtra);
                                jSONObject2.put(StringFog.decrypt("f5fVIJBXDGZjmdQ1j00QdA==\n", "F/amZf0iYAc=\n"), jSONObject.optBoolean(StringFog.decrypt("xO030Wcag13C7A==\n", "rZ5yvBJ24ik=\n"), i));
                                strDecrypt = jSONObject2.toString();
                                return new C0941(arrayList.isEmpty(), arrayList, strDecrypt, null);
                            }
                            i2 = -1;
                        } catch (Exception unused4) {
                        }
                        intExtra = i2;
                        if (intExtra == 250) {
                            arrayList.add(56);
                        }
                        JSONObject jSONObject3 = new JSONObject();
                        String strDecrypt3 = StringFog.decrypt("GTTac35TzuwfNQ==\n", "cEefHgs/r5g=\n");
                        if (m2221()) {
                            lowerCase2 = Build.FINGERPRINT.toLowerCase();
                            if (lowerCase2.contains(StringFog.decrypt("ofHhDSvOMQ==\n", "xpSPaFmnUkk=\n"))) {
                                z = c;
                            } else {
                                z = c;
                            }
                        } else {
                            z = c;
                        }
                        jSONObject3.put(strDecrypt3, z);
                        JSONObject jSONObject4 = new JSONObject();
                        jSONObject4.put(StringFog.decrypt("x0Gvieh5wizFcK+f434=\n", "tzPA6o0KsUM=\n"), iAvailableProcessors);
                        jSONObject4.put(StringFog.decrypt("wKXH4+Qt/p7buMrPyg==\n", "tMqzgohgm/M=\n"), j);
                        jSONObject4.put(StringFog.decrypt("XzwRA8w6BzJZPB0EwTgfIA==\n", "K1V8aqJdUVM=\n"), j3);
                        jSONObject4.put(StringFog.decrypt("rbX5FZjF+HOrvuM=\n", "3tCXZve3uxw=\n"), size);
                        jSONObject4.put(StringFog.decrypt("22xpVASYNtzcYG0=\n", "uQ0dIGHqT4g=\n"), intExtra);
                        jSONObject4.put(StringFog.decrypt("f5fVIJBXDGZjmdQ1j00QdA==\n", "F/amZf0iYAc=\n"), jSONObject3.optBoolean(StringFog.decrypt("xO030Wcag13C7A==\n", "rZ5yvBJ24ik=\n"), i));
                        strDecrypt = jSONObject4.toString();
                        return new C0941(arrayList.isEmpty(), arrayList, strDecrypt, null);
                    }
                } catch (Exception unused5) {
                    j2 = 0;
                }
            }
            j2 = 0;
            double d = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
            for (int i5 = 0; i5 < 5; i5++) {
                d += jArr2[i5];
            }
            double d2 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
            double d3 = 5;
            double d4 = d / d3;
            if (d4 == FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
                jArr = new long[]{0, 0};
                c = 1;
                i = 0;
            } else {
                for (int i6 = 0; i6 < 5; i6++) {
                    c = 1;
                    i = 0;
                    try {
                        double d5 = jArr2[i6] - d4;
                        d2 += d5 * d5;
                    } catch (Exception unused6) {
                        jArr = new long[2];
                        jArr[i] = j2;
                        jArr[c] = -1;
                        long j7 = jArr[i];
                        j3 = jArr[c];
                        if (j3 > j2) {
                            arrayList.add(52);
                        }
                        if (m2221()) {
                            arrayList.add(53);
                        }
                        lowerCase = Build.FINGERPRINT.toLowerCase();
                        if (lowerCase.contains(StringFog.decrypt("ofHhDSvOMQ==\n", "xpSPaFmnUkk=\n"))) {
                            arrayList.add(54);
                        } else {
                            arrayList.add(54);
                        }
                        sensorManager = (SensorManager) this.f2607.getSystemService(StringFog.decrypt("Im1ByqHG\n", "UQgvuc60PK0=\n"));
                        if (sensorManager == null) {
                            size = i;
                        } else {
                            size = sensorManager.getSensorList(-1).size();
                        }
                        if (size < 5) {
                            arrayList.add(55);
                        }
                        intentRegisterReceiver = this.f2607.registerReceiver(null, new IntentFilter(StringFog.decrypt("EEXPXgUKWsMYRd9JBBcQjBJfwkMETXysJX/ufjM8faUwZexpLg==\n", "cSurLGpjPu0=\n")));
                        if (intentRegisterReceiver != null) {
                            i2 = -1;
                            intExtra = intentRegisterReceiver.getIntExtra(StringFog.decrypt("Kci5wUSHJcEo37E=\n", "Xa3UsSH1RLU=\n"), -1);
                            if (intExtra == 250) {
                                arrayList.add(56);
                            }
                            JSONObject jSONObject5 = new JSONObject();
                            String strDecrypt4 = StringFog.decrypt("GTTac35TzuwfNQ==\n", "cEefHgs/r5g=\n");
                            if (m2221()) {
                                lowerCase2 = Build.FINGERPRINT.toLowerCase();
                                if (lowerCase2.contains(StringFog.decrypt("ofHhDSvOMQ==\n", "xpSPaFmnUkk=\n"))) {
                                    z = c;
                                } else {
                                    z = c;
                                }
                            } else {
                                z = c;
                            }
                            jSONObject5.put(strDecrypt4, z);
                            JSONObject jSONObject6 = new JSONObject();
                            jSONObject6.put(StringFog.decrypt("x0Gvieh5wizFcK+f434=\n", "tzPA6o0KsUM=\n"), iAvailableProcessors);
                            jSONObject6.put(StringFog.decrypt("wKXH4+Qt/p7buMrPyg==\n", "tMqzgohgm/M=\n"), j);
                            jSONObject6.put(StringFog.decrypt("XzwRA8w6BzJZPB0EwTgfIA==\n", "K1V8aqJdUVM=\n"), j3);
                            jSONObject6.put(StringFog.decrypt("rbX5FZjF+HOrvuM=\n", "3tCXZve3uxw=\n"), size);
                            jSONObject6.put(StringFog.decrypt("22xpVASYNtzcYG0=\n", "uQ0dIGHqT4g=\n"), intExtra);
                            jSONObject6.put(StringFog.decrypt("f5fVIJBXDGZjmdQ1j00QdA==\n", "F/amZf0iYAc=\n"), jSONObject5.optBoolean(StringFog.decrypt("xO030Wcag13C7A==\n", "rZ5yvBJ24ik=\n"), i));
                            strDecrypt = jSONObject6.toString();
                            return new C0941(arrayList.isEmpty(), arrayList, strDecrypt, null);
                        }
                        i2 = -1;
                        intExtra = i2;
                        if (intExtra == 250) {
                            arrayList.add(56);
                        }
                        JSONObject jSONObject7 = new JSONObject();
                        String strDecrypt5 = StringFog.decrypt("GTTac35TzuwfNQ==\n", "cEefHgs/r5g=\n");
                        if (m2221()) {
                            lowerCase2 = Build.FINGERPRINT.toLowerCase();
                            if (lowerCase2.contains(StringFog.decrypt("ofHhDSvOMQ==\n", "xpSPaFmnUkk=\n"))) {
                                z = c;
                            } else {
                                z = c;
                            }
                        } else {
                            z = c;
                        }
                        jSONObject7.put(strDecrypt5, z);
                        JSONObject jSONObject8 = new JSONObject();
                        jSONObject8.put(StringFog.decrypt("x0Gvieh5wizFcK+f434=\n", "tzPA6o0KsUM=\n"), iAvailableProcessors);
                        jSONObject8.put(StringFog.decrypt("wKXH4+Qt/p7buMrPyg==\n", "tMqzgohgm/M=\n"), j);
                        jSONObject8.put(StringFog.decrypt("XzwRA8w6BzJZPB0EwTgfIA==\n", "K1V8aqJdUVM=\n"), j3);
                        jSONObject8.put(StringFog.decrypt("rbX5FZjF+HOrvuM=\n", "3tCXZve3uxw=\n"), size);
                        jSONObject8.put(StringFog.decrypt("22xpVASYNtzcYG0=\n", "uQ0dIGHqT4g=\n"), intExtra);
                        jSONObject8.put(StringFog.decrypt("f5fVIJBXDGZjmdQ1j00QdA==\n", "F/amZf0iYAc=\n"), jSONObject7.optBoolean(StringFog.decrypt("xO030Wcag13C7A==\n", "rZ5yvBJ24ik=\n"), i));
                        strDecrypt = jSONObject8.toString();
                        return new C0941(arrayList.isEmpty(), arrayList, strDecrypt, null);
                    }
                }
                c = 1;
                i = 0;
                jArr = new long[]{(long) d4, (long) (d2 / d3)};
            }
        } catch (Exception unused7) {
            c = 1;
            j2 = 0;
        }
        long j8 = jArr[i];
        j3 = jArr[c];
        if (j3 > j2 && j8 > j2 && Math.sqrt(j3) / j8 > 0.5d) {
            arrayList.add(52);
        }
        if (m2221()) {
            arrayList.add(53);
        }
        lowerCase = Build.FINGERPRINT.toLowerCase();
        if (lowerCase.contains(StringFog.decrypt("ofHhDSvOMQ==\n", "xpSPaFmnUkk=\n")) || lowerCase.contains(StringFog.decrypt("PO/NQV6fvKk7\n", "SIq+NXP02dA=\n"))) {
            arrayList.add(54);
        }
        try {
            sensorManager = (SensorManager) this.f2607.getSystemService(StringFog.decrypt("Im1ByqHG\n", "UQgvuc60PK0=\n"));
            if (sensorManager == null) {
                size = i;
            } else {
                size = sensorManager.getSensorList(-1).size();
            }
        } catch (Exception unused8) {
        }
        if (size < 5) {
            arrayList.add(55);
        }
        try {
            try {
                intentRegisterReceiver = this.f2607.registerReceiver(null, new IntentFilter(StringFog.decrypt("EEXPXgUKWsMYRd9JBBcQjBJfwkMETXysJX/ufjM8faUwZexpLg==\n", "cSurLGpjPu0=\n")));
                try {
                    if (intentRegisterReceiver != null) {
                        i2 = -1;
                        intExtra = intentRegisterReceiver.getIntExtra(StringFog.decrypt("Kci5wUSHJcEo37E=\n", "Xa3UsSH1RLU=\n"), -1);
                        if (intExtra == 250) {
                            arrayList.add(56);
                        }
                        JSONObject jSONObject9 = new JSONObject();
                        String strDecrypt6 = StringFog.decrypt("GTTac35TzuwfNQ==\n", "cEefHgs/r5g=\n");
                        if (m2221()) {
                            lowerCase2 = Build.FINGERPRINT.toLowerCase();
                            if (lowerCase2.contains(StringFog.decrypt("ofHhDSvOMQ==\n", "xpSPaFmnUkk=\n")) || lowerCase2.contains(StringFog.decrypt("PO/NQV6fvKk7\n", "SIq+NXP02dA=\n"))) {
                                z = c;
                            } else {
                                z = i;
                            }
                        } else {
                            z = c;
                        }
                        jSONObject9.put(strDecrypt6, z);
                        JSONObject jSONObject10 = new JSONObject();
                        jSONObject10.put(StringFog.decrypt("x0Gvieh5wizFcK+f434=\n", "tzPA6o0KsUM=\n"), iAvailableProcessors);
                        jSONObject10.put(StringFog.decrypt("wKXH4+Qt/p7buMrPyg==\n", "tMqzgohgm/M=\n"), j);
                        jSONObject10.put(StringFog.decrypt("XzwRA8w6BzJZPB0EwTgfIA==\n", "K1V8aqJdUVM=\n"), j3);
                        jSONObject10.put(StringFog.decrypt("rbX5FZjF+HOrvuM=\n", "3tCXZve3uxw=\n"), size);
                        jSONObject10.put(StringFog.decrypt("22xpVASYNtzcYG0=\n", "uQ0dIGHqT4g=\n"), intExtra);
                        jSONObject10.put(StringFog.decrypt("f5fVIJBXDGZjmdQ1j00QdA==\n", "F/amZf0iYAc=\n"), jSONObject9.optBoolean(StringFog.decrypt("xO030Wcag13C7A==\n", "rZ5yvBJ24ik=\n"), i));
                        strDecrypt = jSONObject10.toString();
                        return new C0941(arrayList.isEmpty(), arrayList, strDecrypt, null);
                    }
                    i2 = -1;
                    JSONObject jSONObject11 = new JSONObject();
                    jSONObject11.put(StringFog.decrypt("x0Gvieh5wizFcK+f434=\n", "tzPA6o0KsUM=\n"), iAvailableProcessors);
                    jSONObject11.put(StringFog.decrypt("wKXH4+Qt/p7buMrPyg==\n", "tMqzgohgm/M=\n"), j);
                    jSONObject11.put(StringFog.decrypt("XzwRA8w6BzJZPB0EwTgfIA==\n", "K1V8aqJdUVM=\n"), j3);
                    jSONObject11.put(StringFog.decrypt("rbX5FZjF+HOrvuM=\n", "3tCXZve3uxw=\n"), size);
                    jSONObject11.put(StringFog.decrypt("22xpVASYNtzcYG0=\n", "uQ0dIGHqT4g=\n"), intExtra);
                    jSONObject11.put(StringFog.decrypt("f5fVIJBXDGZjmdQ1j00QdA==\n", "F/amZf0iYAc=\n"), jSONObject9.optBoolean(StringFog.decrypt("xO030Wcag13C7A==\n", "rZ5yvBJ24ik=\n"), i));
                    strDecrypt = jSONObject11.toString();
                } catch (Exception unused9) {
                    strDecrypt = StringFog.decrypt("C20=\n", "cBAdHipgDIU=\n");
                }
            } catch (Exception unused10) {
                i2 = -1;
            }
            String strDecrypt7 = StringFog.decrypt("GTTac35TzuwfNQ==\n", "cEefHgs/r5g=\n");
            if (m2221()) {
                lowerCase2 = Build.FINGERPRINT.toLowerCase();
                if (lowerCase2.contains(StringFog.decrypt("ofHhDSvOMQ==\n", "xpSPaFmnUkk=\n"))) {
                    z = c;
                } else {
                    z = c;
                }
            } else {
                z = c;
            }
            jSONObject9.put(strDecrypt7, z);
        } catch (Exception unused11) {
        }
        intExtra = i2;
        if (intExtra == 250) {
            arrayList.add(56);
        }
        JSONObject jSONObject12 = new JSONObject();
        return new C0941(arrayList.isEmpty(), arrayList, strDecrypt, null);
    }
}

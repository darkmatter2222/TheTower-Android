package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Debug;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.InputStreamReader;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᵐ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0752 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static final String[] f2751 = {StringFog.decrypt("UG1LQWtq1jAcaEYafijKcBl7Q1FraMk6DX9PRw==\n", "fwkqNQpFul8=\n"), StringFog.decrypt("MGoDjxxa6RJ8bw7UCRj1Um1rTJ0PHOEcMX0HiQsQ9w==\n", "Hw5i+311hX0=\n"), StringFog.decrypt("IIidBEHu9mhpiZADQbHhIn2NnBU=\n", "D/v5ZyCckkc=\n"), StringFog.decrypt("bln04t7s/nkiXPm5y67iOSdP/PLe7vNxJFPhuMys\n", "QT2Vlr/DkhY=\n")};

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static final String[] f2750 = {StringFog.decrypt("bSxhM50usdZoJysznSWj1nE5IDKXKOmRZzo7IJ4gooo=\n", "CUlPQfJMx/g=\n"), StringFog.decrypt("I+03pahWuOwv/iSloFev6yPsNe/rXrb1Lfg1+Q==\n", "TJ9Qi8Uz15s=\n"), StringFog.decrypt("KSz2RGNvUYw1O/VEYn1PgiE74w==\n", "Rl6Rag8cIeM=\n")};

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String[] f2749 = {StringFog.decrypt("ttT3K5rzoN//1e81i+GigvKI1iiB5aiU29XnPInz45r41Q==\n", "maeOWO6WzfA=\n"), StringFog.decrypt("/UuQIEQ8njW+UYt8XDCRYqJXmjZUBpJophaaPA==\n", "0jjpUzBZ8xo=\n"), StringFog.decrypt("aCtp9pa28nMrMXKz1vzzNSUgYOqRtvsDJipkq5G8\n", "R1gQheLTn1w=\n")};

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static final String[] f2748 = {StringFog.decrypt("a380DraavIUlaz8Usw==\n", "RAxWZ9i1kug=\n"), StringFog.decrypt("1oi+c6+hLHOWibk=\n", "+fvcGsGOAhA=\n"), StringFog.decrypt("zkIqEiwm4oGDCSYHKmDwjg==\n", "4SZLZk0Jg+U=\n"), StringFog.decrypt("HgUrec1cWhFTTidiyAZXEEI=\n", "MWFKDaxzO3U=\n"), StringFog.decrypt("mNtGr7j/DxfPylay4/cDX97bVA==\n", "t6g/3MyaYjg=\n")};

    /* JADX WARN: Code duplicated, block: B:157:0x00c4 A[EXC_TOP_SPLITTER, PHI: r2
  0x00c4: PHI (r2v2 java.io.BufferedReader) = (r2v1 java.io.BufferedReader), (r2v10 java.io.BufferedReader) binds: [B:33:0x00c9, B:19:0x0079] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static C0762 m2262(Context context) {
        BufferedReader bufferedReader;
        boolean z;
        String[] strArr;
        int length;
        int i;
        boolean z2;
        ArrayList arrayList = new ArrayList();
        try {
            Process processExec = Runtime.getRuntime().exec(StringFog.decrypt("Joo=\n", "Vvk6wy9MhaQ=\n"));
            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(processExec.getInputStream()));
            while (true) {
                try {
                    String line = bufferedReader2.readLine();
                    if (line == null) {
                        bufferedReader2.close();
                        processExec.waitFor();
                        break;
                    }
                    String lowerCase = line.toLowerCase();
                    if (lowerCase.contains(StringFog.decrypt("rDuSVCtMdvK4P55C\n", "ykn7MEphBZc=\n")) || lowerCase.contains(StringFog.decrypt("bYVw/ts=\n", "C/cZmroBtiA=\n"))) {
                        bufferedReader2.close();
                        arrayList.add(10);
                        break;
                    }
                } catch (Throwable th) {
                    bufferedReader2.close();
                    throw th;
                }
            }
        } catch (Throwable unused) {
        }
        Socket socket = null;
        try {
            bufferedReader = new BufferedReader(new FileReader(StringFog.decrypt("e4ggk92qTdc4nn2R3/VN\n", "VPhS/L6FPrI=\n")));
            while (true) {
                try {
                    String line2 = bufferedReader.readLine();
                    if (line2 != null) {
                        String lowerCase2 = line2.toLowerCase();
                        if (lowerCase2.contains(StringFog.decrypt("2TTtez8=\n", "v0aEH16Gr48=\n")) || lowerCase2.contains(StringFog.decrypt("aGc6+KL77eZreyc=\n", "DhVTnMPWjIE=\n")) || lowerCase2.contains(StringFog.decrypt("RofUWKQS/Y1EkthI\n", "IPW9PMU/muw=\n")) || lowerCase2.contains(StringFog.decrypt("mF98BnxNhQw=\n", "9DYeYA4k4W0=\n"))) {
                            try {
                                bufferedReader.close();
                            } catch (Throwable unused2) {
                            }
                            arrayList.add(11);
                        }
                    } else {
                        try {
                            bufferedReader.close();
                        } catch (Throwable unused3) {
                        }
                    }
                } catch (Throwable unused4) {
                    if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                }
                try {
                    Socket socket2 = new Socket();
                    try {
                        socket2.connect(new InetSocketAddress(StringFog.decrypt("0f4zihRZF3XR\n", "4MwEpCR3J1s=\n"), 27042), 100);
                        try {
                            socket2.close();
                        } catch (Throwable unused5) {
                        }
                        arrayList.add(12);
                    } catch (Throwable unused6) {
                        socket = socket2;
                        if (socket != null) {
                            try {
                                socket.close();
                            } catch (Throwable unused7) {
                            }
                        }
                    }
                } catch (Throwable unused8) {
                }
                boolean z3 = false;
                for (String str : f2751) {
                    try {
                        if (new File(str).exists()) {
                            arrayList.add(13);
                            break;
                        }
                    } catch (SecurityException unused9) {
                    }
                }
                try {
                    try {
                        Class.forName(StringFog.decrypt("OmmkQJWnHu0/Yu5AlawM7SZ85UGfoUabLmP5V56HGqo6a+8=\n", "XgyKMvrFaMM=\n"));
                        arrayList.add(15);
                        while (true) {
                            if (i >= length) {
                                z2 = false;
                                break;
                            }
                            try {
                                if (new File(strArr[i]).exists()) {
                                    z2 = true;
                                    break;
                                }
                                i++;
                            } catch (SecurityException unused10) {
                            }
                        }
                    } catch (ClassNotFoundException unused11) {
                    }
                    if (Debug.isDebuggerConnected()) {
                        z = true;
                    } else {
                        Process processExec2 = Runtime.getRuntime().exec(StringFog.decrypt("6Kv1c2oG4Vb9oa9nfQvkEeiv4299\n", "j86BAxhpkXY=\n"));
                        BufferedReader bufferedReader3 = new BufferedReader(new InputStreamReader(processExec2.getInputStream()));
                        try {
                            String line3 = bufferedReader3.readLine();
                            processExec2.waitFor();
                            z = line3 != null && line3.trim().equals(StringFog.decrypt("aA==\n", "Wam5GRlohTY=\n"));
                            bufferedReader3.close();
                        } catch (Throwable th2) {
                            bufferedReader3.close();
                            throw th2;
                        }
                    }
                } catch (Throwable unused12) {
                    z = false;
                }
                PackageManager packageManager = context.getPackageManager();
                for (String str2 : f2750) {
                    try {
                        packageManager.getPackageInfo(str2, 0);
                        arrayList.add(16);
                        break;
                    } catch (Throwable unused13) {
                    }
                }
                for (String str3 : f2749) {
                    try {
                        if (new File(str3).exists()) {
                            arrayList.add(17);
                            break;
                        }
                    } catch (SecurityException unused14) {
                    }
                }
                if (Debug.isDebuggerConnected()) {
                    arrayList.add(18);
                }
                if (z) {
                    arrayList.add(19);
                }
                strArr = f2748;
                length = strArr.length;
                i = 0;
                if (z2) {
                    arrayList.add(20);
                }
                Iterator it = arrayList.iterator();
                boolean z4 = false;
                boolean z5 = false;
                boolean z6 = false;
                while (it.hasNext()) {
                    int iIntValue = ((Integer) it.next()).intValue();
                    if (iIntValue >= 10 && iIntValue <= 14) {
                        z4 = true;
                    } else if (iIntValue >= 15 && iIntValue <= 17) {
                        z5 = true;
                    } else if (iIntValue == 18 || iIntValue == 19) {
                        z3 = true;
                    } else if (iIntValue == 20) {
                        z6 = true;
                    }
                }
                return new C0762(z4, z5, z3, z6, arrayList);
            }
        } catch (Throwable unused15) {
            bufferedReader = null;
        }
    }
}

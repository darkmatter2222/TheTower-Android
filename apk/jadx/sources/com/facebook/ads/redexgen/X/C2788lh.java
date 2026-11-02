package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.util.Log;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.ads.internal.util.process.ProcessUtils;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3669k1;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.lh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2788lh {
    public static byte[] A00;
    public static String[] A01 = {"TEIgz1GSUxi0w6HxI", "WqDufwBE7AlvD41n6qdN4YbCXU2LtDad", "95AkSvnB6didgYS0", "q9Pm9O4XheyxpjJIaV85netzFUNpUTJ1", "laKi0sQOm1cRNFPmXQKezZzTFfBBOlTJ", "R9By8R7rHrFXxi8d0eZrOpOQKJFwFXXr", "DNKj97yZe49oXEmfRz7aINNiwqbkjDQZ", "HsAQREGxpVIGFVt11mTJ2r8ajNtMZb1h"};
    public static final Object A02;
    public static final String A03;
    public static final Map<String, Integer> A04;
    public static final Set<String> A05;
    public static final AtomicInteger A06;

    static {
        A06();
        A03 = C2788lh.class.getName();
        A02 = new Object();
        A05 = Collections.synchronizedSet(new HashSet());
        A04 = Collections.synchronizedMap(new HashMap());
        A06 = new AtomicInteger();
    }

    public static int A00(Context context) {
        return context.getSharedPreferences(ProcessUtils.getProcessSpecificName(A02(65, 10, 79), context), 0).getInt(A02(75, 10, 19), 0) - A05.size();
    }

    public static C2790lj A01(String str, C2755lA c2755lA, Map<String, String> map) {
        C2790lj c2790lj = null;
        try {
            c2790lj = new C2790lj(c2755lA.A09().A01(), c2755lA.A09().A02(), new C2774lT(str, map, true).A02());
            A0C(c2790lj, c2755lA);
            return c2790lj;
        } catch (Exception unused) {
            return c2790lj;
        }
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 124);
        }
        return new String(bArrCopyOfRange);
    }

    public static JSONArray A03(C2755lA c2755lA) {
        return A04(c2755lA, -1);
    }

    public static JSONArray A04(C2755lA c2755lA, int i) {
        InterfaceC2785le interfaceC2785leA08;
        JSONArray jSONArray = new JSONArray();
        synchronized (A02) {
            FileInputStream fileInputStreamOpenFileInput = null;
            InputStreamReader inputStreamReader = null;
            BufferedReader bufferedReader = null;
            try {
                try {
                    if (new File(c2755lA.getFilesDir(), ProcessUtils.getProcessSpecificName(A02(281, 9, 51), c2755lA)).exists()) {
                        fileInputStreamOpenFileInput = c2755lA.openFileInput(ProcessUtils.getProcessSpecificName(A02(281, 9, 51), c2755lA));
                        inputStreamReader = new InputStreamReader(fileInputStreamOpenFileInput);
                        bufferedReader = new BufferedReader(inputStreamReader);
                        while (true) {
                            String line = bufferedReader.readLine();
                            if (line == null || i == 0) {
                                break;
                            }
                            JSONObject jSONObject = new JSONObject(line);
                            if (!jSONObject.has(A02(260, 7, 27))) {
                                jSONObject.put(A02(260, 7, 27), String.valueOf(0));
                            }
                            String string = jSONObject.getString(A02(343, 2, 126));
                            if (!A05.contains(string)) {
                                int i2 = jSONObject.getInt(A02(260, 7, 27));
                                if (A04.containsKey(string)) {
                                    jSONObject.put(A02(260, 7, 27), String.valueOf(A04.get(string)));
                                } else {
                                    A0E(string, i2);
                                }
                                jSONArray.put(jSONObject);
                                if (i > 0) {
                                    i--;
                                }
                            }
                        }
                    }
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e) {
                            e = e;
                            interfaceC2785leA08 = c2755lA.A08();
                            interfaceC2785leA08.A4j(e);
                        }
                    }
                    if (inputStreamReader != null) {
                        inputStreamReader.close();
                    }
                    if (fileInputStreamOpenFileInput != null) {
                        fileInputStreamOpenFileInput.close();
                    }
                } catch (IOException | JSONException e2) {
                    c2755lA.A08().A4j(e2);
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e3) {
                            e = e3;
                            interfaceC2785leA08 = c2755lA.A08();
                            interfaceC2785leA08.A4j(e);
                        }
                    }
                    if (inputStreamReader != null) {
                        inputStreamReader.close();
                    }
                    if (fileInputStreamOpenFileInput != null) {
                        fileInputStreamOpenFileInput.close();
                    }
                }
            } catch (Throwable th) {
                if (0 != 0) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e4) {
                        c2755lA.A08().A4j(e4);
                        throw th;
                    }
                }
                if (0 != 0) {
                    inputStreamReader.close();
                }
                if (0 != 0) {
                    fileInputStreamOpenFileInput.close();
                }
                throw th;
            }
        }
        return jSONArray;
    }

    public static JSONObject A05(C2790lj c2790lj) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(A02(343, 2, 126), UUID.randomUUID().toString());
        jSONObject.put(A02(InterfaceC3669k1.a.b.f, 4, 93), c2790lj.A03());
        jSONObject.put(A02(TypedValues.CycleType.TYPE_VISIBILITY, 4, 127), C3076qS.A03(c2790lj.A01()));
        jSONObject.put(A02(355, 12, 71), C3076qS.A03(c2790lj.A00()));
        jSONObject.put(A02(345, 10, InterfaceC3669k1.d.b.k), c2790lj.A02());
        jSONObject.put(A02(267, 4, 64), c2790lj.A04() != null ? new JSONObject(c2790lj.A04()) : new JSONObject());
        jSONObject.put(A02(260, 7, 27), String.valueOf(0));
        return jSONObject;
    }

    public static void A06() {
        A00 = new byte[]{7, 95, 83, 55, 1, Ascii.FS, 3, 48, Ascii.FS, 6, Ascii.GS, 7, Ascii.SYN, 1, 73, 83, 63, Ascii.GS, Ascii.DC2, 91, 8, 92, Ascii.CAN, Ascii.EM, Ascii.DLE, Ascii.EM, 8, Ascii.EM, 92, Ascii.CAN, Ascii.EM, Ascii.RS, 9, Ascii.ESC, 92, Ascii.EM, 10, Ascii.EM, Ascii.DC2, 8, Ascii.SI, 92, Ascii.SUB, Ascii.NAK, Ascii.DLE, Ascii.EM, 82, Ascii.SO, 44, 35, 106, 57, 109, 41, 40, 33, 40, 57, 40, 109, 43, 36, 33, 40, 108, 119, 118, 113, 102, 116, 108, 99, 97, 118, 117, 42, Ascii.EM, 10, 1, Ascii.ESC, 44, 0, Ascii.SUB, 1, Ascii.ESC, 41, 45, 46, Ascii.SUB, Ascii.VT, 6, 10, 1, Ascii.FF, 10, 33, 10, Ascii.ESC, Ascii.CAN, 0, Ascii.GS, 4, Ascii.US, 58, Base64.padSymbol, 40, 42, 111, 43, 42, 45, 58, 40, 111, 42, 57, 42, 33, 59, 60, 111, 41, 38, 35, 42, 97, 69, 9, 38, 35, 42, 111, 60, 38, 53, 42, 117, 111, 111, 87, 85, 76, 76, 89, 88, Ascii.FS, 89, 74, 89, 82, 72, 79, Ascii.DC2, 40, Ascii.DLE, Ascii.DC2, Ascii.VT, Ascii.VT, Ascii.DC2, Ascii.NAK, Ascii.FS, 91, Ascii.CAN, Ascii.DC4, 9, 9, Ascii.SO, Ascii.VT, Ascii.SI, Ascii.RS, Ascii.US, 91, Ascii.US, Ascii.RS, Ascii.EM, Ascii.SO, Ascii.FS, 91, Ascii.RS, Ascii.CR, Ascii.RS, Ascii.NAK, Ascii.SI, 91, Ascii.ETB, Ascii.DC2, Ascii.NAK, Ascii.RS, 85, 98, 68, 79, 95, 88, 81, Ascii.SYN, 66, 89, Ascii.SYN, 67, 70, 82, 87, 66, 83, Ascii.SYN, 67, 88, 68, 83, 85, 89, 68, 82, 83, 82, Ascii.SYN, 82, 83, 84, 67, 81, 122, 89, 81, 115, SignedBytes.MAX_POWER_OF_TWO, 83, 88, 66, Ascii.CAN, Ascii.SYN, 87, 82, 82, 95, 88, 81, Ascii.SYN, 66, 89, Ascii.SYN, 121, 88, 81, 89, 95, 88, 81, 115, SignedBytes.MAX_POWER_OF_TWO, 83, 88, 66, Ascii.CAN, 58, 17, 0, 8, Ascii.NAK, 6, 19, 19, 2, 10, Ascii.ETB, 19, 88, 93, 72, 93, 127, 126, 68, 119, 116, 124, 124, 114, 117, 124, 43, 42, 45, 58, 40, 35, 32, 40, 60, 91, 84, 83, 84, 78, 85, 88, 89, Ascii.GS, 88, 75, 88, 83, 73, Ascii.GS, 78, 85, 82, 72, 81, 89, Ascii.GS, 83, 82, 73, Ascii.GS, 95, 88, Ascii.GS, 72, 77, 89, 92, 73, 88, 89, Ascii.GS, 73, 82, Ascii.GS, 114, 83, 90, 82, 84, 83, 90, 120, 75, 88, 83, 73, 19, 107, 102, 126, 104, 126, 126, 100, 98, 99, 82, 100, 105, 72, 94, 72, 72, 82, 84, 85, 100, 79, 82, 86, 94, 105, 113, 115, 106, 106, 127, 126, 95, 108, 127, 116, 110, 105, 58, 39, 58, 49, 55, 32, 54, 59, 50, 39, 75, 77, 90, 76, 65, 72, 93, 103, 91, 87, 92, 93, 119, 106, 110, 102, 85, 88, 81, 68};
    }

    public static void A07(Context context) {
        synchronized (A02) {
            File file = new File(context.getFilesDir(), ProcessUtils.getProcessSpecificName(A02(281, 9, 51), context));
            if (file.exists()) {
                file.delete();
            }
            A09(context, 0);
            A05.clear();
            A04.clear();
        }
    }

    public static void A08(Context context) {
        A09(context, context.getSharedPreferences(ProcessUtils.getProcessSpecificName(A02(65, 10, 79), context), 0).getInt(A02(75, 10, 19), 0) + 1);
    }

    public static void A09(Context context, int i) {
        context.getSharedPreferences(ProcessUtils.getProcessSpecificName(A02(65, 10, 79), context), 0).edit().putInt(A02(75, 10, 19), i >= 0 ? i : 0).apply();
    }

    public static void A0A(C2755lA c2755lA, String str) {
        File file = new File(c2755lA.getFilesDir(), str);
        if (!file.exists() || file.delete()) {
            return;
        }
        c2755lA.A08().A4j(new RuntimeException(A02(47, 18, 49)));
    }

    public static void A0B(C1617Hh c1617Hh, String str) {
        Integer num = A04.get(str);
        if (num == null) {
            if (c1617Hh.A05().AB6()) {
                Log.e(A03, A02(189, 66, 74));
            }
            num = 0;
        } else {
            A04.remove(str);
        }
        A04.put(str, Integer.valueOf(num.intValue() + 1));
    }

    public static void A0C(C2790lj c2790lj, C2755lA c2755lA) {
        if (c2790lj == null || c2755lA == null) {
            return;
        }
        synchronized (A02) {
            try {
                String processSpecificName = ProcessUtils.getProcessSpecificName(A02(281, 9, 51), c2755lA);
                File file = new File(c2755lA.getFilesDir(), processSpecificName);
                if (file.exists()) {
                    int iA07 = AbstractC2865mx.A07(c2755lA);
                    long length = file.length();
                    if (iA07 > 0 && length > iA07) {
                        boolean zDelete = file.delete();
                        A09(c2755lA, 0);
                        A05.clear();
                        A04.clear();
                        if (zDelete) {
                            Map<String, String> mapA69 = c2755lA.A04().A69();
                            mapA69.put(A02(383, 7, 62), A02(271, 10, 103));
                            mapA69.put(A02(390, 12, 68), String.valueOf(2401));
                            A01(A02(102, 36, 51) + length + A02(1, 15, 15) + A06.getAndIncrement(), c2755lA, mapA69);
                            return;
                        }
                        Log.e(A02(85, 17, 19), A02(16, 31, 0));
                    }
                }
                JSONObject jSONObjectA05 = A05(c2790lj);
                FileOutputStream fileOutputStreamOpenFileOutput = c2755lA.openFileOutput(processSpecificName, 32768);
                fileOutputStreamOpenFileOutput.write((jSONObjectA05.toString() + A02(0, 1, InterfaceC3669k1.d.b.k)).getBytes());
                fileOutputStreamOpenFileOutput.close();
                A08(c2755lA);
            } catch (Exception e) {
                c2755lA.A08().A4j(e);
            }
        }
    }

    public static void A0D(String str) {
        A04.remove(str);
        A05.add(str);
    }

    public static void A0E(String str, int i) {
        if (A05.contains(str)) {
            throw new RuntimeException(A02(290, 53, 65));
        }
        boolean zContainsKey = A04.containsKey(str);
        if (A01[7].charAt(23) == 'F') {
            throw new RuntimeException();
        }
        A01[6] = "rEqe91lv7lznGuMpeMm8YlOivWfc8wjs";
        if (zContainsKey) {
            A04.remove(str);
        }
        A04.put(str, Integer.valueOf(i));
    }

    public static boolean A0F(C2755lA c2755lA) {
        if (AbstractC2865mx.A0O(c2755lA)) {
            return A0H(c2755lA);
        }
        boolean zA0G = A0G(c2755lA);
        String[] strArr = A01;
        if (strArr[0].length() == strArr[5].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[3] = "3ABJ1YchwKShiC4YrWnTlA0erUDCQvCN";
        strArr2[1] = "wuaZskSkctYpKQ1vHIoiu3NDqUJM9HRQ";
        return zA0G;
    }

    public static boolean A0G(C2755lA c2755lA) {
        JSONArray jSONArray = new JSONArray();
        synchronized (A02) {
            int i = 0;
            FileInputStream fileInputStreamOpenFileInput = null;
            InputStreamReader inputStreamReader = null;
            BufferedReader bufferedReader = null;
            FileOutputStream fileOutputStreamOpenFileOutput = null;
            try {
                try {
                    if (new File(c2755lA.getFilesDir(), ProcessUtils.getProcessSpecificName(A02(281, 9, 51), c2755lA)).exists()) {
                        fileInputStreamOpenFileInput = c2755lA.openFileInput(ProcessUtils.getProcessSpecificName(A02(281, 9, 51), c2755lA));
                        inputStreamReader = new InputStreamReader(fileInputStreamOpenFileInput);
                        bufferedReader = new BufferedReader(inputStreamReader);
                        while (true) {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                break;
                            }
                            JSONObject jSONObject = new JSONObject(line);
                            String string = jSONObject.getString(A02(343, 2, 126));
                            if (!A05.contains(string)) {
                                if (A04.containsKey(string)) {
                                    Integer num = A04.get(string);
                                    Integer numValueOf = Integer.valueOf(num != null ? num.intValue() : 0);
                                    int iA02 = AbstractC2865mx.A02(c2755lA);
                                    if (iA02 <= -1 || numValueOf.intValue() <= iA02 - 1) {
                                        jSONObject.put(A02(260, 7, 27), String.valueOf(numValueOf));
                                        jSONArray.put(jSONObject);
                                    } else {
                                        A0D(string);
                                        i++;
                                    }
                                } else {
                                    jSONArray.put(jSONObject);
                                }
                            }
                        }
                        StringBuilder sb = new StringBuilder();
                        int length = jSONArray.length();
                        for (int i2 = 0; i2 < length; i2++) {
                            sb.append(jSONArray.getJSONObject(i2).toString()).append('\n');
                        }
                        fileOutputStreamOpenFileOutput = c2755lA.openFileOutput(ProcessUtils.getProcessSpecificName(A02(281, 9, 51), c2755lA), 0);
                        fileOutputStreamOpenFileOutput.write(sb.toString().getBytes());
                    }
                    A09(c2755lA, A00(c2755lA));
                    if (i > 0) {
                        c2755lA.A08().ABz(A02(271, 10, 103), AbstractC2786lf.A2Y, new C2787lg(A02(138, 15, 64), A02(367, 16, 102) + i));
                    }
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e) {
                            c2755lA.A08().A4j(e);
                        }
                    }
                    if (inputStreamReader != null) {
                        inputStreamReader.close();
                    }
                    if (fileInputStreamOpenFileInput != null) {
                        fileInputStreamOpenFileInput.close();
                    }
                    if (fileOutputStreamOpenFileOutput != null) {
                        fileOutputStreamOpenFileOutput.close();
                    }
                    A05.clear();
                    A04.clear();
                    return true;
                } catch (Throwable th) {
                    if (0 != 0) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e2) {
                            c2755lA.A08().A4j(e2);
                            A05.clear();
                            A04.clear();
                            throw th;
                        }
                    }
                    if (0 != 0) {
                        inputStreamReader.close();
                    }
                    if (0 != 0) {
                        fileInputStreamOpenFileInput.close();
                    }
                    if (0 != 0) {
                        fileOutputStreamOpenFileOutput.close();
                    }
                    A05.clear();
                    A04.clear();
                    throw th;
                }
            } catch (IOException | JSONException e3) {
                c2755lA.A08().A4j(e3);
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e4) {
                        c2755lA.A08().A4j(e4);
                        A05.clear();
                        A04.clear();
                        return false;
                    }
                }
                if (inputStreamReader != null) {
                    inputStreamReader.close();
                }
                if (fileInputStreamOpenFileInput != null) {
                    fileInputStreamOpenFileInput.close();
                }
                if (fileOutputStreamOpenFileOutput != null) {
                    fileOutputStreamOpenFileOutput.close();
                }
                A05.clear();
                A04.clear();
                return false;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:117:0x0229 A[Catch: IOException -> 0x0241, all -> 0x0254, TryCatch #8 {IOException -> 0x0241, blocks: (B:115:0x0224, B:117:0x0229, B:119:0x022e, B:121:0x0233, B:123:0x0238, B:125:0x023d), top: B:139:0x0224, outer: #17 }] */
    /* JADX WARN: Code duplicated, block: B:119:0x022e A[Catch: IOException -> 0x0241, all -> 0x0254, TryCatch #8 {IOException -> 0x0241, blocks: (B:115:0x0224, B:117:0x0229, B:119:0x022e, B:121:0x0233, B:123:0x0238, B:125:0x023d), top: B:139:0x0224, outer: #17 }] */
    /* JADX WARN: Code duplicated, block: B:121:0x0233 A[Catch: IOException -> 0x0241, all -> 0x0254, TryCatch #8 {IOException -> 0x0241, blocks: (B:115:0x0224, B:117:0x0229, B:119:0x022e, B:121:0x0233, B:123:0x0238, B:125:0x023d), top: B:139:0x0224, outer: #17 }] */
    /* JADX WARN: Code duplicated, block: B:123:0x0238 A[Catch: IOException -> 0x0241, all -> 0x0254, TryCatch #8 {IOException -> 0x0241, blocks: (B:115:0x0224, B:117:0x0229, B:119:0x022e, B:121:0x0233, B:123:0x0238, B:125:0x023d), top: B:139:0x0224, outer: #17 }] */
    /* JADX WARN: Code duplicated, block: B:125:0x023d A[Catch: IOException -> 0x0241, all -> 0x0254, TRY_LEAVE, TryCatch #8 {IOException -> 0x0241, blocks: (B:115:0x0224, B:117:0x0229, B:119:0x022e, B:121:0x0233, B:123:0x0238, B:125:0x023d), top: B:139:0x0224, outer: #17 }] */
    /* JADX WARN: Code duplicated, block: B:139:0x0224 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:163:0x0111 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:167:0x005d A[SYNTHETIC] */
    public static boolean A0H(C2755lA c2755lA) {
        int iIntValue;
        synchronized (A02) {
            int i = 0;
            FileInputStream fileInputStreamOpenFileInput = null;
            InputStreamReader inputStreamReader = null;
            BufferedReader bufferedReader = null;
            FileOutputStream fileOutputStreamOpenFileOutput = null;
            FileInputStream fileInputStreamOpenFileInput2 = null;
            FileOutputStream fileOutputStreamOpenFileOutput2 = null;
            try {
                try {
                    String processSpecificName = ProcessUtils.getProcessSpecificName(A02(281, 9, 51), c2755lA);
                    File file = new File(c2755lA.getFilesDir(), processSpecificName);
                    String str = processSpecificName + A02(255, 5, 25);
                    A0A(c2755lA, str);
                    if (file.exists()) {
                        fileOutputStreamOpenFileOutput2 = c2755lA.openFileOutput(str, 32768);
                        fileInputStreamOpenFileInput = c2755lA.openFileInput(processSpecificName);
                        try {
                            inputStreamReader = new InputStreamReader(fileInputStreamOpenFileInput);
                            try {
                                bufferedReader = new BufferedReader(inputStreamReader);
                                while (true) {
                                    try {
                                        String line = bufferedReader.readLine();
                                        if (line == null) {
                                            break;
                                        }
                                        try {
                                            JSONObject jSONObject = new JSONObject(line);
                                            String string = jSONObject.getString(A02(343, 2, 126));
                                            if (!A05.contains(string)) {
                                                if (A04.containsKey(string)) {
                                                    try {
                                                        Integer num = A04.get(string);
                                                        if (num != null) {
                                                            try {
                                                                iIntValue = num.intValue();
                                                            } catch (IOException e) {
                                                                e = e;
                                                            } catch (JSONException e2) {
                                                                e = e2;
                                                                if (c2755lA.A05().AB6()) {
                                                                    Log.e(A03, A02(153, 36, 7), e);
                                                                }
                                                            } catch (Throwable th) {
                                                                th = th;
                                                                if (bufferedReader != null) {
                                                                    try {
                                                                        bufferedReader.close();
                                                                    } catch (IOException e3) {
                                                                        c2755lA.A08().A4j(e3);
                                                                        A05.clear();
                                                                        A04.clear();
                                                                        throw th;
                                                                    }
                                                                }
                                                                if (inputStreamReader != null) {
                                                                    inputStreamReader.close();
                                                                }
                                                                if (fileInputStreamOpenFileInput != null) {
                                                                    fileInputStreamOpenFileInput.close();
                                                                }
                                                                if (fileOutputStreamOpenFileOutput != null) {
                                                                    fileOutputStreamOpenFileOutput.close();
                                                                }
                                                                if (fileInputStreamOpenFileInput2 != null) {
                                                                    fileInputStreamOpenFileInput2.close();
                                                                }
                                                                if (fileOutputStreamOpenFileOutput2 != null) {
                                                                    fileOutputStreamOpenFileOutput2.close();
                                                                }
                                                                A05.clear();
                                                                A04.clear();
                                                                throw th;
                                                            }
                                                        } else {
                                                            iIntValue = 0;
                                                        }
                                                        Integer numValueOf = Integer.valueOf(iIntValue);
                                                        int iA02 = AbstractC2865mx.A02(c2755lA);
                                                        if (iA02 > -1) {
                                                            try {
                                                                if (numValueOf.intValue() > iA02 - 1) {
                                                                    try {
                                                                        try {
                                                                            A0D(string);
                                                                            i++;
                                                                        } catch (JSONException e4) {
                                                                            e = e4;
                                                                            if (c2755lA.A05().AB6()) {
                                                                                Log.e(A03, A02(153, 36, 7), e);
                                                                            }
                                                                        }
                                                                    } catch (IOException e5) {
                                                                        e = e5;
                                                                    } catch (Throwable th2) {
                                                                        th = th2;
                                                                        if (bufferedReader != null) {
                                                                            bufferedReader.close();
                                                                        }
                                                                        if (inputStreamReader != null) {
                                                                            inputStreamReader.close();
                                                                        }
                                                                        if (fileInputStreamOpenFileInput != null) {
                                                                            fileInputStreamOpenFileInput.close();
                                                                        }
                                                                        if (fileOutputStreamOpenFileOutput != null) {
                                                                            fileOutputStreamOpenFileOutput.close();
                                                                        }
                                                                        if (fileInputStreamOpenFileInput2 != null) {
                                                                            fileInputStreamOpenFileInput2.close();
                                                                        }
                                                                        if (fileOutputStreamOpenFileOutput2 != null) {
                                                                            fileOutputStreamOpenFileOutput2.close();
                                                                        }
                                                                        A05.clear();
                                                                        A04.clear();
                                                                        throw th;
                                                                    }
                                                                }
                                                            } catch (IOException e6) {
                                                                e = e6;
                                                            } catch (JSONException e7) {
                                                                e = e7;
                                                            } catch (Throwable th3) {
                                                                th = th3;
                                                                if (bufferedReader != null) {
                                                                    bufferedReader.close();
                                                                }
                                                                if (inputStreamReader != null) {
                                                                    inputStreamReader.close();
                                                                }
                                                                if (fileInputStreamOpenFileInput != null) {
                                                                    fileInputStreamOpenFileInput.close();
                                                                }
                                                                if (fileOutputStreamOpenFileOutput != null) {
                                                                    fileOutputStreamOpenFileOutput.close();
                                                                }
                                                                if (fileInputStreamOpenFileInput2 != null) {
                                                                    fileInputStreamOpenFileInput2.close();
                                                                }
                                                                if (fileOutputStreamOpenFileOutput2 != null) {
                                                                    fileOutputStreamOpenFileOutput2.close();
                                                                }
                                                                A05.clear();
                                                                A04.clear();
                                                                throw th;
                                                            }
                                                        }
                                                        jSONObject.put(A02(260, 7, 27), String.valueOf(numValueOf));
                                                        fileOutputStreamOpenFileOutput2.write((jSONObject.toString() + '\n').getBytes());
                                                    } catch (IOException e8) {
                                                        e = e8;
                                                    } catch (JSONException e9) {
                                                        e = e9;
                                                    } catch (Throwable th4) {
                                                        th = th4;
                                                    }
                                                } else {
                                                    fileOutputStreamOpenFileOutput2.write((jSONObject.toString() + '\n').getBytes());
                                                }
                                            }
                                        } catch (JSONException e10) {
                                            e = e10;
                                        }
                                    } catch (IOException e11) {
                                        e = e11;
                                    } catch (Throwable th5) {
                                        th = th5;
                                    }
                                    c2755lA.A08().A4j(e);
                                    if (bufferedReader != null) {
                                        try {
                                            bufferedReader.close();
                                        } catch (IOException e12) {
                                            c2755lA.A08().A4j(e12);
                                        }
                                    }
                                    if (inputStreamReader != null) {
                                        inputStreamReader.close();
                                    }
                                    if (fileInputStreamOpenFileInput != null) {
                                        fileInputStreamOpenFileInput.close();
                                    }
                                    if (fileOutputStreamOpenFileOutput != null) {
                                        fileOutputStreamOpenFileOutput.close();
                                    }
                                    if (fileInputStreamOpenFileInput2 != null) {
                                        fileInputStreamOpenFileInput2.close();
                                    }
                                    if (fileOutputStreamOpenFileOutput2 != null) {
                                        fileOutputStreamOpenFileOutput2.close();
                                    }
                                    A05.clear();
                                    A04.clear();
                                    return false;
                                }
                                fileInputStreamOpenFileInput2 = c2755lA.openFileInput(str);
                                fileOutputStreamOpenFileOutput = c2755lA.openFileOutput(processSpecificName, 0);
                                byte[] bArr = new byte[1024];
                                while (true) {
                                    int i2 = fileInputStreamOpenFileInput2.read(bArr);
                                    if (i2 <= 0) {
                                        break;
                                    }
                                    fileOutputStreamOpenFileOutput.write(bArr, 0, i2);
                                }
                                fileInputStreamOpenFileInput2.close();
                                fileOutputStreamOpenFileOutput2.close();
                                A0A(c2755lA, str);
                            } catch (IOException e13) {
                                e = e13;
                            } catch (Throwable th6) {
                                th = th6;
                            }
                        } catch (IOException e14) {
                            e = e14;
                        } catch (Throwable th7) {
                            th = th7;
                        }
                    }
                    A09(c2755lA, A00(c2755lA));
                    if (i > 0) {
                        c2755lA.A08().ABz(A02(271, 10, 103), AbstractC2786lf.A2Y, new C2787lg(A02(138, 15, 64), A02(367, 16, 102) + i));
                    }
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e15) {
                            c2755lA.A08().A4j(e15);
                        }
                    }
                    if (inputStreamReader != null) {
                        inputStreamReader.close();
                    }
                    if (fileInputStreamOpenFileInput != null) {
                        fileInputStreamOpenFileInput.close();
                    }
                    if (fileOutputStreamOpenFileOutput != null) {
                        fileOutputStreamOpenFileOutput.close();
                    }
                    if (fileInputStreamOpenFileInput2 != null) {
                        fileInputStreamOpenFileInput2.close();
                    }
                    if (fileOutputStreamOpenFileOutput2 != null) {
                        fileOutputStreamOpenFileOutput2.close();
                    }
                    A05.clear();
                    A04.clear();
                    return true;
                } catch (IOException e16) {
                    e = e16;
                }
            } catch (Throwable th8) {
                th = th8;
            }
        }
    }

    public static boolean A0I(String str) {
        return A05.contains(str) || A04.containsKey(str);
    }
}

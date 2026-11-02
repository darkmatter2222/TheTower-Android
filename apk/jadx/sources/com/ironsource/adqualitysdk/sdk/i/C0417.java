package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.provider.Settings;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ڽ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0417 implements InterfaceC0719 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Context f1955;

    public C0417(Context context) {
        this.f1955 = context;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static double m2092(CopyOnWriteArrayList copyOnWriteArrayList) {
        if (copyOnWriteArrayList.size() < 2) {
            return FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        }
        double size = 0.0d;
        for (int i = 0; i <= 2; i++) {
            Iterator it = copyOnWriteArrayList.iterator();
            double d = 0.0d;
            while (it.hasNext()) {
                d += (double) ((float[]) it.next())[i];
            }
            double size2 = d / ((double) copyOnWriteArrayList.size());
            Iterator it2 = copyOnWriteArrayList.iterator();
            double d2 = 0.0d;
            while (it2.hasNext()) {
                double d3 = ((double) ((float[]) it2.next())[i]) - size2;
                d2 += d3 * d3;
            }
            size += d2 / ((double) copyOnWriteArrayList.size());
        }
        return size / 3.0d;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0719
    public final String getName() {
        return StringFog.decrypt("WOX7lnHK2atb7MCSadDZqw==\n", "OoCT9wejttk=\n");
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:34:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:37:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:47:0x0130  */
    /* JADX WARN: Code duplicated, block: B:51:0x0152  */
    /* JADX WARN: Code duplicated, block: B:52:0x0153 A[Catch: Exception -> 0x015c, TRY_LEAVE, TryCatch #0 {Exception -> 0x015c, blocks: (B:49:0x013d, B:52:0x0153), top: B:82:0x013d }] */
    /* JADX WARN: Code duplicated, block: B:60:0x0172  */
    /* JADX WARN: Code duplicated, block: B:61:0x0175  */
    /* JADX WARN: Code duplicated, block: B:64:0x0180  */
    /* JADX WARN: Code duplicated, block: B:65:0x0182  */
    /* JADX WARN: Code duplicated, block: B:68:0x01b1 A[Catch: Exception -> 0x01e3, TryCatch #4 {Exception -> 0x01e3, blocks: (B:66:0x0188, B:68:0x01b1, B:69:0x01c1, B:71:0x01ce, B:72:0x01de), top: B:88:0x0188 }] */
    /* JADX WARN: Code duplicated, block: B:71:0x01ce A[Catch: Exception -> 0x01e3, TryCatch #4 {Exception -> 0x01e3, blocks: (B:66:0x0188, B:68:0x01b1, B:69:0x01c1, B:71:0x01ce, B:72:0x01de), top: B:88:0x0188 }] */
    /* JADX WARN: Code duplicated, block: B:93:0x0114 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:95:0x00eb A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [android.hardware.Sensor] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v17 */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v2, types: [android.os.HandlerThread] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v6, types: [android.os.HandlerThread] */
    /* JADX WARN: Type inference failed for: r2v2, types: [android.hardware.SensorManager] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [android.hardware.SensorManager] */
    /* JADX WARN: Type inference failed for: r2v5, types: [boolean] */
    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0719
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0941 mo2093() throws Throwable {
        int i;
        HandlerThread handlerThread;
        Sensor sensor;
        int i2;
        float size;
        Float fValueOf;
        boolean z;
        Float fValueOf2;
        String strDecrypt;
        JSONObject jSONObject;
        int i3;
        ArrayList arrayList = new ArrayList();
        ?? IsEmpty = (SensorManager) this.f1955.getSystemService(StringFog.decrypt("bL0ZcLfq\n", "H9h3A9iY1Rc=\n"));
        if (IsEmpty == 0) {
            arrayList.add(60);
            return new C0941(false, arrayList, null, StringFog.decrypt("i0hKU2ugaKW2TENFdvJQqrlbRUlos0eovQ==\n", "2C0kIATSJcQ=\n"));
        }
        Sensor defaultSensor = IsEmpty.getDefaultSensor(1);
        Sensor defaultSensor2 = IsEmpty.getDefaultSensor(4);
        Sensor defaultSensor3 = IsEmpty.getDefaultSensor(6);
        ?? defaultSensor4 = IsEmpty.getDefaultSensor(2);
        if (defaultSensor2 == null) {
            arrayList.add(61);
        }
        if (defaultSensor3 == null) {
            arrayList.add(62);
        }
        CopyOnWriteArrayList<float[]> copyOnWriteArrayList = new CopyOnWriteArrayList();
        CopyOnWriteArrayList copyOnWriteArrayList2 = new CopyOnWriteArrayList();
        float[] fArr = {Float.NaN};
        CountDownLatch countDownLatch = new CountDownLatch(1);
        HandlerThread handlerThread2 = new HandlerThread(StringFog.decrypt("tnpGuHgBKbiVc328YBspuKd+Q6liDTQ=\n", "9B8u2Q5oRso=\n"));
        handlerThread2.start();
        Handler handler = new Handler(handlerThread2.getLooper());
        C0439 c0439 = new C0439(copyOnWriteArrayList, copyOnWriteArrayList2, new float[]{Float.NaN}, fArr);
        try {
            if (defaultSensor != null) {
                i = 0;
                try {
                    IsEmpty.registerListener(c0439, defaultSensor, 0, handler);
                } catch (InterruptedException unused) {
                    handlerThread = handlerThread2;
                    sensor = defaultSensor;
                    Thread.currentThread().interrupt();
                    IsEmpty.unregisterListener(c0439);
                    defaultSensor4 = handlerThread;
                    defaultSensor4.quitSafely();
                    double dM2092 = m2092(copyOnWriteArrayList);
                    IsEmpty = copyOnWriteArrayList.isEmpty();
                    if (IsEmpty != 0) {
                        size = 0.0f;
                    } else {
                        i2 = 0;
                        for (float[] fArr2 : copyOnWriteArrayList) {
                            if (Math.abs(fArr2[2]) + Math.abs(fArr2[1]) + Math.abs(fArr2[0]) < 0.05f) {
                                i2++;
                            }
                        }
                        size = i2 / copyOnWriteArrayList.size();
                    }
                    if (copyOnWriteArrayList.isEmpty()) {
                        arrayList.add(60);
                    }
                    if (size > 0.9f) {
                        arrayList.add(63);
                    }
                    double dM2093 = m2092(copyOnWriteArrayList2);
                    i3 = Settings.System.getInt(this.f1955.getContentResolver(), StringFog.decrypt("kWfIKc1yY5iQbd0k3HJZiZE=\n", "4gS6TKgcPPo=\n"), -1);
                    if (i3 < 0) {
                        fValueOf = null;
                    } else {
                        fValueOf = Float.valueOf(i3 / 255.0f);
                    }
                    if (fValueOf != null) {
                        arrayList.add(64);
                    }
                    if (defaultSensor3 != null) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (Float.isNaN(fArr[0])) {
                        fValueOf2 = null;
                    } else {
                        fValueOf2 = Float.valueOf(fArr[0]);
                    }
                    jSONObject = new JSONObject();
                    jSONObject.put(StringFog.decrypt("UlSgDPZlQ6BeUrcM6FZQvVpWrQr/\n", "MzfDaZoAMc8=\n"), dM2092);
                    jSONObject.put(StringFog.decrypt("khtIgdPawliQNFucydjDS5A=\n", "9WI67qC5rSg=\n"), dM2093);
                    jSONObject.put(StringFog.decrypt("p5tb4TBe/IeykHvvCVjn\n", "3f4pjn0xiO4=\n"), size);
                    if (fValueOf != null) {
                        jSONObject.put(StringFog.decrypt("+7Fsd6gz9WPqsA==\n", "mcMFEMBHmwY=\n"), fValueOf.floatValue());
                    }
                    jSONObject.put(StringFog.decrypt("dLDLkRAE+Ddpo90=\n", "HNG4wWJhi0Q=\n"), z);
                    if (fValueOf2 != null) {
                        jSONObject.put(StringFog.decrypt("EtOm2HoZTBI526Taez5RAxrcpsJ3\n", "f7LBth9tJXE=\n"), fValueOf2.floatValue());
                    }
                    strDecrypt = jSONObject.toString();
                    return new C0941(arrayList.isEmpty(), arrayList, strDecrypt, null);
                } catch (Throwable th) {
                    th = th;
                    defaultSensor4 = handlerThread2;
                    IsEmpty.unregisterListener(c0439);
                    defaultSensor4.quitSafely();
                    throw th;
                }
            } else {
                i = 0;
            }
            if (defaultSensor2 != null) {
                IsEmpty.registerListener(c0439, defaultSensor2, i, handler);
            }
            if (defaultSensor3 != null) {
                IsEmpty.registerListener(c0439, defaultSensor3, i, handler);
            }
            if (defaultSensor4 != 0) {
                IsEmpty.registerListener(c0439, defaultSensor4, i, handler);
            }
            handlerThread = handlerThread2;
            sensor = defaultSensor;
            try {
                handler.postDelayed(new RunnableC0428(countDownLatch), 500L);
                countDownLatch.await(600L, TimeUnit.MILLISECONDS);
                IsEmpty.unregisterListener(c0439);
                defaultSensor4 = handlerThread;
            } catch (InterruptedException unused2) {
                Thread.currentThread().interrupt();
                IsEmpty.unregisterListener(c0439);
                defaultSensor4 = handlerThread;
            }
            defaultSensor4.quitSafely();
            double dM2094 = m2092(copyOnWriteArrayList);
            IsEmpty = copyOnWriteArrayList.isEmpty();
            if (IsEmpty != 0) {
                size = 0.0f;
            } else {
                i2 = 0;
                while (r2.hasNext()) {
                    if (Math.abs(fArr2[2]) + Math.abs(fArr2[1]) + Math.abs(fArr2[0]) < 0.05f) {
                        i2++;
                    }
                }
                size = i2 / copyOnWriteArrayList.size();
            }
            if (copyOnWriteArrayList.isEmpty() && sensor != null) {
                arrayList.add(60);
            }
            if (size > 0.9f) {
                arrayList.add(63);
            }
            double dM2095 = m2092(copyOnWriteArrayList2);
            try {
                i3 = Settings.System.getInt(this.f1955.getContentResolver(), StringFog.decrypt("kWfIKc1yY5iQbd0k3HJZiZE=\n", "4gS6TKgcPPo=\n"), -1);
                if (i3 < 0) {
                    fValueOf = null;
                } else {
                    fValueOf = Float.valueOf(i3 / 255.0f);
                }
            } catch (Exception unused3) {
            }
            if (fValueOf != null && fValueOf.floatValue() == 0.0f) {
                arrayList.add(64);
            }
            if (defaultSensor3 != null) {
                z = true;
            } else {
                z = false;
            }
            if (Float.isNaN(fArr[0])) {
                fValueOf2 = null;
            } else {
                fValueOf2 = Float.valueOf(fArr[0]);
            }
            try {
                jSONObject = new JSONObject();
                jSONObject.put(StringFog.decrypt("UlSgDPZlQ6BeUrcM6FZQvVpWrQr/\n", "MzfDaZoAMc8=\n"), dM2094);
                jSONObject.put(StringFog.decrypt("khtIgdPawliQNFucydjDS5A=\n", "9WI67qC5rSg=\n"), dM2095);
                jSONObject.put(StringFog.decrypt("p5tb4TBe/IeykHvvCVjn\n", "3f4pjn0xiO4=\n"), size);
                if (fValueOf != null) {
                    jSONObject.put(StringFog.decrypt("+7Fsd6gz9WPqsA==\n", "mcMFEMBHmwY=\n"), fValueOf.floatValue());
                }
                jSONObject.put(StringFog.decrypt("dLDLkRAE+Ddpo90=\n", "HNG4wWJhi0Q=\n"), z);
                if (fValueOf2 != null) {
                    jSONObject.put(StringFog.decrypt("EtOm2HoZTBI526Taez5RAxrcpsJ3\n", "f7LBth9tJXE=\n"), fValueOf2.floatValue());
                }
                strDecrypt = jSONObject.toString();
            } catch (Exception unused4) {
                strDecrypt = StringFog.decrypt("XLA=\n", "J81SF71mXCU=\n");
            }
            return new C0941(arrayList.isEmpty(), arrayList, strDecrypt, null);
        } catch (Throwable th2) {
            th = th2;
        }
    }
}

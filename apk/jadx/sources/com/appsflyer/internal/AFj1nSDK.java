package com.appsflyer.internal;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.os.Looper;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes2.dex */
public final class AFj1nSDK implements SensorEventListener {
    private final String AFAdRevenueData;
    private final Executor component1;
    private long component3;
    private double getCurrencyIso4217Code;
    private final String getMediationNetwork;
    private final int getMonetizationNetwork;
    private final int getRevenue;
    private final float[][] component2 = new float[2][];
    private final long[] areAllFieldsValid = new long[2];

    AFj1nSDK(Sensor sensor, ExecutorService executorService) {
        int type = sensor.getType();
        this.getRevenue = type;
        String name = sensor.getName();
        name = name == null ? "" : name;
        this.AFAdRevenueData = name;
        String vendor = sensor.getVendor();
        String str = vendor != null ? vendor : "";
        this.getMediationNetwork = str;
        this.getMonetizationNetwork = ((((type + 31) * 31) + name.hashCode()) * 31) + str.hashCode();
        this.component1 = executorService;
    }

    private Map<String, Object> AFAdRevenueData() {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(7);
        concurrentHashMap.put("sT", Integer.valueOf(this.getRevenue));
        concurrentHashMap.put("sN", this.AFAdRevenueData);
        concurrentHashMap.put("sV", this.getMediationNetwork);
        float[] fArr = this.component2[0];
        if (fArr != null) {
            concurrentHashMap.put("sVS", getMediationNetwork(fArr));
        }
        float[] fArr2 = this.component2[1];
        if (fArr2 != null) {
            concurrentHashMap.put("sVE", getMediationNetwork(fArr2));
        }
        return concurrentHashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: F_, reason: merged with bridge method [inline-methods] */
    public void G_(SensorEvent sensorEvent) {
        long j = sensorEvent.timestamp;
        float[] fArr = sensorEvent.values;
        long jCurrentTimeMillis = System.currentTimeMillis();
        float[][] fArr2 = this.component2;
        float[] fArr3 = fArr2[0];
        if (fArr3 == null) {
            fArr2[0] = Arrays.copyOf(fArr, fArr.length);
            this.areAllFieldsValid[0] = jCurrentTimeMillis;
            return;
        }
        float[] fArr4 = fArr2[1];
        if (fArr4 == null) {
            float[] fArrCopyOf = Arrays.copyOf(fArr, fArr.length);
            this.component2[1] = fArrCopyOf;
            this.areAllFieldsValid[1] = jCurrentTimeMillis;
            this.getCurrencyIso4217Code = getMonetizationNetwork(fArr3, fArrCopyOf);
            return;
        }
        if (50000000 <= j - this.component3) {
            this.component3 = j;
            if (Arrays.equals(fArr4, fArr)) {
                this.areAllFieldsValid[1] = jCurrentTimeMillis;
                return;
            }
            double monetizationNetwork = getMonetizationNetwork(fArr3, fArr);
            if (monetizationNetwork > this.getCurrencyIso4217Code) {
                this.component2[1] = Arrays.copyOf(fArr, fArr.length);
                this.areAllFieldsValid[1] = jCurrentTimeMillis;
                this.getCurrencyIso4217Code = monetizationNetwork;
            }
        }
    }

    private static List<Float> getMediationNetwork(float[] fArr) {
        ArrayList arrayList = new ArrayList(fArr.length);
        for (float f : fArr) {
            arrayList.add(Float.valueOf(f));
        }
        return arrayList;
    }

    private boolean getMediationNetwork() {
        return this.component2[0] != null;
    }

    private boolean getMediationNetwork(int i, String str, String str2) {
        return this.getRevenue == i && this.AFAdRevenueData.equals(str) && this.getMediationNetwork.equals(str2);
    }

    private static double getMonetizationNetwork(float[] fArr, float[] fArr2) {
        int iMin = Math.min(fArr.length, fArr2.length);
        double dPow = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        for (int i = 0; i < iMin; i++) {
            dPow += StrictMath.pow(fArr[i] - fArr2[i], 2.0d);
        }
        return Math.sqrt(dPow);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AFj1nSDK)) {
            return false;
        }
        AFj1nSDK aFj1nSDK = (AFj1nSDK) obj;
        return getMediationNetwork(aFj1nSDK.getRevenue, aFj1nSDK.AFAdRevenueData, aFj1nSDK.getMediationNetwork);
    }

    final void getCurrencyIso4217Code(Map<AFj1nSDK, Map<String, Object>> map, boolean z) {
        if (!getMediationNetwork()) {
            if (map.containsKey(this)) {
                return;
            }
            map.put(this, AFAdRevenueData());
            return;
        }
        map.put(this, AFAdRevenueData());
        if (z) {
            int length = this.component2.length;
            for (int i = 0; i < length; i++) {
                this.component2[i] = null;
            }
            int length2 = this.areAllFieldsValid.length;
            for (int i2 = 0; i2 < length2; i2++) {
                this.areAllFieldsValid[i2] = 0;
            }
            this.getCurrencyIso4217Code = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
            this.component3 = 0L;
        }
    }

    public final int hashCode() {
        return this.getMonetizationNetwork;
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(final SensorEvent sensorEvent) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.component1.execute(new Runnable() { // from class: com.appsflyer.internal.AFj1nSDK$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.G_(sensorEvent);
                }
            });
        } else {
            G_(sensorEvent);
        }
    }
}

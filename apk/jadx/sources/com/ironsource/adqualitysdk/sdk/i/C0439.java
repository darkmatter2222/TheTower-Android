package com.ironsource.adqualitysdk.sdk.i;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ܫ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0439 implements SensorEventListener {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ float[] f1994;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ float[] f1995;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ CopyOnWriteArrayList f1996;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ CopyOnWriteArrayList f1997;

    public C0439(CopyOnWriteArrayList copyOnWriteArrayList, CopyOnWriteArrayList copyOnWriteArrayList2, float[] fArr, float[] fArr2) {
        this.f1997 = copyOnWriteArrayList;
        this.f1996 = copyOnWriteArrayList2;
        this.f1995 = fArr;
        this.f1994 = fArr2;
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        int type = sensorEvent.sensor.getType();
        if (type == 1) {
            this.f1997.add((float[]) sensorEvent.values.clone());
            return;
        }
        if (type != 2) {
            if (type == 4) {
                this.f1996.add((float[]) sensorEvent.values.clone());
                return;
            } else {
                if (type != 6) {
                    return;
                }
                this.f1995[0] = sensorEvent.values[0];
                return;
            }
        }
        float[] fArr = sensorEvent.values;
        float[] fArr2 = this.f1994;
        float f = fArr[0];
        float f2 = fArr[1];
        float f3 = fArr[2];
        fArr2[0] = (float) Math.sqrt((f3 * f3) + (f2 * f2) + (f * f));
    }
}

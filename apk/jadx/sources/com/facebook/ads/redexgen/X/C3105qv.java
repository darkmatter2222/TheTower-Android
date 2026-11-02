package com.facebook.ads.redexgen.X;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.SystemClock;
import android.widget.Toast;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.qv, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3105qv implements SensorEventListener {
    public static byte[] A0A;
    public long A04;
    public long A05;
    public long A06;
    public SensorManager A07;
    public final C1618Hi A08;
    public int A03 = 0;
    public float A00 = -1.0f;
    public float A01 = -1.0f;
    public float A02 = -1.0f;
    public final Set<InterfaceC3104qu> A09 = new CopyOnWriteArraySet();

    static {
        A02();
    }

    public C3105qv(C1618Hi c1618Hi) {
        this.A08 = c1618Hi;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 79);
        }
        return new String(bArrCopyOfRange);
    }

    private void A01() {
        this.A07 = (SensorManager) this.A08.getSystemService(A00(42, 6, 41));
        if (this.A07 == null) {
            Toast.makeText(this.A08, A00(0, 21, kotlin.fh.h1), 1).show();
        }
        boolean zRegisterListener = false;
        try {
            zRegisterListener = this.A07.registerListener(this, this.A07.getDefaultSensor(1), 3);
        } catch (Exception unused) {
            Toast.makeText(this.A08, A00(21, 21, 13), 1).show();
        }
        if (zRegisterListener || this.A07 == null) {
            return;
        }
        this.A07.unregisterListener(this);
    }

    public static void A02() {
        A0A = new byte[]{119, 65, 74, 87, 75, 86, 87, 4, 74, 75, 80, 4, 87, 81, 84, 84, 75, 86, 80, 65, SignedBytes.MAX_POWER_OF_TWO, 17, 42, 35, 41, 43, 44, 37, 98, 44, 45, 54, 98, 49, 55, 50, 50, 45, 48, 54, 39, 38, Ascii.NAK, 3, 8, Ascii.NAK, 9, Ascii.DC4};
    }

    public final void A03(InterfaceC3104qu interfaceC3104qu) {
        if (this.A09.isEmpty()) {
            A01();
        } else if (this.A09.contains(interfaceC3104qu)) {
            return;
        }
        this.A09.add(interfaceC3104qu);
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        if (sensorEvent.sensor.getType() != 1) {
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime - this.A04 > 500) {
            this.A03 = 0;
        }
        if (jElapsedRealtime - this.A06 > 100) {
            if ((Math.abs(((((sensorEvent.values[0] + sensorEvent.values[1]) + sensorEvent.values[2]) - this.A00) - this.A01) - this.A02) / (jElapsedRealtime - this.A06)) * 10000.0f > 800.0f) {
                int i = this.A03 + 1;
                this.A03 = i;
                if (i >= 3 && jElapsedRealtime - this.A05 > 1000) {
                    this.A05 = jElapsedRealtime;
                    this.A03 = 0;
                    Iterator<InterfaceC3104qu> it = this.A09.iterator();
                    while (it.hasNext()) {
                        it.next().AH2();
                    }
                }
                this.A04 = jElapsedRealtime;
            }
            this.A06 = jElapsedRealtime;
            this.A00 = sensorEvent.values[0];
            this.A01 = sensorEvent.values[1];
            this.A02 = sensorEvent.values[2];
        }
    }
}

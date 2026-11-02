package kotlin;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.ironsource.C3510b4;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class z51 implements SensorEventListener {
    public final float[] a = new float[9];
    public final float[] b = new float[3];
    public final /* synthetic */ b61 c;
    public final /* synthetic */ CancellableContinuation d;

    public z51(b61 b61Var, CancellableContinuationImpl cancellableContinuationImpl) {
        this.c = b61Var;
        this.d = cancellableContinuationImpl;
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        Sensor sensor;
        w51 w51Var;
        if (sensorEvent == null || (sensor = sensorEvent.sensor) == null || sensor.getType() != 11) {
            return;
        }
        SensorManager sensorManager = this.c.c;
        if (sensorManager != null) {
            sensorManager.unregisterListener(this);
        }
        if (this.d.isActive()) {
            SensorManager.getRotationMatrixFromVector(this.a, sensorEvent.values);
            SensorManager.getOrientation(this.a, this.b);
            float f = this.b[2];
            CancellableContinuation cancellableContinuation = this.d;
            p005kotlin.Result.Companion companion = p005kotlin.Result.INSTANCE;
            b61 b61Var = this.c;
            ex0 ex0Var = b61Var.a;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:hand_signal:right_roll_threshold", C3510b4.i.W);
            Float fValueOf = Float.valueOf(0.1f);
            mr mrVar = yr.e;
            float fFloatValue = ((Number) ex0Var.a("gads:hand_signal:right_roll_threshold", fValueOf, mrVar)).floatValue();
            ex0 ex0Var2 = b61Var.a;
            ex0Var2.getClass();
            Intrinsics.checkNotNullParameter("gads:hand_signal:left_roll_threshold", C3510b4.i.W);
            float fFloatValue2 = ((Number) ex0Var2.a("gads:hand_signal:left_roll_threshold", Float.valueOf(-0.1f), mrVar)).floatValue();
            if (f > fFloatValue) {
                w51Var = w51.d;
            } else {
                w51Var = f < fFloatValue2 ? w51.c : w51.e;
            }
            cancellableContinuation.resumeWith(p005kotlin.Result.m3022constructorimpl(w51Var));
        }
    }
}

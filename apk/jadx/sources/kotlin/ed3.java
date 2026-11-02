package kotlin;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorManager;
import android.os.SystemClock;
import com.google.common.base.Splitter;
import com.ironsource.C3510b4;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class ed3 extends ys3 {
    public final Context a;
    public final ex0 b;
    public final tx c;
    public final CoroutineScope d;
    public SensorManager e;
    public Sensor f;
    public long g;
    public int h;
    public cd3 i;
    public boolean j;

    public ed3(Context context, ex0 flags, tx clock, CoroutineScope backgroundScope) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        this.a = context;
        this.b = flags;
        this.c = clock;
        this.d = backgroundScope;
        Duration.Companion companion = Duration.INSTANCE;
        this.g = DurationKt.toDuration(0, DurationUnit.MILLISECONDS);
    }

    public final void a() {
        synchronized (this) {
            if (this.j) {
                SensorManager sensorManager = this.e;
                if (sensorManager == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("sensorManager");
                    sensorManager = null;
                }
                Sensor sensor = this.f;
                if (sensor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("accelerometer");
                    sensor = null;
                }
                sensorManager.unregisterListener(this, sensor);
                Splitter splitter = f01.a;
                f01.b("Stopped listening for shake gestures.", null);
                this.j = false;
            }
            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
        }
    }

    @Override // kotlin.ys3
    public final void a(Sensor sensor) {
        Intrinsics.checkNotNullParameter(sensor, "sensor");
    }

    @Override // kotlin.ys3
    public final void a(SensorEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ex0 ex0Var = this.b;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:inspector:shake_enabled", C3510b4.i.W);
        if (((Boolean) ex0Var.a("gads:inspector:shake_enabled", Boolean.TRUE, yr.b)).booleanValue()) {
            float fA = bd3.a(event);
            ex0 ex0Var2 = this.b;
            ex0Var2.getClass();
            Intrinsics.checkNotNullParameter("gads:inspector:shake_strength", C3510b4.i.W);
            if (fA < ((Number) ex0Var2.a("gads:inspector:shake_strength", Float.valueOf(2.0f), yr.e)).floatValue()) {
                return;
            }
            Duration.Companion companion = Duration.INSTANCE;
            this.c.getClass();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            DurationUnit durationUnit = DurationUnit.MILLISECONDS;
            long duration = DurationKt.toDuration(jElapsedRealtime, durationUnit);
            long j = this.g;
            ex0 ex0Var3 = this.b;
            ex0Var3.getClass();
            long duration2 = DurationKt.toDuration(500, durationUnit);
            Intrinsics.checkNotNullParameter("gads:inspector:shake_interval", C3510b4.i.W);
            Duration durationM4365boximpl = Duration.m4365boximpl(duration2);
            sr srVar = yr.j;
            if (Duration.m4366compareToLRDsOJo(duration, Duration.m4396plusLRDsOJo(j, ((Duration) ex0Var3.a("gads:inspector:shake_interval", durationM4365boximpl, srVar)).getRawValue())) < 0) {
                return;
            }
            long j2 = this.g;
            ex0 ex0Var4 = this.b;
            ex0Var4.getClass();
            long duration3 = DurationKt.toDuration(3000, durationUnit);
            Intrinsics.checkNotNullParameter("gads:inspector:shake_reset_time_ms", C3510b4.i.W);
            if (Duration.m4366compareToLRDsOJo(duration, Duration.m4396plusLRDsOJo(j2, ((Duration) ex0Var4.a("gads:inspector:shake_reset_time_ms", Duration.m4365boximpl(duration3), srVar)).getRawValue())) > 0) {
                this.h = 0;
            }
            Splitter splitter = f01.a;
            f01.b("Shake detected.", null);
            this.g = duration;
            this.h++;
            CoroutineScope coroutineScope = this.d;
            dd3 block = new dd3(this, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
    }

    public final void b() {
        synchronized (this) {
            ex0 ex0Var = this.b;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:inspector:shake_enabled", C3510b4.i.W);
            if (((Boolean) ex0Var.a("gads:inspector:shake_enabled", Boolean.TRUE, yr.b)).booleanValue()) {
                SensorManager sensorManager = (SensorManager) this.a.getSystemService(SensorManager.class);
                Sensor defaultSensor = sensorManager != null ? sensorManager.getDefaultSensor(1) : null;
                if (!this.j && sensorManager != null && defaultSensor != null) {
                    this.e = sensorManager;
                    this.f = defaultSensor;
                    ex0 ex0Var2 = this.b;
                    ex0Var2.getClass();
                    Duration.Companion companion = Duration.INSTANCE;
                    DurationUnit durationUnit = DurationUnit.MILLISECONDS;
                    long duration = DurationKt.toDuration(500, durationUnit);
                    Intrinsics.checkNotNullParameter("gads:inspector:shake_interval", C3510b4.i.W);
                    Duration durationM4365boximpl = Duration.m4365boximpl(duration);
                    sr srVar = yr.j;
                    sensorManager.registerListener(this, defaultSensor, 3, ((int) Duration.m4377getInWholeMicrosecondsimpl(((Duration) ex0Var2.a("gads:inspector:shake_interval", durationM4365boximpl, srVar)).getRawValue())) / 10);
                    this.c.getClass();
                    long duration2 = DurationKt.toDuration(SystemClock.elapsedRealtime(), durationUnit);
                    ex0 ex0Var3 = this.b;
                    ex0Var3.getClass();
                    long duration3 = DurationKt.toDuration(500, durationUnit);
                    Intrinsics.checkNotNullParameter("gads:inspector:shake_interval", C3510b4.i.W);
                    this.g = Duration.m4395minusLRDsOJo(duration2, ((Duration) ex0Var3.a("gads:inspector:shake_interval", Duration.m4365boximpl(duration3), srVar)).getRawValue());
                    this.j = true;
                    Splitter splitter = f01.a;
                    f01.b("Listening for shake gestures.", null);
                }
                p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
            }
        }
    }
}

package kotlin;

import android.hardware.SensorManager;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class y51 extends Lambda implements Function1 {
    public final /* synthetic */ b61 a;
    public final /* synthetic */ z51 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y51(b61 b61Var, z51 z51Var) {
        super(1);
        this.a = b61Var;
        this.b = z51Var;
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SensorManager sensorManager = this.a.c;
        if (sensorManager != null) {
            sensorManager.unregisterListener(this.b);
        }
        return p005kotlin.Unit.INSTANCE;
    }
}

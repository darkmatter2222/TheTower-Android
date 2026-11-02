package kotlin;

import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: loaded from: classes.dex */
public abstract class w81 extends hs implements x81 {
    public static x81 a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.prewarm.protocol.IPrewarmService");
        return iInterfaceQueryLocalInterface instanceof x81 ? (x81) iInterfaceQueryLocalInterface : new v81(iBinder);
    }
}

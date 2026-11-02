package kotlin;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import android.os.Parcel;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes.dex */
public final class fz0 implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {
    public final lz0 a;
    public final String b;
    public final String c;
    public final LinkedBlockingQueue d;
    public final HandlerThread e;

    public fz0(Context context, String str, String str2) {
        this.b = str;
        this.c = str2;
        HandlerThread handlerThread = new HandlerThread("GassClient");
        this.e = handlerThread;
        handlerThread.start();
        this.a = new lz0(context, handlerThread.getLooper(), this, this, 9200000);
        this.d = new LinkedBlockingQueue();
        a();
    }

    public final void a() {
        this.a.checkAvailabilityAndConnect();
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00c4  */
    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        r81 r81Var;
        lz0 lz0Var;
        try {
            r81Var = (r81) this.a.getService();
        } catch (DeadObjectException | IllegalStateException unused) {
            r81Var = null;
        }
        if (r81Var != null) {
            try {
                try {
                    pz0 pz0Var = new pz0(1, this.b, this.c);
                    p81 p81Var = (p81) r81Var;
                    Parcel parcelObtain = Parcel.obtain();
                    parcelObtain.writeInterfaceToken(p81Var.b);
                    int i = ly.a;
                    parcelObtain.writeInt(1);
                    pz0Var.writeToParcel(parcelObtain, 0);
                    Parcel parcelA = p81Var.a(parcelObtain, 1);
                    rz0 rz0VarCreateFromParcel = parcelA.readInt() == 0 ? null : rz0.CREATOR.createFromParcel(parcelA);
                    parcelA.recycle();
                    if (rz0VarCreateFromParcel.b == null) {
                        try {
                            rz0VarCreateFromParcel.b = fh.a(rz0VarCreateFromParcel.c, er0.a());
                            rz0VarCreateFromParcel.c = null;
                        } catch (np1 | NullPointerException e) {
                            throw new IllegalStateException(e);
                        }
                    }
                    rz0VarCreateFromParcel.a();
                    this.d.put(rz0VarCreateFromParcel.b);
                    lz0 lz0Var2 = this.a;
                    if (lz0Var2 != null && (lz0Var2.isConnected() || this.a.isConnecting())) {
                        this.a.disconnect();
                    }
                } catch (Throwable unused2) {
                    this.d.put((fh) fh.D().t(32768L).b());
                    lz0Var = this.a;
                    if (lz0Var != null && (lz0Var.isConnected() || this.a.isConnecting())) {
                        this.a.disconnect();
                    }
                    this.e.quit();
                }
            } catch (InterruptedException unused3) {
                lz0Var = this.a;
                if (lz0Var != null) {
                }
                this.e.quit();
            } catch (Throwable th) {
                lz0 lz0Var3 = this.a;
                if (lz0Var3 != null && (lz0Var3.isConnected() || this.a.isConnecting())) {
                    this.a.disconnect();
                }
                this.e.quit();
                throw th;
            }
            this.e.quit();
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        try {
            this.d.put((fh) fh.D().t(32768L).b());
        } catch (InterruptedException unused) {
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        try {
            this.d.put((fh) fh.D().t(32768L).b());
        } catch (InterruptedException unused) {
        }
    }
}

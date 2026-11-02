package com.applovin.impl;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.security.SecureRandom;

/* JADX INFO: loaded from: classes2.dex */
public class s2 {
    private final com.applovin.impl.sdk.l a;
    private final com.applovin.impl.sdk.p b;

    /* JADX INFO: Access modifiers changed from: private */
    static class a implements ServiceConnection {
        private final com.applovin.impl.sdk.p a;
        private final x4 b;

        public a(com.applovin.impl.sdk.p pVar, x4 x4Var) {
            this.a = pVar;
            this.b = x4Var;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            try {
                com.applovin.impl.sdk.l.p().unbindService(this);
            } catch (Exception e) {
                if (com.applovin.impl.sdk.p.a()) {
                    this.a.d("LicenseVerificationManager", "Failed to unbind license service", e);
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (com.applovin.impl.sdk.p.a()) {
                this.a.a("LicenseVerificationManager", "License service connected: " + componentName);
            }
            int iNextInt = new SecureRandom().nextInt();
            b bVar = new b(this.a, this.b, iNextInt, new Runnable() { // from class: com.applovin.impl.s2$a$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a();
                }
            });
            Parcel parcelObtain = Parcel.obtain();
            try {
                try {
                    parcelObtain.writeInterfaceToken("com.android.vending.licensing.ILicensingService");
                    parcelObtain.writeLong(iNextInt);
                    parcelObtain.writeString(com.applovin.impl.sdk.l.p().getPackageName());
                    parcelObtain.writeStrongBinder(bVar);
                    if (!iBinder.transact(1, parcelObtain, null, 1)) {
                        throw new RemoteException("transact() returned false");
                    }
                    parcelObtain.recycle();
                } catch (Exception e) {
                    if (com.applovin.impl.sdk.p.a()) {
                        this.a.a("LicenseVerificationManager", "Failed to check license", e);
                    }
                    a();
                    this.b.a((Object) e);
                    parcelObtain.recycle();
                }
            } catch (Throwable th) {
                parcelObtain.recycle();
                throw th;
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            IllegalStateException illegalStateException = new IllegalStateException("License service disconnected");
            if (com.applovin.impl.sdk.p.a()) {
                this.a.k("LicenseVerificationManager", illegalStateException.getMessage());
            }
            this.b.a((Object) illegalStateException);
        }
    }

    private static final class b extends Binder {
        private final com.applovin.impl.sdk.p a;
        private final x4 b;
        private final int c;
        private final Runnable d;

        public b(com.applovin.impl.sdk.p pVar, x4 x4Var, int i, Runnable runnable) {
            this.a = pVar;
            this.b = x4Var;
            this.c = i;
            this.d = runnable;
        }

        @Override // android.os.Binder, android.os.IBinder
        public String getInterfaceDescriptor() {
            return "com.android.vending.licensing.ILicenseResultListener";
        }

        @Override // android.os.Binder
        protected boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i != 1) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            try {
                parcel.enforceInterface("com.android.vending.licensing.ILicenseResultListener");
                int i3 = parcel.readInt();
                String string = parcel.readString();
                String string2 = parcel.readString();
                if (com.applovin.impl.sdk.p.a()) {
                    this.a.a("LicenseVerificationManager", "Verified with code " + i3);
                }
                this.b.b(t2.a().b(string).a(string2).b(i3).a(this.c).a());
                if (parcel2 != null) {
                    parcel2.writeNoException();
                }
                this.d.run();
                return true;
            } catch (Throwable th) {
                try {
                    if (com.applovin.impl.sdk.p.a()) {
                        this.a.a("LicenseVerificationManager", "Exception handling verifyLicense callback", th);
                    }
                    this.b.a((Object) new Exception(th));
                    return false;
                } finally {
                    this.d.run();
                }
            }
        }
    }

    public s2(com.applovin.impl.sdk.l lVar) {
        this.a = lVar;
        this.b = lVar.Q();
    }

    public x4 a(long j) {
        x4 x4Var = new x4("verify_license");
        if (j > 0) {
            o6.a(j, x4Var, new Exception("License Verification Timed Out"), "verify_license_timeout", this.a);
        }
        try {
            if (!com.applovin.impl.sdk.l.p().bindService(new Intent("com.android.vending.licensing.ILicensingService").setPackage("com.android.vending"), new a(this.b, x4Var), 1)) {
                Exception exc = new Exception("Failed to bind to license service");
                if (com.applovin.impl.sdk.p.a()) {
                    this.b.k("LicenseVerificationManager", exc.getMessage());
                }
                x4Var.a((Object) exc);
                return x4Var;
            }
        } catch (Exception e) {
            if (com.applovin.impl.sdk.p.a()) {
                this.b.a("LicenseVerificationManager", "Failed to verify license", e);
            }
            x4Var.a((Object) e);
        }
        return x4Var;
    }
}

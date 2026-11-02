package com.iab.omid.library.applovin.attestation;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;

/* JADX INFO: loaded from: classes4.dex */
public class j implements k {
    private static volatile j d;
    private volatile Boolean a;
    private volatile Boolean b;
    private final Context c;

    private j(Context context) {
        this.c = context;
        c();
    }

    public static j a(Context context) {
        if (d == null) {
            synchronized (j.class) {
                if (d == null) {
                    d = new j(context);
                }
            }
        }
        return d;
    }

    @Override // com.iab.omid.library.applovin.attestation.k
    public boolean a() {
        return c();
    }

    public boolean b() {
        boolean zBooleanValue;
        if (this.b != null) {
            return this.b.booleanValue();
        }
        synchronized (this) {
            if (this.b == null) {
                if (c()) {
                    try {
                        try {
                            PackageManager packageManager = this.c.getPackageManager();
                            if (packageManager == null) {
                                com.iab.omid.library.applovin.utils.d.b("PackageManager is null when checking attestation capability");
                                this.b = Boolean.FALSE;
                            } else {
                                Boolean boolValueOf = Boolean.valueOf(packageManager.hasSystemFeature("com.amazon.privacypass"));
                                this.b = boolValueOf;
                                zBooleanValue = boolValueOf.booleanValue();
                            }
                        } catch (SecurityException e) {
                            com.iab.omid.library.applovin.utils.d.a("Security exception when checking attestation capability", e);
                            this.b = Boolean.FALSE;
                            return false;
                        }
                    } catch (Exception e2) {
                        com.iab.omid.library.applovin.utils.d.a("Unexpected error when checking attestation capability", e2);
                        this.b = Boolean.FALSE;
                        return false;
                    }
                } else {
                    this.b = Boolean.FALSE;
                }
                return false;
            }
            zBooleanValue = this.b.booleanValue();
            return zBooleanValue;
        }
    }

    public boolean c() {
        boolean zBooleanValue;
        if (this.a != null) {
            return this.a.booleanValue();
        }
        synchronized (this) {
            if (this.a != null) {
                zBooleanValue = this.a.booleanValue();
            } else {
                Boolean boolValueOf = Boolean.valueOf(this.c != null && Build.MANUFACTURER.equalsIgnoreCase("Amazon") && Build.MODEL.toLowerCase().startsWith("aft") && Build.VERSION.SDK_INT <= 30);
                this.a = boolValueOf;
                zBooleanValue = boolValueOf.booleanValue();
            }
        }
        return zBooleanValue;
    }
}

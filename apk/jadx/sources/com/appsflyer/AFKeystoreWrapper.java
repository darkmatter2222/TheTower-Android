package com.appsflyer;

import android.content.Context;
import android.security.keystore.KeyGenParameterSpec;
import com.ironsource.C3510b4;
import com.ironsource.adapters.facebook.FacebookConstants;
import java.io.IOException;
import java.math.BigInteger;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.util.Calendar;
import java.util.Enumeration;
import javax.security.auth.x500.X500Principal;

/* JADX INFO: loaded from: classes2.dex */
public class AFKeystoreWrapper {
    private Context getCurrencyIso4217Code;
    public KeyStore getRevenue;
    public final Object getMediationNetwork = new Object();
    public String getMonetizationNetwork = "";
    public int AFAdRevenueData = 0;

    public AFKeystoreWrapper(Context context) {
        this.getCurrencyIso4217Code = context;
        AFLogger.afInfoLog("Initialising KeyStore..");
        try {
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            this.getRevenue = keyStore;
            keyStore.load(null);
        } catch (IOException | KeyStoreException | NoSuchAlgorithmException | CertificateException e) {
            AFLogger.afErrorLog("Couldn't load keystore instance of type: AndroidKeyStore", e);
        }
    }

    private static boolean getRevenue(String str) {
        return str.startsWith("com.appsflyer");
    }

    public final String AFAdRevenueData() {
        String str;
        synchronized (this.getMediationNetwork) {
            str = this.getMonetizationNetwork;
        }
        return str;
    }

    public final int getCurrencyIso4217Code() {
        int i;
        synchronized (this.getMediationNetwork) {
            i = this.AFAdRevenueData;
        }
        return i;
    }

    public final String getMediationNetwork() {
        StringBuilder sb = new StringBuilder("com.appsflyer,KSAppsFlyerId=");
        synchronized (this.getMediationNetwork) {
            sb.append(this.getMonetizationNetwork).append(",KSAppsFlyerRICounter=");
            sb.append(this.AFAdRevenueData);
        }
        return sb.toString();
    }

    public final void getMediationNetwork(String str) {
        AFLogger.afInfoLog("Creating a new key with alias: ".concat(String.valueOf(str)));
        try {
            Calendar calendar = Calendar.getInstance();
            Calendar calendar2 = Calendar.getInstance();
            calendar2.add(1, 5);
            synchronized (this.getMediationNetwork) {
                if (this.getRevenue.containsAlias(str)) {
                    AFLogger.afInfoLog("Alias already exists: ".concat(String.valueOf(str)));
                } else {
                    KeyGenParameterSpec keyGenParameterSpecBuild = new KeyGenParameterSpec.Builder(str, 3).setCertificateSubject(new X500Principal("CN=AndroidSDK, O=AppsFlyer")).setCertificateSerialNumber(BigInteger.ONE).setCertificateNotBefore(calendar.getTime()).setCertificateNotAfter(calendar2.getTime()).build();
                    KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA", "AndroidKeyStore");
                    keyPairGenerator.initialize(keyGenParameterSpecBuild);
                    keyPairGenerator.generateKeyPair();
                }
            }
        } catch (Throwable th) {
            AFLogger.afErrorLog(new StringBuilder("Exception ").append(th.getMessage()).append(" occurred").toString(), th);
        }
    }

    public final boolean getRevenue() {
        boolean z;
        synchronized (this.getMediationNetwork) {
            KeyStore keyStore = this.getRevenue;
            z = false;
            if (keyStore != null) {
                try {
                    Enumeration<String> enumerationAliases = keyStore.aliases();
                    while (enumerationAliases.hasMoreElements()) {
                        String strNextElement = enumerationAliases.nextElement();
                        if (strNextElement != null && getRevenue(strNextElement)) {
                            String[] strArrSplit = strNextElement.split(FacebookConstants.PLACEMENT_IDS_SEPARATOR);
                            if (strArrSplit.length != 3) {
                                break;
                            }
                            AFLogger.afInfoLog("Found a matching AF key with alias:\n".concat(String.valueOf(strNextElement)));
                            z = true;
                            String[] strArrSplit2 = strArrSplit[1].trim().split(C3510b4.j.b);
                            String[] strArrSplit3 = strArrSplit[2].trim().split(C3510b4.j.b);
                            if (strArrSplit2.length != 2 || strArrSplit3.length != 2) {
                                break;
                                break;
                            }
                            this.getMonetizationNetwork = strArrSplit2[1].trim();
                            this.AFAdRevenueData = Integer.parseInt(strArrSplit3[1].trim());
                            break;
                        }
                    }
                } catch (Throwable th) {
                    AFLogger.afErrorLog(new StringBuilder("Couldn't list KeyStore Aliases: ").append(th.getClass().getName()).toString(), th);
                }
            }
        }
        return z;
    }
}

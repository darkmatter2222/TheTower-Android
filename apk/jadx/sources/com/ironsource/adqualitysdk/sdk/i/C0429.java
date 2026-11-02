package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.ISAdQualityConfig;
import com.ironsource.adqualitysdk.sdk.ISAdQualityInitError;
import com.ironsource.adqualitysdk.sdk.ISAdQualityLogLevel;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ܕ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0429 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final /* synthetic */ C0272 f1972;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final /* synthetic */ Activity f1973;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ Application f1974;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ String f1975;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ String f1976;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ ISAdQualityConfig f1977;

    public C0429(C0272 c0272, ISAdQualityConfig iSAdQualityConfig, String str, String str2, Application application, Activity activity) {
        this.f1972 = c0272;
        this.f1977 = iSAdQualityConfig;
        this.f1976 = str;
        this.f1975 = str2;
        this.f1974 = application;
        this.f1973 = activity;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        try {
            String userId = this.f1977.getUserId();
            C0272 c0272 = this.f1972;
            ISAdQualityLogLevel logLevel = this.f1977.getLogLevel();
            synchronized (c0272) {
                c0272.f1360 = logLevel;
            }
            this.f1972.m2015();
            boolean zIsEmpty = TextUtils.isEmpty(this.f1976);
            if (zIsEmpty) {
                String strDecrypt = StringFog.decrypt("KdMOzK7XefER5Bvy\n", "aLdfuc+7EIU=\n");
                AbstractC0250.m2000(strDecrypt, strDecrypt, StringFog.decrypt("wN+vzVKxpYzz2KjeG6egkeGRodhWtemM7ZE=\n", "ibHGuTvQyeU=\n") + this.f1975, true);
            } else {
                String strDecrypt2 = StringFog.decrypt("2eKHV+MfZs3h1ZJp\n", "mIbWIoJzD7k=\n");
                AbstractC0250.m2000(strDecrypt2, strDecrypt2, StringFog.decrypt("mid+KM1PfpipIHk7hFl7hbtpdizUDnmUqmk=\n", "00kXXKQuEvE=\n") + this.f1976, true);
            }
            C0160.m1933(this.f1974.getApplicationContext()).m1936();
            C0272.m2013(this.f1972, this.f1977.isTestMode());
            if (this.f1977.isTestMode()) {
                AbstractC0250.m1992(StringFog.decrypt("3FTMkNtfx5TkY9mu\n", "nTCd5bozruA=\n"), StringFog.decrypt("2etHnWoVmzKvizWXTHuyfPqKcrwDN7Vl64piulcz/Gfr2WGeTD+5LvrYYLYCev0zy9xwvVco/GTn\n3n3zVz6vZ8PFcbYeL65m64piuk83/HHrinG6UDi9YerPcfICeg==\n", "jqoV0yNb3BM=\n"));
            }
            try {
                Class.forName(StringFog.decrypt("oZjjjSbmQFqvham+OvZKF5SX9JQ=\n", "wPaH/0mPJHQ=\n"));
            } catch (Throwable unused) {
            }
            Activity activity = this.f1973;
            if (activity != null) {
                AbstractC0145.m1928(activity);
            } else {
                Application application = this.f1974;
                String str = AbstractC0145.f851;
                if (application != null) {
                    AbstractC0145.m1922(application.getApplicationContext());
                }
            }
            if (zIsEmpty) {
                C0272.m2011(this.f1972).f378 = this.f1975;
            } else {
                C0272.m2011(this.f1972).f379 = this.f1976;
            }
            C0272.m2011(this.f1972).f375 = this.f1977.getInitializationSource();
            C0272.m2011(this.f1972).f374 = this.f1977.getCoppa();
            C0272.m2011(this.f1972).f373 = this.f1977.getDeviceIdType();
            if (this.f1977.getMetaData() != null) {
                r rVarM2011 = C0272.m2011(this.f1972);
                Map<String, String> metaData = this.f1977.getMetaData();
                rVarM2011.f372.clear();
                if (metaData != null) {
                    rVarM2011.f372.putAll(metaData);
                }
                if (this.f1977.getMetaData().containsKey(StringFog.decrypt("hm8JkcwknvqAZwKMzCOU4pZg\n", "8w5t4pNX+4k=\n"))) {
                    C0272.m2011(this.f1972).f370 = this.f1977.getMetaData().get(StringFog.decrypt("rFtbf3SYUVqqU1BidJ9bQrxU\n", "2To/DCvrNCk=\n"));
                }
            }
            Context applicationContext = this.f1974.getApplicationContext();
            this.f1972.f1359 = applicationContext;
            C0765.f2827.m2266(applicationContext, !zIsEmpty ? this.f1976 : this.f1975);
            this.f1972.f1355 = new C0853(applicationContext);
            C0272 c0273 = this.f1972;
            c0273.f1353 = new C0841(applicationContext, c0273.f1358.f1094, "B0r1sW@sH3re");
            AbstractC0953 abstractC0953M2334 = AbstractC0953.m2334();
            C0272 c0274 = this.f1972;
            abstractC0953M2334.mo2355(applicationContext, c0274.f1355, c0274.f1358, new C0568(this), C0272.m2006(c0274));
            C0272 c0275 = this.f1972;
            C0272 c0276 = this.f1972;
            c0275.f1352 = new C0940(applicationContext, c0276.f1355, c0276.f1358.f1095);
            String strM2108 = AbstractC0460.m2108(applicationContext);
            AbstractC0953 abstractC0953M2335 = AbstractC0953.m2334();
            C0565 c0565 = new C0565(this, strM2108);
            C0961 c0961 = (C0961) abstractC0953M2335;
            Handler handler = c0961.f3422;
            if (handler != null) {
                handler.post(new C0964(c0961, c0565));
            }
            AbstractC0953 abstractC0953M2336 = AbstractC0953.m2334();
            C0563 c0563 = new C0563(this);
            C0961 c0962 = (C0961) abstractC0953M2336;
            Handler handler2 = c0962.f3422;
            if (handler2 != null) {
                handler2.post(new C0968(c0962, c0563));
            }
            C0272.m2012(this.f1972, applicationContext);
            this.f1972.f1354 = new C0690(applicationContext, C0272.m2011(this.f1972), this.f1972.f1358, this.f1973 != null, strM2108, new C0516(this));
            if (!this.f1977.isUserIdSet()) {
                C0272.m2011(this.f1972).f371 = true;
                C0841 c0841 = new C0841(this.f1972.f1354.f2628, C0690.f2620, C0690.f2619);
                String str2 = C0690.f2617;
                String strM2291 = c0841.m2291(str2);
                if (TextUtils.isEmpty(strM2291)) {
                    strM2291 = UUID.randomUUID().toString();
                    c0841.m2292(str2, strM2291);
                }
                userId = strM2291;
            }
            if (this.f1972.m2019()) {
                this.f1972.f1354.m2245(new C0514(this));
            }
            this.f1972.f1354.m2244(new C0500(this));
            C0303 c0303 = new C0303(new C0495(this));
            C0272 c0277 = this.f1972;
            C0272 c0278 = this.f1972;
            c0277.f1357 = new C0392(c0278.f1352, c0278.f1354, strM2108, c0303, new C0474(this));
            C0272 c0279 = this.f1972;
            c0279.f1357.f1895.f3647 = new C0453(this);
            c0279.f1350 = new C0193(this.f1972.f1357);
            C0272 c02710 = this.f1972;
            c02710.f1349 = new C0740(c02710.f1354);
            AbstractC0250.m1997(StringFog.decrypt("mE0X1kS2ZxygegLo\n", "2SlGoyXaDmg=\n"), StringFog.decrypt("yUKssXc2GuzpZZSGYghb8/Rwn6FPLRyg5n6f9VMxF7qg\n", "gBHt1SZDe4A=\n") + this.f1972.f1358.f1097);
            C0272 c02711 = this.f1972;
            Activity activity2 = this.f1973;
            c02711.m2024(activity2 != null ? activity2 : applicationContext, userId, true, false, true);
            C0272.m2010(this.f1972, applicationContext);
            C0272.m2009(this.f1972);
            C0272.m2007(this.f1972);
        } catch (Throwable th) {
            String strDecrypt3 = StringFog.decrypt("3eF83x2+0Fvx52fRA/fDXPb0Lvk8391k7fJi2RvnmWbc2A==\n", "mJMOsG+euTU=\n");
            AbstractC1071.m2436(StringFog.decrypt("CpmBAj5rv+syrpQ8\n", "S/3Qd18H1p8=\n"), strDecrypt3, th, true, false, true);
            C0272.m2014(this.f1972.f1351, ISAdQualityInitError.EXCEPTION_ON_INIT, strDecrypt3);
        }
    }
}

package com.ironsource.adqualitysdk.sdk.i;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ՙ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractC0340 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final ScheduledExecutorService f1609;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static final Handler f1610;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static final Handler f1611 = new Handler(Looper.getMainLooper());

    static {
        Handler handler;
        HandlerThread handlerThread;
        int i = 0;
        while (true) {
            if (i < 3) {
                try {
                    handlerThread = new HandlerThread(StringFog.decrypt("/vnfUz4gKnDL3w==\n", "qrudFGpIWBU=\n"));
                    try {
                        handlerThread.start();
                        handler = new Handler(handlerThread.getLooper());
                        break;
                    } catch (Throwable unused) {
                        if (handlerThread != null) {
                            try {
                                handlerThread.quitSafely();
                            } catch (Throwable unused2) {
                                AbstractC0250.m2001(StringFog.decrypt("3wOvAlu8PB3nNLo8\n", "nmf+dzrQVWk=\n"), StringFog.decrypt("FzlPej85M2E+eEVkPzxncHE6R3UxOmF6JDZCNjI8fXE9PVQ=\n", "UVgmFlpdExU=\n"), true);
                            }
                        }
                        AbstractC0250.m2001(StringFog.decrypt("cRPzfqfGCS5JJOZA\n", "MHeiC8aqYFo=\n"), StringFog.decrypt("62nO9wJ81qvCKMTpAnmCuo1qxvgMf4Sw2GbDuw95mLvBbdW3R2qTq99xzvUANtjx\n", "rQinm2cY9t8=\n"), true);
                        i++;
                    }
                } catch (Throwable unused3) {
                    handlerThread = null;
                }
            }
            handler = null;
            i++;
        }
        f1610 = handler;
        f1609 = handler == null ? Executors.newSingleThreadScheduledExecutor() : null;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static void m2053(AbstractRunnableC0757 abstractRunnableC0757) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            abstractRunnableC0757.run();
        } else {
            m2055(abstractRunnableC0757);
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static void m2054(AbstractRunnableC0757 abstractRunnableC0757) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            m2057(abstractRunnableC0757);
        } else {
            abstractRunnableC0757.run();
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static void m2055(AbstractRunnableC0757 abstractRunnableC0757) {
        try {
            f1611.post(abstractRunnableC0757);
        } catch (Throwable unused) {
            AbstractC0250.m2001(StringFog.decrypt("q7jR38WbYyqTj8Th\n", "6tyAqqT3Cl4=\n"), StringFog.decrypt("I1VBEMkwbWwKFFgT3yBtdwsURR3FOm1sDUZNHcg=\n", "ZTQofKxUTRg=\n"), false);
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static void m2056(AbstractRunnableC0757 abstractRunnableC0757, long j) {
        try {
            f1611.postDelayed(abstractRunnableC0757, j);
        } catch (Throwable unused) {
            AbstractC0250.m2001(StringFog.decrypt("r0RiIYO5txOXc3cf\n", "7iAzVOLV3mc=\n"), StringFog.decrypt("wnzYTze64THrPcFMIarhIeFx0Fo3uuEq6j3cQjuw4THsb9RCNg==\n", "hB2xI1LewUU=\n"), false);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m2057(AbstractRunnableC0757 abstractRunnableC0757) {
        try {
            Handler handler = f1610;
            if (handler != null) {
                handler.post(abstractRunnableC0757);
                return;
            }
            ScheduledExecutorService scheduledExecutorService = f1609;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.execute(abstractRunnableC0757);
            } else {
                AbstractC0250.m2001(StringFog.decrypt("4GJ/itkuA/nYVWq0\n", "oQYu/7hCao0=\n"), StringFog.decrypt("p/ATwDY+0iib8EbMM33RLof7X8clfdY9yflSzjs/2CyCv1baMj7MO4btE8MhPNAjiP1fxw==\n", "6Z8zoldduU8=\n"), false);
            }
        } catch (Throwable unused) {
            AbstractC0250.m2001(StringFog.decrypt("3S0dephpH3vlGghE\n", "nElMD/kFdg8=\n"), StringFog.decrypt("ZtszEz613xBPmioQKKXfC06aOB44upgWT880G3u5ngpE1j8N\n", "ILpaf1vR/2Q=\n"), false);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m2058(AbstractRunnableC0757 abstractRunnableC0757, long j) {
        try {
            Handler handler = f1610;
            if (handler != null) {
                handler.postDelayed(abstractRunnableC0757, j);
                return;
            }
            ScheduledExecutorService scheduledExecutorService = f1609;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.schedule(abstractRunnableC0757, j, TimeUnit.MILLISECONDS);
            } else {
                AbstractC0250.m2001(StringFog.decrypt("N1xs8lOAuC4Pa3nM\n", "djg9hzLs0Vo=\n"), StringFog.decrypt("XZs83TADx4Bhm2nRNUDEhn2QcNojQMOVM5J90z0CzYR41HnHNAPZk3yGPN4nAcWLcpZw2g==\n", "E/Qcv1FgrOc=\n"), false);
            }
        } catch (Throwable unused) {
            AbstractC0250.m2001(StringFog.decrypt("yhIXbpi67/byJQJQ\n", "i3ZGG/nWhoI=\n"), StringFog.decrypt("cWwEXc96+WRYLR1e2Wr5dFJhDEjPevl/WS0PUMl1vmJYeANVina4flNhCEM=\n", "Nw1tMaoe2RA=\n"), false);
        }
    }
}

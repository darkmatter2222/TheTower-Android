package com.appsflyer.internal;

import android.content.Context;
import android.os.Build;
import android.os.Process;
import com.appsflyer.AFLogger;
import com.ironsource.Ba;
import com.ironsource.C3510b4;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class AFf1kSDK {
    private static AFf1kSDK AFAdRevenueData;
    private final Map<String, String> getCurrencyIso4217Code = new HashMap<String, String>() { // from class: com.appsflyer.internal.AFf1kSDK.3
        {
            put("aa", "ro.arch");
            put("ab", "ro.chipname");
            put("ac", "ro.dalvik.vm.native.bridge");
            put("ad", "persist.sys.nativebridge");
            put("ae", "ro.enable.native.bridge.exec");
            put("af", "dalvik.vm.isa.x86.features");
            put("ag", "dalvik.vm.isa.x86.variant");
            put("ah", "ro.zygote");
            put("ai", "ro.allow.mock.location");
            put("aj", "ro.dalvik.vm.isa.arm");
            put("ak", "dalvik.vm.isa.arm.features");
            put("al", "dalvik.vm.isa.arm.variant");
            put("am", "dalvik.vm.isa.arm64.features");
            put("an", "dalvik.vm.isa.arm64.variant");
            put("ao", "vzw.os.rooted");
            put(Ba.c, "ro.build.user");
            put("aq", "ro.kernel.qemu");
            put("ar", "ro.hardware");
            put("as", "ro.product.cpu.abi");
            put("at", "ro.product.cpu.abilist");
            put("au", "ro.product.cpu.abilist32");
            put("av", "ro.product.cpu.abilist64");
        }
    };

    enum AFa1tSDK {
        XPOSED("xps"),
        FRIDA("frd");

        String AFAdRevenueData;

        AFa1tSDK(String str) {
            this.AFAdRevenueData = str;
        }
    }

    enum AFa1ySDK {
        HOOKING("hk"),
        DEBUGGABLE("dbg");

        String getMediationNetwork;

        AFa1ySDK(String str) {
            this.getMediationNetwork = str;
        }
    }

    private AFf1kSDK() {
    }

    private AFg1gSDK AFAdRevenueData(Context context) {
        AFg1gSDK aFg1gSDK = new AFg1gSDK();
        try {
            aFg1gSDK.getRevenue(AFa1ySDK.HOOKING.getMediationNetwork, AFAdRevenueData());
            aFg1gSDK.getRevenue(AFa1ySDK.DEBUGGABLE.getMediationNetwork, Boolean.valueOf(getMonetizationNetwork(context)));
            return aFg1gSDK;
        } catch (Throwable th) {
            AFLogger.afErrorLogForExcManagerOnly("failed to perform analysis checks", th);
            return aFg1gSDK;
        }
    }

    private static String AFAdRevenueData() {
        StringBuilder sb = new StringBuilder();
        try {
            Iterator<Map.Entry<Thread, StackTraceElement[]>> it = Thread.getAllStackTraces().entrySet().iterator();
            int i = 0;
            int i2 = 0;
            while (it.hasNext()) {
                for (StackTraceElement stackTraceElement : it.next().getValue()) {
                    if (stackTraceElement.toString().contains("de.robv.android.xposed") && i2 <= 2) {
                        i2++;
                        sb.append(AFa1tSDK.XPOSED.AFAdRevenueData);
                        if (stackTraceElement.getMethodName().equals(C3510b4.i.Z)) {
                            sb.append("+a");
                        }
                        if (stackTraceElement.getMethodName().equals("handleHookedMethod")) {
                            sb.append("+h");
                        }
                        sb.append(";");
                    }
                    if (stackTraceElement.getClassName().equals("com.android.internal.os.ZygoteInit")) {
                        i++;
                    }
                }
            }
            if (i > 1) {
                sb.append("mz;");
            }
        } catch (Throwable th) {
            AFLogger.afErrorLogForExcManagerOnly("hooking check error", th);
        }
        try {
            if (AFAdRevenueData(new StringBuilder("/proc/").append(Process.myPid()).append("/maps").toString(), "frida")) {
                sb.append(AFa1tSDK.FRIDA.AFAdRevenueData);
                if (Build.VERSION.SDK_INT < 29 && AFAdRevenueData("/proc/net/tcp", "69A2")) {
                    sb.append("+prt");
                }
            }
        } catch (Exception e) {
            AFLogger.afErrorLogForExcManagerOnly("frida detection error", e);
            sb.append(e.getMessage().toLowerCase(Locale.getDefault()));
        }
        sb.append(";");
        return sb.toString();
    }

    private static boolean AFAdRevenueData(String str, String str2) throws Exception {
        String line;
        try {
            FileInputStream fileInputStream = new FileInputStream(new File(str));
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream, Charset.defaultCharset()));
            String lowerCase = str2.toLowerCase(Locale.getDefault());
            do {
                line = bufferedReader.readLine();
                if (line == null) {
                    bufferedReader.close();
                    fileInputStream.close();
                    return false;
                }
            } while (!new HashSet(Arrays.asList(line.toLowerCase(Locale.getDefault()).split("[\\s.,\\]\\-:/_\\[]"))).contains(lowerCase));
            bufferedReader.close();
            fileInputStream.close();
            return true;
        } catch (FileNotFoundException e) {
            AFLogger.afErrorLogForExcManagerOnly("FNF", e);
            throw new Exception("FNF");
        } catch (IOException e2) {
            AFLogger.afErrorLogForExcManagerOnly("IOF", e2);
            throw new Exception("IOF");
        } catch (Exception e3) {
            AFLogger.afErrorLogForExcManagerOnly("GF", e3);
            throw new Exception("GF");
        }
    }

    private static String getCurrencyIso4217Code(String str) {
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
        } catch (Exception e) {
            AFLogger.afErrorLogForExcManagerOnly("error in props rfl", e);
            return null;
        }
    }

    private AFg1gSDK getMediationNetwork() throws Throwable {
        AFg1gSDK aFg1gSDK = new AFg1gSDK();
        try {
            for (Map.Entry<String, String> entry : this.getCurrencyIso4217Code.entrySet()) {
                String currencyIso4217Code = getCurrencyIso4217Code(entry.getValue());
                if (currencyIso4217Code != null && !currencyIso4217Code.equals("")) {
                    aFg1gSDK.getRevenue(entry.getKey(), currencyIso4217Code);
                }
            }
        } catch (Exception e) {
            AFLogger.afErrorLogForExcManagerOnly("failed to create props", e);
        }
        return aFg1gSDK;
    }

    private static boolean getMonetizationNetwork(Context context) {
        return (context.getApplicationInfo().flags & 2) != 0;
    }

    private static boolean getMonetizationNetwork(String str) {
        return str.matches("\\d+");
    }

    public static AFf1kSDK getRevenue() {
        if (AFAdRevenueData == null) {
            AFAdRevenueData = new AFf1kSDK();
        }
        return AFAdRevenueData;
    }

    /* JADX WARN: Code duplicated, block: B:6:0x0009  */
    public final Object getRevenue(Context context, String str) throws Throwable {
        String str2 = null;
        if (str != null) {
            try {
                str2 = getMonetizationNetwork(str) ? null : "invalid timestamp";
            } catch (Exception e) {
                AFLogger.afErrorLogForExcManagerOnly("could not get anti fraud data", e);
                return str2;
            }
        }
        AFg1gSDK aFg1gSDK = new AFg1gSDK();
        aFg1gSDK.getRevenue("pr", getMediationNetwork());
        aFg1gSDK.getRevenue("an", AFAdRevenueData(context));
        return aFg1gSDK;
    }
}

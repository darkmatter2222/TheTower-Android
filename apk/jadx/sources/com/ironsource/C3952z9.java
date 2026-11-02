package com.ironsource;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.Log;
import com.applovin.sdk.AppLovinMediationProvider;
import com.ironsource.environment.StringUtils;
import com.unity3d.mediation.adapters.levelplay.LevelPlayBaseAdapter;

/* JADX INFO: renamed from: com.ironsource.z9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
class C3952z9 {
    private static final String a = "IntegrationHelper";
    private static final String b = "getNetworkSDKVersion";
    private static final String c = "getAdapterSDKVersion";
    private static final String d = "getAdapterVersion";
    private static final String e = "getVersion";

    /* JADX INFO: renamed from: com.ironsource.z9$a */
    class a extends Thread {
        final /* synthetic */ Context a;

        a(Context context) {
            this.a = context;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                Log.w(C3952z9.a, "--------------- Google Play Services --------------");
                if (!this.a.getPackageManager().getApplicationInfo(this.a.getPackageName(), 128).metaData.containsKey("com.google.android.gms.version")) {
                    Log.e(C3952z9.a, "Google Play Services - MISSING");
                    return;
                }
                Log.i(C3952z9.a, "Google Play Services - VERIFIED");
                String strB = com.ironsource.mediationsdk.p.g().b(this.a);
                if (TextUtils.isEmpty(strB)) {
                    return;
                }
                Log.i(C3952z9.a, "GAID is: " + strB + " (use this for test devices)");
            } catch (Exception e) {
                C3801r4.d().a(e);
                Log.e(C3952z9.a, "Google Play Services - MISSING");
            }
        }
    }

    C3952z9() {
    }

    private static void a(Context context) {
        new a(context).start();
    }

    private static void a(Object obj) {
        try {
            Log.i(a, "Adapter Version - " + ((String) obj.getClass().getMethod(obj instanceof LevelPlayBaseAdapter ? d : "getVersion", null).invoke(obj, null)));
        } catch (Exception e2) {
            C3801r4.d().a(e2);
            Log.w(a, "Unable to get adapter version");
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x003f  */
    private static boolean a(Context context, String str) {
        byte b2;
        Object objNewInstance;
        try {
            String lowerCase = StringUtils.toLowerCase(str);
            int iHashCode = lowerCase.hashCode();
            if (iHashCode != -805296079) {
                if (iHashCode != 92668925) {
                    if (iHashCode == 497130182 && lowerCase.equals("facebook")) {
                        b2 = 0;
                    } else {
                        b2 = -1;
                    }
                } else if (lowerCase.equals(AppLovinMediationProvider.ADMOB)) {
                    b2 = 1;
                } else {
                    b2 = -1;
                }
            } else if (lowerCase.equals("vungle")) {
                b2 = 2;
            } else {
                b2 = -1;
            }
            if (b2 == 0) {
                Log.i(a, "--------------- Meta --------------");
            } else if (b2 == 1) {
                Log.i(a, "--------------- Google (AdMob and Ad Manager) --------------");
            } else if (b2 != 2) {
                Log.i(a, "--------------- " + str + " --------------");
            } else {
                Log.i(a, "--------------- Liftoff Monetization --------------");
            }
            try {
                Class<?> cls = Class.forName("com.ironsource.adapters." + StringUtils.toLowerCase(str) + "." + str + "Adapter");
                try {
                    objNewInstance = cls.getDeclaredConstructor(String.class).newInstance(str);
                } catch (NoSuchMethodException unused) {
                    objNewInstance = cls.getConstructor(null).newInstance(null);
                }
                b(objNewInstance);
                a(objNewInstance);
                return true;
            } catch (ClassNotFoundException e2) {
                C3801r4.d().a(e2);
                Log.e(a, "Adapter - MISSING");
                return false;
            } catch (Exception e3) {
                C3801r4.d().a(e3);
                Log.e(a, "Failed to instantiate adapter");
                return false;
            }
        } catch (Exception e4) {
            C3801r4.d().a(e4);
            Log.e(a, "isAdapterValid " + str, e4);
            return false;
        }
    }

    static void b(Context context) {
        Log.i(a, "Verifying Integration:");
        c(context);
        for (String str : C3934y9.a()) {
            if (!a(context, str)) {
                String lowerCase = StringUtils.toLowerCase(str);
                lowerCase.hashCode();
                lowerCase.hashCode();
                switch (lowerCase) {
                    case "vungle":
                        Log.i(a, ">>>> Liftoff Monetization - NOT VERIFIED");
                        break;
                    case "admob":
                        Log.i(a, ">>>> Google (AdMob and Ad Manager) - NOT VERIFIED");
                        break;
                    case "facebook":
                        Log.i(a, ">>>> Meta - NOT VERIFIED");
                        break;
                    default:
                        Log.e(a, ">>>> " + str + " - NOT VERIFIED");
                        break;
                }
            } else {
                String lowerCase2 = StringUtils.toLowerCase(str);
                lowerCase2.hashCode();
                lowerCase2.hashCode();
                switch (lowerCase2.hashCode()) {
                    case -805296079:
                        if (lowerCase2.equals("vungle")) {
                        }
                        break;
                    case 92668925:
                        if (lowerCase2.equals(AppLovinMediationProvider.ADMOB)) {
                        }
                        break;
                    case 497130182:
                        if (!lowerCase2.equals("facebook")) {
                        }
                        break;
                    default:
                        break;
                }
                /*  JADX ERROR: Method code generation error
                    java.lang.NullPointerException: Switch insn not found in header
                    	at java.base/java.util.Objects.requireNonNull(Objects.java:235)
                    	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:246)
                    	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:90)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                    	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                    	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                    	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:207)
                    	at jadx.core.dex.regions.loops.LoopRegion.generate(LoopRegion.java:173)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
                    	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
                    	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
                    	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
                    	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
                    	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                    	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                    	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                    */
                /*
                    Method dump skipped, instruction units count: 278
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.ironsource.C3952z9.b(android.content.Context):void");
            }

            private static void b(Object obj) {
                try {
                    Log.i(a, "SDK Version - " + ((String) obj.getClass().getMethod(obj instanceof LevelPlayBaseAdapter ? b : c, null).invoke(obj, null)));
                } catch (Exception e2) {
                    C3801r4.d().a(e2);
                    Log.w(a, "Unable to get SDK version");
                }
            }

            private static void c(Context context) {
                Log.i(a, "*** Permissions ***");
                PackageManager packageManager = context.getPackageManager();
                if (packageManager.checkPermission("android.permission.INTERNET", context.getPackageName()) == 0) {
                    Log.i(a, "android.permission.INTERNET - VERIFIED");
                } else {
                    Log.e(a, "android.permission.INTERNET - MISSING");
                }
                if (packageManager.checkPermission("android.permission.ACCESS_NETWORK_STATE", context.getPackageName()) == 0) {
                    Log.i(a, "android.permission.ACCESS_NETWORK_STATE - VERIFIED");
                } else {
                    Log.e(a, "android.permission.ACCESS_NETWORK_STATE - MISSING");
                }
            }
        }

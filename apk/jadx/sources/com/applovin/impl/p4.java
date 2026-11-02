package com.applovin.impl;

import com.applovin.impl.sdk.utils.StringUtils;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public abstract class p4 {
    private static final AtomicReference a = new AtomicReference();

    public static String a() {
        return "iabtechlab-Applovin";
    }

    /* JADX WARN: Code duplicated, block: B:40:0x005e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:? A[Catch: all -> 0x0068, SYNTHETIC, TRY_LEAVE, TryCatch #2 {all -> 0x0068, blocks: (B:10:0x001c, B:18:0x004b, B:35:0x0067, B:34:0x0064, B:30:0x005e, B:11:0x002c, B:16:0x0046, B:26:0x0059, B:25:0x0056), top: B:44:0x001c, inners: #0, #3 }] */
    public static String a(com.applovin.impl.sdk.l lVar, Map map) {
        String str = (String) a.get();
        if (StringUtils.isValidString(str)) {
            return str;
        }
        URL urlB = b();
        if (urlB == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        try {
            InputStream inputStreamA = lVar.I().a(urlB.toString(), (String) null, (List) null, false, map);
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamA));
                while (true) {
                    try {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        sb.append(line).append("\n");
                    } catch (Throwable th) {
                        try {
                            bufferedReader.close();
                            throw th;
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                            throw th;
                        }
                    }
                    if (inputStreamA != null) {
                        throw th;
                    }
                    try {
                        inputStreamA.close();
                        throw th;
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                        throw th;
                    }
                }
                bufferedReader.close();
                if (inputStreamA != null) {
                    inputStreamA.close();
                }
            } catch (Throwable th4) {
                if (inputStreamA != null) {
                    throw th4;
                }
                inputStreamA.close();
                throw th4;
            }
        } catch (Throwable th5) {
            lVar.Q().a("OpenMeasurementTestParameters", th5);
            lVar.E().a("OpenMeasurementTestParameters", "getTestValidationJavaScriptContent", th5);
        }
        String string = sb.toString();
        a.set(string);
        return string;
    }

    public static URL b() {
        try {
            return new URL("https://compliance.iabtechnologylab.com/compliance-js/omid-validation-verification-script-v1-APPLOVIN-01102024.js");
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String c() {
        return "iabtechlab.com-omid";
    }
}

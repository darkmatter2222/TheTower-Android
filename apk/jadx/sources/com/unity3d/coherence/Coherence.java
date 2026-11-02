package com.unity3d.coherence;

import android.app.ActivityManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.os.Build;
import android.os.Environment;
import android.os.LocaleList;
import android.os.PowerManager;
import android.os.StatFs;
import android.os.SystemClock;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodManager;
import android.view.inputmethod.InputMethodSubtype;
import com.ironsource.C3635i2;
import com.ironsource.InterfaceC3669k1;
import com.ironsource.X3;
import com.unity3d.ads.core.data.datasource.AndroidDynamicDeviceInfoDataSource;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import com.unity3d.services.core.device.MimeTypes;
import com.unity3d.services.core.properties.MadeWithUnityDetector;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.UUID;
import kotlin.fh;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes5.dex */
final class Coherence {
    private static final String BLOB_SUBDIR = "unity_coherence_blobs";
    private static final int BLOB_TIER_CACHE = 0;
    private static final int BLOB_TIER_DURABLE = 1;
    static final int MAX_EXPR_BYTES = 4096;
    static final int MAX_LETS = 16;
    static final int MAX_LISTING_BYTES = 32768;
    static final int MAX_PATH_SEGMENTS = 32;
    private static final Set<String> SETTINGS_GETTERS;
    private static final Set<String> SETTINGS_ROOTS;
    private static volatile String sGpuModel;
    private final ApplicationInfo applicationInfo;
    private volatile Intent batteryIntent;
    private final Object blobLock = new Object();
    private final Context context;
    private final String installerPackage;
    private final PackageInfo packageInfo;
    private final SharedPreferences prefs;

    static {
        HashSet hashSet = new HashSet();
        hashSet.add("android.provider.Settings$Global");
        hashSet.add("android.provider.Settings$Secure");
        hashSet.add("android.provider.Settings$System");
        SETTINGS_ROOTS = Collections.unmodifiableSet(hashSet);
        HashSet hashSet2 = new HashSet();
        hashSet2.addAll(Arrays.asList("getInt", "getString", "getFloat", "getLong"));
        SETTINGS_GETTERS = Collections.unmodifiableSet(hashSet2);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:20:0x003a
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1478)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    Coherence(android.content.Context r7, android.content.SharedPreferences r8) {
        /*
            r6 = this;
            r6.<init>()
            java.lang.Object r0 = new java.lang.Object
            r0.<init>()
            r6.blobLock = r0
            r6.context = r7
            r6.prefs = r8
            r8 = 0
            android.content.pm.PackageManager r0 = r7.getPackageManager()     // Catch: java.lang.Exception -> L38
            java.lang.String r1 = r7.getPackageName()     // Catch: java.lang.Exception -> L38
            r2 = 0
            android.content.pm.PackageInfo r3 = r0.getPackageInfo(r1, r2)     // Catch: java.lang.Exception -> L38
            android.content.pm.ApplicationInfo r2 = r0.getApplicationInfo(r1, r2)     // Catch: java.lang.Exception -> L36
            int r4 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Exception -> L3a
            r5 = 30
            if (r4 < r5) goto L31
            android.content.pm.InstallSourceInfo r0 = r0.getInstallSourceInfo(r1)     // Catch: java.lang.Exception -> L3a
            if (r0 == 0) goto L3a
            java.lang.String r0 = r0.getInstallingPackageName()     // Catch: java.lang.Exception -> L3a
            goto L3b
        L31:
            java.lang.String r0 = r0.getInstallerPackageName(r1)     // Catch: java.lang.Exception -> L3a
            goto L3b
        L36:
            r2 = r8
            goto L3a
        L38:
            r2 = r8
            r3 = r2
        L3a:
            r0 = r8
        L3b:
            r6.packageInfo = r3
            r6.applicationInfo = r2
            r6.installerPackage = r0
            com.unity3d.coherence.Coherence$1 r0 = new com.unity3d.coherence.Coherence$1     // Catch: java.lang.Exception -> L51
            r0.<init>()     // Catch: java.lang.Exception -> L51
            android.content.IntentFilter r1 = new android.content.IntentFilter     // Catch: java.lang.Exception -> L51
            java.lang.String r2 = "android.intent.action.BATTERY_CHANGED"
            r1.<init>(r2)     // Catch: java.lang.Exception -> L51
            android.content.Intent r8 = r7.registerReceiver(r0, r1)     // Catch: java.lang.Exception -> L51
        L51:
            r6.batteryIntent = r8
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.coherence.Coherence.<init>(android.content.Context, android.content.SharedPreferences):void");
    }

    private static void appendVarint(ByteArrayOutputStream byteArrayOutputStream, long j) {
        while (((-128) & j) != 0) {
            byteArrayOutputStream.write((int) ((j & 127) | 128));
            j >>>= 7;
        }
        byteArrayOutputStream.write((int) (j & 127));
    }

    private static int assignabilityScore(Class<?> cls, Object obj) {
        if (obj == null) {
            return cls.isPrimitive() ? -1 : 1;
        }
        if (obj instanceof String) {
            if (cls == String.class) {
                return 100;
            }
            if (cls == CharSequence.class) {
                return 60;
            }
            return cls == Object.class ? 40 : -1;
        }
        if (!(obj instanceof Long)) {
            if (!(obj instanceof Boolean)) {
                if (cls.isInstance(obj)) {
                    return cls == obj.getClass() ? 100 : 50;
                }
                return -1;
            }
            if (cls == Boolean.TYPE || cls == Boolean.class) {
                return 100;
            }
            return cls == Object.class ? 40 : -1;
        }
        long jLongValue = ((Long) obj).longValue();
        if (cls == Long.TYPE || cls == Long.class) {
            return 100;
        }
        if (cls == Integer.TYPE || cls == Integer.class) {
            return (jLongValue < -2147483648L || jLongValue > 2147483647L) ? -1 : 90;
        }
        if (cls == Short.TYPE || cls == Short.class) {
            return (jLongValue < -32768 || jLongValue > 32767) ? -1 : 80;
        }
        if (cls == Byte.TYPE || cls == Byte.class) {
            return (jLongValue < -128 || jLongValue > 127) ? -1 : 70;
        }
        if (cls == Double.TYPE || cls == Double.class) {
            return 60;
        }
        if (cls == Float.TYPE || cls == Float.class) {
            return 55;
        }
        if (cls == Number.class) {
            return 50;
        }
        return cls == Object.class ? 40 : -1;
    }

    private static boolean atomicReplace(File file, File file2) {
        try {
            Files.move(file.toPath(), file2.toPath(), StandardCopyOption.REPLACE_EXISTING, StandardCopyOption.ATOMIC_MOVE);
            return true;
        } catch (IOException | UnsupportedOperationException unused) {
            if (file.renameTo(file2)) {
                return true;
            }
            if (file2.exists() && file2.delete()) {
                return file.renameTo(file2);
            }
            return false;
        }
    }

    private File blobBaseDir(int i) {
        File cacheDir;
        if (i == 0) {
            cacheDir = this.context.getCacheDir();
        } else {
            if (i != 1) {
                return null;
            }
            cacheDir = this.context.getFilesDir();
        }
        if (cacheDir == null) {
            return null;
        }
        File file = new File(cacheDir, BLOB_SUBDIR);
        if (file.isDirectory() || file.mkdirs()) {
            return file;
        }
        return null;
    }

    private File blobFile(int i, String str) {
        File fileBlobBaseDir = blobBaseDir(i);
        if (fileBlobBaseDir == null || str == null || str.isEmpty()) {
            return null;
        }
        return new File(fileBlobBaseDir, blobFilenameForKey(str));
    }

    private static String blobFilenameForKey(String str) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("SHA-256").digest(str.getBytes(StandardCharsets.UTF_8));
            StringBuilder sb = new StringBuilder(bArrDigest.length * 2);
            for (byte b : bArrDigest) {
                sb.append(String.format("%02x", Integer.valueOf(b & 255)));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException("SHA-256 unavailable", e);
        }
    }

    private static Object[] coerceArgs(Class<?>[] clsArr, List<Object> list) {
        Object[] objArr = new Object[clsArr.length];
        for (int i = 0; i < clsArr.length; i++) {
            Object obj = list.get(i);
            Class<?> cls = clsArr[i];
            if (obj == null) {
                if (cls.isPrimitive()) {
                    return null;
                }
                objArr[i] = null;
            } else if (obj instanceof Long) {
                long jLongValue = ((Long) obj).longValue();
                if (cls == Integer.TYPE || cls == Integer.class) {
                    objArr[i] = Integer.valueOf((int) jLongValue);
                } else if (cls == Short.TYPE || cls == Short.class) {
                    objArr[i] = Short.valueOf((short) jLongValue);
                } else if (cls == Byte.TYPE || cls == Byte.class) {
                    objArr[i] = Byte.valueOf((byte) jLongValue);
                } else if (cls == Float.TYPE || cls == Float.class) {
                    objArr[i] = Float.valueOf(jLongValue);
                } else if (cls == Double.TYPE || cls == Double.class) {
                    objArr[i] = Double.valueOf(jLongValue);
                } else {
                    objArr[i] = obj;
                }
            } else {
                objArr[i] = obj;
            }
        }
        return objArr;
    }

    private Object dispatchSegment(Object obj, String str) {
        int iIndexOf = str.indexOf(40);
        if (iIndexOf == -1) {
            return resolveFieldOrZeroArgMethod(obj, str);
        }
        String strSubstring = str.substring(0, iIndexOf);
        String strExtractStringArg = extractStringArg(str);
        if (strExtractStringArg == null) {
            return null;
        }
        return resolveMethodWithStringArg(obj, strSubstring, strExtractStringArg);
    }

    private Object dispatchSegmentV2(Object obj, String str, Map<String, Object> map) {
        List<Object> andEvalArgs;
        int iIndexOf = str.indexOf(40);
        if (iIndexOf == -1) {
            return resolveFieldOrZeroArgMethod(obj, str);
        }
        String strSubstring = str.substring(0, iIndexOf);
        int iLastIndexOf = str.lastIndexOf(41);
        if (iLastIndexOf >= iIndexOf && (andEvalArgs = parseAndEvalArgs(str.substring(iIndexOf + 1, iLastIndexOf), map)) != null) {
            return resolveMethodWithArgs(obj, strSubstring, andEvalArgs);
        }
        return null;
    }

    private static byte[] encodeRepeatedInt32(int i, List<Integer> list) {
        if (list.isEmpty()) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        Iterator<Integer> it = list.iterator();
        while (it.hasNext()) {
            appendVarint(byteArrayOutputStream, ((long) it.next().intValue()) & 4294967295L);
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        if (byteArray.length == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        appendVarint(byteArrayOutputStream2, (((long) i) << 3) | 2);
        appendVarint(byteArrayOutputStream2, byteArray.length);
        byteArrayOutputStream2.write(byteArray, 0, byteArray.length);
        return byteArrayOutputStream2.toByteArray();
    }

    private static byte[] encodeRepeatedString(int i, List<String> list) {
        if (list.isEmpty()) {
            return null;
        }
        long j = (((long) i) << 3) | 2;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            byte[] bytes = it.next().getBytes(StandardCharsets.UTF_8);
            appendVarint(byteArrayOutputStream, j);
            appendVarint(byteArrayOutputStream, bytes.length);
            byteArrayOutputStream.write(bytes, 0, bytes.length);
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        if (byteArray.length > 0) {
            return byteArray;
        }
        return null;
    }

    private Object evalSingleArgInside(String str, Map<String, Object> map) {
        int iIndexOf = str.indexOf(40);
        int iLastIndexOf = str.lastIndexOf(41);
        if (iIndexOf == -1 || iLastIndexOf < iIndexOf) {
            return null;
        }
        return evaluateExpr(str.substring(iIndexOf + 1, iLastIndexOf), map);
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x00dc, code lost:
    
        if (r1 == null) goto L60;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.Object evaluateExpr(java.lang.String r8, java.util.Map<java.lang.String, java.lang.Object> r9) throws java.lang.ClassNotFoundException {
        /*
            Method dump skipped, instruction units count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.coherence.Coherence.evaluateExpr(java.lang.String, java.util.Map):java.lang.Object");
    }

    static String extractStringArg(String str) {
        int i;
        char cCharAt;
        int iIndexOf = str.indexOf(40);
        int iLastIndexOf = str.lastIndexOf(41);
        if (iIndexOf != -1 && iLastIndexOf != -1 && iLastIndexOf >= iIndexOf) {
            String strTrim = str.substring(iIndexOf + 1, iLastIndexOf).trim();
            if (strTrim.length() >= 2 && strTrim.startsWith("\"") && strTrim.endsWith("\"")) {
                String strSubstring = strTrim.substring(1, strTrim.length() - 1);
                StringBuilder sb = new StringBuilder(strSubstring.length());
                int i2 = 0;
                while (i2 < strSubstring.length()) {
                    char cCharAt2 = strSubstring.charAt(i2);
                    if (cCharAt2 == '\\' && (i = i2 + 1) < strSubstring.length() && ((cCharAt = strSubstring.charAt(i)) == '\"' || cCharAt == '\\')) {
                        sb.append(cCharAt);
                        i2 = i;
                    } else {
                        sb.append(cCharAt2);
                    }
                    i2++;
                }
                return sb.toString();
            }
        }
        return null;
    }

    private HttpResult httpExecute(String str, String str2, String str3, byte[] bArr) throws Throwable {
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnection2 = null;
        try {
            httpURLConnection = (HttpURLConnection) new URL(str2).openConnection();
            try {
                httpURLConnection.setRequestMethod(str);
                httpURLConnection.setConnectTimeout(30000);
                httpURLConnection.setReadTimeout(30000);
                if (str3 != null) {
                    for (String str4 : str3.split("\r\n")) {
                        int iIndexOf = str4.indexOf(58);
                        if (iIndexOf > 0) {
                            httpURLConnection.setRequestProperty(str4.substring(0, iIndexOf).trim(), str4.substring(iIndexOf + 1).trim());
                        }
                    }
                }
                if (bArr != null && bArr.length > 0) {
                    httpURLConnection.setDoOutput(true);
                    OutputStream outputStream = httpURLConnection.getOutputStream();
                    try {
                        outputStream.write(bArr);
                        if (outputStream != null) {
                            outputStream.close();
                        }
                    } catch (Throwable th) {
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                        }
                        throw th;
                    }
                }
                HttpResult httpResult = new HttpResult();
                httpResult.status = httpURLConnection.getResponseCode();
                InputStream errorStream = httpResult.status >= 400 ? httpURLConnection.getErrorStream() : httpURLConnection.getInputStream();
                if (errorStream != null) {
                    try {
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        try {
                            byte[] bArr2 = new byte[4096];
                            while (true) {
                                int i = errorStream.read(bArr2);
                                if (i == -1) {
                                    break;
                                }
                                byteArrayOutputStream.write(bArr2, 0, i);
                                errorStream.close();
                                throw th;
                            }
                            httpResult.body = byteArrayOutputStream.toByteArray();
                            byteArrayOutputStream.close();
                            errorStream.close();
                        } catch (Throwable th3) {
                            try {
                                byteArrayOutputStream.close();
                            } catch (Throwable th4) {
                                th3.addSuppressed(th4);
                            }
                            throw th3;
                        }
                    } catch (Throwable th5) {
                        errorStream.close();
                        throw th5;
                    }
                }
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                return httpResult;
            } catch (IOException unused) {
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                return null;
            } catch (Throwable th6) {
                th = th6;
                httpURLConnection2 = httpURLConnection;
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
                throw th;
            }
        } catch (IOException unused2) {
            httpURLConnection = null;
        } catch (Throwable th7) {
            th = th7;
        }
    }

    private static Object invokeBestOverload(Class<?> cls, String str, List<Object> list, Object obj) {
        int iMatchSpecificity;
        int i = Integer.MIN_VALUE;
        Method method = null;
        boolean z = false;
        for (Method method2 : cls.getMethods()) {
            if (method2.getName().equals(str)) {
                Class<?>[] parameterTypes = method2.getParameterTypes();
                if (parameterTypes.length == list.size() && (iMatchSpecificity = matchSpecificity(parameterTypes, list)) >= 0) {
                    if (iMatchSpecificity > i) {
                        z = false;
                        method = method2;
                        i = iMatchSpecificity;
                    } else if (iMatchSpecificity == i) {
                        z = true;
                    }
                }
            }
        }
        if (method != null && !z) {
            try {
                Object[] objArrCoerceArgs = coerceArgs(method.getParameterTypes(), list);
                if (objArrCoerceArgs == null) {
                    return null;
                }
                return method.invoke(obj, objArrCoerceArgs);
            } catch (IllegalAccessException | InvocationTargetException unused) {
            }
        }
        return null;
    }

    private static boolean isBalancedOuterParen(String str) {
        if (str.length() < 2) {
            return false;
        }
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (z) {
                z = false;
            } else if (z2) {
                if (cCharAt == '\\') {
                    z = true;
                } else if (cCharAt == '\"') {
                    z2 = false;
                }
            } else if (cCharAt == '\"') {
                z2 = true;
            } else if (cCharAt == '(') {
                i++;
            } else if (cCharAt == ')' && (i = i - 1) == 0 && i2 < str.length() - 1) {
                return false;
            }
        }
        return i == 0;
    }

    private static boolean isValidIdent(String str) {
        if (str == null || str.isEmpty()) {
            return false;
        }
        char cCharAt = str.charAt(0);
        if (!Character.isLetter(cCharAt) && cCharAt != '_') {
            return false;
        }
        for (int i = 1; i < str.length(); i++) {
            char cCharAt2 = str.charAt(i);
            if (!Character.isLetterOrDigit(cCharAt2) && cCharAt2 != '_' && cCharAt2 != '$') {
                return false;
            }
        }
        return true;
    }

    private static String join(List<String> list, int i, int i2) {
        StringBuilder sb = new StringBuilder();
        for (int i3 = i; i3 < i2; i3++) {
            if (i3 > i) {
                sb.append('.');
            }
            sb.append(list.get(i3));
        }
        return sb.toString();
    }

    private static boolean looksLikeInt(String str) {
        if (str == null || str.isEmpty()) {
            return false;
        }
        int i = str.charAt(0) == '-' ? 1 : 0;
        if (i >= str.length()) {
            return false;
        }
        while (i < str.length()) {
            if (!Character.isDigit(str.charAt(i))) {
                return false;
            }
            i++;
        }
        return true;
    }

    private static int matchSpecificity(Class<?>[] clsArr, List<Object> list) {
        int i = 0;
        for (int i2 = 0; i2 < clsArr.length; i2++) {
            int iAssignabilityScore = assignabilityScore(clsArr[i2], list.get(i2));
            if (iAssignabilityScore < 0) {
                return -1;
            }
            i += iAssignabilityScore;
        }
        return i;
    }

    private static String methodDescriptor(Method method) {
        StringBuilder sb = new StringBuilder();
        sb.append(method.getName()).append('(');
        Class<?>[] parameterTypes = method.getParameterTypes();
        for (int i = 0; i < parameterTypes.length; i++) {
            if (i > 0) {
                sb.append(AbstractJsonLexerKt.COMMA);
            }
            sb.append(parameterTypes[i].getName());
        }
        sb.append("):").append(method.getReturnType().getName());
        return sb.toString();
    }

    private List<Object> parseAndEvalArgs(String str, Map<String, Object> map) {
        String strTrim = str.trim();
        if (strTrim.isEmpty()) {
            return Collections.emptyList();
        }
        List<String> listSplitOnTopLevel = splitOnTopLevel(AbstractJsonLexerKt.COMMA, strTrim, false);
        ArrayList arrayList = new ArrayList(listSplitOnTopLevel.size());
        Iterator<String> it = listSplitOnTopLevel.iterator();
        while (it.hasNext()) {
            String strTrim2 = it.next().trim();
            int i = topLevelLabelColonIdx(strTrim2);
            if (i > 0 && isValidIdent(strTrim2.substring(0, i).trim())) {
                strTrim2 = strTrim2.substring(i + 1).trim();
            }
            arrayList.add(evaluateExpr(strTrim2, map));
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x005b  */
    static String parseStringLiteral(String str) {
        int i;
        StringBuilder sb = new StringBuilder(str.length() - 2);
        int length = str.length() - 1;
        int i2 = 1;
        while (i2 < length) {
            char cCharAt = str.charAt(i2);
            if (cCharAt != '\\' || (i = i2 + 1) >= length) {
                sb.append(cCharAt);
            } else {
                char cCharAt2 = str.charAt(i);
                if (cCharAt2 == '\"') {
                    sb.append('\"');
                } else if (cCharAt2 == '0') {
                    sb.append((char) 0);
                } else if (cCharAt2 == '\\') {
                    sb.append(AbstractJsonLexerKt.STRING_ESC);
                } else if (cCharAt2 == 'n') {
                    sb.append('\n');
                } else if (cCharAt2 == 'r') {
                    sb.append('\r');
                } else if (cCharAt2 != 't') {
                    sb.append(cCharAt);
                } else {
                    sb.append('\t');
                }
                i2 = i;
            }
            i2++;
        }
        return sb.toString();
    }

    private static String queryGlRenderer() {
        EGLContext eGLContextEglGetCurrentContext = EGL14.eglGetCurrentContext();
        EGLDisplay eGLDisplayEglGetCurrentDisplay = EGL14.eglGetCurrentDisplay();
        EGLSurface eGLSurfaceEglGetCurrentSurface = EGL14.eglGetCurrentSurface(12377);
        EGLSurface eGLSurfaceEglGetCurrentSurface2 = EGL14.eglGetCurrentSurface(12378);
        EGLDisplay eGLDisplayEglGetDisplay = EGL14.eglGetDisplay(0);
        if (eGLDisplayEglGetDisplay == EGL14.EGL_NO_DISPLAY) {
            return "";
        }
        int[] iArr = new int[2];
        if (!EGL14.eglInitialize(eGLDisplayEglGetDisplay, iArr, 0, iArr, 1)) {
            return "";
        }
        try {
            EGLConfig[] eGLConfigArr = new EGLConfig[1];
            int[] iArr2 = new int[1];
            if (EGL14.eglChooseConfig(eGLDisplayEglGetDisplay, new int[]{12352, 4, 12339, 1, 12344}, 0, eGLConfigArr, 0, 1, iArr2, 0) && iArr2[0] != 0) {
                EGLContext eGLContextEglCreateContext = EGL14.eglCreateContext(eGLDisplayEglGetDisplay, eGLConfigArr[0], EGL14.EGL_NO_CONTEXT, new int[]{12440, 2, 12344}, 0);
                if (eGLContextEglCreateContext == EGL14.EGL_NO_CONTEXT) {
                    EGL14.eglTerminate(eGLDisplayEglGetDisplay);
                    return "";
                }
                try {
                    EGLSurface eGLSurfaceEglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(eGLDisplayEglGetDisplay, eGLConfigArr[0], new int[]{12375, 1, 12374, 1, 12344}, 0);
                    if (eGLSurfaceEglCreatePbufferSurface == EGL14.EGL_NO_SURFACE) {
                        EGL14.eglDestroyContext(eGLDisplayEglGetDisplay, eGLContextEglCreateContext);
                        EGL14.eglTerminate(eGLDisplayEglGetDisplay);
                        return "";
                    }
                    try {
                        EGL14.eglMakeCurrent(eGLDisplayEglGetDisplay, eGLSurfaceEglCreatePbufferSurface, eGLSurfaceEglCreatePbufferSurface, eGLContextEglCreateContext);
                        String strGlGetString = GLES20.glGetString(7937);
                        String str = strGlGetString != null ? strGlGetString : "";
                        if (eGLContextEglGetCurrentContext == EGL14.EGL_NO_CONTEXT || eGLDisplayEglGetCurrentDisplay == EGL14.EGL_NO_DISPLAY) {
                            EGL14.eglMakeCurrent(eGLDisplayEglGetDisplay, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT);
                        } else {
                            EGL14.eglMakeCurrent(eGLDisplayEglGetCurrentDisplay, eGLSurfaceEglGetCurrentSurface, eGLSurfaceEglGetCurrentSurface2, eGLContextEglGetCurrentContext);
                        }
                        EGL14.eglDestroySurface(eGLDisplayEglGetDisplay, eGLSurfaceEglCreatePbufferSurface);
                        EGL14.eglDestroyContext(eGLDisplayEglGetDisplay, eGLContextEglCreateContext);
                        EGL14.eglTerminate(eGLDisplayEglGetDisplay);
                        return str;
                    } catch (Throwable th) {
                        if (eGLContextEglGetCurrentContext == EGL14.EGL_NO_CONTEXT || eGLDisplayEglGetCurrentDisplay == EGL14.EGL_NO_DISPLAY) {
                            EGL14.eglMakeCurrent(eGLDisplayEglGetDisplay, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT);
                        } else {
                            EGL14.eglMakeCurrent(eGLDisplayEglGetCurrentDisplay, eGLSurfaceEglGetCurrentSurface, eGLSurfaceEglGetCurrentSurface2, eGLContextEglGetCurrentContext);
                        }
                        EGL14.eglDestroySurface(eGLDisplayEglGetDisplay, eGLSurfaceEglCreatePbufferSurface);
                        throw th;
                    }
                } catch (Throwable th2) {
                    EGL14.eglDestroyContext(eGLDisplayEglGetDisplay, eGLContextEglCreateContext);
                    throw th2;
                }
            }
            EGL14.eglTerminate(eGLDisplayEglGetDisplay);
            return "";
        } catch (Throwable th3) {
            EGL14.eglTerminate(eGLDisplayEglGetDisplay);
            throw th3;
        }
    }

    private static Object resolveFieldOrZeroArgMethod(Object obj, String str) {
        boolean z = obj instanceof Class;
        Class<?> cls = z ? (Class) obj : obj.getClass();
        if (z) {
            obj = null;
        }
        try {
            return cls.getField(str).get(obj);
        } catch (IllegalAccessException unused) {
            return null;
        } catch (NoSuchFieldException unused2) {
            try {
                return cls.getMethod(str, new Class[0]).invoke(obj, new Object[0]);
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused3) {
                return null;
            }
        }
    }

    private Object resolveMethodWithArgs(Object obj, String str, List<Object> list) {
        boolean z = obj instanceof Class;
        Class<?> cls = z ? (Class) obj : obj.getClass();
        if (z) {
            obj = null;
        }
        if (obj == null && SETTINGS_ROOTS.contains(cls.getName()) && SETTINGS_GETTERS.contains(str) && (list.isEmpty() || !(list.get(0) instanceof ContentResolver))) {
            ArrayList arrayList = new ArrayList(list.size() + 1);
            arrayList.add(this.context.getContentResolver());
            arrayList.addAll(list);
            Object objInvokeBestOverload = invokeBestOverload(cls, str, arrayList, null);
            if (objInvokeBestOverload != null) {
                return objInvokeBestOverload;
            }
        }
        return invokeBestOverload(cls, str, list, obj);
    }

    private Object resolveMethodWithStringArg(Object obj, String str, String str2) {
        boolean z = obj instanceof Class;
        Class<?> cls = z ? (Class) obj : obj.getClass();
        if (z) {
            obj = null;
        }
        if (obj == null && SETTINGS_ROOTS.contains(cls.getName()) && SETTINGS_GETTERS.contains(str)) {
            try {
                return cls.getMethod(str, ContentResolver.class, String.class).invoke(null, this.context.getContentResolver(), str2);
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                return null;
            }
        }
        try {
            return cls.getMethod(str, String.class).invoke(obj, str2);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused2) {
            return null;
        }
    }

    static List<String> splitOnTopLevel(char c, String str, boolean z) {
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        boolean z2 = false;
        boolean z3 = false;
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (z2) {
                sb.append(cCharAt);
                z2 = false;
            } else if (z3) {
                if (cCharAt == '\\') {
                    z2 = true;
                } else if (cCharAt == '\"') {
                    z3 = false;
                }
                sb.append(cCharAt);
            } else if (cCharAt == '\"') {
                sb.append(cCharAt);
                z3 = true;
            } else if (cCharAt == '(') {
                i++;
                sb.append(cCharAt);
            } else if (cCharAt == ')') {
                if (i > 0) {
                    i--;
                }
                sb.append(cCharAt);
            } else if (cCharAt == c && i == 0) {
                if (z || sb.length() > 0) {
                    arrayList.add(sb.toString());
                }
                sb.setLength(0);
            } else {
                sb.append(cCharAt);
            }
        }
        if (!z && sb.length() <= 0) {
            return arrayList;
        }
        arrayList.add(sb.toString());
        return arrayList;
    }

    static List<String> tokenize(String str) {
        return splitOnTopLevel('.', str, false);
    }

    private static int topLevelEqualsIdx(String str) {
        boolean z = false;
        boolean z2 = false;
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (z) {
                z = false;
            } else if (z2) {
                if (cCharAt == '\\') {
                    z = true;
                } else if (cCharAt == '\"') {
                    z2 = false;
                }
            } else if (cCharAt == '\"') {
                z2 = true;
            } else if (cCharAt == '(') {
                i++;
            } else if (cCharAt != ')') {
                if (cCharAt == '=' && i == 0) {
                    return i2;
                }
            } else if (i > 0) {
                i--;
            }
        }
        return -1;
    }

    private static int topLevelLabelColonIdx(String str) {
        boolean z = false;
        boolean z2 = false;
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (z) {
                z = false;
            } else if (z2) {
                if (cCharAt == '\\') {
                    z = true;
                } else if (cCharAt == '\"') {
                    z2 = false;
                }
            } else if (cCharAt == '\"') {
                z2 = true;
            } else if (cCharAt == '(') {
                i++;
            } else if (cCharAt == ')') {
                if (i > 0) {
                    i--;
                }
            } else if (i != 0) {
                continue;
            } else {
                if (cCharAt == ':') {
                    return i2;
                }
                if (cCharAt == '.' || cCharAt == ',') {
                    return -1;
                }
            }
        }
        return -1;
    }

    boolean blobDelete(int i, String str) {
        File fileBlobFile = blobFile(i, str);
        if (fileBlobFile == null) {
            return false;
        }
        if (fileBlobFile.delete()) {
            return true;
        }
        return !fileBlobFile.exists();
    }

    byte[] blobGet(int i, String str) {
        File fileBlobFile = blobFile(i, str);
        if (fileBlobFile != null && fileBlobFile.exists()) {
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(fileBlobFile, AndroidDynamicDeviceInfoDataSource.DIRECTORY_MODE_READ);
                try {
                    long length = randomAccessFile.length();
                    if (length > 2147483647L) {
                        randomAccessFile.close();
                        return null;
                    }
                    byte[] bArr = new byte[(int) length];
                    randomAccessFile.readFully(bArr);
                    randomAccessFile.close();
                    return bArr;
                } catch (Throwable th) {
                    try {
                        randomAccessFile.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (IOException unused) {
            }
        }
        return null;
    }

    boolean blobSet(int i, String str, byte[] bArr) {
        File fileBlobFile = blobFile(i, str);
        if (fileBlobFile == null) {
            return false;
        }
        if (bArr == null) {
            bArr = new byte[0];
        }
        File file = new File(fileBlobFile.getParentFile(), fileBlobFile.getName() + ".tmp");
        synchronized (this.blobLock) {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                try {
                    if (bArr.length > 0) {
                        fileOutputStream.write(bArr);
                    }
                    fileOutputStream.getFD().sync();
                    fileOutputStream.close();
                    if (atomicReplace(file, fileBlobFile)) {
                        return true;
                    }
                    file.delete();
                    return false;
                } catch (Throwable th) {
                    try {
                        fileOutputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (IOException unused) {
                file.delete();
                return false;
            }
        }
    }

    Object evaluateJvmExpression(String str) {
        if (str == null || str.isEmpty() || str.length() > 4096) {
            return null;
        }
        try {
            List<String> listSplitOnTopLevel = splitOnTopLevel(';', str, true);
            if (!listSplitOnTopLevel.isEmpty() && listSplitOnTopLevel.size() <= 17) {
                HashMap map = new HashMap();
                Iterator<String> it = listSplitOnTopLevel.iterator();
                Object objEvaluateExpr = null;
                while (it.hasNext()) {
                    String strTrim = it.next().trim();
                    if (!strTrim.isEmpty()) {
                        if (strTrim.startsWith("let ") || strTrim.startsWith("let\t")) {
                            int i = topLevelEqualsIdx(strTrim);
                            if (i < 0) {
                                return null;
                            }
                            String strTrim2 = strTrim.substring(3, i).trim();
                            if (!isValidIdent(strTrim2)) {
                                return null;
                            }
                            map.put(strTrim2, evaluateExpr(strTrim.substring(i + 1).trim(), map));
                        } else {
                            objEvaluateExpr = evaluateExpr(strTrim, map);
                        }
                    }
                }
                return objEvaluateExpr;
            }
        } catch (Exception unused) {
        }
        return null;
    }

    String generateUuid() {
        return UUID.randomUUID().toString();
    }

    int httpDownloadToBlob(String str, String str2, int i, String str3) throws Throwable {
        File fileBlobFile = blobFile(i, str3);
        if (fileBlobFile == null) {
            return -1;
        }
        File file = new File(fileBlobFile.getParentFile(), fileBlobFile.getName() + ".tmp");
        HttpURLConnection httpURLConnection = null;
        try {
            try {
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(str).openConnection();
                try {
                    httpURLConnection2.setRequestMethod("GET");
                    httpURLConnection2.setConnectTimeout(30000);
                    httpURLConnection2.setReadTimeout(30000);
                    if (str2 != null) {
                        for (String str4 : str2.split("\r\n")) {
                            int iIndexOf = str4.indexOf(58);
                            if (iIndexOf > 0) {
                                httpURLConnection2.setRequestProperty(str4.substring(0, iIndexOf).trim(), str4.substring(iIndexOf + 1).trim());
                            }
                        }
                    }
                    int responseCode = httpURLConnection2.getResponseCode();
                    if (responseCode < 200 || responseCode >= 300) {
                        InputStream errorStream = httpURLConnection2.getErrorStream();
                        if (errorStream != null) {
                            try {
                                do {
                                } while (errorStream.read(new byte[4096]) != -1);
                                errorStream.close();
                            } catch (Throwable th) {
                                errorStream.close();
                                throw th;
                            }
                        }
                        if (httpURLConnection2 != null) {
                            httpURLConnection2.disconnect();
                        }
                    } else {
                        InputStream inputStream = httpURLConnection2.getInputStream();
                        if (inputStream == null) {
                            if (httpURLConnection2 != null) {
                                httpURLConnection2.disconnect();
                            }
                            return -1;
                        }
                        synchronized (this.blobLock) {
                            try {
                                FileOutputStream fileOutputStream = new FileOutputStream(file);
                                try {
                                    byte[] bArr = new byte[8192];
                                    while (true) {
                                        int i2 = inputStream.read(bArr);
                                        if (i2 == -1) {
                                            break;
                                        }
                                        fileOutputStream.write(bArr, 0, i2);
                                        throw th;
                                    }
                                    fileOutputStream.getFD().sync();
                                    fileOutputStream.close();
                                    inputStream.close();
                                    if (!atomicReplace(file, fileBlobFile)) {
                                        file.delete();
                                        if (httpURLConnection2 != null) {
                                            httpURLConnection2.disconnect();
                                        }
                                        return -1;
                                    }
                                    if (httpURLConnection2 != null) {
                                        httpURLConnection2.disconnect();
                                        return responseCode;
                                    }
                                } catch (Throwable th2) {
                                    try {
                                        fileOutputStream.close();
                                    } catch (Throwable th3) {
                                        th2.addSuppressed(th3);
                                    }
                                    throw th2;
                                }
                            } catch (Throwable th4) {
                                inputStream.close();
                                throw th4;
                            }
                        }
                    }
                    return responseCode;
                } catch (IOException unused) {
                    httpURLConnection = httpURLConnection2;
                    file.delete();
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    return -1;
                } catch (Throwable th5) {
                    th = th5;
                    httpURLConnection = httpURLConnection2;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    throw th;
                }
            } catch (Throwable th6) {
                th = th6;
            }
        } catch (IOException unused2) {
        }
    }

    HttpResult httpGet(String str, String str2) {
        return httpExecute("GET", str, str2, null);
    }

    HttpResult httpPost(String str, String str2, byte[] bArr) {
        return httpExecute("POST", str, str2, bArr);
    }

    String kvGet(String str) {
        return this.prefs.getString(str, null);
    }

    boolean kvSet(String str, String str2) {
        this.prefs.edit().putString(str, str2).apply();
        return true;
    }

    byte[] platformQueryBytes(int i) {
        Network activeNetwork;
        NetworkCapabilities networkCapabilities;
        int i2 = 0;
        try {
            if (i == 107) {
                ConnectivityManager connectivityManager = (ConnectivityManager) this.context.getSystemService("connectivity");
                if (connectivityManager == null || (activeNetwork = connectivityManager.getActiveNetwork()) == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null) {
                    return null;
                }
                ArrayList arrayList = new ArrayList();
                while (i2 <= 6) {
                    try {
                        if (networkCapabilities.hasTransport(i2)) {
                            arrayList.add(Integer.valueOf(i2));
                        }
                    } catch (Exception unused) {
                    }
                    i2++;
                }
                return encodeRepeatedInt32(63, arrayList);
            }
            if (i != 111) {
                if (i != 112) {
                    return null;
                }
                LocaleList locales = this.context.getResources().getConfiguration().getLocales();
                ArrayList arrayList2 = new ArrayList(locales.size());
                while (i2 < locales.size()) {
                    arrayList2.add(locales.get(i2).toString());
                    i2++;
                }
                return encodeRepeatedString(87, arrayList2);
            }
            InputMethodManager inputMethodManager = (InputMethodManager) this.context.getSystemService("input_method");
            if (inputMethodManager == null) {
                return null;
            }
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator<InputMethodInfo> it = inputMethodManager.getInputMethodList().iterator();
            while (it.hasNext()) {
                Iterator<InputMethodSubtype> it2 = inputMethodManager.getEnabledInputMethodSubtypeList(it.next(), true).iterator();
                while (it2.hasNext()) {
                    String locale = it2.next().getLocale();
                    if (!locale.isEmpty()) {
                        linkedHashSet.add(locale);
                    }
                }
            }
            return encodeRepeatedString(86, new ArrayList(linkedHashSet));
        } catch (Exception unused2) {
            return null;
        }
    }

    Long platformQueryInt(int i) {
        Network activeNetwork;
        NetworkCapabilities networkCapabilities;
        long j = 1;
        try {
            switch (i) {
                case 100:
                    ApplicationInfo applicationInfo = this.applicationInfo;
                    if (applicationInfo == null) {
                        return null;
                    }
                    if ((applicationInfo.flags & 2) == 0) {
                        j = 0;
                    }
                    return Long.valueOf(j);
                case 101:
                    try {
                        Class.forName(MadeWithUnityDetector.UNITY_PLAYER_CLASS_NAME);
                        return 1L;
                    } catch (ClassNotFoundException unused) {
                        return 0L;
                    }
                case 102:
                case InterfaceC3669k1.d.b.j /* 112 */:
                case InterfaceC3669k1.d.b.k /* 113 */:
                case 115:
                case 120:
                case 140:
                case 141:
                case 142:
                case 149:
                default:
                    return null;
                case 103:
                    if (this.packageInfo == null) {
                        return null;
                    }
                    return Build.VERSION.SDK_INT >= 28 ? Long.valueOf(this.packageInfo.getLongVersionCode()) : Long.valueOf(this.packageInfo.versionCode);
                case 104:
                    return Long.valueOf(Build.VERSION.SDK_INT);
                case 105:
                    return Long.valueOf(Runtime.getRuntime().availableProcessors());
                case fh.g1 /* 106 */:
                    TelephonyManager telephonyManager = (TelephonyManager) this.context.getSystemService("phone");
                    return Long.valueOf(telephonyManager != null ? telephonyManager.getPhoneType() : 0L);
                case fh.h1 /* 107 */:
                    String str = System.getenv(AndroidStaticDeviceInfoDataSource.ENVIRONMENT_VARIABLE_PATH);
                    if (str != null) {
                        for (String str2 : str.split(":")) {
                            if (new File(str2, AndroidStaticDeviceInfoDataSource.BINARY_SU).exists()) {
                                return 1L;
                            }
                        }
                    }
                    return 0L;
                case 108:
                    return Long.valueOf(Settings.Global.getInt(this.context.getContentResolver(), "adb_enabled", 0));
                case 109:
                    Intent intent = this.batteryIntent;
                    if (intent == null) {
                        return 0L;
                    }
                    if (intent.getIntExtra("plugged", -1) != 2) {
                        j = 0;
                    }
                    return Long.valueOf(j);
                case 110:
                    if (Settings.Global.getInt(this.context.getContentResolver(), "stay_on_while_plugged_in", 0) == 0) {
                        j = 0;
                    }
                    return Long.valueOf(j);
                case 111:
                    String externalStorageState = Environment.getExternalStorageState();
                    if (!"mounted".equals(externalStorageState) && !"mounted_ro".equals(externalStorageState)) {
                        j = 0;
                    }
                    return Long.valueOf(j);
                case 114:
                    return 0L;
                case 116:
                    return Long.valueOf(this.context.getResources().getDisplayMetrics().densityDpi);
                case 117:
                    return Long.valueOf(this.context.getResources().getDisplayMetrics().widthPixels);
                case 118:
                    return Long.valueOf(this.context.getResources().getDisplayMetrics().heightPixels);
                case 119:
                    int i2 = this.context.getResources().getConfiguration().uiMode & 48;
                    if (i2 == 32) {
                        return 2L;
                    }
                    return i2 == 16 ? 1L : 0L;
                case 121:
                    ConnectivityManager connectivityManager = (ConnectivityManager) this.context.getSystemService("connectivity");
                    if (connectivityManager == null) {
                        return 0L;
                    }
                    if (connectivityManager.getActiveNetwork() == null) {
                        j = 0;
                    }
                    return Long.valueOf(j);
                case 122:
                    ConnectivityManager connectivityManager2 = (ConnectivityManager) this.context.getSystemService("connectivity");
                    if (connectivityManager2 != null && (activeNetwork = connectivityManager2.getActiveNetwork()) != null && (networkCapabilities = connectivityManager2.getNetworkCapabilities(activeNetwork)) != null) {
                        if (networkCapabilities.hasTransport(1)) {
                            return 1L;
                        }
                        return networkCapabilities.hasTransport(0) ? 0L : 0L;
                    }
                    return 0L;
                case 123:
                    ConnectivityManager connectivityManager3 = (ConnectivityManager) this.context.getSystemService("connectivity");
                    if (connectivityManager3 == null) {
                        return 0L;
                    }
                    if (!connectivityManager3.isActiveNetworkMetered()) {
                        j = 0;
                    }
                    return Long.valueOf(j);
                case 124:
                    return Long.valueOf(Settings.Global.getInt(this.context.getContentResolver(), "airplane_mode_on", 0));
                case 125:
                    return Long.valueOf(new StatFs(Environment.getDataDirectory().getPath()).getTotalBytes());
                case 126:
                    return Long.valueOf(new StatFs(Environment.getDataDirectory().getPath()).getAvailableBytes());
                case 127:
                    ActivityManager activityManager = (ActivityManager) this.context.getSystemService("activity");
                    if (activityManager == null) {
                        return null;
                    }
                    ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                    activityManager.getMemoryInfo(memoryInfo);
                    return Long.valueOf(memoryInfo.totalMem);
                case 128:
                    ActivityManager activityManager2 = (ActivityManager) this.context.getSystemService("activity");
                    if (activityManager2 == null) {
                        return null;
                    }
                    ActivityManager.MemoryInfo memoryInfo2 = new ActivityManager.MemoryInfo();
                    activityManager2.getMemoryInfo(memoryInfo2);
                    return Long.valueOf(memoryInfo2.availMem);
                case 129:
                    return Long.valueOf(Runtime.getRuntime().freeMemory());
                case 130:
                    return Long.valueOf(Runtime.getRuntime().totalMemory());
                case 131:
                    return Long.valueOf(SystemClock.uptimeMillis());
                case 132:
                    return Long.valueOf(SystemClock.elapsedRealtime());
                case 133:
                    AudioManager audioManager = (AudioManager) this.context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
                    if (audioManager == null) {
                        return null;
                    }
                    int streamVolume = audioManager.getStreamVolume(3);
                    int streamMaxVolume = audioManager.getStreamMaxVolume(3);
                    return Long.valueOf(streamMaxVolume > 0 ? (((long) streamVolume) * 100) / ((long) streamMaxVolume) : 0L);
                case 134:
                    Intent intent2 = this.batteryIntent;
                    if (intent2 == null) {
                        return null;
                    }
                    return Long.valueOf(intent2.getIntExtra("status", -1));
                case 135:
                    PowerManager powerManager = (PowerManager) this.context.getSystemService("power");
                    if (powerManager == null || !powerManager.isPowerSaveMode()) {
                        j = 0;
                    }
                    return Long.valueOf(j);
                case 136:
                    Intent intent3 = this.batteryIntent;
                    if (intent3 == null) {
                        return null;
                    }
                    return Long.valueOf(intent3.getIntExtra("plugged", -1));
                case 137:
                    ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
                    ActivityManager.getMyMemoryState(runningAppProcessInfo);
                    if (runningAppProcessInfo.importance > 100) {
                        j = 0;
                    }
                    return Long.valueOf(j);
                case 138:
                    AudioManager audioManager2 = (AudioManager) this.context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
                    if (audioManager2 == null || !audioManager2.isWiredHeadsetOn()) {
                        j = 0;
                    }
                    return Long.valueOf(j);
                case 139:
                    return Long.valueOf(TimeZone.getDefault().getOffset(System.currentTimeMillis()) / 1000);
                case 143:
                    try {
                        return Long.valueOf(Settings.Secure.getInt(this.context.getContentResolver(), AndroidDynamicDeviceInfoDataSource.SETTING_ACCESSIBILITY_DISPLAY_INVERSION_ENABLED, 0));
                    } catch (Exception unused2) {
                        return 0L;
                    }
                case 144:
                    return Long.valueOf((long) (this.context.getResources().getConfiguration().fontScale * 1000.0f));
                case 145:
                    try {
                        return Long.valueOf((long) (Settings.Global.getFloat(this.context.getContentResolver(), "animator_duration_scale", 1.0f) * 1000.0f));
                    } catch (Exception unused3) {
                        return 1000L;
                    }
                case 146:
                    DisplayMetrics displayMetrics = this.context.getResources().getDisplayMetrics();
                    if (displayMetrics.xdpi > 0.0f && displayMetrics.ydpi > 0.0f) {
                        double d = displayMetrics.widthPixels / displayMetrics.xdpi;
                        double d2 = displayMetrics.heightPixels / displayMetrics.ydpi;
                        return Long.valueOf((long) (Math.sqrt((d * d) + (d2 * d2)) * 1000.0d));
                    }
                    return null;
                case 147:
                    int i3 = Settings.System.getInt(this.context.getContentResolver(), "screen_brightness", -1);
                    if (i3 < 0) {
                        return null;
                    }
                    return Long.valueOf((((long) i3) * 1000) / 255);
                case 148:
                    Intent intent4 = this.batteryIntent;
                    if (intent4 == null) {
                        return null;
                    }
                    int intExtra = intent4.getIntExtra("level", -1);
                    int intExtra2 = intent4.getIntExtra("scale", -1);
                    if (intExtra >= 0 && intExtra2 > 0) {
                        return Long.valueOf((((long) intExtra) * 1000) / ((long) intExtra2));
                    }
                    return null;
                case 150:
                    if (Build.VERSION.SDK_INT < 30) {
                        return 0L;
                    }
                    try {
                        return Long.valueOf(((Number) Class.forName("android.os.ext.SdkExtensions").getMethod("getExtensionVersion", Integer.TYPE).invoke(null, 30)).longValue());
                    } catch (Exception unused4) {
                        return 0L;
                    }
                case 151:
                    return Long.valueOf(Runtime.getRuntime().maxMemory());
                case 152:
                    try {
                        if (Settings.Secure.getInt(this.context.getContentResolver(), AndroidDynamicDeviceInfoDataSource.SETTING_ACCESSIBILITY_DISPLAY_DALTONIZER_ENABLED, 0) == 0) {
                            j = 0;
                        }
                        return Long.valueOf(j);
                    } catch (Exception unused5) {
                        return 0L;
                    }
            }
        } catch (SecurityException | Exception unused6) {
            return null;
        }
    }

    String platformQueryString(int i) {
        int iIndexOf;
        Network activeNetwork;
        NetworkCapabilities networkCapabilities;
        String networkOperator;
        String networkOperatorName;
        try {
            switch (i) {
                case 100:
                    return this.installerPackage;
                case 101:
                case 105:
                case fh.g1 /* 106 */:
                case fh.h1 /* 107 */:
                case 111:
                case InterfaceC3669k1.d.b.j /* 112 */:
                case 114:
                case 115:
                case 116:
                default:
                    return null;
                case 102:
                    if (Build.VERSION.SDK_INT >= 31) {
                        return Build.SOC_MODEL;
                    }
                    try {
                        BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/cpuinfo"));
                        while (true) {
                            try {
                                String line = bufferedReader.readLine();
                                if (line == null) {
                                    bufferedReader.close();
                                } else if (line.startsWith("Hardware") && (iIndexOf = line.indexOf(58)) >= 0) {
                                    String strTrim = line.substring(iIndexOf + 1).trim();
                                    bufferedReader.close();
                                    return strTrim;
                                }
                            } catch (Throwable th) {
                                try {
                                    bufferedReader.close();
                                    break;
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                }
                                throw th;
                            }
                        }
                    } catch (Exception unused) {
                    }
                    return null;
                case 103:
                    if (sGpuModel == null) {
                        synchronized (Coherence.class) {
                            if (sGpuModel == null) {
                                sGpuModel = queryGlRenderer();
                            }
                            break;
                        }
                    }
                    if (sGpuModel.isEmpty()) {
                        return null;
                    }
                    return sGpuModel;
                case 104:
                    ConnectivityManager connectivityManager = (ConnectivityManager) this.context.getSystemService("connectivity");
                    if (connectivityManager == null || (activeNetwork = connectivityManager.getActiveNetwork()) == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null) {
                        return "none";
                    }
                    if (networkCapabilities.hasTransport(1)) {
                        return "wifi";
                    }
                    if (networkCapabilities.hasTransport(0)) {
                        return X3.g;
                    }
                    return networkCapabilities.hasTransport(3) ? X3.e : C3635i2.d;
                case 108:
                    TelephonyManager telephonyManager = (TelephonyManager) this.context.getSystemService("phone");
                    if (telephonyManager == null || (networkOperator = telephonyManager.getNetworkOperator()) == null || networkOperator.isEmpty()) {
                        return null;
                    }
                    return networkOperator;
                case 109:
                    TelephonyManager telephonyManager2 = (TelephonyManager) this.context.getSystemService("phone");
                    if (telephonyManager2 == null || (networkOperatorName = telephonyManager2.getNetworkOperatorName()) == null || networkOperatorName.isEmpty()) {
                        return null;
                    }
                    return networkOperatorName;
                case 110:
                    return Locale.getDefault().toLanguageTag();
                case InterfaceC3669k1.d.b.k /* 113 */:
                    return TimeZone.getDefault().getID();
                case 117:
                    return this.context.getPackageName();
                case 118:
                    PackageInfo packageInfo = this.packageInfo;
                    if (packageInfo != null) {
                        return packageInfo.versionName;
                    }
                    return null;
                case 119:
                    return Build.VERSION.RELEASE;
            }
        } catch (SecurityException | Exception unused2) {
            return null;
        }
    }

    Boolean reflectBool(String str) {
        Object objResolvePath = resolvePath(str);
        if (objResolvePath instanceof Boolean) {
            return (Boolean) objResolvePath;
        }
        return null;
    }

    Double reflectDouble(String str) {
        Object objResolvePath = resolvePath(str);
        if (objResolvePath instanceof Number) {
            return Double.valueOf(((Number) objResolvePath).doubleValue());
        }
        return null;
    }

    Boolean reflectEvalBool(String str) {
        Object objEvaluateJvmExpression = evaluateJvmExpression(str);
        if (objEvaluateJvmExpression instanceof Boolean) {
            return (Boolean) objEvaluateJvmExpression;
        }
        return null;
    }

    Long reflectEvalInt(String str) {
        Object objEvaluateJvmExpression = evaluateJvmExpression(str);
        if (objEvaluateJvmExpression instanceof Number) {
            return Long.valueOf(((Number) objEvaluateJvmExpression).longValue());
        }
        return null;
    }

    String reflectEvalString(String str) {
        Object objEvaluateJvmExpression = evaluateJvmExpression(str);
        if (objEvaluateJvmExpression instanceof String) {
            return (String) objEvaluateJvmExpression;
        }
        return null;
    }

    Long reflectInt(String str) {
        Object objResolvePath = resolvePath(str);
        if (objResolvePath instanceof Number) {
            return Long.valueOf(((Number) objResolvePath).longValue());
        }
        return null;
    }

    String reflectListJvm(String str) {
        boolean z;
        boolean z2;
        Object objEvaluateJvmExpression = evaluateJvmExpression(str);
        if (objEvaluateJvmExpression == null) {
            return null;
        }
        Class<?> cls = objEvaluateJvmExpression instanceof Class ? (Class) objEvaluateJvmExpression : objEvaluateJvmExpression.getClass();
        StringBuilder sb = new StringBuilder();
        Field[] fields = cls.getFields();
        int length = fields.length;
        int i = 0;
        int i2 = 0;
        while (true) {
            z = true;
            if (i2 >= length) {
                z2 = false;
                break;
            }
            String str2 = "F\t" + fields[i2].getName() + "\n";
            if (sb.length() + str2.length() > 32768) {
                z2 = true;
                break;
            }
            sb.append(str2);
            i2++;
        }
        if (!z2) {
            Method[] methods = cls.getMethods();
            int length2 = methods.length;
            while (true) {
                if (i >= length2) {
                    z = z2;
                    break;
                }
                String str3 = "M\t" + methodDescriptor(methods[i]) + "\n";
                if (sb.length() + str3.length() > 32768) {
                    break;
                }
                sb.append(str3);
                i++;
            }
        } else {
            z = z2;
            break;
        }
        if (z) {
            sb.append("...\n");
        }
        return sb.toString();
    }

    String reflectString(String str) {
        Object objResolvePath = resolvePath(str);
        if (objResolvePath instanceof String) {
            return (String) objResolvePath;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x004c, code lost:
    
        if (r1 == null) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    java.lang.Object resolvePath(java.lang.String r8) {
        /*
            r7 = this;
            r0 = 0
            if (r8 == 0) goto L90
            boolean r1 = r8.isEmpty()
            if (r1 == 0) goto Lb
            goto L90
        Lb:
            java.util.List r8 = tokenize(r8)
            boolean r1 = r8.isEmpty()
            if (r1 != 0) goto L90
            int r1 = r8.size()
            r2 = 32
            if (r1 <= r2) goto L1f
            goto L90
        L1f:
            r1 = 0
            java.lang.Object r2 = r8.get(r1)
            java.lang.String r2 = (java.lang.String) r2
            java.lang.String r3 = "context"
            boolean r3 = r3.equals(r2)
            r4 = 1
            if (r3 == 0) goto L32
            android.content.Context r1 = r7.context
            goto L79
        L32:
            java.lang.String r3 = "stickyIntent("
            boolean r3 = r2.startsWith(r3)
            if (r3 == 0) goto L4f
            java.lang.String r1 = extractStringArg(r2)
            if (r1 != 0) goto L41
            return r0
        L41:
            android.content.Context r2 = r7.context     // Catch: java.lang.Throwable -> L4e
            android.content.IntentFilter r3 = new android.content.IntentFilter     // Catch: java.lang.Throwable -> L4e
            r3.<init>(r1)     // Catch: java.lang.Throwable -> L4e
            android.content.Intent r1 = r2.registerReceiver(r0, r3)     // Catch: java.lang.Throwable -> L4e
            if (r1 != 0) goto L79
        L4e:
            return r0
        L4f:
            int r2 = r8.size()
        L53:
            r3 = -1
            if (r2 < r4) goto L74
            int r5 = r2 + (-1)
            java.lang.Object r5 = r8.get(r5)
            java.lang.String r5 = (java.lang.String) r5
            r6 = 40
            int r5 = r5.indexOf(r6)
            if (r5 == r3) goto L67
            goto L71
        L67:
            java.lang.String r3 = join(r8, r1, r2)
            java.lang.Class r1 = java.lang.Class.forName(r3)     // Catch: java.lang.ClassNotFoundException -> L71
            r4 = r2
            goto L76
        L71:
            int r2 = r2 + (-1)
            goto L53
        L74:
            r1 = r0
            r4 = r3
        L76:
            if (r1 != 0) goto L79
            return r0
        L79:
            int r2 = r8.size()
            if (r4 >= r2) goto L8f
            if (r1 != 0) goto L82
            return r0
        L82:
            java.lang.Object r2 = r8.get(r4)
            java.lang.String r2 = (java.lang.String) r2
            java.lang.Object r1 = r7.dispatchSegment(r1, r2)
            int r4 = r4 + 1
            goto L79
        L8f:
            return r1
        L90:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.coherence.Coherence.resolvePath(java.lang.String):java.lang.Object");
    }
}

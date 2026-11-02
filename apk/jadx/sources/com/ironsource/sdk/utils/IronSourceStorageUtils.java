package com.ironsource.sdk.utils;

import android.content.Context;
import android.os.Build;
import com.google.android.gms.nearby.messages.Message;
import com.ironsource.B7;
import com.ironsource.Bf;
import com.ironsource.C3510b4;
import com.ironsource.C3801r4;
import com.ironsource.D8;
import com.ironsource.Pb;
import com.ironsource.mediationsdk.logger.IronLog;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class IronSourceStorageUtils {
    private static final String a = "supersonicads";
    private static Bf b = null;
    private static boolean c = false;

    private static void a(Context context) {
        Bf bf = b;
        if (bf != null && bf.b()) {
            deleteCacheDirectories(context);
        }
        Bf bf2 = b;
        if (bf2 == null || !bf2.c()) {
            return;
        }
        deleteFilesDirectories(context);
    }

    private static void a(File file) {
        if (file != null) {
            deleteFolder(b(file).getPath());
        }
    }

    private static boolean a() {
        Bf bf;
        return Build.VERSION.SDK_INT > 29 && (bf = b) != null && bf.a();
    }

    private static File b(Context context) {
        B7 b7A = Pb.k0().a();
        Bf bf = b;
        return (bf == null || !bf.d()) ? b7A.g(context) : b7A.m(context);
    }

    private static File b(File file) {
        StringBuilder sbAppend = new StringBuilder().append(file.getAbsolutePath());
        String str = File.separator;
        return new File(sbAppend.append(str).append(a).append(str).toString());
    }

    public static String buildAbsolutePathToDirInCache(String str, String str2) {
        return str2 == null ? str : str + File.separator + str2;
    }

    public static JSONObject buildFilesMap(String str, String str2) {
        File file = new File(str, str2);
        JSONObject jSONObject = new JSONObject();
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                try {
                    Object objC = c(file2);
                    if (objC instanceof JSONArray) {
                        jSONObject.put("files", c(file2));
                    } else if (objC instanceof JSONObject) {
                        jSONObject.put(file2.getName(), c(file2));
                    }
                } catch (JSONException e) {
                    C3801r4.d().a(e);
                    IronLog.INTERNAL.error(e.toString());
                }
            }
        }
        return jSONObject;
    }

    public static JSONObject buildFilesMapOfDirectory(D8 d8, JSONObject jSONObject) throws Exception {
        if (d8 == null || !d8.isDirectory()) {
            return new JSONObject();
        }
        File[] fileArrListFiles = d8.listFiles();
        if (fileArrListFiles == null) {
            return new JSONObject();
        }
        JSONObject jSONObject2 = new JSONObject();
        for (File file : fileArrListFiles) {
            D8 d9 = new D8(file.getPath());
            if (d9.isFile()) {
                String name = d9.getName();
                JSONObject jSONObjectA = d9.a();
                if (jSONObject.has(name)) {
                    jSONObject2.put(name, SDKUtils.mergeJSONObjects(jSONObjectA, jSONObject.getJSONObject(name)));
                } else {
                    jSONObject2.put(name, jSONObjectA);
                }
            } else if (d9.isDirectory()) {
                jSONObject2.put(d9.getName(), buildFilesMapOfDirectory(d9, jSONObject));
            }
        }
        return jSONObject2;
    }

    private static File c(Context context) {
        B7 b7A = Pb.k0().a();
        Bf bf = b;
        return (bf == null || !bf.d()) ? b7A.k(context) : b7A.C(context);
    }

    private static Object c(File file) {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        try {
            if (file.isFile()) {
                jSONArray.put(file.getName());
                return jSONArray;
            }
            for (File file2 : file.listFiles()) {
                if (file2.isDirectory()) {
                    jSONObject.put(file2.getName(), c(file2));
                } else {
                    jSONArray.put(file2.getName());
                    jSONObject.put("files", jSONArray);
                }
            }
            return jSONObject;
        } catch (JSONException e) {
            C3801r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    public static void deleteCacheDirectories(Context context) {
        B7 b7A = Pb.k0().a();
        a(b7A.m(context));
        a(b7A.C(context));
    }

    public static synchronized boolean deleteFile(D8 d8) {
        if (!d8.exists()) {
            return false;
        }
        return d8.delete();
    }

    public static void deleteFilesDirectories(Context context) {
        B7 b7A = Pb.k0().a();
        a(b7A.g(context));
        a(b7A.k(context));
    }

    public static synchronized boolean deleteFolder(String str) {
        File file;
        file = new File(str);
        return deleteFolderContentRecursive(file) && file.delete();
    }

    public static boolean deleteFolderContentRecursive(File file) {
        File[] fileArrListFiles = file.listFiles();
        boolean zDeleteFolderContentRecursive = true;
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory()) {
                    zDeleteFolderContentRecursive &= deleteFolderContentRecursive(file2);
                }
                if (!file2.delete()) {
                    zDeleteFolderContentRecursive = false;
                }
            }
        }
        return zDeleteFolderContentRecursive;
    }

    public static void ensurePathSafety(File file, String str) throws Exception {
        Bf bf = b;
        if (bf == null || !bf.e()) {
            String canonicalPath = new File(str).getCanonicalPath();
            String canonicalPath2 = file.getCanonicalPath();
            if (!canonicalPath2.startsWith(canonicalPath)) {
                throw new Exception(C3510b4.c.u + canonicalPath2);
            }
        }
    }

    public static String getCachedFilesMap(String str, String str2) {
        JSONObject jSONObjectBuildFilesMap = buildFilesMap(str, str2);
        try {
            jSONObjectBuildFilesMap.put("path", str2);
        } catch (JSONException e) {
            C3801r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
        return jSONObjectBuildFilesMap.toString();
    }

    public static String getDiskCacheDirPath(Context context) {
        File fileB;
        if (!a() || !SDKUtils.isExternalStorageAvailable() || (fileB = b(context)) == null || !fileB.canWrite()) {
            return c(context).getPath();
        }
        c = true;
        return fileB.getPath();
    }

    public static ArrayList<D8> getFilesInFolderRecursive(D8 d8) {
        if (d8 == null || !d8.isDirectory()) {
            return new ArrayList<>();
        }
        ArrayList<D8> arrayList = new ArrayList<>();
        File[] fileArrListFiles = d8.listFiles();
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                D8 d9 = new D8(file.getPath());
                if (d9.isDirectory()) {
                    arrayList.addAll(getFilesInFolderRecursive(d9));
                }
                if (d9.isFile()) {
                    arrayList.add(d9);
                }
            }
        }
        return arrayList;
    }

    public static String getNetworkStorageDir(Context context) {
        File fileB = b(new File(getDiskCacheDirPath(context)));
        if (!fileB.exists()) {
            fileB.mkdir();
        }
        return fileB.getPath();
    }

    public static long getTotalSizeOfDir(D8 d8) {
        long totalSizeOfDir;
        long j = 0;
        if (d8 != null && d8.isDirectory()) {
            File[] fileArrListFiles = d8.listFiles();
            if (fileArrListFiles == null) {
                return 0L;
            }
            for (File file : fileArrListFiles) {
                D8 d9 = new D8(file.getPath());
                if (d9.isFile()) {
                    totalSizeOfDir = d9.length();
                } else {
                    if (d9.isDirectory()) {
                        totalSizeOfDir = getTotalSizeOfDir(d9);
                    }
                }
                j += totalSizeOfDir;
            }
        }
        return j;
    }

    public static void initializeCacheDirectory(Context context, Bf bf) {
        b = bf;
        a(context);
    }

    public static boolean isPathExist(String str, String str2) {
        return new File(str, str2).exists();
    }

    public static boolean isUxt() {
        return c;
    }

    public static String makeDir(String str) {
        File file = new File(str);
        if (file.exists() || file.mkdirs()) {
            return file.getPath();
        }
        return null;
    }

    public static String readFile(D8 d8) throws Exception {
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader = new BufferedReader(new FileReader(d8));
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                bufferedReader.close();
                return sb.toString();
            }
            sb.append(line);
            sb.append('\n');
        }
    }

    public static boolean renameFile(String str, String str2) throws Exception {
        File file = new File(str);
        File file2 = new File(str2);
        File parentFile = file2.getParentFile();
        if (parentFile == null || parentFile.exists() || parentFile.mkdirs()) {
            return file.renameTo(file2);
        }
        return false;
    }

    public static int saveFile(byte[] bArr, String str) throws Exception {
        File file = new File(str);
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
            return 0;
        }
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            byte[] bArr2 = new byte[Message.MAX_CONTENT_SIZE_BYTES];
            int i = 0;
            while (true) {
                int i2 = byteArrayInputStream.read(bArr2);
                if (i2 == -1) {
                    fileOutputStream.close();
                    byteArrayInputStream.close();
                    return i;
                }
                fileOutputStream.write(bArr2, 0, i2);
                i += i2;
            }
        } catch (Throwable th) {
            fileOutputStream.close();
            byteArrayInputStream.close();
            throw th;
        }
    }
}

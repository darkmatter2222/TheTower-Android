package com.google.android.play.deku.isolated;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class b extends ContentProvider {
    private static final String DEKU_LIFECYCLE_MANAGER_CLASS = "com.google.android.play.deku.DekuLifecycleManager";
    private static final String DEKU_MAIN_SPLIT_NAME = "gpdeku";
    private static final String TAG = "IsolatedDekuContentProv";
    private static Object isolatedManagerInstance;

    static String buildLibrarySearchPath(ApplicationInfo applicationInfo) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (applicationInfo.nativeLibraryDir != null) {
            arrayList2.add(applicationInfo.nativeLibraryDir);
        }
        String[] strArr = applicationInfo.splitNames;
        String[] strArr2 = applicationInfo.splitSourceDirs;
        if (strArr != null && strArr2 != null) {
            int iMin = Math.min(strArr.length, strArr2.length);
            for (int i = 0; i < iMin; i++) {
                String str = strArr[i];
                String str2 = strArr2[i];
                if (str != null && str2 != null) {
                    if (str2.endsWith(".apk")) {
                        for (String str3 : Build.SUPPORTED_ABIS) {
                            String str4 = str2 + "!/lib/" + str3;
                            if (str.startsWith(DEKU_MAIN_SPLIT_NAME)) {
                                arrayList.add(str4);
                            } else {
                                arrayList2.add(str4);
                            }
                        }
                    } else if (str.startsWith(DEKU_MAIN_SPLIT_NAME)) {
                        arrayList.add(str2);
                    } else {
                        arrayList2.add(str2);
                    }
                }
            }
        }
        ArrayList arrayList3 = new ArrayList();
        arrayList3.addAll(arrayList);
        arrayList3.addAll(arrayList2);
        return TextUtils.join(File.pathSeparator, arrayList3);
    }

    static String findSplitPath(ApplicationInfo applicationInfo, String str) {
        String[] strArr = applicationInfo.splitNames;
        String[] strArr2 = applicationInfo.splitSourceDirs;
        if (strArr == null || strArr2 == null) {
            return null;
        }
        int iMin = Math.min(strArr.length, strArr2.length);
        for (int i = 0; i < iMin; i++) {
            if (str.equals(strArr[i])) {
                return strArr2[i];
            }
        }
        return null;
    }

    ClassLoader createDekuClassLoader(String str, String str2, ClassLoader classLoader) {
        return new a(str, str2, classLoader);
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        throw new UnsupportedOperationException("Not supported");
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        throw new UnsupportedOperationException("Not supported");
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("Not supported");
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        if (Build.VERSION.SDK_INT < 33) {
            Log.i(TAG, "Deku isolated split is not supported on SDK < 33.");
            return true;
        }
        if (isolatedManagerInstance == null) {
            try {
                Context context = getContext();
                if (context == null) {
                    Log.w(TAG, "Context is null");
                } else {
                    ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 0);
                    String strFindSplitPath = findSplitPath(applicationInfo, DEKU_MAIN_SPLIT_NAME);
                    if (strFindSplitPath == null) {
                        Log.e(TAG, "Could not find Deku code split path: gpdeku");
                    } else {
                        Class<?> clsLoadClass = createDekuClassLoader(strFindSplitPath, buildLibrarySearchPath(applicationInfo), context.getClassLoader()).loadClass(DEKU_LIFECYCLE_MANAGER_CLASS);
                        Object objNewInstance = clsLoadClass.getConstructor(Context.class).newInstance(context.getApplicationContext());
                        clsLoadClass.getMethod("initialize", null).invoke(objNewInstance, null);
                        isolatedManagerInstance = objNewInstance;
                    }
                }
            } catch (Throwable th) {
                Log.e(TAG, "Failed to bootstrap isolated Deku", th);
            }
        }
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        Log.i(TAG, "Sidekick query: ".concat(String.valueOf(String.valueOf(uri))));
        Object obj = isolatedManagerInstance;
        if (obj == null) {
            Log.w(TAG, "isolatedManagerInstance is null");
            return null;
        }
        try {
            Object objInvoke = obj.getClass().getMethod("getExperimentDataCursor", Uri.class, String[].class).invoke(isolatedManagerInstance, uri, strArr);
            if (objInvoke == null) {
                return null;
            }
            return (Cursor) objInvoke;
        } catch (Throwable th) {
            Log.e(TAG, "Failed to query experiment info", th);
            return null;
        }
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("Not supported");
    }
}

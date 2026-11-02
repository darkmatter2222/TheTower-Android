package com.unity3d.ads.core.utils;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import java.io.File;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GetExternalStorageDir.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0001\u001a\n\u0010\u0005\u001a\u0004\u0018\u00010\u0001H\u0000¨\u0006\u0006"}, d2 = {"getExternalStorageDir", "Ljava/io/File;", "context", "Landroid/content/Context;", "primaryStorageVolumeDir", "legacyExternalStorageDir", "unity-ads_defaultRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class GetExternalStorageDirKt {
    public static final File getExternalStorageDir(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return Build.VERSION.SDK_INT >= 30 ? primaryStorageVolumeDir(context) : legacyExternalStorageDir();
    }

    public static final File legacyExternalStorageDir() {
        String externalStorageState = Environment.getExternalStorageState();
        if (Intrinsics.areEqual(externalStorageState, "mounted") || Intrinsics.areEqual(externalStorageState, "mounted_ro")) {
            return Environment.getExternalStorageDirectory();
        }
        return null;
    }

    public static final File primaryStorageVolumeDir(Context context) {
        StorageVolume primaryStorageVolume;
        Intrinsics.checkNotNullParameter(context, "context");
        StorageManager storageManager = (StorageManager) context.getSystemService(StorageManager.class);
        if (storageManager == null || (primaryStorageVolume = storageManager.getPrimaryStorageVolume()) == null) {
            return null;
        }
        return primaryStorageVolume.getDirectory();
    }
}

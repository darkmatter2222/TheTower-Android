package com.unity3d.ads.core.extensions;

import java.io.File;
import java.util.Iterator;
import java.util.LinkedList;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.ArrayIteratorKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FileExtensions.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"getDirectorySize", "", "Ljava/io/File;", "unity-ads_defaultRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class FileExtensionsKt {
    public static final long getDirectorySize(File file) {
        File[] fileArrListFiles;
        Intrinsics.checkNotNullParameter(file, "<this>");
        long length = 0;
        if (!file.exists()) {
            return 0L;
        }
        if (!file.isDirectory()) {
            return file.length();
        }
        LinkedList linkedList = new LinkedList();
        linkedList.add(file);
        while (!linkedList.isEmpty()) {
            File file2 = (File) linkedList.remove(0);
            if (file2.exists() && (fileArrListFiles = file2.listFiles()) != null && fileArrListFiles.length != 0) {
                Iterator it = ArrayIteratorKt.iterator(fileArrListFiles);
                while (it.hasNext()) {
                    File file3 = (File) it.next();
                    if (file3.isDirectory()) {
                        Intrinsics.checkNotNull(file3);
                        linkedList.add(file3);
                    } else {
                        length += file3.length();
                    }
                }
            }
        }
        return length;
    }
}

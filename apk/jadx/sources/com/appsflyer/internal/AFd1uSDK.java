package com.appsflyer.internal;

import android.content.Context;
import com.appsflyer.AFLogger;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import p005kotlin.Unit;
import p005kotlin.collections.ArraysKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.collections.SetsKt;
import p005kotlin.io.FilesKt;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class AFd1uSDK implements AFd1zSDK {
    private final AFc1gSDK getCurrencyIso4217Code;

    public AFd1uSDK(AFc1gSDK aFc1gSDK) {
        Intrinsics.checkNotNullParameter(aFc1gSDK, "");
        this.getCurrencyIso4217Code = aFc1gSDK;
    }

    private final File getMonetizationNetwork() {
        Context context = this.getCurrencyIso4217Code.getRevenue;
        if (context == null) {
            return null;
        }
        File file = new File(context.getFilesDir(), "AFExceptionsCache");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    @Override // com.appsflyer.internal.AFd1zSDK
    public final int AFAdRevenueData() {
        Iterator<T> it = getMediationNetwork().iterator();
        int i = 0;
        while (it.hasNext()) {
            i += ((AFc1cSDK) it.next()).getMonetizationNetwork;
        }
        return i;
    }

    @Override // com.appsflyer.internal.AFd1zSDK
    public final boolean getCurrencyIso4217Code() {
        return getCurrencyIso4217Code(new String[0]);
    }

    @Override // com.appsflyer.internal.AFd1zSDK
    public final boolean getCurrencyIso4217Code(String... strArr) {
        boolean zDeleteRecursively;
        Intrinsics.checkNotNullParameter(strArr, "");
        synchronized (this) {
            File monetizationNetwork = getMonetizationNetwork();
            zDeleteRecursively = true;
            if (monetizationNetwork != null) {
                if (strArr.length == 0) {
                    AFh1ySDK.v$default(AFLogger.INSTANCE, AFg1cSDK.EXCEPTION_MANAGER, "delete all exceptions", false, 4, null);
                    zDeleteRecursively = FilesKt.deleteRecursively(monetizationNetwork);
                } else {
                    AFh1ySDK.v$default(AFLogger.INSTANCE, AFg1cSDK.EXCEPTION_MANAGER, "delete all exceptions except for: " + ArraysKt.joinToString$default(strArr, ", ", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62, (Object) null), false, 4, null);
                    File[] fileArrListFiles = monetizationNetwork.listFiles();
                    if (fileArrListFiles != null) {
                        Intrinsics.checkNotNullExpressionValue(fileArrListFiles, "");
                        ArrayList arrayList = new ArrayList();
                        for (File file : fileArrListFiles) {
                            if (!ArraysKt.contains(strArr, file.getName())) {
                                arrayList.add(file);
                            }
                        }
                        ArrayList<File> arrayList2 = arrayList;
                        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
                        for (File file2 : arrayList2) {
                            Intrinsics.checkNotNullExpressionValue(file2, "");
                            arrayList3.add(Boolean.valueOf(FilesKt.deleteRecursively(file2)));
                        }
                        Set set = CollectionsKt.toSet(arrayList3);
                        if (set.isEmpty()) {
                            set = SetsKt.setOf(Boolean.TRUE);
                        }
                        Set set2 = set;
                        if (set2.size() != 1 || !((Boolean) CollectionsKt.first(set2)).booleanValue()) {
                            zDeleteRecursively = false;
                        }
                    }
                }
            }
        }
        return zDeleteRecursively;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0088 A[Catch: all -> 0x008e, TRY_LEAVE, TryCatch #1 {, blocks: (B:3:0x0001, B:5:0x0008, B:7:0x000e, B:9:0x001b, B:24:0x0078, B:25:0x007b, B:21:0x0051, B:26:0x007e, B:28:0x0088, B:10:0x001d, B:12:0x0023, B:14:0x0033, B:16:0x0047, B:17:0x004a, B:18:0x004d), top: B:36:0x0001, inners: #0 }] */
    @Override // com.appsflyer.internal.AFd1zSDK
    public final List<AFc1cSDK> getMediationNetwork() {
        List<AFc1cSDK> listEmptyList;
        File[] fileArrListFiles;
        ArrayList arrayList;
        synchronized (this) {
            File monetizationNetwork = getMonetizationNetwork();
            listEmptyList = null;
            if (monetizationNetwork != null && (fileArrListFiles = monetizationNetwork.listFiles()) != null) {
                ArrayList arrayList2 = new ArrayList();
                for (File file : fileArrListFiles) {
                    try {
                        File[] fileArrListFiles2 = file.listFiles();
                        if (fileArrListFiles2 != null) {
                            Intrinsics.checkNotNullExpressionValue(fileArrListFiles2, "");
                            ArrayList arrayList3 = new ArrayList();
                            for (File file2 : fileArrListFiles2) {
                                AFc1cSDK.Companion companion = AFc1cSDK.INSTANCE;
                                Intrinsics.checkNotNullExpressionValue(file2, "");
                                AFc1cSDK currencyIso4217Code = AFc1cSDK.Companion.getCurrencyIso4217Code(FilesKt.readText$default(file2, null, 1, null));
                                if (currencyIso4217Code != null) {
                                    arrayList3.add(currencyIso4217Code);
                                }
                            }
                            arrayList = arrayList3;
                        } else {
                            arrayList = null;
                        }
                    } catch (Throwable th) {
                        AFh1ySDK.v$default(AFLogger.INSTANCE, AFg1cSDK.EXCEPTION_MANAGER, "Could not get stored exceptions\n " + th.getMessage(), false, 4, null);
                    }
                    if (arrayList != null) {
                        arrayList2.add(arrayList);
                    }
                }
                listEmptyList = CollectionsKt.flatten(arrayList2);
                if (listEmptyList == null) {
                    listEmptyList = CollectionsKt.emptyList();
                }
            } else if (listEmptyList == null) {
                listEmptyList = CollectionsKt.emptyList();
            }
            throw th;
        }
        return listEmptyList;
    }

    @Override // com.appsflyer.internal.AFd1zSDK
    public final void getMediationNetwork(int i, int i2) {
        File[] fileArrListFiles;
        synchronized (this) {
            File monetizationNetwork = getMonetizationNetwork();
            if (monetizationNetwork != null && (fileArrListFiles = monetizationNetwork.listFiles()) != null) {
                Intrinsics.checkNotNullExpressionValue(fileArrListFiles, "");
                ArrayList arrayList = new ArrayList();
                for (File file : fileArrListFiles) {
                    String name = file.getName();
                    Intrinsics.checkNotNullExpressionValue(name, "");
                    int mediationNetwork = AFk1zSDK.getMediationNetwork(name);
                    if (i > mediationNetwork || mediationNetwork > i2) {
                        arrayList.add(file);
                    }
                }
                ArrayList<File> arrayList2 = arrayList;
                ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
                for (File file2 : arrayList2) {
                    Intrinsics.checkNotNullExpressionValue(file2, "");
                    arrayList3.add(Boolean.valueOf(FilesKt.deleteRecursively(file2)));
                }
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // com.appsflyer.internal.AFd1zSDK
    public final String getRevenue(Throwable th, String str) {
        String str2;
        File file;
        Intrinsics.checkNotNullParameter(th, "");
        Intrinsics.checkNotNullParameter(str, "");
        synchronized (this) {
            File monetizationNetwork = getMonetizationNetwork();
            str2 = null;
            if (monetizationNetwork != null) {
                file = new File(monetizationNetwork, "6.17.3");
                if (!file.exists()) {
                    file.mkdirs();
                }
            } else {
                file = null;
            }
            if (file != null) {
                try {
                    AFc1cSDK aFc1cSDKAFAdRevenueData = AFd1pSDK.AFAdRevenueData(th, str);
                    String str3 = aFc1cSDKAFAdRevenueData.getCurrencyIso4217Code;
                    File file2 = new File(file, str3);
                    if (file2.exists()) {
                        AFc1cSDK.Companion companion = AFc1cSDK.INSTANCE;
                        AFc1cSDK currencyIso4217Code = AFc1cSDK.Companion.getCurrencyIso4217Code(FilesKt.readText$default(file2, null, 1, null));
                        if (currencyIso4217Code != null) {
                            currencyIso4217Code.getMonetizationNetwork++;
                            aFc1cSDKAFAdRevenueData = currencyIso4217Code;
                        }
                    }
                    FilesKt.writeText$default(file2, aFc1cSDKAFAdRevenueData.getMediationNetwork(), null, 2, null);
                    str2 = str3;
                } catch (Exception e) {
                    AFh1ySDK.v$default(AFLogger.INSTANCE, AFg1cSDK.EXCEPTION_MANAGER, "Could not cache exception\n " + e.getMessage(), false, 4, null);
                }
            }
        }
        return str2;
    }
}

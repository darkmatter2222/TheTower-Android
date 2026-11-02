package com.unity3d.player;

import android.app.Activity;
import android.content.Context;
import com.google.android.play.core.assetpacks.AssetPackLocation;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
class PlayAssetDeliveryUnityWrapper {
    private static PlayAssetDeliveryUnityWrapper b;
    private final C4118i a;

    private PlayAssetDeliveryUnityWrapper(UnityPlayer unityPlayer, Context context) {
        this.a = null;
        if (b != null) {
            throw new RuntimeException("PlayAssetDeliveryUnityWrapper should be created only once. Use getInstance() instead.");
        }
        try {
            if (getClass().getClassLoader().loadClass("com.google.android.play.core.assetpacks.AssetPackManager").getMethod("getPackStates", List.class).getReturnType().getName().equals("com.google.android.gms.tasks.Task")) {
                this.a = a(unityPlayer, context);
            }
        } catch (ClassNotFoundException | NoSuchMethodException | SecurityException unused) {
        }
    }

    private static C4118i a(UnityPlayer unityPlayer, Context context) {
        if (C4118i.e == null) {
            C4118i.e = new C4118i(unityPlayer, context);
        }
        return C4118i.e;
    }

    private void a() {
        if (playCoreApiMissing()) {
            throw new RuntimeException("AssetPackManager API is not available! Make sure your gradle project includes 'com.google.android.play:asset-delivery' dependency.");
        }
    }

    public static synchronized PlayAssetDeliveryUnityWrapper getInstance() {
        PlayAssetDeliveryUnityWrapper playAssetDeliveryUnityWrapper;
        while (true) {
            playAssetDeliveryUnityWrapper = b;
            if (playAssetDeliveryUnityWrapper != null) {
                break;
            }
            try {
                PlayAssetDeliveryUnityWrapper.class.wait(3000L);
            } catch (InterruptedException e) {
                com.unity3d.player.a.t.Log(6, e.getMessage());
            }
            throw th;
        }
        if (playAssetDeliveryUnityWrapper == null) {
            throw new RuntimeException("PlayAssetDeliveryUnityWrapper is not yet initialised.");
        }
        return playAssetDeliveryUnityWrapper;
    }

    public static synchronized PlayAssetDeliveryUnityWrapper init(UnityPlayer unityPlayer, Context context) {
        if (b != null) {
            throw new RuntimeException("PlayAssetDeliveryUnityWrapper.init() should be called only once. Use getInstance() instead.");
        }
        b = new PlayAssetDeliveryUnityWrapper(unityPlayer, context);
        PlayAssetDeliveryUnityWrapper.class.notifyAll();
        return b;
    }

    public void cancelAssetPackDownload(String str) {
        cancelAssetPackDownloads(new String[]{str});
    }

    public void cancelAssetPackDownloads(String[] strArr) {
        a();
        this.a.b.cancel(Arrays.asList(strArr));
    }

    public void downloadAssetPack(String str, IAssetPackManagerDownloadStatusCallback iAssetPackManagerDownloadStatusCallback) {
        downloadAssetPacks(new String[]{str}, iAssetPackManagerDownloadStatusCallback);
    }

    public void downloadAssetPacks(String[] strArr, IAssetPackManagerDownloadStatusCallback iAssetPackManagerDownloadStatusCallback) {
        a();
        C4118i c4118i = this.a;
        c4118i.getClass();
        if (strArr == null || strArr.length == 0) {
            return;
        }
        c4118i.b.getPackStates(Arrays.asList(strArr)).addOnCompleteListener(new C4112f(c4118i.a, iAssetPackManagerDownloadStatusCallback, strArr));
    }

    public String getAssetPackPath(String str) {
        a();
        AssetPackLocation packLocation = this.a.b.getPackLocation(str);
        return packLocation == null ? "" : packLocation.assetsPath();
    }

    public void getAssetPackState(String str, IAssetPackManagerStatusQueryCallback iAssetPackManagerStatusQueryCallback) {
        getAssetPackStates(new String[]{str}, iAssetPackManagerStatusQueryCallback);
    }

    public void getAssetPackStates(String[] strArr, IAssetPackManagerStatusQueryCallback iAssetPackManagerStatusQueryCallback) {
        a();
        C4118i c4118i = this.a;
        c4118i.b.getPackStates(Arrays.asList(strArr)).addOnCompleteListener(new C4116h(c4118i.a, iAssetPackManagerStatusQueryCallback, strArr));
    }

    public boolean playCoreApiMissing() {
        return this.a == null;
    }

    public Object registerDownloadStatusListener(IAssetPackManagerDownloadStatusCallback iAssetPackManagerDownloadStatusCallback) {
        a();
        C4118i c4118i = this.a;
        C4106c c4106c = new C4106c(c4118i, c4118i.a, iAssetPackManagerDownloadStatusCallback);
        c4118i.b.registerListener(c4106c);
        return c4106c;
    }

    public void removeAssetPack(String str) {
        a();
        this.a.b.removePack(str);
    }

    public void requestToUseMobileData(Activity activity, IAssetPackManagerMobileDataConfirmationCallback iAssetPackManagerMobileDataConfirmationCallback) {
        a();
        C4118i c4118i = this.a;
        c4118i.b.showCellularDataConfirmation(activity).addOnSuccessListener(new C4110e(c4118i.a, iAssetPackManagerMobileDataConfirmationCallback));
    }

    public void unregisterDownloadStatusListener(Object obj) {
        a();
        C4118i c4118i = this.a;
        c4118i.getClass();
        if (obj instanceof C4106c) {
            c4118i.b.unregisterListener((C4106c) obj);
        }
    }
}

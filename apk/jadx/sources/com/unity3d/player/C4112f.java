package com.unity3d.player;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.RuntimeExecutionException;
import com.google.android.gms.tasks.Task;
import com.google.android.play.core.assetpacks.AssetPackException;
import com.google.android.play.core.assetpacks.AssetPackState;
import com.google.android.play.core.assetpacks.AssetPackStates;
import java.util.Collections;
import java.util.Map;
import java.util.Vector;

/* JADX INFO: renamed from: com.unity3d.player.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C4112f implements OnCompleteListener {
    public final IAssetPackManagerDownloadStatusCallback a;
    public final UnityPlayer b;
    public final String[] c;

    public C4112f(UnityPlayer unityPlayer, IAssetPackManagerDownloadStatusCallback iAssetPackManagerDownloadStatusCallback, String[] strArr) {
        this.b = unityPlayer;
        this.a = iAssetPackManagerDownloadStatusCallback;
        this.c = strArr;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(Task task) {
        int errorCode;
        try {
            AssetPackStates assetPackStates = (AssetPackStates) task.getResult();
            Map mapPackStates = assetPackStates.packStates();
            if (mapPackStates.size() == 0) {
                return;
            }
            Vector vector = new Vector();
            for (AssetPackState assetPackState : mapPackStates.values()) {
                if (assetPackState.errorCode() != 0 || assetPackState.status() == 4 || assetPackState.status() == 5 || assetPackState.status() == 0) {
                    String strName = assetPackState.name();
                    int iStatus = assetPackState.status();
                    int iErrorCode = assetPackState.errorCode();
                    long j = assetPackStates.totalBytes();
                    this.b.invokeOnMainThread(new RunnableC4104b(Collections.singleton(this.a), strName, iStatus, j, iStatus == 4 ? j : 0L, 0, iErrorCode));
                } else {
                    vector.add(assetPackState.name());
                }
            }
            if (vector.size() > 0) {
                C4118i c4118i = C4118i.e;
                UnityPlayer unityPlayer = this.b;
                IAssetPackManagerDownloadStatusCallback iAssetPackManagerDownloadStatusCallback = this.a;
                c4118i.getClass();
                synchronized (C4118i.e) {
                    C4106c c4106c = c4118i.d;
                    if (c4106c == null) {
                        C4106c c4106c2 = new C4106c(c4118i, unityPlayer, iAssetPackManagerDownloadStatusCallback);
                        c4118i.b.registerListener(c4106c2);
                        c4118i.d = c4106c2;
                    } else {
                        c4106c.a(iAssetPackManagerDownloadStatusCallback);
                    }
                    c4118i.c.addAll(vector);
                    c4118i.b.fetch(vector);
                }
            }
        } catch (RuntimeExecutionException e) {
            Throwable cause = e;
            String[] strArr = this.c;
            if (strArr.length == 1) {
                String str = strArr[0];
                while (true) {
                    if (cause instanceof AssetPackException) {
                        errorCode = ((AssetPackException) cause).getErrorCode();
                        break;
                    }
                    cause = cause.getCause();
                    if (cause == null) {
                        errorCode = -100;
                        break;
                    }
                }
                this.b.invokeOnMainThread(new RunnableC4104b(Collections.singleton(this.a), str, 0, 0L, 0L, 0, errorCode));
                return;
            }
            C4118i c4118i2 = C4118i.e;
            IAssetPackManagerDownloadStatusCallback iAssetPackManagerDownloadStatusCallback2 = this.a;
            c4118i2.getClass();
            for (String str2 : strArr) {
                c4118i2.b.getPackStates(Collections.singletonList(str2)).addOnCompleteListener(new C4112f(c4118i2.a, iAssetPackManagerDownloadStatusCallback2, new String[]{str2}));
            }
        }
    }
}

package com.unity3d.player;

import android.hardware.camera2.CameraDevice;

/* JADX INFO: renamed from: com.unity3d.player.k, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C4122k extends CameraDevice.StateCallback {
    public final /* synthetic */ C4130o a;

    public C4122k(C4130o c4130o) {
        this.a = c4130o;
    }

    @Override // android.hardware.camera2.CameraDevice.StateCallback
    public final void onClosed(CameraDevice cameraDevice) {
        C4130o.D.release();
    }

    @Override // android.hardware.camera2.CameraDevice.StateCallback
    public final void onDisconnected(CameraDevice cameraDevice) {
        com.unity3d.player.a.t.Log(5, "Camera2: CameraDevice disconnected.");
        this.a.a(cameraDevice);
        C4130o.D.release();
    }

    @Override // android.hardware.camera2.CameraDevice.StateCallback
    public final void onError(CameraDevice cameraDevice, int i) {
        com.unity3d.player.a.t.Log(6, "Camera2: Error opening CameraDevice " + i);
        this.a.a(cameraDevice);
        C4130o.D.release();
    }

    @Override // android.hardware.camera2.CameraDevice.StateCallback
    public final void onOpened(CameraDevice cameraDevice) {
        this.a.b = cameraDevice;
        C4130o.D.release();
    }
}

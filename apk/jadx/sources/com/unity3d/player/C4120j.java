package com.unity3d.player;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureRequest;

/* JADX INFO: renamed from: com.unity3d.player.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C4120j extends CameraCaptureSession.StateCallback {
    public final /* synthetic */ C4130o a;

    public C4120j(C4130o c4130o) {
        this.a = c4130o;
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public final void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
        this.a.A = 3;
        com.unity3d.player.a.t.Log(6, "Camera2: CaptureSession configuration failed.");
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public void onConfigured(CameraCaptureSession cameraCaptureSession) {
        C4130o c4130o = this.a;
        if (c4130o.b == null) {
            return;
        }
        synchronized (c4130o.t) {
            C4130o c4130o2 = this.a;
            c4130o2.r = cameraCaptureSession;
            try {
                c4130o2.q = c4130o2.b.createCaptureRequest(1);
                C4130o c4130o3 = this.a;
                c4130o3.q.addTarget(c4130o3.w);
                C4130o c4130o4 = this.a;
                c4130o4.q.set(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, c4130o4.n);
                this.a.e();
            } catch (CameraAccessException e) {
                com.unity3d.player.a.t.Log(6, "Camera2: CameraAccessException " + e);
            } catch (IllegalStateException e2) {
                com.unity3d.player.a.t.Log(6, "Camera2: IllegalStateException " + e2);
            }
        }
    }
}

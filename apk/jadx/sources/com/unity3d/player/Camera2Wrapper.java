package com.unity3d.player;

import android.content.Context;
import android.graphics.Rect;
import android.hardware.camera2.CameraManager;
import android.view.Surface;
import com.unity3d.player.a.C4098n;
import com.unity3d.player.a.InterfaceC4101q;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class Camera2Wrapper implements InterfaceC4101q {
    public final Context a;
    public C4130o b = null;

    public Camera2Wrapper(Context context) {
        this.a = context;
        initCamera2Jni();
    }

    private final native void initCamera2Jni();

    private final native void nativeFrameReady(Object obj, Object obj2, Object obj3, int i, int i2, int i3);

    private final native void nativeSurfaceTextureReady(Object obj);

    public final void a(Object obj) {
        nativeSurfaceTextureReady(obj);
    }

    public final void a(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3, int i, int i2, int i3) {
        nativeFrameReady(byteBuffer, byteBuffer2, byteBuffer3, i, i2, i3);
    }

    public void closeCamera2() {
        C4130o c4130o = this.b;
        if (c4130o != null) {
            c4130o.a();
        }
        this.b = null;
    }

    public int getCamera2Count() {
        return C4130o.getCameraIds(this.a).length;
    }

    public int getCamera2FocalLengthEquivalent(int i) {
        return C4130o.a(this.a, i);
    }

    public int[] getCamera2Resolutions(int i) {
        return C4130o.b(this.a, i);
    }

    public int getCamera2SensorOrientation(int i) {
        return C4130o.c(this.a, i);
    }

    public Rect getFrameSizeCamera2() {
        C4130o c4130o = this.b;
        return c4130o != null ? c4130o.e : new Rect();
    }

    public boolean initializeCamera2(int i, int i2, int i3, int i4, int i5, Surface surface) {
        if (this.b != null || UnityPlayer.currentActivity == null) {
            return false;
        }
        CameraManager cameraManager = C4130o.B;
        C4130o c4098n = PlatformSupport.QUINCE_TART_SUPPORT ? new C4098n(this) : new C4130o(this);
        this.b = c4098n;
        return c4098n.a(this.a, i, i2, i3, i4, i5, surface);
    }

    public boolean isCamera2AutoFocusPointSupported(int i) {
        return C4130o.d(this.a, i);
    }

    public boolean isCamera2FrontFacing(int i) {
        return C4130o.e(this.a, i);
    }

    public void pauseCamera2() {
        C4130o c4130o = this.b;
        if (c4130o != null) {
            c4130o.c();
        }
    }

    public boolean setAutoFocusPoint(float f, float f2) {
        C4130o c4130o = this.b;
        if (c4130o != null && c4130o.h > 0) {
            if (!c4130o.m) {
                c4130o.i = f;
                c4130o.j = f2;
                synchronized (c4130o.t) {
                    if (c4130o.r != null && c4130o.A != 2) {
                        c4130o.d();
                    }
                }
                return true;
            }
            com.unity3d.player.a.t.Log(5, "Camera2: Setting manual focus point already started.");
        }
        return false;
    }

    public void startCamera2() {
        C4130o c4130o = this.b;
        if (c4130o != null) {
            c4130o.f();
        }
    }

    public void stopCamera2() {
        C4130o c4130o = this.b;
        if (c4130o != null) {
            c4130o.g();
        }
    }
}

package com.ironsource.adqualitysdk.sdk.i;

import android.view.MotionEvent;
import android.view.View;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ļ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class ViewOnTouchListenerC0124 extends AbstractC0965 implements View.OnTouchListener {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String f805 = StringFog.decrypt("X89S9gFNz3J50nL8GkvVenXCaesVWshM\n", "EKEGmXQupz4=\n");

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final InterfaceC0128 f806;

    public ViewOnTouchListenerC0124(View.OnTouchListener onTouchListener, InterfaceC0128 interfaceC0128) {
        super(onTouchListener);
        this.f806 = interfaceC0128;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        try {
            this.f806.mo1914(this, view, motionEvent);
        } catch (Throwable th) {
            AbstractC1071.m2435(f805, StringFog.decrypt("BnOxm5BQ3GNjbJeWrhnGeSZvpobCH9tZLHSgnA==\n", "QwHD9OJwtQ0=\n"), th, false);
        }
        Object obj = this.f3455;
        if (obj != null) {
            return ((View.OnTouchListener) obj).onTouch(view, motionEvent);
        }
        return false;
    }
}

package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.cD, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public interface InterfaceC2210cD {
    void AAH();

    boolean AAU();

    boolean AAV();

    boolean ABK();

    void AI4(boolean z, int i);

    void ALJ(int i);

    void ALO(EnumC2324e4 enumC2324e4, int i);

    void ALY(int i);

    void destroy();

    int getCurrentPosition();

    int getDuration();

    long getInitialBufferTime();

    EnumC2324e4 getStartReason();

    EnumC2209cC getState();

    int getVideoHeight();

    int getVideoWidth();

    View getView();

    float getVolume();

    void seekTo(int i);

    void setBackgroundPlaybackEnabled(boolean z);

    void setControlsAnchorView(View view);

    void setFullScreen(boolean z);

    void setRequestedVolume(float f);

    void setVideoMPD(String str);

    void setVideoStateChangeListener(InterfaceC2208cB interfaceC2208cB);

    void setup(Uri uri);
}

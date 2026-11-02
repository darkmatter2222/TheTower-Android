package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.VideoController;

/* JADX INFO: loaded from: classes.dex */
public final class iq3 implements VideoController {
    public VideoController.VideoLifecycleCallbacks a;

    @Override // com.google.android.libraries.ads.mobile.sdk.common.VideoController
    public final VideoController.VideoLifecycleCallbacks getVideoLifecycleCallbacks() {
        VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks;
        synchronized (this) {
            videoLifecycleCallbacks = this.a;
        }
        return videoLifecycleCallbacks;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.VideoController
    public final boolean isCustomControlsEnabled() {
        return false;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.VideoController
    public final boolean isMuted() {
        return false;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.VideoController
    public final void mute(boolean z) {
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.VideoController
    public final void pause() {
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.VideoController
    public final void play() {
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.VideoController
    public final void setVideoLifecycleCallbacks(VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks) {
        synchronized (this) {
            this.a = videoLifecycleCallbacks;
            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
        }
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.VideoController
    public final void stop() {
    }
}

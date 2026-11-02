package com.google.android.gms.ads;

import com.tapjoy.TJAdUnitConstants;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import p005kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0007\u0018\u0000 \u00102\u00020\u0001:\u0003\u0010\u0011\u0012B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0007J\u0006\u0010\b\u001a\u00020\u0007J\u0006\u0010\t\u001a\u00020\u0007J\u0006\u0010\n\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\u0007J\u0006\u0010\r\u001a\u00020\fJ\u0006\u0010\u000e\u001a\u00020\fJ\u0006\u0010\u000f\u001a\u00020\f¨\u0006\u0013"}, d2 = {"Lcom/google/android/gms/ads/VideoController;", "", "()V", "getVideoCurrentTime", "", "getVideoDuration", "hasVideoContent", "", "isClickToExpandEnabled", "isCustomControlsEnabled", TJAdUnitConstants.String.IS_MUTED, "mute", "", "pause", "play", "stop", "Companion", "PlaybackState", "VideoLifecycleCallbacks", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class VideoController {
    public static final int PLAYBACK_STATE_ENDED = 3;
    public static final int PLAYBACK_STATE_PAUSED = 2;
    public static final int PLAYBACK_STATE_PLAYING = 1;
    public static final int PLAYBACK_STATE_READY = 5;
    public static final int PLAYBACK_STATE_UNKNOWN = 0;

    @Retention(RetentionPolicy.RUNTIME)
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\b\u0086\u0002\u0018\u00002\u00020\u0001B\u0000¨\u0006\u0002"}, d2 = {"Lcom/google/android/gms/ads/VideoController$PlaybackState;", "", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public @interface PlaybackState {
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u0006\u0010\b\u001a\u00020\u0004J\u0006\u0010\t\u001a\u00020\u0004J\u0006\u0010\n\u001a\u00020\u0004¨\u0006\u000b"}, d2 = {"Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;", "", "()V", "onVideoEnd", "", "onVideoMute", TJAdUnitConstants.String.IS_MUTED, "", "onVideoPause", "onVideoPlay", "onVideoStart", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static abstract class VideoLifecycleCallbacks {
        public final void onVideoEnd() {
        }

        public final void onVideoMute(boolean isMuted) {
        }

        public final void onVideoPause() {
        }

        public final void onVideoPlay() {
        }

        public final void onVideoStart() {
        }
    }

    public final float getVideoCurrentTime() {
        return 0.0f;
    }

    public final float getVideoDuration() {
        return 0.0f;
    }

    public final boolean hasVideoContent() {
        return false;
    }

    public final boolean isClickToExpandEnabled() {
        return false;
    }

    public final boolean isCustomControlsEnabled() {
        return false;
    }

    public final boolean isMuted() {
        return false;
    }

    public final void mute(boolean mute) {
    }

    public final void pause() {
    }

    public final void play() {
    }

    public final void stop() {
    }
}

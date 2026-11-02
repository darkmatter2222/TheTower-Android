package com.google.android.play.deku.screencapture;

/* JADX INFO: loaded from: classes.dex */
final class a {
    static final void a() {
        try {
            System.loadLibrary("gpdeku");
        } catch (UnsatisfiedLinkError e) {
            throw new IllegalStateException("Failed to load native library", e);
        }
    }
}

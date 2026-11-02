package com.google.firebase.platforminfo;

import p005kotlin.KotlinVersion;

/* JADX INFO: loaded from: classes4.dex */
public final class KotlinDetector {
    private KotlinDetector() {
    }

    public static String detectVersion() {
        try {
            return KotlinVersion.CURRENT.toString();
        } catch (NoClassDefFoundError unused) {
            return null;
        }
    }
}

package com.unity3d.services.core.properties;

/* JADX INFO: loaded from: classes5.dex */
public class MadeWithUnityDetector {
    private static final boolean MADE_WITH_UNITY = detect();
    public static final String UNITY_PLAYER_CLASS_NAME = "com.unity3d.player.UnityPlayer";

    private static boolean detect() {
        try {
            Class.forName(UNITY_PLAYER_CLASS_NAME);
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static boolean isMadeWithUnity() {
        return MADE_WITH_UNITY;
    }
}

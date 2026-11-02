package com.google.unity.ads;

import android.app.Activity;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ProcessLifecycleOwner;

/* JADX INFO: loaded from: classes4.dex */
public class UnityAppStateEventNotifier implements DefaultLifecycleObserver {
    private final Activity activity;
    private final UnityAppStateEventCallback callback;

    public UnityAppStateEventNotifier(Activity activity, UnityAppStateEventCallback unityAppStateEventCallback) {
        this.activity = activity;
        this.callback = unityAppStateEventCallback;
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onCreate(LifecycleOwner lifecycleOwner) {
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onDestroy(LifecycleOwner lifecycleOwner) {
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onPause(LifecycleOwner lifecycleOwner) {
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onResume(LifecycleOwner lifecycleOwner) {
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onStart(LifecycleOwner lifecycleOwner) {
        this.callback.onAppStateChanged(false);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onStop(LifecycleOwner lifecycleOwner) {
        this.callback.onAppStateChanged(true);
    }

    public void startListening() {
        this.activity.runOnUiThread(new Runnable() { // from class: com.google.unity.ads.UnityAppStateEventNotifier.1
            @Override // java.lang.Runnable
            public void run() {
                ProcessLifecycleOwner.get().getLifecycle().addObserver(UnityAppStateEventNotifier.this);
            }
        });
    }

    public void stopListening() {
        this.activity.runOnUiThread(new Runnable() { // from class: com.google.unity.ads.UnityAppStateEventNotifier.2
            @Override // java.lang.Runnable
            public void run() {
                ProcessLifecycleOwner.get().getLifecycle().removeObserver(UnityAppStateEventNotifier.this);
            }
        });
    }
}

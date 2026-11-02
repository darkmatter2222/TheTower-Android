package com.google.firebase.remoteconfig;

/* JADX INFO: loaded from: classes4.dex */
public interface FirebaseRemoteConfigInfo {
    FirebaseRemoteConfigSettings getConfigSettings();

    long getFetchTimeMillis();

    int getLastFetchStatus();
}

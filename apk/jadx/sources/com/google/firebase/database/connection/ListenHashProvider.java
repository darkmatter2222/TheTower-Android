package com.google.firebase.database.connection;

/* JADX INFO: loaded from: classes4.dex */
public interface ListenHashProvider {
    CompoundHash getCompoundHash();

    String getSimpleHash();

    boolean shouldIncludeCompoundHash();
}

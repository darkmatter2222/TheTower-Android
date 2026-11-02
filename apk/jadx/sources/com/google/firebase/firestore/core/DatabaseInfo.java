package com.google.firebase.firestore.core;

import com.google.firebase.firestore.model.DatabaseId;

/* JADX INFO: loaded from: classes4.dex */
public final class DatabaseInfo {
    private final DatabaseId databaseId;
    private final int grpcFlowControlWindow;
    private final String host;
    private final String persistenceKey;
    private final boolean sslEnabled;

    public DatabaseInfo(DatabaseId databaseId, String str, String str2, boolean z) {
        this(databaseId, str, str2, z, 262144);
    }

    public DatabaseInfo(DatabaseId databaseId, String str, String str2, boolean z, int i) {
        this.databaseId = databaseId;
        this.persistenceKey = str;
        this.host = str2;
        this.sslEnabled = z;
        this.grpcFlowControlWindow = i;
    }

    public DatabaseId getDatabaseId() {
        return this.databaseId;
    }

    public int getGrpcFlowControlWindow() {
        return this.grpcFlowControlWindow;
    }

    public String getHost() {
        return this.host;
    }

    public String getPersistenceKey() {
        return this.persistenceKey;
    }

    public boolean isSslEnabled() {
        return this.sslEnabled;
    }

    public String toString() {
        return "DatabaseInfo(databaseId:" + this.databaseId + " host:" + this.host + ")";
    }
}

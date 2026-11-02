package com.google.crypto.tink.internal;

/* JADX INFO: loaded from: classes3.dex */
public interface MonitoringClient {

    public interface Logger {
        default void log(int i, long j) {
        }

        default void logFailure() {
        }

        default void logKeyExport(int i) {
        }
    }

    Logger createLogger(KeysetHandleInterface keysetHandleInterface, MonitoringAnnotations monitoringAnnotations, String str, String str2);
}

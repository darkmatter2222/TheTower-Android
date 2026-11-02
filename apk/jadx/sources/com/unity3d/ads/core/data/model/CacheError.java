package com.unity3d.ads.core.data.model;

import p005kotlin.Metadata;
import p005kotlin.enums.EnumEntries;
import p005kotlin.enums.EnumEntriesKt;

/* JADX INFO: compiled from: CacheError.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0015\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015¨\u0006\u0016"}, d2 = {"Lcom/unity3d/ads/core/data/model/CacheError;", "", "<init>", "(Ljava/lang/String;I)V", "FILE_IO_CREATE", "FILE_IO_ERROR", "FILE_NOT_FOUND", "FILE_ALREADY_CACHING", "NOT_CACHING", "JSON_ERROR", "NO_INTERNET", "MALFORMED_URL", "NETWORK_ERROR", "ILLEGAL_STATE", "INVALID_ARGUMENT", "UNSUPPORTED_ENCODING", "FILE_STATE_WRONG", "CACHE_DIRECTORY_NULL", "CACHE_DIRECTORY_TYPE_NULL", "CACHE_DIRECTORY_EXISTS", "CACHE_DIRECTORY_DOESNT_EXIST", "UNKNOWN_ERROR", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public enum CacheError {
    FILE_IO_CREATE,
    FILE_IO_ERROR,
    FILE_NOT_FOUND,
    FILE_ALREADY_CACHING,
    NOT_CACHING,
    JSON_ERROR,
    NO_INTERNET,
    MALFORMED_URL,
    NETWORK_ERROR,
    ILLEGAL_STATE,
    INVALID_ARGUMENT,
    UNSUPPORTED_ENCODING,
    FILE_STATE_WRONG,
    CACHE_DIRECTORY_NULL,
    CACHE_DIRECTORY_TYPE_NULL,
    CACHE_DIRECTORY_EXISTS,
    CACHE_DIRECTORY_DOESNT_EXIST,
    UNKNOWN_ERROR;

    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

    public static EnumEntries<CacheError> getEntries() {
        return $ENTRIES;
    }
}

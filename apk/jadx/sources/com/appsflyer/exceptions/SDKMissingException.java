package com.appsflyer.exceptions;

import p005kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/appsflyer/exceptions/SDKMissingException;", "Ljava/lang/IllegalStateException;", "Lkotlin/IllegalStateException;", "<init>", "()V"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class SDKMissingException extends IllegalStateException {
    public SDKMissingException() {
        super("AppsFlyer SDK required! Did you exclude the dependency from this library?");
    }
}

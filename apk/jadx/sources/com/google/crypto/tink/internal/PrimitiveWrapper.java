package com.google.crypto.tink.internal;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
public interface PrimitiveWrapper<B, P> {

    public interface PrimitiveFactory<B> {
        B create(KeysetHandleInterface.Entry entry) throws GeneralSecurityException;
    }

    Class<B> getInputPrimitiveClass();

    Class<P> getPrimitiveClass();

    P wrap(KeysetHandleInterface keysetHandleInterface, MonitoringAnnotations monitoringAnnotations, PrimitiveFactory<B> primitiveFactory) throws GeneralSecurityException;
}

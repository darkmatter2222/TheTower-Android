package com.google.crypto.tink;

import com.google.crypto.tink.proto.KeyData;
import com.google.crypto.tink.shaded.protobuf.ByteString;
import com.google.crypto.tink.shaded.protobuf.MessageLite;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
public interface KeyManager<P> {
    @Deprecated
    default boolean doesSupport(String str) {
        throw new UnsupportedOperationException();
    }

    String getKeyType();

    P getPrimitive(ByteString byteString) throws GeneralSecurityException;

    @Deprecated
    default P getPrimitive(MessageLite messageLite) throws GeneralSecurityException {
        throw new UnsupportedOperationException();
    }

    Class<P> getPrimitiveClass();

    @Deprecated
    default int getVersion() {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    default MessageLite newKey(ByteString byteString) throws GeneralSecurityException {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    default MessageLite newKey(MessageLite messageLite) throws GeneralSecurityException {
        throw new UnsupportedOperationException();
    }

    KeyData newKeyData(ByteString byteString) throws GeneralSecurityException;
}

package com.google.firebase.messaging.cpp;

import com.google.flatbuffers.BaseVector;
import com.google.flatbuffers.Constants;
import com.google.flatbuffers.FlatBufferBuilder;
import com.google.flatbuffers.Table;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes4.dex */
public final class SerializedRegistrationReceived extends Table {

    public static final class Vector extends BaseVector {
        public Vector __assign(int i, int i2, ByteBuffer byteBuffer) {
            __reset(i, i2, byteBuffer);
            return this;
        }

        public SerializedRegistrationReceived get(int i) {
            return get(new SerializedRegistrationReceived(), i);
        }

        public SerializedRegistrationReceived get(SerializedRegistrationReceived serializedRegistrationReceived, int i) {
            return serializedRegistrationReceived.__assign(SerializedRegistrationReceived.__indirect(__element(i), this.bb), this.bb);
        }
    }

    public static void ValidateVersion() {
        Constants.FLATBUFFERS_25_2_10();
    }

    public static void addInstallationId(FlatBufferBuilder flatBufferBuilder, int i) {
        flatBufferBuilder.addOffset(0, i, 0);
    }

    public static int createSerializedRegistrationReceived(FlatBufferBuilder flatBufferBuilder, int i) {
        flatBufferBuilder.startTable(1);
        addInstallationId(flatBufferBuilder, i);
        return endSerializedRegistrationReceived(flatBufferBuilder);
    }

    public static int endSerializedRegistrationReceived(FlatBufferBuilder flatBufferBuilder) {
        return flatBufferBuilder.endTable();
    }

    public static SerializedRegistrationReceived getRootAsSerializedRegistrationReceived(ByteBuffer byteBuffer) {
        return getRootAsSerializedRegistrationReceived(byteBuffer, new SerializedRegistrationReceived());
    }

    public static SerializedRegistrationReceived getRootAsSerializedRegistrationReceived(ByteBuffer byteBuffer, SerializedRegistrationReceived serializedRegistrationReceived) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return serializedRegistrationReceived.__assign(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public static void startSerializedRegistrationReceived(FlatBufferBuilder flatBufferBuilder) {
        flatBufferBuilder.startTable(1);
    }

    public SerializedRegistrationReceived __assign(int i, ByteBuffer byteBuffer) {
        __init(i, byteBuffer);
        return this;
    }

    public void __init(int i, ByteBuffer byteBuffer) {
        __reset(i, byteBuffer);
    }

    public String installationId() {
        int i__offset = __offset(4);
        if (i__offset != 0) {
            return __string(i__offset + this.bb_pos);
        }
        return null;
    }

    public ByteBuffer installationIdAsByteBuffer() {
        return __vector_as_bytebuffer(4, 1);
    }

    public ByteBuffer installationIdInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 4, 1);
    }
}

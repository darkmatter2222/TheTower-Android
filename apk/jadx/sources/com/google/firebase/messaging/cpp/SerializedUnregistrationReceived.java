package com.google.firebase.messaging.cpp;

import com.google.flatbuffers.BaseVector;
import com.google.flatbuffers.Constants;
import com.google.flatbuffers.FlatBufferBuilder;
import com.google.flatbuffers.Table;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes4.dex */
public final class SerializedUnregistrationReceived extends Table {

    public static final class Vector extends BaseVector {
        public Vector __assign(int i, int i2, ByteBuffer byteBuffer) {
            __reset(i, i2, byteBuffer);
            return this;
        }

        public SerializedUnregistrationReceived get(int i) {
            return get(new SerializedUnregistrationReceived(), i);
        }

        public SerializedUnregistrationReceived get(SerializedUnregistrationReceived serializedUnregistrationReceived, int i) {
            return serializedUnregistrationReceived.__assign(SerializedUnregistrationReceived.__indirect(__element(i), this.bb), this.bb);
        }
    }

    public static void ValidateVersion() {
        Constants.FLATBUFFERS_25_2_10();
    }

    public static void addInstallationId(FlatBufferBuilder flatBufferBuilder, int i) {
        flatBufferBuilder.addOffset(0, i, 0);
    }

    public static int createSerializedUnregistrationReceived(FlatBufferBuilder flatBufferBuilder, int i) {
        flatBufferBuilder.startTable(1);
        addInstallationId(flatBufferBuilder, i);
        return endSerializedUnregistrationReceived(flatBufferBuilder);
    }

    public static int endSerializedUnregistrationReceived(FlatBufferBuilder flatBufferBuilder) {
        return flatBufferBuilder.endTable();
    }

    public static SerializedUnregistrationReceived getRootAsSerializedUnregistrationReceived(ByteBuffer byteBuffer) {
        return getRootAsSerializedUnregistrationReceived(byteBuffer, new SerializedUnregistrationReceived());
    }

    public static SerializedUnregistrationReceived getRootAsSerializedUnregistrationReceived(ByteBuffer byteBuffer, SerializedUnregistrationReceived serializedUnregistrationReceived) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return serializedUnregistrationReceived.__assign(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public static void startSerializedUnregistrationReceived(FlatBufferBuilder flatBufferBuilder) {
        flatBufferBuilder.startTable(1);
    }

    public SerializedUnregistrationReceived __assign(int i, ByteBuffer byteBuffer) {
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

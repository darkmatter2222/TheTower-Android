package com.google.flatbuffers;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes4.dex */
public class Struct {
    protected ByteBuffer bb;
    protected int bb_pos;

    public void __reset() {
        __reset(0, null);
    }

    protected void __reset(int i, ByteBuffer byteBuffer) {
        this.bb = byteBuffer;
        if (byteBuffer != null) {
            this.bb_pos = i;
        } else {
            this.bb_pos = 0;
        }
    }
}

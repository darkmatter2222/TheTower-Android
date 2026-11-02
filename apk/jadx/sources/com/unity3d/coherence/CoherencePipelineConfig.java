package com.unity3d.coherence;

import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class CoherencePipelineConfig {
    private final int concurrency;
    private final byte[] wasmBytes;

    public static final class Builder {
        private int concurrency = 1;
        private byte[] wasmBytes;

        public CoherencePipelineConfig build() {
            return new CoherencePipelineConfig(this.wasmBytes, this.concurrency);
        }

        public Builder setConcurrency(int i) {
            this.concurrency = i;
            return this;
        }

        public Builder setWasmBytes(byte[] bArr) {
            this.wasmBytes = (byte[]) ((byte[]) Objects.requireNonNull(bArr, "wasmBytes must not be null")).clone();
            return this;
        }
    }

    private CoherencePipelineConfig(byte[] bArr, int i) {
        this.wasmBytes = bArr;
        this.concurrency = i;
    }

    int getConcurrency() {
        return this.concurrency;
    }

    byte[] getWasmBytes() {
        return this.wasmBytes;
    }
}

package com.unity3d.coherence;

/* JADX INFO: loaded from: classes5.dex */
public interface CoherencePipeline extends AutoCloseable {
    @Override // java.lang.AutoCloseable
    void close();

    byte[] execute(byte[] bArr) throws CoherenceException;

    int getConcurrency();

    void load(byte[] bArr) throws CoherenceException;
}

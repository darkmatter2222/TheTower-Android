package io.grpc;

import com.google.common.base.Preconditions;
import com.ironsource.adapters.facebook.FacebookConstants;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class CompressorRegistry {
    private static final CompressorRegistry DEFAULT_INSTANCE = new CompressorRegistry(new Codec.Gzip(), Codec.Identity.NONE);
    private final ConcurrentMap<String, Compressor> compressors = new ConcurrentHashMap();

    CompressorRegistry(Compressor... compressorArr) {
        for (Compressor compressor : compressorArr) {
            this.compressors.put(compressor.getMessageEncoding(), compressor);
        }
    }

    public static CompressorRegistry getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static CompressorRegistry newEmptyInstance() {
        return new CompressorRegistry(new Compressor[0]);
    }

    @Nullable
    public Compressor lookupCompressor(String str) {
        return this.compressors.get(str);
    }

    public void register(Compressor compressor) {
        String messageEncoding = compressor.getMessageEncoding();
        Preconditions.checkArgument(!messageEncoding.contains(FacebookConstants.PLACEMENT_IDS_SEPARATOR), "Comma is currently not allowed in message encoding");
        this.compressors.put(messageEncoding, compressor);
    }
}

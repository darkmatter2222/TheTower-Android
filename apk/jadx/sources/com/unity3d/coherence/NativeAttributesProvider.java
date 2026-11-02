package com.unity3d.coherence;

/* JADX INFO: loaded from: classes5.dex */
final class NativeAttributesProvider implements AttributesProvider {
    private final CoherenceLibrary library;

    NativeAttributesProvider(CoherenceLibrary coherenceLibrary) {
        this.library = coherenceLibrary;
    }

    @Override // com.unity3d.coherence.AttributesProvider
    public byte[] getCommonAttributes(CommonAttributesConfig commonAttributesConfig) {
        if (commonAttributesConfig != null) {
            return CoherenceBridge.getCommonAttributes(this.library.apiPtr(), commonAttributesConfig.getProductId(), commonAttributesConfig.getEventId());
        }
        throw new IllegalArgumentException("config must not be null");
    }
}

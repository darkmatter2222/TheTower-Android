package com.unity3d.coherence;

/* JADX INFO: loaded from: classes5.dex */
final class NativeCoherenceProvider implements CoherenceProvider {
    private final CoherenceLibrary library;

    NativeCoherenceProvider(CoherenceLibrary coherenceLibrary) {
        this.library = coherenceLibrary;
    }

    @Override // com.unity3d.coherence.CoherenceProvider
    public CoherencePipeline create(CoherencePipelineConfig coherencePipelineConfig) throws CoherenceException {
        return new NativeCoherencePipeline(this.library.apiPtr(), coherencePipelineConfig.getWasmBytes(), coherencePipelineConfig.getConcurrency());
    }
}

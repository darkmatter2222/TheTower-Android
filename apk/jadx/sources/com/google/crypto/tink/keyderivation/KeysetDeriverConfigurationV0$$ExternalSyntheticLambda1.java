package com.google.crypto.tink.keyderivation;

import com.google.crypto.tink.Key;
import com.google.crypto.tink.internal.PrimitiveConstructor;
import com.google.crypto.tink.prf.HkdfPrfKey;
import com.google.crypto.tink.subtle.prf.HkdfStreamingPrf;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class KeysetDeriverConfigurationV0$$ExternalSyntheticLambda1 implements PrimitiveConstructor.PrimitiveConstructionFunction {
    @Override // com.google.crypto.tink.internal.PrimitiveConstructor.PrimitiveConstructionFunction
    public final Object constructPrimitive(Key key) {
        return HkdfStreamingPrf.create((HkdfPrfKey) key);
    }
}

package com.google.crypto.tink.internal;

import com.google.crypto.tink.InsecureSecretKeyAccess;
import com.google.crypto.tink.Key;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class PrimitiveRegistry {
    private final Map<PrimitiveConstructorIndex, PrimitiveConstructor<?, ?>> primitiveConstructorMap;
    private final Map<Class<?>, PrimitiveWrapper<?, ?>> primitiveWrapperMap;
    private final boolean reparseLegacyKeys;

    public static final class Builder {
        private final Map<PrimitiveConstructorIndex, PrimitiveConstructor<?, ?>> primitiveConstructorMap;
        private final Map<Class<?>, PrimitiveWrapper<?, ?>> primitiveWrapperMap;
        private boolean reparseLegacyKeys;

        private Builder() {
            this.reparseLegacyKeys = false;
            this.primitiveConstructorMap = new HashMap();
            this.primitiveWrapperMap = new HashMap();
        }

        private Builder(PrimitiveRegistry primitiveRegistry) {
            this.reparseLegacyKeys = false;
            this.primitiveConstructorMap = new HashMap(primitiveRegistry.primitiveConstructorMap);
            this.primitiveWrapperMap = new HashMap(primitiveRegistry.primitiveWrapperMap);
        }

        public Builder allowReparsingLegacyKeys() {
            this.reparseLegacyKeys = true;
            return this;
        }

        public PrimitiveRegistry build() {
            return new PrimitiveRegistry(this);
        }

        public <KeyT extends Key, PrimitiveT> Builder registerPrimitiveConstructor(PrimitiveConstructor<KeyT, PrimitiveT> primitiveConstructor) throws GeneralSecurityException {
            if (primitiveConstructor == null) {
                throw new NullPointerException("primitive constructor must be non-null");
            }
            PrimitiveConstructorIndex primitiveConstructorIndex = new PrimitiveConstructorIndex(primitiveConstructor.getKeyClass(), primitiveConstructor.getPrimitiveClass());
            if (!this.primitiveConstructorMap.containsKey(primitiveConstructorIndex)) {
                this.primitiveConstructorMap.put(primitiveConstructorIndex, primitiveConstructor);
                return this;
            }
            PrimitiveConstructor<?, ?> primitiveConstructor2 = this.primitiveConstructorMap.get(primitiveConstructorIndex);
            if (primitiveConstructor2.equals(primitiveConstructor) && primitiveConstructor.equals(primitiveConstructor2)) {
                return this;
            }
            throw new GeneralSecurityException("Attempt to register non-equal PrimitiveConstructor object for already existing object of type: " + primitiveConstructorIndex);
        }

        public <InputPrimitiveT, WrapperPrimitiveT> Builder registerPrimitiveWrapper(PrimitiveWrapper<InputPrimitiveT, WrapperPrimitiveT> primitiveWrapper) throws GeneralSecurityException {
            if (primitiveWrapper == null) {
                throw new NullPointerException("wrapper must be non-null");
            }
            Class<WrapperPrimitiveT> primitiveClass = primitiveWrapper.getPrimitiveClass();
            if (!this.primitiveWrapperMap.containsKey(primitiveClass)) {
                this.primitiveWrapperMap.put(primitiveClass, primitiveWrapper);
                return this;
            }
            PrimitiveWrapper<?, ?> primitiveWrapper2 = this.primitiveWrapperMap.get(primitiveClass);
            if (primitiveWrapper2.equals(primitiveWrapper) && primitiveWrapper.equals(primitiveWrapper2)) {
                return this;
            }
            throw new GeneralSecurityException("Attempt to register non-equal PrimitiveWrapper object or input class object for already existing object of type" + primitiveClass);
        }
    }

    private static final class PrimitiveConstructorIndex {
        private final Class<?> keyClass;
        private final Class<?> primitiveClass;

        private PrimitiveConstructorIndex(Class<?> cls, Class<?> cls2) {
            this.keyClass = cls;
            this.primitiveClass = cls2;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof PrimitiveConstructorIndex)) {
                return false;
            }
            PrimitiveConstructorIndex primitiveConstructorIndex = (PrimitiveConstructorIndex) obj;
            return primitiveConstructorIndex.keyClass.equals(this.keyClass) && primitiveConstructorIndex.primitiveClass.equals(this.primitiveClass);
        }

        public int hashCode() {
            return Objects.hash(this.keyClass, this.primitiveClass);
        }

        public String toString() {
            return this.keyClass.getSimpleName() + " with primitive type: " + this.primitiveClass.getSimpleName();
        }
    }

    private PrimitiveRegistry(Builder builder) {
        this.primitiveConstructorMap = new HashMap(builder.primitiveConstructorMap);
        this.primitiveWrapperMap = new HashMap(builder.primitiveWrapperMap);
        this.reparseLegacyKeys = builder.reparseLegacyKeys;
    }

    public static Builder builder() {
        return new Builder();
    }

    public static Builder builder(PrimitiveRegistry primitiveRegistry) {
        return new Builder();
    }

    private <KeyT extends Key, PrimitiveT> PrimitiveT getPrimitiveWithoutReparsing(KeyT keyt, Class<PrimitiveT> cls) throws GeneralSecurityException {
        PrimitiveConstructorIndex primitiveConstructorIndex = new PrimitiveConstructorIndex(keyt.getClass(), cls);
        if (this.primitiveConstructorMap.containsKey(primitiveConstructorIndex)) {
            return (PrimitiveT) this.primitiveConstructorMap.get(primitiveConstructorIndex).constructPrimitive(keyt);
        }
        throw new GeneralSecurityException("No PrimitiveConstructor for " + primitiveConstructorIndex + " available, see https://developers.google.com/tink/faq/registration_errors");
    }

    private <InnerPrimitiveT, WrappedPrimitiveT> WrappedPrimitiveT wrapWithPrimitiveWrapper(KeysetHandleInterface keysetHandleInterface, MonitoringAnnotations monitoringAnnotations, final PrimitiveWrapper<InnerPrimitiveT, WrappedPrimitiveT> primitiveWrapper) throws GeneralSecurityException {
        return primitiveWrapper.wrap(keysetHandleInterface, monitoringAnnotations, new PrimitiveWrapper.PrimitiveFactory() { // from class: com.google.crypto.tink.internal.PrimitiveRegistry$$ExternalSyntheticLambda0
            @Override // com.google.crypto.tink.internal.PrimitiveWrapper.PrimitiveFactory
            public final Object create(KeysetHandleInterface.Entry entry) {
                return this.f$0.m1235x82d2bc2c(primitiveWrapper, entry);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <KeyT extends Key, PrimitiveT> PrimitiveT getPrimitive(KeyT keyt, Class<PrimitiveT> cls) throws GeneralSecurityException {
        return (this.reparseLegacyKeys && (keyt instanceof LegacyProtoKey)) ? (PrimitiveT) getPrimitiveWithoutReparsing(MutableSerializationRegistry.globalInstance().parseKey(((LegacyProtoKey) keyt).getSerialization(InsecureSecretKeyAccess.get()), InsecureSecretKeyAccess.get()), cls) : (PrimitiveT) getPrimitiveWithoutReparsing(keyt, cls);
    }

    /* JADX INFO: renamed from: lambda$wrapWithPrimitiveWrapper$0$com-google-crypto-tink-internal-PrimitiveRegistry, reason: not valid java name */
    /* synthetic */ Object m1235x82d2bc2c(PrimitiveWrapper primitiveWrapper, KeysetHandleInterface.Entry entry) throws GeneralSecurityException {
        return getPrimitive(entry.getKey(), primitiveWrapper.getInputPrimitiveClass());
    }

    public <WrappedPrimitiveT> WrappedPrimitiveT wrap(KeysetHandleInterface keysetHandleInterface, MonitoringAnnotations monitoringAnnotations, Class<WrappedPrimitiveT> cls) throws GeneralSecurityException {
        if (this.primitiveWrapperMap.containsKey(cls)) {
            return (WrappedPrimitiveT) wrapWithPrimitiveWrapper(keysetHandleInterface, monitoringAnnotations, this.primitiveWrapperMap.get(cls));
        }
        throw new GeneralSecurityException("No wrapper found for " + cls);
    }
}

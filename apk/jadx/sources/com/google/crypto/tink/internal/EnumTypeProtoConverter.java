package com.google.crypto.tink.internal;

import com.google.errorprone.annotations.Immutable;
import java.lang.Enum;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public final class EnumTypeProtoConverter<E extends Enum<E>, O> {
    private final Map<E, O> fromProtoEnumMap;
    private final Map<O, E> toProtoEnumMap;

    public static final class Builder<E extends Enum<E>, O> {
        Map<E, O> fromProtoEnumMap;
        Map<O, E> toProtoEnumMap;

        private Builder() {
            this.fromProtoEnumMap = new HashMap();
            this.toProtoEnumMap = new HashMap();
        }

        public Builder<E, O> add(E e, O o) {
            this.fromProtoEnumMap.put(e, o);
            this.toProtoEnumMap.put(o, e);
            return this;
        }

        public EnumTypeProtoConverter<E, O> build() {
            return new EnumTypeProtoConverter<>(Collections.unmodifiableMap(this.fromProtoEnumMap), Collections.unmodifiableMap(this.toProtoEnumMap));
        }
    }

    private EnumTypeProtoConverter(Map<E, O> map, Map<O, E> map2) {
        this.fromProtoEnumMap = map;
        this.toProtoEnumMap = map2;
    }

    public static <E extends Enum<E>, O> Builder<E, O> builder() {
        return new Builder<>();
    }

    public O fromProtoEnum(E e) throws GeneralSecurityException {
        O o = this.fromProtoEnumMap.get(e);
        if (o != null) {
            return o;
        }
        throw new GeneralSecurityException("Unable to convert proto enum: " + e);
    }

    public E toProtoEnum(O o) throws GeneralSecurityException {
        E e = this.toProtoEnumMap.get(o);
        if (e != null) {
            return e;
        }
        throw new GeneralSecurityException("Unable to convert object enum: " + o);
    }
}

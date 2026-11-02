package kotlinx.serialization;

import com.google.android.gms.ads.RequestConfiguration;
import java.lang.reflect.Type;
import java.util.List;
import kotlinx.serialization.modules.SerializersModule;
import p005kotlin.Metadata;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.MagicApiIntrinsics;
import p005kotlin.reflect.KClass;
import p005kotlin.reflect.KClassifier;
import p005kotlin.reflect.KType;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"kotlinx/serialization/SerializersKt__SerializersJvmKt", "kotlinx/serialization/SerializersKt__SerializersKt"}, k = 4, mv = {2, 0, 0}, xi = 48)
public final class SerializersKt {
    public static final KSerializer<?> moduleThenPolymorphic(SerializersModule serializersModule, KClass<?> kClass) {
        return SerializersKt__SerializersKt.moduleThenPolymorphic(serializersModule, kClass);
    }

    public static final KSerializer<?> moduleThenPolymorphic(SerializersModule serializersModule, KClass<?> kClass, KSerializer<?>[] kSerializerArr) {
        return SerializersKt__SerializersKt.moduleThenPolymorphic(serializersModule, kClass, kSerializerArr);
    }

    public static final KSerializer<?> noCompiledSerializer(String str) {
        return SerializersKt__SerializersKt.noCompiledSerializer(str);
    }

    public static final KSerializer<?> noCompiledSerializer(SerializersModule serializersModule, KClass<?> kClass) {
        return SerializersKt__SerializersKt.noCompiledSerializer(serializersModule, kClass);
    }

    public static final KSerializer<?> noCompiledSerializer(SerializersModule serializersModule, KClass<?> kClass, KSerializer<?>[] kSerializerArr) {
        return SerializersKt__SerializersKt.noCompiledSerializer(serializersModule, kClass, kSerializerArr);
    }

    public static final KSerializer<? extends Object> parametrizedSerializerOrNull(KClass<Object> kClass, List<? extends KSerializer<Object>> list, Function0<? extends KClassifier> function0) {
        return SerializersKt__SerializersKt.parametrizedSerializerOrNull(kClass, list, function0);
    }

    public static final /* synthetic */ <T> KSerializer<T> serializer() {
        Intrinsics.reifiedOperationMarker(6, RequestConfiguration.MAX_AD_CONTENT_RATING_T);
        MagicApiIntrinsics.voidMagicApiCall("kotlinx.serialization.serializer.simple");
        return (KSerializer<T>) serializer((KType) null);
    }

    public static final KSerializer<Object> serializer(Type type) {
        return SerializersKt__SerializersJvmKt.serializer(type);
    }

    @InternalSerializationApi
    public static final <T> KSerializer<T> serializer(KClass<T> kClass) {
        return SerializersKt__SerializersKt.serializer(kClass);
    }

    @ExperimentalSerializationApi
    public static final KSerializer<Object> serializer(KClass<?> kClass, List<? extends KSerializer<?>> list, boolean z) {
        return SerializersKt__SerializersKt.serializer(kClass, list, z);
    }

    public static final KSerializer<Object> serializer(KType kType) {
        return SerializersKt__SerializersKt.serializer(kType);
    }

    public static final /* synthetic */ <T> KSerializer<T> serializer(SerializersModule serializersModule) {
        Intrinsics.reifiedOperationMarker(6, RequestConfiguration.MAX_AD_CONTENT_RATING_T);
        MagicApiIntrinsics.voidMagicApiCall("kotlinx.serialization.serializer.withModule");
        return (KSerializer<T>) serializer(serializersModule, (KType) null);
    }

    public static final KSerializer<Object> serializer(SerializersModule serializersModule, Type type) {
        return SerializersKt__SerializersJvmKt.serializer(serializersModule, type);
    }

    @ExperimentalSerializationApi
    public static final KSerializer<Object> serializer(SerializersModule serializersModule, KClass<?> kClass, List<? extends KSerializer<?>> list, boolean z) {
        return SerializersKt__SerializersKt.serializer(serializersModule, kClass, list, z);
    }

    public static final KSerializer<Object> serializer(SerializersModule serializersModule, KType kType) {
        return SerializersKt__SerializersKt.serializer(serializersModule, kType);
    }

    public static final KSerializer<Object> serializerOrNull(Type type) {
        return SerializersKt__SerializersJvmKt.serializerOrNull(type);
    }

    @InternalSerializationApi
    public static final <T> KSerializer<T> serializerOrNull(KClass<T> kClass) {
        return SerializersKt__SerializersKt.serializerOrNull(kClass);
    }

    public static final KSerializer<Object> serializerOrNull(KType kType) {
        return SerializersKt__SerializersKt.serializerOrNull(kType);
    }

    public static final KSerializer<Object> serializerOrNull(SerializersModule serializersModule, Type type) {
        return SerializersKt__SerializersJvmKt.serializerOrNull(serializersModule, type);
    }

    public static final KSerializer<Object> serializerOrNull(SerializersModule serializersModule, KType kType) {
        return SerializersKt__SerializersKt.serializerOrNull(serializersModule, kType);
    }

    public static final List<KSerializer<Object>> serializersForParameters(SerializersModule serializersModule, List<? extends KType> list, boolean z) {
        return SerializersKt__SerializersKt.serializersForParameters(serializersModule, list, z);
    }
}

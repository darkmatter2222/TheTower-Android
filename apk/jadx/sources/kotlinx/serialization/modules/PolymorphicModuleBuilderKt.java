package kotlinx.serialization.modules;

import com.google.android.gms.ads.RequestConfiguration;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializersKt;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.MagicApiIntrinsics;
import p005kotlin.jvm.internal.Reflection;
import p005kotlin.reflect.KClass;
import p005kotlin.reflect.KType;

/* JADX INFO: compiled from: PolymorphicModuleBuilder.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a7\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003\"\n\b\u0001\u0010\u0004\u0018\u0001*\u0002H\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0007H\u0086\b\u001a7\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003\"\n\b\u0001\u0010\u0004\u0018\u0001*\u0002H\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00052\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00040\tH\u0086\b¨\u0006\n"}, d2 = {"subclass", "", "Base", "", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lkotlinx/serialization/modules/PolymorphicModuleBuilder;", "serializer", "Lkotlinx/serialization/KSerializer;", "clazz", "Lkotlin/reflect/KClass;", "kotlinx-serialization-core"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class PolymorphicModuleBuilderKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final /* synthetic */ <Base, T extends Base> void subclass(PolymorphicModuleBuilder<? super Base> polymorphicModuleBuilder, KClass<T> clazz) {
        Intrinsics.checkNotNullParameter(polymorphicModuleBuilder, "<this>");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.reifiedOperationMarker(6, RequestConfiguration.MAX_AD_CONTENT_RATING_T);
        MagicApiIntrinsics.voidMagicApiCall("kotlinx.serialization.serializer.simple");
        polymorphicModuleBuilder.subclass(clazz, SerializersKt.serializer((KType) null));
    }

    public static final /* synthetic */ <Base, T extends Base> void subclass(PolymorphicModuleBuilder<? super Base> polymorphicModuleBuilder, KSerializer<T> serializer) {
        Intrinsics.checkNotNullParameter(polymorphicModuleBuilder, "<this>");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        Intrinsics.reifiedOperationMarker(4, RequestConfiguration.MAX_AD_CONTENT_RATING_T);
        polymorphicModuleBuilder.subclass(Reflection.getOrCreateKotlinClass(Object.class), serializer);
    }
}

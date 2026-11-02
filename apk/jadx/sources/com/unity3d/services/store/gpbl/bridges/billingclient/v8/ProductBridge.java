package com.unity3d.services.store.gpbl.bridges.billingclient.v8;

import com.unity3d.services.core.reflection.GenericBridge;
import java.lang.reflect.InvocationTargetException;
import p005kotlin.Metadata;
import p005kotlin.collections.MapsKt;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ProductBridge.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0014J\b\u0010\b\u001a\u0004\u0018\u00010\u0003R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/ProductBridge;", "Lcom/unity3d/services/core/reflection/GenericBridge;", "productInternalInstance", "", "<init>", "(Ljava/lang/Object;)V", "getClassName", "", "getInternalClass", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ProductBridge extends GenericBridge {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String NEW_BUILDER_METHOD = "newBuilder";
    private final Object productInternalInstance;

    /* JADX INFO: compiled from: ProductBridge.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0005J\u0006\u0010\b\u001a\u00020\tJ\u0010\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u0007H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/ProductBridge$Companion;", "", "<init>", "()V", "getClassForParams", "Ljava/lang/Class;", "NEW_BUILDER_METHOD", "", "newBuilder", "Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/ProductBuilderBridge;", "callNonVoidStaticMethod", "methodName", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final Object callNonVoidStaticMethod(String methodName) throws IllegalAccessException, InvocationTargetException {
            Object objInvoke = getClassForParams().getMethod(methodName, new Class[0]).invoke(null, new Object[0]);
            if (objInvoke != null) {
                return objInvoke;
            }
            throw new IllegalStateException("Static method " + methodName + " returned null");
        }

        public final Class<?> getClassForParams() throws ClassNotFoundException {
            Class<?> cls = Class.forName("com.android.billingclient.api.QueryProductDetailsParams$Product");
            Intrinsics.checkNotNullExpressionValue(cls, "forName(...)");
            return cls;
        }

        public final ProductBuilderBridge newBuilder() {
            return new ProductBuilderBridge(callNonVoidStaticMethod("newBuilder"));
        }
    }

    public ProductBridge(Object obj) {
        super(MapsKt.emptyMap());
        this.productInternalInstance = obj;
    }

    @Override // com.unity3d.services.core.reflection.GenericBridge
    protected String getClassName() {
        return "com.android.billingclient.api.QueryProductDetailsParams$Product";
    }

    /* JADX INFO: renamed from: getInternalClass, reason: from getter */
    public final Object getProductInternalInstance() {
        return this.productInternalInstance;
    }
}

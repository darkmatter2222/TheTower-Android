package com.unity3d.services.store.gpbl.bridges.billingclient.v8;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.unity3d.services.core.reflection.GenericBridge;
import com.unity3d.services.store.gpbl.BillingOriginalJsonResponse;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.Metadata;
import p005kotlin.TuplesKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: compiled from: ProductDetailsBridge.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u000e2\u00020\u00012\u00020\u0002:\u0001\u000eB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\bH\u0014J\b\u0010\n\u001a\u00020\u000bH\u0016J\u0012\u0010\f\u001a\u0004\u0018\u00010\b2\u0006\u0010\r\u001a\u00020\bH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/ProductDetailsBridge;", "Lcom/unity3d/services/store/gpbl/BillingOriginalJsonResponse;", "Lcom/unity3d/services/core/reflection/GenericBridge;", "internalRef", "", "<init>", "(Ljava/lang/Object;)V", ProductDetailsBridge.TO_STRING_METHOD, "", "getClassName", "getOriginalJson", "Lorg/json/JSONObject;", "parseOriginalJson", "productDetailsString", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ProductDetailsBridge extends GenericBridge implements BillingOriginalJsonResponse {
    private static final String TO_STRING_METHOD = "toString";
    private final Object internalRef;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProductDetailsBridge(Object internalRef) {
        super(MapsKt.hashMapOf(TuplesKt.to(TO_STRING_METHOD, new Class[0])));
        Intrinsics.checkNotNullParameter(internalRef, "internalRef");
        this.internalRef = internalRef;
    }

    private final String parseOriginalJson(String productDetailsString) {
        try {
            int iIndexOf$default = StringsKt.indexOf$default((CharSequence) productDetailsString, "jsonString='", 0, false, 6, (Object) null) + 12;
            int iIndexOf$default2 = StringsKt.indexOf$default((CharSequence) productDetailsString, "', parsedJson=", 0, false, 6, (Object) null);
            if (1 <= iIndexOf$default && iIndexOf$default < iIndexOf$default2) {
                String strSubstring = productDetailsString.substring(iIndexOf$default, iIndexOf$default2);
                Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                return StringsKt.replace$default(strSubstring, "\\/", DomExceptionUtils.SEPARATOR, false, 4, (Object) null);
            }
        } catch (Exception unused) {
        }
        return null;
    }

    @Override // com.unity3d.services.core.reflection.GenericBridge
    protected String getClassName() {
        return "com.android.billingclient.api.ProductDetails";
    }

    @Override // com.unity3d.services.store.gpbl.BillingOriginalJsonResponse
    public JSONObject getOriginalJson() {
        try {
            String originalJson = parseOriginalJson(toString());
            return originalJson != null ? new JSONObject(originalJson) : new JSONObject();
        } catch (JSONException unused) {
            return new JSONObject();
        }
    }

    public String toString() {
        Object objCallNonVoidMethod = callNonVoidMethod(TO_STRING_METHOD, this.internalRef, new Object[0]);
        Intrinsics.checkNotNull(objCallNonVoidMethod, "null cannot be cast to non-null type kotlin.String");
        return (String) objCallNonVoidMethod;
    }
}

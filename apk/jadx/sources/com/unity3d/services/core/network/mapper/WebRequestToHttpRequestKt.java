package com.unity3d.services.core.network.mapper;

import com.unity3d.services.core.network.model.HttpRequest;
import com.unity3d.services.core.network.model.RequestType;
import com.unity3d.services.core.request.WebRequest;
import java.util.List;
import java.util.Map;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WebRequestToHttpRequest.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"toHttpRequest", "Lcom/unity3d/services/core/network/model/HttpRequest;", "Lcom/unity3d/services/core/request/WebRequest;", "unity-ads_defaultRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class WebRequestToHttpRequestKt {
    public static final HttpRequest toHttpRequest(WebRequest webRequest) {
        Intrinsics.checkNotNullParameter(webRequest, "<this>");
        String string = webRequest.getUrl().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        String requestType = webRequest.getRequestType();
        Intrinsics.checkNotNullExpressionValue(requestType, "getRequestType(...)");
        RequestType requestTypeValueOf = RequestType.valueOf(requestType);
        Map<String, List<String>> headers = webRequest.getHeaders();
        Intrinsics.checkNotNullExpressionValue(headers, "getHeaders(...)");
        return new HttpRequest(string, null, requestTypeValueOf, webRequest.getBody(), headers, null, null, null, null, null, 0, 0, 0, 0, false, null, null, 0, 262114, null);
    }
}

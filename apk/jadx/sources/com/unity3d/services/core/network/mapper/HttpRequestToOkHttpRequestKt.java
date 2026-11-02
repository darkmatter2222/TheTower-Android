package com.unity3d.services.core.network.mapper;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.ironsource.C3510b4;
import com.ironsource.adapters.facebook.FacebookConstants;
import com.unity3d.services.core.network.model.HttpRequest;
import java.util.List;
import java.util.Map;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import p005kotlin.Metadata;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: compiled from: HttpRequestToOkHttpRequest.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0012\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0002\u001a\u001c\u0010\u0006\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u0005H\u0002\u001a\f\u0010\b\u001a\u00020\t*\u00020\nH\u0002\u001a\n\u0010\u000b\u001a\u00020\f*\u00020\n\u001a\n\u0010\r\u001a\u00020\f*\u00020\n\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"generateOkHttpBody", "Lokhttp3/RequestBody;", C3510b4.i.E0, "", "PROTOBUF_MEDIA_TYPE", "", "generateOkHttpProtobufBody", "mediaType", "generateOkHttpHeaders", "Lokhttp3/Headers;", "Lcom/unity3d/services/core/network/model/HttpRequest;", "toOkHttpRequest", "Lokhttp3/Request;", "toOkHttpProtoRequest", "unity-ads_defaultRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class HttpRequestToOkHttpRequestKt {
    private static final String PROTOBUF_MEDIA_TYPE = "application/x-protobuf";

    private static final RequestBody generateOkHttpBody(Object obj) {
        if (obj instanceof byte[]) {
            RequestBody requestBodyCreate = RequestBody.create(MediaType.parse("text/plain;charset=utf-8"), (byte[]) obj);
            Intrinsics.checkNotNullExpressionValue(requestBodyCreate, "create(...)");
            return requestBodyCreate;
        }
        if (obj instanceof String) {
            RequestBody requestBodyCreate2 = RequestBody.create(MediaType.parse("text/plain;charset=utf-8"), (String) obj);
            Intrinsics.checkNotNullExpressionValue(requestBodyCreate2, "create(...)");
            return requestBodyCreate2;
        }
        RequestBody requestBodyCreate3 = RequestBody.create(MediaType.parse("text/plain;charset=utf-8"), "");
        Intrinsics.checkNotNullExpressionValue(requestBodyCreate3, "create(...)");
        return requestBodyCreate3;
    }

    private static final Headers generateOkHttpHeaders(HttpRequest httpRequest) {
        Headers.Builder builder = new Headers.Builder();
        for (Map.Entry<String, List<String>> entry : httpRequest.getHeaders().entrySet()) {
            builder.add(entry.getKey(), CollectionsKt.joinToString$default(entry.getValue(), FacebookConstants.PLACEMENT_IDS_SEPARATOR, null, null, 0, null, null, 62, null));
        }
        Headers headersBuild = builder.build();
        Intrinsics.checkNotNullExpressionValue(headersBuild, "build(...)");
        return headersBuild;
    }

    private static final RequestBody generateOkHttpProtobufBody(Object obj, String str) {
        if (obj instanceof byte[]) {
            RequestBody requestBodyCreate = RequestBody.create(MediaType.parse(str), (byte[]) obj);
            Intrinsics.checkNotNullExpressionValue(requestBodyCreate, "create(...)");
            return requestBodyCreate;
        }
        if (obj instanceof String) {
            RequestBody requestBodyCreate2 = RequestBody.create(MediaType.parse(str), (String) obj);
            Intrinsics.checkNotNullExpressionValue(requestBodyCreate2, "create(...)");
            return requestBodyCreate2;
        }
        RequestBody requestBodyCreate3 = RequestBody.create(MediaType.parse(str), "");
        Intrinsics.checkNotNullExpressionValue(requestBodyCreate3, "create(...)");
        return requestBodyCreate3;
    }

    static /* synthetic */ RequestBody generateOkHttpProtobufBody$default(Object obj, String str, int i, Object obj2) {
        if ((i & 2) != 0) {
            str = "application/x-protobuf";
        }
        return generateOkHttpProtobufBody(obj, str);
    }

    public static final Request toOkHttpProtoRequest(HttpRequest httpRequest) {
        RequestBody requestBodyGenerateOkHttpProtobufBody;
        Intrinsics.checkNotNullParameter(httpRequest, "<this>");
        Request.Builder builderUrl = new Request.Builder().url(StringsKt.removeSuffix(StringsKt.trim(httpRequest.getBaseURL(), '/') + '/' + StringsKt.trim(httpRequest.getPath(), '/'), (CharSequence) DomExceptionUtils.SEPARATOR));
        String string = httpRequest.getMethod().toString();
        Object body = httpRequest.getBody();
        if (body != null) {
            String contentType = httpRequest.getContentType();
            if (contentType == null) {
                contentType = "application/x-protobuf";
            }
            requestBodyGenerateOkHttpProtobufBody = generateOkHttpProtobufBody(body, contentType);
        } else {
            requestBodyGenerateOkHttpProtobufBody = null;
        }
        Request requestBuild = builderUrl.method(string, requestBodyGenerateOkHttpProtobufBody).headers(generateOkHttpHeaders(httpRequest)).build();
        Intrinsics.checkNotNullExpressionValue(requestBuild, "build(...)");
        return requestBuild;
    }

    public static final Request toOkHttpRequest(HttpRequest httpRequest) {
        Intrinsics.checkNotNullParameter(httpRequest, "<this>");
        Request.Builder builderUrl = new Request.Builder().url(StringsKt.removeSuffix(StringsKt.trim(httpRequest.getBaseURL(), '/') + '/' + StringsKt.trim(httpRequest.getPath(), '/'), (CharSequence) DomExceptionUtils.SEPARATOR));
        String string = httpRequest.getMethod().toString();
        Object body = httpRequest.getBody();
        Request requestBuild = builderUrl.method(string, body != null ? generateOkHttpBody(body) : null).headers(generateOkHttpHeaders(httpRequest)).build();
        Intrinsics.checkNotNullExpressionValue(requestBuild, "build(...)");
        return requestBuild;
    }
}

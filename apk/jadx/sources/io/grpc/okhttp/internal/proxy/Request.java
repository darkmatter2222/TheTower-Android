package io.grpc.okhttp.internal.proxy;

import io.grpc.okhttp.internal.Headers;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes5.dex */
public final class Request {
    private final Headers headers;
    private final HttpUrl url;

    public static class Builder {
        private Headers.Builder headers = new Headers.Builder();
        private HttpUrl url;

        public Request build() {
            if (this.url != null) {
                return new Request(this);
            }
            throw new IllegalStateException("url == null");
        }

        public Builder header(String str, String str2) {
            this.headers.set(str, str2);
            return this;
        }

        public Builder url(HttpUrl httpUrl) {
            if (httpUrl == null) {
                throw new IllegalArgumentException("url == null");
            }
            this.url = httpUrl;
            return this;
        }
    }

    private Request(Builder builder) {
        this.url = builder.url;
        this.headers = builder.headers.build();
    }

    public Headers headers() {
        return this.headers;
    }

    public HttpUrl httpUrl() {
        return this.url;
    }

    public Builder newBuilder() {
        return new Builder();
    }

    public String toString() {
        return "Request{url=" + this.url + AbstractJsonLexerKt.END_OBJ;
    }
}

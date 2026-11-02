package io.grpc;

import com.google.common.base.Preconditions;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public abstract class InternalConfigSelector {
    public static final Attributes.Key<InternalConfigSelector> KEY = Attributes.Key.create("internal:io.grpc.config-selector");

    public static final class Result {
        private final Object config;

        @Nullable
        public ClientInterceptor interceptor;
        private final Status status;

        public static final class Builder {
            private Object config;
            private ClientInterceptor interceptor;

            private Builder() {
            }

            public Result build() {
                Preconditions.checkState(this.config != null, "config is not set");
                return new Result(Status.OK, this.config, this.interceptor);
            }

            public Builder setConfig(Object obj) {
                this.config = Preconditions.checkNotNull(obj, "config");
                return this;
            }

            public Builder setInterceptor(ClientInterceptor clientInterceptor) {
                this.interceptor = (ClientInterceptor) Preconditions.checkNotNull(clientInterceptor, "interceptor");
                return this;
            }
        }

        private Result(Status status, Object obj, ClientInterceptor clientInterceptor) {
            this.status = (Status) Preconditions.checkNotNull(status, "status");
            this.config = obj;
            this.interceptor = clientInterceptor;
        }

        public static Result forError(Status status) {
            Preconditions.checkArgument(!status.isOk(), "status is OK");
            return new Result(status, null, null);
        }

        public static Builder newBuilder() {
            return new Builder();
        }

        public Object getConfig() {
            return this.config;
        }

        @Nullable
        public ClientInterceptor getInterceptor() {
            return this.interceptor;
        }

        public Status getStatus() {
            return this.status;
        }
    }

    public abstract Result selectConfig(LoadBalancer.PickSubchannelArgs pickSubchannelArgs);
}

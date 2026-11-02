package io.grpc;

import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public abstract class HandlerRegistry {
    public List<ServerServiceDefinition> getServices() {
        return Collections.emptyList();
    }

    @Nullable
    public final ServerMethodDefinition<?, ?> lookupMethod(String str) {
        return lookupMethod(str, null);
    }

    @Nullable
    public abstract ServerMethodDefinition<?, ?> lookupMethod(String str, @Nullable String str2);
}

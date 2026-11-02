package io.grpc.internal;

import com.ironsource.C3510b4;
import java.util.ArrayList;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class InsightBuilder {
    private final ArrayList<String> buffer = new ArrayList<>();

    public InsightBuilder append(@Nullable Object obj) {
        this.buffer.add(String.valueOf(obj));
        return this;
    }

    public InsightBuilder appendKeyValue(String str, @Nullable Object obj) {
        this.buffer.add(str + C3510b4.j.b + obj);
        return this;
    }

    public String toString() {
        return this.buffer.toString();
    }
}

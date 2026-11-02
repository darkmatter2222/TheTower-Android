package org.chromium.net.httpflags;

import com.google.protobuf.MessageLiteOrBuilder;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public interface FlagValueOrBuilder extends MessageLiteOrBuilder {
    FlagValue.ConstrainedValue getConstrainedValues(int i);

    int getConstrainedValuesCount();

    List<FlagValue.ConstrainedValue> getConstrainedValuesList();
}

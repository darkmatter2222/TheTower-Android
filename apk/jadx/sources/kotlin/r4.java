package kotlin;

import android.os.Bundle;
import com.tapjoy.TJAdUnitConstants;
import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class r4 implements r41 {
    public final t4 a;
    public final o4 b;

    public r4(t4 adMetadataHolder, o4 adMetadataChangedEventEmitter) {
        Intrinsics.checkNotNullParameter(adMetadataHolder, "adMetadataHolder");
        Intrinsics.checkNotNullParameter(adMetadataChangedEventEmitter, "adMetadataChangedEventEmitter");
        this.a = adMetadataHolder;
        this.b = adMetadataChangedEventEmitter;
    }

    @Override // kotlin.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        String str = (String) map.get(TJAdUnitConstants.String.VIDEO_INFO);
        if (str == null) {
            str = "";
        }
        ds1 ds1Var = ds1.a;
        Bundle bundleA = ds1.a(str);
        if (bundleA == null) {
            xs3.a("Unable to parse ad metadata info: " + str, null, 6);
            return p005kotlin.Unit.INSTANCE;
        }
        this.a.a(bundleA);
        Object objA = this.b.a(bundleA, continuation);
        return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.r41
    public final u11 g() {
        return u11.GMSG_AD_METADATA_CHANGED;
    }
}

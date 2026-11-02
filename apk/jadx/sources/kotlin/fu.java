package kotlin;

import com.google.android.gms.appset.AppSetIdInfo;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class fu {
    public final AppSetIdInfo a;
    public final long b;

    public fu(AppSetIdInfo appSetIdInfo, long j) {
        this.a = appSetIdInfo;
        this.b = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fu)) {
            return false;
        }
        fu fuVar = (fu) obj;
        return Intrinsics.areEqual(this.a, fuVar.a) && Duration.m4372equalsimpl0(this.b, fuVar.b);
    }

    public final int hashCode() {
        AppSetIdInfo appSetIdInfo = this.a;
        return Duration.m4388hashCodeimpl(this.b) + ((appSetIdInfo == null ? 0 : appSetIdInfo.hashCode()) * 31);
    }

    public final String toString() {
        return "CachedAppSetIdInfo(appSetIdInfo=" + this.a + ", timestamp=" + Duration.m4407toStringimpl(this.b) + ")";
    }
}

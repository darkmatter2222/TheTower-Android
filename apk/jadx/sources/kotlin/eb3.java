package kotlin;

import com.ironsource.C3510b4;
import java.util.List;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class eb3 extends yr {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public eb3(xw0 flagValueProvider) {
        super(flagValueProvider);
        Intrinsics.checkNotNullParameter(flagValueProvider, "flagValueProvider");
    }

    public final long a() {
        Duration.Companion companion = Duration.INSTANCE;
        return ((Duration) a("gads:js_eng_full_load:timeout_millis", wm2.a(60, DurationUnit.SECONDS, "gads:js_eng_full_load:timeout_millis", C3510b4.i.W), yr.j)).getRawValue();
    }

    public final List b() {
        List defaultValue = CollectionsKt.listOf((Object[]) new String[]{"/noop", "/updateActiveView", "/trackActiveViewUnit", "/jsLoaded", "/impressionRecorded", "/refresh", "/requestReload", "/navigation", "/closeStoreOverlay", "/instrument"});
        Intrinsics.checkNotNullParameter("gads:missing_gmsg_handlers_to_ignore", C3510b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return (List) a("gads:missing_gmsg_handlers_to_ignore", defaultValue, yr.g);
    }

    public final String c() {
        Intrinsics.checkNotNullParameter("gads:sdk_core_constants:experiment_id", C3510b4.i.W);
        Intrinsics.checkNotNullParameter("", "defaultValue");
        return (String) a("gads:sdk_core_constants:experiment_id", "", yr.o);
    }
}

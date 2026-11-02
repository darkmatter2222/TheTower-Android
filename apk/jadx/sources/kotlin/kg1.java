package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.RequestConfiguration;
import java.util.Iterator;
import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class kg1 implements r41 {
    public final ur3 a;
    public final l43 b;
    public final km c;

    public kg1(ur3 traceLogger, l43 requestConfigurationWrapper, km appSettings) {
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(requestConfigurationWrapper, "requestConfigurationWrapper");
        Intrinsics.checkNotNullParameter(appSettings, "appSettings");
        this.a = traceLogger;
        this.b = requestConfigurationWrapper;
        this.c = appSettings;
    }

    @Override // kotlin.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        Object obj;
        Object next;
        String str = (String) map.get("applicationMuted");
        if (str != null) {
            this.c.a(Intrinsics.areEqual(str, "1"));
        }
        String str2 = (String) map.get("applicationVolume");
        if (str2 != null) {
            try {
                this.c.a(Float.parseFloat(str2));
            } catch (NumberFormatException e) {
                ((as3) this.a).a("Failed to parse application volume: " + str2 + ".", (Throwable) e);
            }
        }
        RequestConfiguration.Builder builderB = this.b.a().b();
        Iterator<E> it = RequestConfiguration.MaxAdContentRating.d().iterator();
        do {
            obj = null;
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.areEqual(((RequestConfiguration.MaxAdContentRating) next).getValue(), map.get("maxAdContentRating")));
        RequestConfiguration.MaxAdContentRating maxAdContentRating = (RequestConfiguration.MaxAdContentRating) next;
        if (maxAdContentRating != null) {
            builderB.setMaxAdContentRating(maxAdContentRating);
        }
        String str3 = (String) map.get("publisherPrivacyPersonalizationState");
        if (str3 != null) {
            try {
                int i = Integer.parseInt(str3);
                for (Object obj2 : RequestConfiguration.PublisherPrivacyPersonalizationState.d()) {
                    if (((RequestConfiguration.PublisherPrivacyPersonalizationState) obj2).getValue() == i) {
                        obj = obj2;
                        break;
                    }
                }
                RequestConfiguration.PublisherPrivacyPersonalizationState publisherPrivacyPersonalizationState = (RequestConfiguration.PublisherPrivacyPersonalizationState) obj;
                if (publisherPrivacyPersonalizationState != null) {
                    builderB.setPublisherPrivacyPersonalizationState(publisherPrivacyPersonalizationState);
                }
            } catch (NumberFormatException e2) {
                ((as3) this.a).a("Failed to parse publisher privacy personalization state: " + str3 + ".", (Throwable) e2);
                p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
            }
        }
        this.b.a(builderB.build());
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.r41
    public final u11 g() {
        return u11.GMSG_INSPECTOR_SET_APPLICATION_STATE;
    }
}

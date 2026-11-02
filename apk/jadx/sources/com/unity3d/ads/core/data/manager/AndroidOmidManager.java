package com.unity3d.ads.core.data.manager;

import android.content.Context;
import android.webkit.WebView;
import com.google.firebase.remoteconfig.RemoteConfigComponent;
import com.iab.omid.library.unity3d.Omid;
import com.iab.omid.library.unity3d.adsession.AdEvents;
import com.iab.omid.library.unity3d.adsession.AdSession;
import com.iab.omid.library.unity3d.adsession.AdSessionConfiguration;
import com.iab.omid.library.unity3d.adsession.AdSessionContext;
import com.iab.omid.library.unity3d.adsession.CreativeType;
import com.iab.omid.library.unity3d.adsession.ImpressionType;
import com.iab.omid.library.unity3d.adsession.Owner;
import com.iab.omid.library.unity3d.adsession.Partner;
import com.ironsource.C3813rg;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidOmidManager.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J0\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\b2\b\u0010\u0016\u001a\u0004\u0018\u00010\bH\u0016J0\u0010\u0017\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\b2\b\u0010\u0016\u001a\u0004\u0018\u00010\bH\u0016J0\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u0005H\u0016J\u0018\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u00192\u0006\u0010\r\u001a\u00020\u0010H\u0016J\u0010\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020#H\u0016R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006("}, d2 = {"Lcom/unity3d/ads/core/data/manager/AndroidOmidManager;", "Lcom/unity3d/ads/core/data/manager/OmidManager;", "<init>", "()V", "isActive", "", "()Z", "version", "", C3813rg.b, "()Ljava/lang/String;", RemoteConfigComponent.ACTIVATE_FILE_NAME, "", "context", "Landroid/content/Context;", "createHtmlAdSessionContext", "Lcom/iab/omid/library/unity3d/adsession/AdSessionContext;", "partner", "Lcom/iab/omid/library/unity3d/adsession/Partner;", "adView", "Landroid/webkit/WebView;", "contentUrl", "customReferenceData", "createJavaScriptAdSessionContext", "createAdSessionConfiguration", "Lcom/iab/omid/library/unity3d/adsession/AdSessionConfiguration;", "creativeType", "Lcom/iab/omid/library/unity3d/adsession/CreativeType;", "impressionType", "Lcom/iab/omid/library/unity3d/adsession/ImpressionType;", "owner", "Lcom/iab/omid/library/unity3d/adsession/Owner;", "mediaEventsOwner", "isolateVerificationScripts", "createAdSession", "Lcom/iab/omid/library/unity3d/adsession/AdSession;", "adSessionConfiguration", "createAdEvents", "Lcom/iab/omid/library/unity3d/adsession/AdEvents;", "adSession", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidOmidManager implements OmidManager {
    @Override // com.unity3d.ads.core.data.manager.OmidManager
    public void activate(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Omid.activate(context);
    }

    @Override // com.unity3d.ads.core.data.manager.OmidManager
    public AdEvents createAdEvents(AdSession adSession) {
        Intrinsics.checkNotNullParameter(adSession, "adSession");
        AdEvents adEventsCreateAdEvents = AdEvents.createAdEvents(adSession);
        Intrinsics.checkNotNullExpressionValue(adEventsCreateAdEvents, "createAdEvents(...)");
        return adEventsCreateAdEvents;
    }

    @Override // com.unity3d.ads.core.data.manager.OmidManager
    public AdSession createAdSession(AdSessionConfiguration adSessionConfiguration, AdSessionContext context) {
        Intrinsics.checkNotNullParameter(adSessionConfiguration, "adSessionConfiguration");
        Intrinsics.checkNotNullParameter(context, "context");
        AdSession adSessionCreateAdSession = AdSession.createAdSession(adSessionConfiguration, context);
        Intrinsics.checkNotNullExpressionValue(adSessionCreateAdSession, "createAdSession(...)");
        return adSessionCreateAdSession;
    }

    @Override // com.unity3d.ads.core.data.manager.OmidManager
    public AdSessionConfiguration createAdSessionConfiguration(CreativeType creativeType, ImpressionType impressionType, Owner owner, Owner mediaEventsOwner, boolean isolateVerificationScripts) {
        Intrinsics.checkNotNullParameter(creativeType, "creativeType");
        Intrinsics.checkNotNullParameter(impressionType, "impressionType");
        Intrinsics.checkNotNullParameter(owner, "owner");
        Intrinsics.checkNotNullParameter(mediaEventsOwner, "mediaEventsOwner");
        AdSessionConfiguration adSessionConfigurationCreateAdSessionConfiguration = AdSessionConfiguration.createAdSessionConfiguration(creativeType, impressionType, owner, mediaEventsOwner, isolateVerificationScripts);
        Intrinsics.checkNotNullExpressionValue(adSessionConfigurationCreateAdSessionConfiguration, "createAdSessionConfiguration(...)");
        return adSessionConfigurationCreateAdSessionConfiguration;
    }

    @Override // com.unity3d.ads.core.data.manager.OmidManager
    public AdSessionContext createHtmlAdSessionContext(Partner partner, WebView adView, String contentUrl, String customReferenceData) {
        AdSessionContext adSessionContextCreateHtmlAdSessionContext = AdSessionContext.createHtmlAdSessionContext(partner, adView, contentUrl, customReferenceData);
        Intrinsics.checkNotNullExpressionValue(adSessionContextCreateHtmlAdSessionContext, "createHtmlAdSessionContext(...)");
        return adSessionContextCreateHtmlAdSessionContext;
    }

    @Override // com.unity3d.ads.core.data.manager.OmidManager
    public AdSessionContext createJavaScriptAdSessionContext(Partner partner, WebView adView, String contentUrl, String customReferenceData) {
        AdSessionContext adSessionContextCreateJavascriptAdSessionContext = AdSessionContext.createJavascriptAdSessionContext(partner, adView, contentUrl, customReferenceData);
        Intrinsics.checkNotNullExpressionValue(adSessionContextCreateJavascriptAdSessionContext, "createJavascriptAdSessionContext(...)");
        return adSessionContextCreateJavascriptAdSessionContext;
    }

    @Override // com.unity3d.ads.core.data.manager.OmidManager
    public String getVersion() {
        String version = Omid.getVersion();
        Intrinsics.checkNotNullExpressionValue(version, "getVersion(...)");
        return version;
    }

    @Override // com.unity3d.ads.core.data.manager.OmidManager
    public boolean isActive() {
        return Omid.isActive();
    }
}

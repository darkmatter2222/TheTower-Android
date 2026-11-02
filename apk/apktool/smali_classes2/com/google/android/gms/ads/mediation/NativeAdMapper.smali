.class public abstract Lcom/google/android/gms/ads/mediation/NativeAdMapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\n\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0010\u0006\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u001a\u0008&\u0018\u00002\u00020\u0001B\u00ec\u0001\u0012\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u000b\u0012\u0010\u0008\u0002\u0010,\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010$\u0012\n\u0008\u0002\u00100\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u00107\u001a\u0004\u0018\u00010%\u0012\n\u0008\u0002\u0010;\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010?\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010G\u001a\u0004\u0018\u00010@\u0012\n\u0008\u0002\u0010K\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010O\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010W\u001a\u0004\u0018\u00010P\u0012\t\u0008\u0002\u0010\u0088\u0001\u001a\u00020\u0014\u0012\n\u0008\u0002\u0010_\u001a\u0004\u0018\u00010X\u0012\n\u0008\u0002\u0010e\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010i\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010p\u001a\u0004\u0018\u00010\u0001\u0012\u0008\u0008\u0002\u0010x\u001a\u00020q\u0012\u0008\u0008\u0002\u0010}\u001a\u00020\u0014\u0012\t\u0008\u0002\u0010\u0081\u0001\u001a\u00020\u0014\u0012\t\u0008\u0002\u0010\u0087\u0001\u001a\u00020\u0019\u00a2\u0006\u0006\u0008\u0089\u0001\u0010\u008a\u0001B\n\u0008\u0016\u00a2\u0006\u0005\u0008\u0089\u0001\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J?\u0010\u000e\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00052\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00050\n2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00050\nH\u0017\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0008J\u000f\u0010\u0011\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0004J\u0015\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0013\u0010\u0008J\r\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0015\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001bR$\u0010#\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R*\u0010,\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010$8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R$\u00100\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008-\u0010\u001e\u001a\u0004\u0008.\u0010 \"\u0004\u0008/\u0010\"R$\u00107\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00081\u00102\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R$\u0010;\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00088\u0010\u001e\u001a\u0004\u00089\u0010 \"\u0004\u0008:\u0010\"R$\u0010?\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008<\u0010\u001e\u001a\u0004\u0008=\u0010 \"\u0004\u0008>\u0010\"R$\u0010G\u001a\u0004\u0018\u00010@8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008A\u0010B\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010FR$\u0010K\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008H\u0010\u001e\u001a\u0004\u0008I\u0010 \"\u0004\u0008J\u0010\"R$\u0010O\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008L\u0010\u001e\u001a\u0004\u0008M\u0010 \"\u0004\u0008N\u0010\"R$\u0010W\u001a\u0004\u0018\u00010P8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008Q\u0010R\u001a\u0004\u0008S\u0010T\"\u0004\u0008U\u0010VR$\u0010_\u001a\u0004\u0018\u00010X8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008Y\u0010Z\u001a\u0004\u0008[\u0010\\\"\u0004\u0008]\u0010^R$\u0010e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008`\u0010a\u001a\u0004\u0008b\u0010c\"\u0004\u0008d\u0010\u0008R$\u0010i\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008f\u0010a\u001a\u0004\u0008g\u0010c\"\u0004\u0008h\u0010\u0008R$\u0010p\u001a\u0004\u0018\u00010\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008j\u0010k\u001a\u0004\u0008l\u0010m\"\u0004\u0008n\u0010oR\"\u0010x\u001a\u00020q8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008r\u0010s\u001a\u0004\u0008t\u0010u\"\u0004\u0008v\u0010wR\"\u0010}\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008y\u0010z\u001a\u0004\u0008{\u0010\u0016\"\u0004\u0008|\u0010\u0018R$\u0010\u0081\u0001\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0013\n\u0004\u0008~\u0010z\u001a\u0004\u0008\u007f\u0010\u0016\"\u0005\u0008\u0080\u0001\u0010\u0018R(\u0010\u0087\u0001\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0006\u0008\u0082\u0001\u0010\u0083\u0001\u001a\u0005\u0008\u0084\u0001\u0010\u001b\"\u0006\u0008\u0085\u0001\u0010\u0086\u0001\u00a8\u0006\u008b\u0001"
    }
    d2 = {
        "Lcom/google/android/gms/ads/mediation/NativeAdMapper;",
        "",
        "",
        "recordImpression",
        "()V",
        "Landroid/view/View;",
        "view",
        "handleClick",
        "(Landroid/view/View;)V",
        "containerView",
        "",
        "",
        "clickableAssetViews",
        "nonclickableAssetViews",
        "trackViews",
        "(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V",
        "untrackView",
        "destroy",
        "mediaView",
        "setMediaView",
        "",
        "hasVideoContent",
        "()Z",
        "setHasVideoContent",
        "(Z)V",
        "",
        "getDuration",
        "()F",
        "getCurrentTime",
        "a",
        "Ljava/lang/String;",
        "getHeadline",
        "()Ljava/lang/String;",
        "setHeadline",
        "(Ljava/lang/String;)V",
        "headline",
        "",
        "Lcom/google/android/gms/ads/nativead/NativeAd$Image;",
        "b",
        "Ljava/util/List;",
        "getImages",
        "()Ljava/util/List;",
        "setImages",
        "(Ljava/util/List;)V",
        "images",
        "c",
        "getBody",
        "setBody",
        "body",
        "d",
        "Lcom/google/android/gms/ads/nativead/NativeAd$Image;",
        "getIcon",
        "()Lcom/google/android/gms/ads/nativead/NativeAd$Image;",
        "setIcon",
        "(Lcom/google/android/gms/ads/nativead/NativeAd$Image;)V",
        "icon",
        "e",
        "getCallToAction",
        "setCallToAction",
        "callToAction",
        "f",
        "getAdvertiser",
        "setAdvertiser",
        "advertiser",
        "",
        "g",
        "Ljava/lang/Double;",
        "getStarRating",
        "()Ljava/lang/Double;",
        "setStarRating",
        "(Ljava/lang/Double;)V",
        "starRating",
        "h",
        "getStore",
        "setStore",
        "store",
        "i",
        "getPrice",
        "setPrice",
        "price",
        "Lcom/google/android/gms/ads/VideoController;",
        "j",
        "Lcom/google/android/gms/ads/VideoController;",
        "getVideoController",
        "()Lcom/google/android/gms/ads/VideoController;",
        "setVideoController",
        "(Lcom/google/android/gms/ads/VideoController;)V",
        "videoController",
        "Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;",
        "l",
        "Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;",
        "getAttributionInfo",
        "()Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;",
        "setAttributionInfo",
        "(Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;)V",
        "attributionInfo",
        "m",
        "Landroid/view/View;",
        "getAdChoicesContent",
        "()Landroid/view/View;",
        "setAdChoicesContent",
        "adChoicesContent",
        "n",
        "getMediatedMediaView",
        "setMediatedMediaView",
        "mediatedMediaView",
        "o",
        "Ljava/lang/Object;",
        "getMediatedAd",
        "()Ljava/lang/Object;",
        "setMediatedAd",
        "(Ljava/lang/Object;)V",
        "mediatedAd",
        "Landroid/os/Bundle;",
        "p",
        "Landroid/os/Bundle;",
        "getExtras",
        "()Landroid/os/Bundle;",
        "setExtras",
        "(Landroid/os/Bundle;)V",
        "extras",
        "q",
        "Z",
        "getOverrideImpressionRecording",
        "setOverrideImpressionRecording",
        "overrideImpressionRecording",
        "r",
        "getOverrideClickHandling",
        "setOverrideClickHandling",
        "overrideClickHandling",
        "s",
        "F",
        "getMediaContentAspectRatio",
        "setMediaContentAspectRatio",
        "(F)V",
        "mediaContentAspectRatio",
        "internalHasVideoContent",
        "<init>",
        "(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/ads/nativead/NativeAd$Image;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/VideoController;ZLcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Landroid/os/Bundle;ZZF)V",
        "ads-mobile-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;

.field private c:Ljava/lang/String;

.field private d:Lcom/google/android/gms/ads/nativead/NativeAd$Image;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Double;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/google/android/gms/ads/VideoController;

.field private k:Z

.field private l:Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Ljava/lang/Object;

.field private p:Landroid/os/Bundle;

.field private q:Z

.field private r:Z

.field private s:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 20

    .line 21
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    .line 22
    invoke-direct/range {v0 .. v19}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/ads/nativead/NativeAd$Image;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/VideoController;ZLcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Landroid/os/Bundle;ZZF)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/ads/nativead/NativeAd$Image;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/VideoController;ZLcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Landroid/os/Bundle;ZZF)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/ads/nativead/NativeAd$Image;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/nativead/NativeAd$Image;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/VideoController;",
            "Z",
            "Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Landroid/os/Bundle;",
            "ZZF)V"
        }
    .end annotation

    move-object/from16 v0, p16

    const-string v1, "extras"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->b:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->d:Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->e:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->f:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->g:Ljava/lang/Double;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->h:Ljava/lang/String;

    .line 10
    iput-object p9, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->i:Ljava/lang/String;

    .line 11
    iput-object p10, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->j:Lcom/google/android/gms/ads/VideoController;

    .line 12
    iput-boolean p11, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->k:Z

    .line 13
    iput-object p12, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->l:Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;

    .line 14
    iput-object p13, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->m:Landroid/view/View;

    move-object/from16 p1, p14

    .line 15
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->n:Landroid/view/View;

    move-object/from16 p1, p15

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->o:Ljava/lang/Object;

    .line 17
    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->p:Landroid/os/Bundle;

    move/from16 p1, p17

    .line 18
    iput-boolean p1, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->q:Z

    move/from16 p1, p18

    .line 19
    iput-boolean p1, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->r:Z

    move/from16 p1, p19

    .line 20
    iput p1, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->s:F

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public final getAdChoicesContent()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->m:Landroid/view/View;

    return-object v0
.end method

.method public final getAdvertiser()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getAttributionInfo()Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->l:Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;

    return-object v0
.end method

.method public final getBody()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getCallToAction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTime()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->p:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getHeadline()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getIcon()Lcom/google/android/gms/ads/nativead/NativeAd$Image;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->d:Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    return-object v0
.end method

.method public final getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/nativead/NativeAd$Image;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->b:Ljava/util/List;

    return-object v0
.end method

.method public final getMediaContentAspectRatio()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->s:F

    return v0
.end method

.method public final getMediatedAd()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->o:Ljava/lang/Object;

    return-object v0
.end method

.method public final getMediatedMediaView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->n:Landroid/view/View;

    return-object v0
.end method

.method public final getOverrideClickHandling()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->r:Z

    return v0
.end method

.method public final getOverrideImpressionRecording()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->q:Z

    return v0
.end method

.method public final getPrice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final getStarRating()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->g:Ljava/lang/Double;

    return-object v0
.end method

.method public final getStore()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/ads/VideoController;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->j:Lcom/google/android/gms/ads/VideoController;

    return-object v0
.end method

.method public handleClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final hasVideoContent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->k:Z

    return v0
.end method

.method public recordImpression()V
    .locals 0

    return-void
.end method

.method public final setAdChoicesContent(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->m:Landroid/view/View;

    return-void
.end method

.method public final setAdvertiser(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->f:Ljava/lang/String;

    return-void
.end method

.method public final setAttributionInfo(Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->l:Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;

    return-void
.end method

.method public final setBody(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->c:Ljava/lang/String;

    return-void
.end method

.method public final setCallToAction(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->e:Ljava/lang/String;

    return-void
.end method

.method public final setExtras(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->p:Landroid/os/Bundle;

    return-void
.end method

.method public final setHasVideoContent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->k:Z

    return-void
.end method

.method public final setHeadline(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->a:Ljava/lang/String;

    return-void
.end method

.method public final setIcon(Lcom/google/android/gms/ads/nativead/NativeAd$Image;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->d:Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    return-void
.end method

.method public final setImages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/ads/nativead/NativeAd$Image;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->b:Ljava/util/List;

    return-void
.end method

.method public final setMediaContentAspectRatio(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->s:F

    return-void
.end method

.method public final setMediaView(Landroid/view/View;)V
    .locals 1

    const-string v0, "mediaView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->n:Landroid/view/View;

    return-void
.end method

.method public final setMediatedAd(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->o:Ljava/lang/Object;

    return-void
.end method

.method public final setMediatedMediaView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->n:Landroid/view/View;

    return-void
.end method

.method public final setOverrideClickHandling(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->r:Z

    return-void
.end method

.method public final setOverrideImpressionRecording(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->q:Z

    return-void
.end method

.method public final setPrice(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->i:Ljava/lang/String;

    return-void
.end method

.method public final setStarRating(Ljava/lang/Double;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->g:Ljava/lang/Double;

    return-void
.end method

.method public final setStore(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->h:Ljava/lang/String;

    return-void
.end method

.method public final setVideoController(Lcom/google/android/gms/ads/VideoController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->j:Lcom/google/android/gms/ads/VideoController;

    return-void
.end method

.method public trackViews(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const-string v0, "containerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "clickableAssetViews"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nonclickableAssetViews"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public untrackView(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

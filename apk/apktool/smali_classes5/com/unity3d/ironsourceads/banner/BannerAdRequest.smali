.class public final Lcom/unity3d/ironsourceads/banner/BannerAdRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ironsourceads/banner/BannerAdRequest$Builder;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/unity3d/ironsourceads/AdSize;

.field private final e:Landroid/os/Bundle;

.field private final f:Lcom/ironsource/Jd;

.field private final g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ironsourceads/AdSize;Landroid/os/Bundle;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/unity3d/ironsourceads/banner/BannerAdRequest;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/unity3d/ironsourceads/banner/BannerAdRequest;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/unity3d/ironsourceads/banner/BannerAdRequest;->c:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/unity3d/ironsourceads/banner/BannerAdRequest;->d:Lcom/unity3d/ironsourceads/AdSize;

    .line 7
    iput-object p5, p0, Lcom/unity3d/ironsourceads/banner/BannerAdRequest;->e:Landroid/os/Bundle;

    .line 9
    new-instance p1, Lcom/ironsource/Dc;

    invoke-direct {p1, p2}, Lcom/ironsource/Dc;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/unity3d/ironsourceads/banner/BannerAdRequest;->f:Lcom/ironsource/Jd;

    .line 10
    invoke-static {}, Lcom/ironsource/da;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "generateMultipleUniqueInstanceId(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/unity3d/ironsourceads/banner/BannerAdRequest;->g:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ironsourceads/AdSize;Landroid/os/Bundle;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/unity3d/ironsourceads/banner/BannerAdRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ironsourceads/AdSize;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final getAdId$mediationsdk_release()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/ironsourceads/banner/BannerAdRequest;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getAdm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/ironsourceads/banner/BannerAdRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/ironsourceads/banner/BannerAdRequest;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final getExtraParams()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/ironsourceads/banner/BannerAdRequest;->e:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getInstanceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/ironsourceads/banner/BannerAdRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getProviderName$mediationsdk_release()Lcom/ironsource/Jd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/ironsourceads/banner/BannerAdRequest;->f:Lcom/ironsource/Jd;

    return-object v0
.end method

.method public final getSize()Lcom/unity3d/ironsourceads/AdSize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/ironsourceads/banner/BannerAdRequest;->d:Lcom/unity3d/ironsourceads/AdSize;

    return-object v0
.end method

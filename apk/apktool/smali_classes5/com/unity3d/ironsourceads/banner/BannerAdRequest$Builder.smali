.class public final Lcom/unity3d/ironsourceads/banner/BannerAdRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ironsourceads/banner/BannerAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/unity3d/ironsourceads/AdSize;

.field private e:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ironsourceads/AdSize;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instanceId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adm"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "size"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ironsourceads/banner/BannerAdRequest$Builder;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/unity3d/ironsourceads/banner/BannerAdRequest$Builder;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/unity3d/ironsourceads/banner/BannerAdRequest$Builder;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/unity3d/ironsourceads/banner/BannerAdRequest$Builder;->d:Lcom/unity3d/ironsourceads/AdSize;

    return-void
.end method


# virtual methods
.method public final build()Lcom/unity3d/ironsourceads/banner/BannerAdRequest;
    .locals 9

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v1, p0, Lcom/unity3d/ironsourceads/banner/BannerAdRequest$Builder;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/unity3d/ironsourceads/banner/BannerAdRequest$Builder;->d:Lcom/unity3d/ironsourceads/AdSize;

    invoke-virtual {v2}, Lcom/unity3d/ironsourceads/AdSize;->getSizeDescription()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "instanceId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 2
    new-instance v2, Lcom/unity3d/ironsourceads/banner/BannerAdRequest;

    iget-object v3, p0, Lcom/unity3d/ironsourceads/banner/BannerAdRequest$Builder;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/unity3d/ironsourceads/banner/BannerAdRequest$Builder;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/unity3d/ironsourceads/banner/BannerAdRequest$Builder;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/unity3d/ironsourceads/banner/BannerAdRequest$Builder;->d:Lcom/unity3d/ironsourceads/AdSize;

    iget-object v7, p0, Lcom/unity3d/ironsourceads/banner/BannerAdRequest$Builder;->e:Landroid/os/Bundle;

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/unity3d/ironsourceads/banner/BannerAdRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ironsourceads/AdSize;Landroid/os/Bundle;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method

.method public final getAdm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/ironsourceads/banner/BannerAdRequest$Builder;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/ironsourceads/banner/BannerAdRequest$Builder;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final getInstanceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/ironsourceads/banner/BannerAdRequest$Builder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getSize()Lcom/unity3d/ironsourceads/AdSize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/ironsourceads/banner/BannerAdRequest$Builder;->d:Lcom/unity3d/ironsourceads/AdSize;

    return-object v0
.end method

.method public final withExtraParams(Landroid/os/Bundle;)Lcom/unity3d/ironsourceads/banner/BannerAdRequest$Builder;
    .locals 1

    const-string v0, "extraParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/unity3d/ironsourceads/banner/BannerAdRequest$Builder;->e:Landroid/os/Bundle;

    return-object p0
.end method

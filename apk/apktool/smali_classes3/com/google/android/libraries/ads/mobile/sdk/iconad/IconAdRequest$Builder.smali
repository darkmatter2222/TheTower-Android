.class public final Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;
.super Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdRequestBuilder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdRequestBuilder<",
        "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;",
        ">;",
        "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest$Builder<",
        "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\"\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u001d2\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002:\u0001\u001dB\u000f\u0012\u0006\u0010\u001a\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000f\u0010\u0003\u001a\u00020\u0000H\u0014\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0000H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0004J\u0017\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0000H\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0004J\u001d\u0010\u0015\u001a\u00020\u00002\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0013H\u0007\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\r\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdRequestBuilder;",
        "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest$Builder;",
        "self",
        "()Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;",
        "adChoicesPlacement",
        "setAdChoicesPlacement",
        "(Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;)Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;",
        "disableImageDownloading",
        "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;",
        "placement",
        "setIconAdPlacement",
        "(Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;)Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;",
        "",
        "correlator",
        "setCorrelator",
        "(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;",
        "setAdPersistenceEnabled",
        "",
        "excludedAppIds",
        "setExcludedAppIds",
        "(Ljava/util/Set;)Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;",
        "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;",
        "build",
        "()Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;",
        "adUnitId",
        "<init>",
        "(Ljava/lang/String;)V",
        "Companion",
        "ads-mobile-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder$Companion;

.field public static final MAX_APP_IDS_COUNT:I = 0x64

.field public static final MAX_APP_ID_LENGTH:I = 0x3e8


# instance fields
.field private m:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

.field private n:Ljava/lang/String;

.field private o:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

.field private p:Z

.field private q:Z

.field private r:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder$Companion;-><init>(I)V

    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "adUnitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdRequestBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;->UNSPECIFIED:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;->m:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

    .line 3
    const-string p1, ""

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;->n:Ljava/lang/String;

    .line 4
    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;->TOP_RIGHT:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;->o:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    .line 7
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;->r:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;
    .locals 22

    move-object/from16 v0, p0

    .line 1
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->c()Ljava/util/LinkedHashSet;

    move-result-object v3

    .line 3
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->d()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->e()Ljava/util/LinkedHashMap;

    move-result-object v5

    .line 5
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->f()Landroid/os/Bundle;

    move-result-object v6

    .line 6
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->g()Ljava/util/HashSet;

    move-result-object v7

    .line 7
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->h()Ljava/util/HashSet;

    move-result-object v8

    .line 8
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->a()Ljava/util/LinkedHashMap;

    move-result-object v9

    .line 9
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->j()Ljava/lang/String;

    move-result-object v10

    .line 10
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->k()Ljava/lang/String;

    move-result-object v11

    .line 11
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->i()J

    move-result-wide v12

    .line 12
    iget-object v14, v0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;->m:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

    .line 13
    iget-object v15, v0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;->o:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    .line 14
    iget-object v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;->n:Ljava/lang/String;

    move-object/from16 v16, v1

    .line 15
    iget-boolean v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;->p:Z

    .line 16
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->l()Z

    move-result v18

    move/from16 v17, v1

    .line 17
    iget-boolean v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;->q:Z

    move/from16 v19, v1

    .line 18
    iget-object v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;->r:Ljava/util/Set;

    move-object/from16 v20, v1

    .line 19
    new-instance v1, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;

    const/16 v21, 0x0

    invoke-direct/range {v1 .. v21}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;-><init>(Ljava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/util/LinkedHashMap;Landroid/os/Bundle;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;JLcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;Ljava/lang/String;ZZZLjava/util/Set;I)V

    return-object v1

    .line 20
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Ad unit ID cannot be null."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public disableImageDownloading()Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;->p:Z

    return-object p0
.end method

.method public final bridge synthetic self()Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;->self()Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected self()Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;
    .locals 0

    return-object p0
.end method

.method public setAdChoicesPlacement(Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;)Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;
    .locals 1

    const-string v0, "adChoicesPlacement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;->o:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    return-object p0
.end method

.method public final setAdPersistenceEnabled()Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;->q:Z

    return-object p0
.end method

.method public setCorrelator(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;
    .locals 1

    const-string v0, "correlator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;->n:Ljava/lang/String;

    return-object p0
.end method

.method public final setExcludedAppIds(Ljava/util/Set;)Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;"
        }
    .end annotation

    const-string v0, "excludedAppIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x3e8

    if-gt v2, v3, :cond_0

    .line 39
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/16 p1, 0x64

    .line 40
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;->r:Ljava/util/Set;

    return-object p0
.end method

.method public setIconAdPlacement(Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;)Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;
    .locals 1

    const-string v0, "placement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;->m:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

    return-object p0
.end method

.class public final Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest$Builder;
.super Lcom/google/android/libraries/ads/mobile/sdk/common/BaseSignalRequestBuilder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/ads/mobile/sdk/common/BaseSignalRequestBuilder<",
        "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest$Builder;",
        ">;",
        "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest$Builder<",
        "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B\u0011\u0008\u0016\u0012\u0006\u0010\u0015\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0003\u001a\u00020\u0000H\u0014\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0000H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0004J\u0017\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\r\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest$Builder;",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/BaseSignalRequestBuilder;",
        "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest$Builder;",
        "self",
        "()Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest$Builder;",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;",
        "adChoicesPlacement",
        "setAdChoicesPlacement",
        "(Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;)Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest$Builder;",
        "disableImageDownloading",
        "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;",
        "placement",
        "setIconAdPlacement",
        "(Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;)Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest$Builder;",
        "",
        "correlator",
        "setCorrelator",
        "(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest$Builder;",
        "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest;",
        "build",
        "()Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest;",
        "signalType",
        "<init>",
        "(Ljava/lang/String;)V",
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
.field private n:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

.field private o:Ljava/lang/String;

.field private p:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

.field private q:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "signalType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest$Builder;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseSignalRequestBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;->UNSPECIFIED:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest$Builder;->n:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

    .line 3
    const-string p1, ""

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest$Builder;->o:Ljava/lang/String;

    .line 4
    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;->TOP_RIGHT:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest$Builder;->p:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseSignalRequestBuilder;->m()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->b()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->c()Ljava/util/LinkedHashSet;

    move-result-object v4

    .line 5
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->d()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->e()Ljava/util/LinkedHashMap;

    move-result-object v6

    .line 7
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->f()Landroid/os/Bundle;

    move-result-object v7

    .line 8
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->g()Ljava/util/HashSet;

    move-result-object v8

    .line 9
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->h()Ljava/util/HashSet;

    move-result-object v9

    .line 10
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->a()Ljava/util/LinkedHashMap;

    move-result-object v10

    .line 11
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->j()Ljava/lang/String;

    move-result-object v11

    .line 12
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->k()Ljava/lang/String;

    move-result-object v12

    .line 13
    iget-object v13, v0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest$Builder;->n:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

    .line 14
    iget-object v14, v0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest$Builder;->p:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    .line 15
    iget-object v15, v0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest$Builder;->o:Ljava/lang/String;

    move-object/from16 v16, v1

    .line 16
    iget-boolean v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest$Builder;->q:Z

    const/16 v17, 0x0

    move-object/from16 v18, v16

    move/from16 v16, v1

    move-object/from16 v1, v18

    .line 17
    invoke-direct/range {v1 .. v17}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/util/LinkedHashMap;Landroid/os/Bundle;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;Ljava/lang/String;ZI)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public disableImageDownloading()Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest$Builder;->q:Z

    return-object p0
.end method

.method public final bridge synthetic self()Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest$Builder;->self()Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected self()Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest$Builder;
    .locals 0

    return-object p0
.end method

.method public setAdChoicesPlacement(Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;)Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest$Builder;
    .locals 1

    const-string v0, "adChoicesPlacement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest$Builder;->p:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    return-object p0
.end method

.method public setCorrelator(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest$Builder;
    .locals 1

    const-string v0, "correlator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest$Builder;->o:Ljava/lang/String;

    return-object p0
.end method

.method public setIconAdPlacement(Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;)Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest$Builder;
    .locals 1

    const-string v0, "placement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest$Builder;->n:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

    return-object p0
.end method

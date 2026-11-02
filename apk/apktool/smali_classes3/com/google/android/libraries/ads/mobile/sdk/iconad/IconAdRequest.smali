.class public final Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;
.super Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\"\n\u0002\u0008\u0008\u0018\u00002\u00020\u00012\u00020\u0002:\u0001&R\u001a\u0010\u0008\u001a\u00020\u00038\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u000e\u001a\u00020\t8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0014\u001a\u00020\u000f8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0018\u001a\u00020\u00158\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R \u0010\u001e\u001a\u00020\u00158\u0006X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u0017\u0012\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001b\u0010\u0019R&\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u001f8\u0006X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u0012\u0004\u0008$\u0010\u001d\u001a\u0004\u0008\"\u0010#\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;",
        "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest;",
        "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;",
        "n",
        "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;",
        "getIconAdPlacement",
        "()Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;",
        "iconAdPlacement",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;",
        "o",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;",
        "getAdChoicesPlacement",
        "()Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;",
        "adChoicesPlacement",
        "",
        "p",
        "Ljava/lang/String;",
        "getCorrelator",
        "()Ljava/lang/String;",
        "correlator",
        "",
        "q",
        "Z",
        "isImageLoadingDisabled",
        "()Z",
        "r",
        "getAdPersistenceEnabled",
        "getAdPersistenceEnabled$annotations",
        "()V",
        "adPersistenceEnabled",
        "",
        "s",
        "Ljava/util/Set;",
        "getExcludedAppIds",
        "()Ljava/util/Set;",
        "getExcludedAppIds$annotations",
        "excludedAppIds",
        "Builder",
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
.field private final n:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

.field private final o:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

.field private final p:Ljava/lang/String;

.field private final q:Z

.field private final r:Z

.field private final s:Ljava/util/Set;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/util/LinkedHashMap;Landroid/os/Bundle;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;JLcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;Ljava/lang/String;ZZZLjava/util/Set;)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-wide/from16 v11, p11

    move/from16 v13, p17

    .line 2
    invoke-direct/range {v0 .. v13}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/util/Map;Landroid/os/Bundle;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JZ)V

    move-object/from16 p1, p13

    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;->n:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

    move-object/from16 p1, p14

    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;->o:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    move-object/from16 p1, p15

    .line 5
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;->p:Ljava/lang/String;

    move/from16 p1, p16

    .line 6
    iput-boolean p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;->q:Z

    move/from16 p1, p18

    .line 9
    iput-boolean p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;->r:Z

    move-object/from16 p1, p19

    .line 11
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;->s:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/util/LinkedHashMap;Landroid/os/Bundle;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;JLcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;Ljava/lang/String;ZZZLjava/util/Set;I)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p19}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;-><init>(Ljava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/util/LinkedHashMap;Landroid/os/Bundle;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;JLcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;Ljava/lang/String;ZZZLjava/util/Set;)V

    return-void
.end method


# virtual methods
.method public getAdChoicesPlacement()Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;->o:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    return-object v0
.end method

.method public final getAdPersistenceEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;->r:Z

    return v0
.end method

.method public getCorrelator()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final getExcludedAppIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;->s:Ljava/util/Set;

    return-object v0
.end method

.method public getIconAdPlacement()Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;->n:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

    return-object v0
.end method

.method public isImageLoadingDisabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;->q:Z

    return v0
.end method

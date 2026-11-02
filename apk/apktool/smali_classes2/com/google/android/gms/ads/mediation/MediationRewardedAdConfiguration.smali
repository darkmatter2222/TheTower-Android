.class public final Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;
.super Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0011\u0018\u00002\u00020\u0001B[\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0008\u0012\u0006\u0010\u0013\u001a\u00020\u000e\u0012\u0006\u0010\u0016\u001a\u00020\u000e\u0012\u0006\u0010\u001a\u001a\u00020\u0017\u0012\u0008\u0010!\u001a\u0004\u0018\u00010\u001c\u0012\u0006\u0010\'\u001a\u00020\"\u0012\u0006\u0010*\u001a\u00020\"\u0012\u0008\u0010-\u001a\u0004\u0018\u00010\u0008\u0012\u0006\u00100\u001a\u00020\u0008\u00a2\u0006\u0004\u00081\u00102R\u001a\u0010\u0007\u001a\u00020\u00028\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\r\u001a\u00020\u00088\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0013\u001a\u00020\u000e8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0016\u001a\u00020\u000e8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0010\u001a\u0004\u0008\u0015\u0010\u0012R\u001a\u0010\u001a\u001a\u00020\u00178\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u001c\u0010!\u001a\u0004\u0018\u00010\u001c8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 R\u001a\u0010\'\u001a\u00020\"8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&R\u001a\u0010*\u001a\u00020\"8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008(\u0010$\u001a\u0004\u0008)\u0010&R\u001c\u0010-\u001a\u0004\u0018\u00010\u00088\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008+\u0010\n\u001a\u0004\u0008,\u0010\u000cR\u001a\u00100\u001a\u00020\u00088\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008.\u0010\n\u001a\u0004\u0008/\u0010\u000c\u00a8\u00063"
    }
    d2 = {
        "Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;",
        "Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;",
        "Landroid/content/Context;",
        "k",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "context",
        "",
        "l",
        "Ljava/lang/String;",
        "getBidResponse",
        "()Ljava/lang/String;",
        "bidResponse",
        "Landroid/os/Bundle;",
        "m",
        "Landroid/os/Bundle;",
        "getServerParameters",
        "()Landroid/os/Bundle;",
        "serverParameters",
        "n",
        "getMediationExtras",
        "mediationExtras",
        "",
        "o",
        "Z",
        "isTesting",
        "()Z",
        "Landroid/location/Location;",
        "p",
        "Landroid/location/Location;",
        "getLocation",
        "()Landroid/location/Location;",
        "location",
        "",
        "q",
        "I",
        "getTaggedForChildDirectedTreatment",
        "()I",
        "taggedForChildDirectedTreatment",
        "r",
        "getTaggedForUnderAgeTreatment",
        "taggedForUnderAgeTreatment",
        "s",
        "getMaxAdContentRating",
        "maxAdContentRating",
        "t",
        "getWatermark",
        "watermark",
        "<init>",
        "(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V",
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
.field private final k:Landroid/content/Context;

.field private final l:Ljava/lang/String;

.field private final m:Landroid/os/Bundle;

.field private final n:Landroid/os/Bundle;

.field private final o:Z

.field private final p:Landroid/location/Location;

.field private final q:I

.field private final r:I

.field private final s:Ljava/lang/String;

.field private final t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bidResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverParameters"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediationExtras"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "watermark"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p10}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V

    move-object v0, p10

    move-object p10, p9

    move p9, p8

    move p8, p7

    move-object p7, p6

    move p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 2
    iput-object p2, p1, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;->k:Landroid/content/Context;

    .line 3
    iput-object p3, p1, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;->l:Ljava/lang/String;

    .line 4
    iput-object p4, p1, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;->m:Landroid/os/Bundle;

    .line 5
    iput-object p5, p1, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;->n:Landroid/os/Bundle;

    .line 6
    iput-boolean p6, p1, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;->o:Z

    .line 7
    iput-object p7, p1, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;->p:Landroid/location/Location;

    .line 8
    iput p8, p1, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;->q:I

    .line 9
    iput p9, p1, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;->r:I

    .line 10
    iput-object p10, p1, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;->s:Ljava/lang/String;

    .line 11
    iput-object v0, p1, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;->t:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBidResponse()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;->k:Landroid/content/Context;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;->p:Landroid/location/Location;

    return-object v0
.end method

.method public getMaxAdContentRating()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getMediationExtras()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;->n:Landroid/os/Bundle;

    return-object v0
.end method

.method public getServerParameters()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;->m:Landroid/os/Bundle;

    return-object v0
.end method

.method public getTaggedForChildDirectedTreatment()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;->q:I

    return v0
.end method

.method public getTaggedForUnderAgeTreatment()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;->r:I

    return v0
.end method

.method public getWatermark()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;->t:Ljava/lang/String;

    return-object v0
.end method

.method public isTesting()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;->o:Z

    return v0
.end method

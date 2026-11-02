.class public final Lads_mobile_sdk/g63;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardItem;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lads_mobile_sdk/g63;->a:I

    .line 61
    iput-object p2, p0, Lads_mobile_sdk/g63;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAmount()I
    .locals 1

    .line 60
    iget v0, p0, Lads_mobile_sdk/g63;->a:I

    return v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lads_mobile_sdk/g63;->b:Ljava/lang/String;

    return-object v0
.end method

.class public final Lads_mobile_sdk/q92;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Landroid/net/Network;


# direct methods
.method public constructor <init>(JLandroid/net/Network;)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lads_mobile_sdk/q92;->a:J

    iput-object p3, p0, Lads_mobile_sdk/q92;->b:Landroid/net/Network;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    .line 213
    iget-wide v0, p0, Lads_mobile_sdk/q92;->a:J

    invoke-static {v0, v1}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lads_mobile_sdk/q92;->b:Landroid/net/Network;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Network available at "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 213
    invoke-virtual {p0}, Lads_mobile_sdk/q92;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

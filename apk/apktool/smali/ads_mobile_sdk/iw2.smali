.class public final Lads_mobile_sdk/iw2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/ow2;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ow2;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/iw2;->a:Lads_mobile_sdk/ow2;

    iput-object p2, p0, Lads_mobile_sdk/iw2;->b:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/iw2;->a:Lads_mobile_sdk/ow2;

    iget-object v1, p0, Lads_mobile_sdk/iw2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lads_mobile_sdk/ow2;->getClickSignals(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

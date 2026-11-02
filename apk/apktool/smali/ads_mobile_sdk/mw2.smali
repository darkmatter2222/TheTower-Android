.class public final Lads_mobile_sdk/mw2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/ow2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ow2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/mw2;->a:Lads_mobile_sdk/ow2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/mw2;->a:Lads_mobile_sdk/ow2;

    invoke-virtual {v0}, Lads_mobile_sdk/ow2;->getViewSignals()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

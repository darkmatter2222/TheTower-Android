.class public final synthetic Lads_mobile_sdk/hk$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lads_mobile_sdk/na;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lads_mobile_sdk/na;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/hk$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lads_mobile_sdk/hk$$ExternalSyntheticLambda2;->f$1:Lads_mobile_sdk/na;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/hk$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lads_mobile_sdk/hk$$ExternalSyntheticLambda2;->f$1:Lads_mobile_sdk/na;

    invoke-static {v0, v1, p1}, Lads_mobile_sdk/hk;->a(Landroid/content/Context;Lads_mobile_sdk/na;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

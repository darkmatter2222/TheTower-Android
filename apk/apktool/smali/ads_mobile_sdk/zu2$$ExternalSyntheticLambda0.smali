.class public final synthetic Lads_mobile_sdk/zu2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/ks1;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/ks1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/zu2$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/ks1;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/zu2$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/ks1;

    invoke-interface {v0}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/yn;

    return-object v0
.end method

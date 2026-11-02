.class public final synthetic Lads_mobile_sdk/hk$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/hk;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/hk;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/hk$$ExternalSyntheticLambda3;->f$0:Lads_mobile_sdk/hk;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/hk$$ExternalSyntheticLambda3;->f$0:Lads_mobile_sdk/hk;

    invoke-virtual {v0}, Lads_mobile_sdk/hk;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

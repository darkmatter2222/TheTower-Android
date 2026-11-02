.class public final synthetic Lads_mobile_sdk/hk$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/hk;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/hk;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/hk$$ExternalSyntheticLambda1;->f$0:Lads_mobile_sdk/hk;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/hk$$ExternalSyntheticLambda1;->f$0:Lads_mobile_sdk/hk;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/hk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

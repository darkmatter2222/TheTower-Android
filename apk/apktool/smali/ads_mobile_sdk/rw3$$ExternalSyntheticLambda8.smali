.class public final synthetic Lads_mobile_sdk/rw3$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/rw3;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/rw3;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda8;->f$0:Lads_mobile_sdk/rw3;

    iput p2, p0, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda8;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda8;->f$0:Lads_mobile_sdk/rw3;

    iget v1, p0, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda8;->f$1:I

    check-cast p1, Lads_mobile_sdk/nw3;

    invoke-virtual {v0, v1, p1}, Lads_mobile_sdk/rw3;->a(ILads_mobile_sdk/nw3;)Lads_mobile_sdk/qw3;

    move-result-object p1

    return-object p1
.end method

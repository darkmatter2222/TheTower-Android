.class public final synthetic Lads_mobile_sdk/ok0$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/ok0;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/ok0;Ljava/util/concurrent/atomic/AtomicInteger;III)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda11;->f$0:Lads_mobile_sdk/ok0;

    iput-object p2, p0, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda11;->f$1:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p3, p0, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda11;->f$2:I

    iput p4, p0, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda11;->f$3:I

    iput p5, p0, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda11;->f$4:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda11;->f$0:Lads_mobile_sdk/ok0;

    iget-object v1, p0, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda11;->f$1:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v2, p0, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda11;->f$2:I

    iget v3, p0, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda11;->f$3:I

    iget v4, p0, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda11;->f$4:I

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lads_mobile_sdk/ok0;->a(Lads_mobile_sdk/ok0;Ljava/util/concurrent/atomic/AtomicInteger;IIILandroid/content/DialogInterface;I)V

    return-void
.end method

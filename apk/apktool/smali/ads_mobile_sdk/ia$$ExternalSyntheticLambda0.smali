.class public final synthetic Lads_mobile_sdk/ia$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/ia;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/view/View;

.field public final synthetic f$4:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/ia;Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/ia$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/ia;

    iput-object p2, p0, Lads_mobile_sdk/ia$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lads_mobile_sdk/ia$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lads_mobile_sdk/ia$$ExternalSyntheticLambda0;->f$3:Landroid/view/View;

    iput-object p5, p0, Lads_mobile_sdk/ia$$ExternalSyntheticLambda0;->f$4:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/ia$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/ia;

    iget-object v1, p0, Lads_mobile_sdk/ia$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lads_mobile_sdk/ia$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lads_mobile_sdk/ia$$ExternalSyntheticLambda0;->f$3:Landroid/view/View;

    iget-object v4, p0, Lads_mobile_sdk/ia$$ExternalSyntheticLambda0;->f$4:Landroid/app/Activity;

    move-object v5, p1

    check-cast v5, Ljava/lang/Void;

    invoke-virtual/range {v0 .. v5}, Lads_mobile_sdk/ia;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;Ljava/lang/Void;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

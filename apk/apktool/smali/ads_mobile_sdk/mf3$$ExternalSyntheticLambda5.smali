.class public final synthetic Lads_mobile_sdk/mf3$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/mf3;

.field public final synthetic f$1:Landroid/view/InputEvent;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/mf3;Landroid/view/InputEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda5;->f$0:Lads_mobile_sdk/mf3;

    iput-object p2, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda5;->f$1:Landroid/view/InputEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda5;->f$0:Lads_mobile_sdk/mf3;

    iget-object v1, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda5;->f$1:Landroid/view/InputEvent;

    invoke-virtual {v0, v1}, Lads_mobile_sdk/mf3;->c(Landroid/view/InputEvent;)V

    return-void
.end method

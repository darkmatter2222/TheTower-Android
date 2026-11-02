.class public final synthetic Lads_mobile_sdk/if3$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/if3;

.field public final synthetic f$1:Lads_mobile_sdk/ua;

.field public final synthetic f$2:Landroid/view/MotionEvent;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/if3;Lads_mobile_sdk/ua;Landroid/view/MotionEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/if3$$ExternalSyntheticLambda8;->f$0:Lads_mobile_sdk/if3;

    iput-object p2, p0, Lads_mobile_sdk/if3$$ExternalSyntheticLambda8;->f$1:Lads_mobile_sdk/ua;

    iput-object p3, p0, Lads_mobile_sdk/if3$$ExternalSyntheticLambda8;->f$2:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/if3$$ExternalSyntheticLambda8;->f$0:Lads_mobile_sdk/if3;

    iget-object v1, p0, Lads_mobile_sdk/if3$$ExternalSyntheticLambda8;->f$1:Lads_mobile_sdk/ua;

    iget-object v2, p0, Lads_mobile_sdk/if3$$ExternalSyntheticLambda8;->f$2:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1, v2}, Lads_mobile_sdk/if3;->a(Lads_mobile_sdk/ua;Landroid/view/MotionEvent;)V

    return-void
.end method

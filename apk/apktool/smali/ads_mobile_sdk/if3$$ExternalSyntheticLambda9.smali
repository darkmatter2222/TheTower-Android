.class public final synthetic Lads_mobile_sdk/if3$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/if3;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/view/View;

.field public final synthetic f$4:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/if3;Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/if3$$ExternalSyntheticLambda9;->f$0:Lads_mobile_sdk/if3;

    iput-object p2, p0, Lads_mobile_sdk/if3$$ExternalSyntheticLambda9;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lads_mobile_sdk/if3$$ExternalSyntheticLambda9;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lads_mobile_sdk/if3$$ExternalSyntheticLambda9;->f$3:Landroid/view/View;

    iput-object p5, p0, Lads_mobile_sdk/if3$$ExternalSyntheticLambda9;->f$4:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/if3$$ExternalSyntheticLambda9;->f$0:Lads_mobile_sdk/if3;

    iget-object v1, p0, Lads_mobile_sdk/if3$$ExternalSyntheticLambda9;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lads_mobile_sdk/if3$$ExternalSyntheticLambda9;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lads_mobile_sdk/if3$$ExternalSyntheticLambda9;->f$3:Landroid/view/View;

    iget-object v4, p0, Lads_mobile_sdk/if3$$ExternalSyntheticLambda9;->f$4:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2, v3, v4}, Lads_mobile_sdk/if3;->c(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

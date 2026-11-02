.class public final synthetic Lads_mobile_sdk/p32$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/p32;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/p32;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/p32$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/p32;

    iput-object p2, p0, Lads_mobile_sdk/p32$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/p32$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/p32;

    iget-object v1, p0, Lads_mobile_sdk/p32$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lads_mobile_sdk/p32;->a(Lads_mobile_sdk/p32;Ljava/lang/String;)V

    return-void
.end method

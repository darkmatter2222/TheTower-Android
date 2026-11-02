.class public final synthetic Lads_mobile_sdk/fm3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/ts3;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/ts3;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/fm3$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/ts3;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/fm3$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/ts3;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lads_mobile_sdk/fm3;->c(Lads_mobile_sdk/ts3;Ljava/lang/Throwable;)[B

    move-result-object p1

    return-object p1
.end method

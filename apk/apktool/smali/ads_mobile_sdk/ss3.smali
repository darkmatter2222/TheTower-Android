.class public final Lads_mobile_sdk/ss3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/qr3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/qr3;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lads_mobile_sdk/ss3;->a:Lads_mobile_sdk/qr3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lads_mobile_sdk/ss3;->a:Lads_mobile_sdk/qr3;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/qr3;->a(Ljava/lang/Throwable;)V

    .line 119
    iget-object p1, p0, Lads_mobile_sdk/ss3;->a:Lads_mobile_sdk/qr3;

    invoke-virtual {p1}, Lads_mobile_sdk/qr3;->a()V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 113
    iget-object p1, p0, Lads_mobile_sdk/ss3;->a:Lads_mobile_sdk/qr3;

    invoke-virtual {p1}, Lads_mobile_sdk/qr3;->a()V

    return-void
.end method

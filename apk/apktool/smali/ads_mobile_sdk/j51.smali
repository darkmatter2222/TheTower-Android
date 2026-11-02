.class public final Lads_mobile_sdk/j51;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 164
    invoke-static {}, Lads_mobile_sdk/k51;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/k51;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/k51;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/k51;->b(Ljava/lang/String;)V

    return-void
.end method

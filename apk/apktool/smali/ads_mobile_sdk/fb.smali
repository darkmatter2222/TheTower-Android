.class public final Lads_mobile_sdk/fb;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 251
    invoke-static {}, Lads_mobile_sdk/gb;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/gb;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/xa;)Lads_mobile_sdk/fb;
    .locals 1

    .line 294
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 295
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/gb;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/gb;->a(Lads_mobile_sdk/xa;)V

    return-object p0
.end method

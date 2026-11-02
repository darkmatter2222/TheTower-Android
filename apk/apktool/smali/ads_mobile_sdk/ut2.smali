.class public final Lads_mobile_sdk/ut2;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 305
    invoke-static {}, Lads_mobile_sdk/wt2;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/wt2;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vt2;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/wt2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Lads_mobile_sdk/vt2;->getNumber()I

    move-result p1

    invoke-static {v0, p1}, Lads_mobile_sdk/wt2;->-$$Nest$fputviolationReason_(Lads_mobile_sdk/wt2;I)V

    return-void
.end method

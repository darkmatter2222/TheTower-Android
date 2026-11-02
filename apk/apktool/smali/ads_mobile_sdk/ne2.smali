.class public final Lads_mobile_sdk/ne2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    invoke-static {}, Lads_mobile_sdk/pe2;->a()Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    sput-object v0, Lads_mobile_sdk/pe2;->c:Landroid/graphics/Point;

    :cond_0
    return-void
.end method

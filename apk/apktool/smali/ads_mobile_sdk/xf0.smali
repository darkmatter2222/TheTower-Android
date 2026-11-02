.class public final Lads_mobile_sdk/xf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/dw2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/yf0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/yf0;)V
    .locals 0

    .line 13685
    iput-object p1, p0, Lads_mobile_sdk/xf0;->a:Lads_mobile_sdk/yf0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lads_mobile_sdk/zf0;

    iget-object v1, p0, Lads_mobile_sdk/xf0;->a:Lads_mobile_sdk/yf0;

    iget-object v2, v1, Lads_mobile_sdk/yf0;->b:Lads_mobile_sdk/vf0;

    iget-object v1, v1, Lads_mobile_sdk/yf0;->c:Lads_mobile_sdk/yf0;

    invoke-direct {v0, v2, v1}, Lads_mobile_sdk/zf0;-><init>(Lads_mobile_sdk/vf0;Lads_mobile_sdk/yf0;)V

    return-object v0
.end method

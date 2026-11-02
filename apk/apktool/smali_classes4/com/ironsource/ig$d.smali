.class public final Lcom/ironsource/ig$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/ig$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/ig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/ig$b;)Lcom/ironsource/ig;
    .locals 4

    const-string v0, "timerConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/ironsource/ig$e;

    new-instance v1, Lcom/ironsource/kg;

    invoke-virtual {p1}, Lcom/ironsource/ig$b;->b()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/ironsource/kg;-><init>(J)V

    invoke-direct {v0, v1}, Lcom/ironsource/ig$e;-><init>(Lcom/ironsource/kg;)V

    return-object v0
.end method

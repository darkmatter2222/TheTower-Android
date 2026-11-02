.class public final Lcom/ironsource/ce$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/ig$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/ce;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/ce;


# direct methods
.method constructor <init>(Lcom/ironsource/ce;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/ce$a;->a:Lcom/ironsource/ce;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/ce$a;->a:Lcom/ironsource/ce;

    sget-object v1, Lcom/ironsource/z5;->a:Lcom/ironsource/z5;

    invoke-virtual {v1}, Lcom/ironsource/z5;->s()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/ce;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

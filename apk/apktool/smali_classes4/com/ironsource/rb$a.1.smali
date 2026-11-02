.class public final Lcom/ironsource/rb$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/y0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/rb;->a(Lcom/ironsource/M7;)Lcom/ironsource/rb$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/M7;


# direct methods
.method constructor <init>(Lcom/ironsource/M7;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/rb$a;->a:Lcom/ironsource/M7;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/ironsource/g0;)Lcom/ironsource/x0;
    .locals 2

    const-string v0, "adProperties"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/ironsource/ge;->A:Lcom/ironsource/ge$a;

    .line 2
    iget-object v1, p0, Lcom/ironsource/rb$a;->a:Lcom/ironsource/M7;

    invoke-interface {v1}, Lcom/ironsource/M7;->f()Lcom/ironsource/M8;

    move-result-object v1

    invoke-interface {v1}, Lcom/ironsource/M8;->a()Lcom/ironsource/ab;

    move-result-object v1

    .line 3
    invoke-virtual {v0, p2, v1, p1}, Lcom/ironsource/ge$a;->a(Lcom/ironsource/g0;Lcom/ironsource/ab;Z)Lcom/ironsource/ge;

    move-result-object p1

    return-object p1
.end method

.class public final Lcom/ironsource/a7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/a7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/a7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/ironsource/c7;


# direct methods
.method public constructor <init>(Lcom/ironsource/c7;)V
    .locals 1

    const-string v0, "strategy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/a7$a;->a:Lcom/ironsource/c7;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "WebView is unavailable"

    return-object v0
.end method

.method public b()Lcom/ironsource/c7;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/a7$a;->a:Lcom/ironsource/c7;

    return-object v0
.end method

.method public final c()Lcom/ironsource/c7;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/a7$a;->a:Lcom/ironsource/c7;

    return-object v0
.end method

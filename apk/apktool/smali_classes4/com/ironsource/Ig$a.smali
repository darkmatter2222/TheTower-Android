.class public final Lcom/ironsource/Ig$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Ig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ironsource/Ig$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/Ig$b;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    new-instance v0, Lcom/ironsource/Ig$b;

    invoke-direct {v0}, Lcom/ironsource/Ig$b;-><init>()V

    return-object v0
.end method

.method public final b()Lcom/ironsource/Ig;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/Ig$a;->a()Lcom/ironsource/Ig$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/Ig$b;->a()Lcom/ironsource/Ig;

    move-result-object v0

    return-object v0
.end method

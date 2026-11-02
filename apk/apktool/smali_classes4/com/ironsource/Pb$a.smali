.class public final Lcom/ironsource/Pb$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Pb;
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
    invoke-direct {p0}, Lcom/ironsource/Pb$a;-><init>()V

    return-void
.end method

.method public static synthetic b()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static synthetic e()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/L7;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/Pb$a;->c()Lcom/ironsource/Pb;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/ironsource/Pb;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ironsource/Pb;->L()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/Pb;

    return-object v0
.end method

.method public final d()Lcom/ironsource/M7;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/Pb$a;->c()Lcom/ironsource/Pb;

    move-result-object v0

    return-object v0
.end method

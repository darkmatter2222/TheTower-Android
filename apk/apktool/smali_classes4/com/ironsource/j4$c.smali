.class public final Lcom/ironsource/j4$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/j4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field static final synthetic a:Lcom/ironsource/j4$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ironsource/j4$c;

    invoke-direct {v0}, Lcom/ironsource/j4$c;-><init>()V

    sput-object v0, Lcom/ironsource/j4$c;->a:Lcom/ironsource/j4$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/j4;
    .locals 1

    .line 13
    sget-object v0, Lcom/ironsource/j4$b;->b:Lcom/ironsource/j4$b;

    return-object v0
.end method

.method public final a(Lcom/ironsource/b7;)Lcom/ironsource/j4;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "featureFlag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/ironsource/b7;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/ironsource/Y6;

    invoke-direct {v0, p1}, Lcom/ironsource/Y6;-><init>(Lcom/ironsource/b7;)V

    .line 4
    new-instance p1, Lcom/ironsource/ig$b;

    invoke-direct {p1}, Lcom/ironsource/ig$b;-><init>()V

    .line 5
    invoke-virtual {v0}, Lcom/ironsource/Y6;->a()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/ironsource/ig$b;->b(J)V

    .line 6
    invoke-virtual {v0}, Lcom/ironsource/Y6;->a()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/ironsource/ig$b;->a(J)V

    .line 9
    new-instance v1, Lcom/ironsource/ig$d;

    invoke-direct {v1}, Lcom/ironsource/ig$d;-><init>()V

    invoke-virtual {v1, p1}, Lcom/ironsource/ig$d;->a(Lcom/ironsource/ig$b;)Lcom/ironsource/ig;

    move-result-object p1

    .line 10
    new-instance v1, Lcom/ironsource/j4$a;

    invoke-direct {v1, v0, p1}, Lcom/ironsource/j4$a;-><init>(Lcom/ironsource/Z6;Lcom/ironsource/ig;)V

    return-object v1

    .line 12
    :cond_0
    sget-object p1, Lcom/ironsource/j4$b;->b:Lcom/ironsource/j4$b;

    return-object p1
.end method

.class public final Lcom/ironsource/pc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/pc$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/ironsource/pc$a;

.field private static volatile f:Lcom/ironsource/pc;


# instance fields
.field private a:Lcom/ironsource/Nd;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Ljava/lang/String;

.field private d:Lcom/ironsource/S3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ironsource/pc$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/pc$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/pc;->e:Lcom/ironsource/pc$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ironsource/pc;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/pc;->c:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ironsource/pc;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lcom/ironsource/pc;
    .locals 1

    .line 1
    sget-object v0, Lcom/ironsource/pc;->f:Lcom/ironsource/pc;

    return-object v0
.end method

.method public static final synthetic a(Lcom/ironsource/pc;)V
    .locals 0

    .line 2
    sput-object p0, Lcom/ironsource/pc;->f:Lcom/ironsource/pc;

    return-void
.end method

.method public static final d()Lcom/ironsource/pc;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/ironsource/pc;->e:Lcom/ironsource/pc$a;

    invoke-virtual {v0}, Lcom/ironsource/pc$a;->a()Lcom/ironsource/pc;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/ironsource/Nd;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ironsource/pc;->a:Lcom/ironsource/Nd;

    return-void
.end method

.method public final a(Lcom/ironsource/S3;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/ironsource/pc;->d:Lcom/ironsource/S3;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/ironsource/pc;->c:Ljava/lang/String;

    return-void
.end method

.method public final b()Lcom/ironsource/S3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/pc;->d:Lcom/ironsource/S3;

    return-object v0
.end method

.method public final c()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/pc;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public final e()Lcom/ironsource/Nd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/pc;->a:Lcom/ironsource/Nd;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/pc;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/pc;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

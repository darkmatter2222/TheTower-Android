.class public final enum Lcom/ironsource/Fb$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Fb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/Fb$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/ironsource/Fb$b;

.field public static final enum c:Lcom/ironsource/Fb$b;

.field public static final enum d:Lcom/ironsource/Fb$b;

.field public static final enum e:Lcom/ironsource/Fb$b;

.field public static final enum f:Lcom/ironsource/Fb$b;

.field public static final enum g:Lcom/ironsource/Fb$b;

.field private static final synthetic h:[Lcom/ironsource/Fb$b;

.field private static final synthetic i:Lkotlin/enums/EnumEntries;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/ironsource/Fb$b;

    const/4 v1, 0x0

    const-string v2, "not_scheduled"

    const-string v3, "NOT_SCHEDULED"

    invoke-direct {v0, v3, v1, v2}, Lcom/ironsource/Fb$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/Fb$b;->b:Lcom/ironsource/Fb$b;

    .line 2
    new-instance v0, Lcom/ironsource/Fb$b;

    const/4 v1, 0x1

    const-string v2, "best_loaded"

    const-string v3, "BEST_LOADED"

    invoke-direct {v0, v3, v1, v2}, Lcom/ironsource/Fb$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/Fb$b;->c:Lcom/ironsource/Fb$b;

    .line 3
    new-instance v0, Lcom/ironsource/Fb$b;

    const/4 v1, 0x2

    const-string v2, "better_loaded_grace_expired"

    const-string v3, "BETTER_LOADED_GRACE_EXPIRED"

    invoke-direct {v0, v3, v1, v2}, Lcom/ironsource/Fb$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/Fb$b;->d:Lcom/ironsource/Fb$b;

    .line 4
    new-instance v0, Lcom/ironsource/Fb$b;

    const/4 v1, 0x3

    const-string v2, "better_loaded_best_failed"

    const-string v3, "BETTER_LOADED_BEST_FAILED"

    invoke-direct {v0, v3, v1, v2}, Lcom/ironsource/Fb$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/Fb$b;->e:Lcom/ironsource/Fb$b;

    .line 5
    new-instance v0, Lcom/ironsource/Fb$b;

    const/4 v1, 0x4

    const-string v2, "initial_loaded_grace_expired"

    const-string v3, "INITIAL_LOADED_GRACE_EXPIRED"

    invoke-direct {v0, v3, v1, v2}, Lcom/ironsource/Fb$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/Fb$b;->f:Lcom/ironsource/Fb$b;

    .line 6
    new-instance v0, Lcom/ironsource/Fb$b;

    const/4 v1, 0x5

    const-string v2, "initial_loaded_best_failed"

    const-string v3, "INITIAL_LOADED_BEST_FAILED"

    invoke-direct {v0, v3, v1, v2}, Lcom/ironsource/Fb$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/Fb$b;->g:Lcom/ironsource/Fb$b;

    invoke-static {}, Lcom/ironsource/Fb$b;->a()[Lcom/ironsource/Fb$b;

    move-result-object v0

    sput-object v0, Lcom/ironsource/Fb$b;->h:[Lcom/ironsource/Fb$b;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/ironsource/Fb$b;->i:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/ironsource/Fb$b;->a:Ljava/lang/String;

    return-void
.end method

.method private static final synthetic a()[Lcom/ironsource/Fb$b;
    .locals 6

    .line 1
    sget-object v0, Lcom/ironsource/Fb$b;->b:Lcom/ironsource/Fb$b;

    sget-object v1, Lcom/ironsource/Fb$b;->c:Lcom/ironsource/Fb$b;

    sget-object v2, Lcom/ironsource/Fb$b;->d:Lcom/ironsource/Fb$b;

    sget-object v3, Lcom/ironsource/Fb$b;->e:Lcom/ironsource/Fb$b;

    sget-object v4, Lcom/ironsource/Fb$b;->f:Lcom/ironsource/Fb$b;

    sget-object v5, Lcom/ironsource/Fb$b;->g:Lcom/ironsource/Fb$b;

    filled-new-array/range {v0 .. v5}, [Lcom/ironsource/Fb$b;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/ironsource/Fb$b;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ironsource/Fb$b;->i:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/Fb$b;
    .locals 1

    const-class v0, Lcom/ironsource/Fb$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 1
    check-cast p0, Lcom/ironsource/Fb$b;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/Fb$b;
    .locals 1

    sget-object v0, Lcom/ironsource/Fb$b;->h:[Lcom/ironsource/Fb$b;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, [Lcom/ironsource/Fb$b;

    return-object v0
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/Fb$b;->a:Ljava/lang/String;

    return-object v0
.end method

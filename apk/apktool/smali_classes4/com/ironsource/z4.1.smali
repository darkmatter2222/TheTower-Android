.class public final enum Lcom/ironsource/z4;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/z4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/z4;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lcom/ironsource/z4$a;

.field public static final enum c:Lcom/ironsource/z4;

.field public static final enum d:Lcom/ironsource/z4;

.field public static final enum e:Lcom/ironsource/z4;

.field public static final enum f:Lcom/ironsource/z4;

.field private static final synthetic g:[Lcom/ironsource/z4;

.field private static final synthetic h:Lkotlin/enums/EnumEntries;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/ironsource/z4;

    const/4 v1, 0x0

    const-string v2, "iads"

    const-string v3, "IADS"

    invoke-direct {v0, v3, v1, v2}, Lcom/ironsource/z4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/z4;->c:Lcom/ironsource/z4;

    .line 2
    new-instance v0, Lcom/ironsource/z4;

    const/4 v1, 0x1

    const-string v2, "uads"

    const-string v3, "UADS"

    invoke-direct {v0, v3, v1, v2}, Lcom/ironsource/z4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/z4;->d:Lcom/ironsource/z4;

    .line 3
    new-instance v0, Lcom/ironsource/z4;

    const/4 v1, 0x2

    const-string v2, "shared"

    const-string v3, "SHARED"

    invoke-direct {v0, v3, v1, v2}, Lcom/ironsource/z4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/z4;->e:Lcom/ironsource/z4;

    .line 4
    new-instance v0, Lcom/ironsource/z4;

    const/4 v1, 0x3

    const-string v2, "none"

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lcom/ironsource/z4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/z4;->f:Lcom/ironsource/z4;

    invoke-static {}, Lcom/ironsource/z4;->a()[Lcom/ironsource/z4;

    move-result-object v0

    sput-object v0, Lcom/ironsource/z4;->g:[Lcom/ironsource/z4;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/ironsource/z4;->h:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/ironsource/z4$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/z4$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/z4;->b:Lcom/ironsource/z4$a;

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

    iput-object p3, p0, Lcom/ironsource/z4;->a:Ljava/lang/String;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Lcom/ironsource/z4;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 2
    sget-object v0, Lcom/ironsource/z4;->b:Lcom/ironsource/z4$a;

    invoke-virtual {v0, p0}, Lcom/ironsource/z4$a;->a(Ljava/lang/String;)Lcom/ironsource/z4;

    move-result-object p0

    return-object p0
.end method

.method private static final synthetic a()[Lcom/ironsource/z4;
    .locals 4

    .line 1
    sget-object v0, Lcom/ironsource/z4;->c:Lcom/ironsource/z4;

    sget-object v1, Lcom/ironsource/z4;->d:Lcom/ironsource/z4;

    sget-object v2, Lcom/ironsource/z4;->e:Lcom/ironsource/z4;

    sget-object v3, Lcom/ironsource/z4;->f:Lcom/ironsource/z4;

    filled-new-array {v0, v1, v2, v3}, [Lcom/ironsource/z4;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/ironsource/z4;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ironsource/z4;->h:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/z4;
    .locals 1

    const-class v0, Lcom/ironsource/z4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 1
    check-cast p0, Lcom/ironsource/z4;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/z4;
    .locals 1

    sget-object v0, Lcom/ironsource/z4;->g:[Lcom/ironsource/z4;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, [Lcom/ironsource/z4;

    return-object v0
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/z4;->a:Ljava/lang/String;

    return-object v0
.end method

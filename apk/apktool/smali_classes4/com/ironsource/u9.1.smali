.class public final enum Lcom/ironsource/u9;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/u9$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/u9;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lcom/ironsource/u9$a;

.field public static final enum c:Lcom/ironsource/u9;

.field public static final enum d:Lcom/ironsource/u9;

.field private static final synthetic e:[Lcom/ironsource/u9;

.field private static final synthetic f:Lkotlin/enums/EnumEntries;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ironsource/u9;

    const-string v1, "APP_ACTIVITY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ironsource/u9;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/u9;->c:Lcom/ironsource/u9;

    .line 2
    new-instance v0, Lcom/ironsource/u9;

    const-string v1, "DIRECT_INTENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/ironsource/u9;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/u9;->d:Lcom/ironsource/u9;

    invoke-static {}, Lcom/ironsource/u9;->a()[Lcom/ironsource/u9;

    move-result-object v0

    sput-object v0, Lcom/ironsource/u9;->e:[Lcom/ironsource/u9;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/ironsource/u9;->f:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/ironsource/u9$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/u9$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/u9;->b:Lcom/ironsource/u9$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/ironsource/u9;->a:I

    return-void
.end method

.method private static final synthetic a()[Lcom/ironsource/u9;
    .locals 2

    .line 1
    sget-object v0, Lcom/ironsource/u9;->c:Lcom/ironsource/u9;

    sget-object v1, Lcom/ironsource/u9;->d:Lcom/ironsource/u9;

    filled-new-array {v0, v1}, [Lcom/ironsource/u9;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/ironsource/u9;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ironsource/u9;->f:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/u9;
    .locals 1

    const-class v0, Lcom/ironsource/u9;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 1
    check-cast p0, Lcom/ironsource/u9;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/u9;
    .locals 1

    sget-object v0, Lcom/ironsource/u9;->e:[Lcom/ironsource/u9;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, [Lcom/ironsource/u9;

    return-object v0
.end method


# virtual methods
.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ironsource/u9;->a:I

    return v0
.end method

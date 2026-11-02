.class public final enum Lcom/ironsource/r0$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/r0$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ironsource/r0$a;

.field public static final enum b:Lcom/ironsource/r0$a;

.field public static final enum c:Lcom/ironsource/r0$a;

.field public static final enum d:Lcom/ironsource/r0$a;

.field public static final enum e:Lcom/ironsource/r0$a;

.field public static final enum f:Lcom/ironsource/r0$a;

.field private static final synthetic g:[Lcom/ironsource/r0$a;

.field private static final synthetic h:Lkotlin/enums/EnumEntries;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ironsource/r0$a;

    const-string v1, "DidntAttemptToLoad"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/r0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/r0$a;->a:Lcom/ironsource/r0$a;

    .line 2
    new-instance v0, Lcom/ironsource/r0$a;

    const-string v1, "FailedToLoad"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ironsource/r0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/r0$a;->b:Lcom/ironsource/r0$a;

    .line 3
    new-instance v0, Lcom/ironsource/r0$a;

    const-string v1, "LoadedSuccessfully"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/r0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/r0$a;->c:Lcom/ironsource/r0$a;

    .line 4
    new-instance v0, Lcom/ironsource/r0$a;

    const-string v1, "FailedToShow"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/ironsource/r0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/r0$a;->d:Lcom/ironsource/r0$a;

    .line 5
    new-instance v0, Lcom/ironsource/r0$a;

    const-string v1, "ShowedSuccessfully"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/ironsource/r0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/r0$a;->e:Lcom/ironsource/r0$a;

    .line 6
    new-instance v0, Lcom/ironsource/r0$a;

    const-string v1, "NotPartOfWaterfall"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ironsource/r0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/r0$a;->f:Lcom/ironsource/r0$a;

    invoke-static {}, Lcom/ironsource/r0$a;->a()[Lcom/ironsource/r0$a;

    move-result-object v0

    sput-object v0, Lcom/ironsource/r0$a;->g:[Lcom/ironsource/r0$a;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/ironsource/r0$a;->h:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static final synthetic a()[Lcom/ironsource/r0$a;
    .locals 6

    .line 1
    sget-object v0, Lcom/ironsource/r0$a;->a:Lcom/ironsource/r0$a;

    sget-object v1, Lcom/ironsource/r0$a;->b:Lcom/ironsource/r0$a;

    sget-object v2, Lcom/ironsource/r0$a;->c:Lcom/ironsource/r0$a;

    sget-object v3, Lcom/ironsource/r0$a;->d:Lcom/ironsource/r0$a;

    sget-object v4, Lcom/ironsource/r0$a;->e:Lcom/ironsource/r0$a;

    sget-object v5, Lcom/ironsource/r0$a;->f:Lcom/ironsource/r0$a;

    filled-new-array/range {v0 .. v5}, [Lcom/ironsource/r0$a;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/ironsource/r0$a;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ironsource/r0$a;->h:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/r0$a;
    .locals 1

    const-class v0, Lcom/ironsource/r0$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 1
    check-cast p0, Lcom/ironsource/r0$a;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/r0$a;
    .locals 1

    sget-object v0, Lcom/ironsource/r0$a;->g:[Lcom/ironsource/r0$a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, [Lcom/ironsource/r0$a;

    return-object v0
.end method

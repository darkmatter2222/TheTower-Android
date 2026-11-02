.class public final enum Lcom/ironsource/M3;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/M3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/M3;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lcom/ironsource/M3$a;

.field public static final enum d:Lcom/ironsource/M3;

.field public static final enum e:Lcom/ironsource/M3;

.field public static final enum f:Lcom/ironsource/M3;

.field private static final synthetic g:[Lcom/ironsource/M3;

.field private static final synthetic h:Lkotlin/enums/EnumEntries;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/ironsource/M3;

    const-string v3, "d"

    const-wide/32 v4, 0x5265c00

    const-string v1, "Day"

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/M3;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v0, Lcom/ironsource/M3;->d:Lcom/ironsource/M3;

    .line 2
    new-instance v1, Lcom/ironsource/M3;

    const-string v4, "h"

    const-wide/32 v5, 0x36ee80

    const-string v2, "Hour"

    const/4 v3, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/M3;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v1, Lcom/ironsource/M3;->e:Lcom/ironsource/M3;

    .line 3
    new-instance v2, Lcom/ironsource/M3;

    const-string v5, "s"

    const-wide/16 v6, 0x3e8

    const-string v3, "Second"

    const/4 v4, 0x2

    invoke-direct/range {v2 .. v7}, Lcom/ironsource/M3;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v2, Lcom/ironsource/M3;->f:Lcom/ironsource/M3;

    invoke-static {}, Lcom/ironsource/M3;->a()[Lcom/ironsource/M3;

    move-result-object v0

    sput-object v0, Lcom/ironsource/M3;->g:[Lcom/ironsource/M3;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/ironsource/M3;->h:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/ironsource/M3$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/M3$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/M3;->c:Lcom/ironsource/M3$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/ironsource/M3;->a:Ljava/lang/String;

    iput-wide p4, p0, Lcom/ironsource/M3;->b:J

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/M3;Ljava/lang/Integer;ILjava/lang/Object;)J
    .locals 0

    if-nez p3, :cond_1

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    .line 4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ironsource/M3;->a(Ljava/lang/Integer;)J

    move-result-wide p0

    return-wide p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: inMilliseconds"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic a(Lcom/ironsource/M3;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ironsource/M3;->a:Ljava/lang/String;

    return-object p0
.end method

.method private static final synthetic a()[Lcom/ironsource/M3;
    .locals 3

    .line 1
    sget-object v0, Lcom/ironsource/M3;->d:Lcom/ironsource/M3;

    sget-object v1, Lcom/ironsource/M3;->e:Lcom/ironsource/M3;

    sget-object v2, Lcom/ironsource/M3;->f:Lcom/ironsource/M3;

    filled-new-array {v0, v1, v2}, [Lcom/ironsource/M3;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/ironsource/M3;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ironsource/M3;->h:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/M3;
    .locals 1

    const-class v0, Lcom/ironsource/M3;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 1
    check-cast p0, Lcom/ironsource/M3;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/M3;
    .locals 1

    sget-object v0, Lcom/ironsource/M3;->g:[Lcom/ironsource/M3;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, [Lcom/ironsource/M3;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)J
    .locals 4

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    int-to-long v0, p1

    iget-wide v2, p0, Lcom/ironsource/M3;->b:J

    mul-long/2addr v0, v2

    return-wide v0
.end method

.class public final enum Lcom/ironsource/x9;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/x9$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/x9;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lcom/ironsource/x9$a;

.field public static final enum c:Lcom/ironsource/x9;

.field public static final enum d:Lcom/ironsource/x9;

.field public static final enum e:Lcom/ironsource/x9;

.field private static final synthetic f:[Lcom/ironsource/x9;

.field private static final synthetic g:Lkotlin/enums/EnumEntries;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/ironsource/x9;

    const-string v1, "NonBidder"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/ironsource/x9;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/x9;->c:Lcom/ironsource/x9;

    .line 2
    new-instance v0, Lcom/ironsource/x9;

    const-string v1, "Bidder"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/ironsource/x9;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/x9;->d:Lcom/ironsource/x9;

    .line 3
    new-instance v0, Lcom/ironsource/x9;

    const-string v1, "NotSupported"

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/ironsource/x9;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/x9;->e:Lcom/ironsource/x9;

    invoke-static {}, Lcom/ironsource/x9;->a()[Lcom/ironsource/x9;

    move-result-object v0

    sput-object v0, Lcom/ironsource/x9;->f:[Lcom/ironsource/x9;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/ironsource/x9;->g:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/ironsource/x9$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/x9$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/x9;->b:Lcom/ironsource/x9$a;

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

    iput p3, p0, Lcom/ironsource/x9;->a:I

    return-void
.end method

.method public static final synthetic a(Lcom/ironsource/x9;)I
    .locals 0

    .line 2
    iget p0, p0, Lcom/ironsource/x9;->a:I

    return p0
.end method

.method private static final synthetic a()[Lcom/ironsource/x9;
    .locals 3

    .line 1
    sget-object v0, Lcom/ironsource/x9;->c:Lcom/ironsource/x9;

    sget-object v1, Lcom/ironsource/x9;->d:Lcom/ironsource/x9;

    sget-object v2, Lcom/ironsource/x9;->e:Lcom/ironsource/x9;

    filled-new-array {v0, v1, v2}, [Lcom/ironsource/x9;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/ironsource/x9;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ironsource/x9;->g:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/x9;
    .locals 1

    const-class v0, Lcom/ironsource/x9;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 1
    check-cast p0, Lcom/ironsource/x9;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/x9;
    .locals 1

    sget-object v0, Lcom/ironsource/x9;->f:[Lcom/ironsource/x9;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, [Lcom/ironsource/x9;

    return-object v0
.end method


# virtual methods
.method public final b(Lcom/ironsource/x9;)Z
    .locals 1

    const-string v0, "instanceType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/ironsource/x9;->c()I

    move-result p1

    iget v0, p0, Lcom/ironsource/x9;->a:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ironsource/x9;->a:I

    return v0
.end method

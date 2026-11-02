.class public final enum Lcom/ironsource/df;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/df$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/df;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lcom/ironsource/df$a;

.field public static final enum c:Lcom/ironsource/df;

.field public static final enum d:Lcom/ironsource/df;

.field public static final enum e:Lcom/ironsource/df;

.field private static final synthetic f:[Lcom/ironsource/df;

.field private static final synthetic g:Lkotlin/enums/EnumEntries;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ironsource/df;

    const-string v1, "Off"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ironsource/df;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/df;->c:Lcom/ironsource/df;

    .line 2
    new-instance v0, Lcom/ironsource/df;

    const-string v1, "CurrentlyLoadedAds"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/ironsource/df;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/df;->d:Lcom/ironsource/df;

    .line 3
    new-instance v0, Lcom/ironsource/df;

    const-string v1, "CurrentlyLoadedAdsAndFullHistory"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/ironsource/df;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/df;->e:Lcom/ironsource/df;

    invoke-static {}, Lcom/ironsource/df;->a()[Lcom/ironsource/df;

    move-result-object v0

    sput-object v0, Lcom/ironsource/df;->f:[Lcom/ironsource/df;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/ironsource/df;->g:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/ironsource/df$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/df$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/df;->b:Lcom/ironsource/df$a;

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

    iput p3, p0, Lcom/ironsource/df;->a:I

    return-void
.end method

.method public static final synthetic a(Lcom/ironsource/df;)I
    .locals 0

    .line 2
    iget p0, p0, Lcom/ironsource/df;->a:I

    return p0
.end method

.method private static final synthetic a()[Lcom/ironsource/df;
    .locals 3

    .line 1
    sget-object v0, Lcom/ironsource/df;->c:Lcom/ironsource/df;

    sget-object v1, Lcom/ironsource/df;->d:Lcom/ironsource/df;

    sget-object v2, Lcom/ironsource/df;->e:Lcom/ironsource/df;

    filled-new-array {v0, v1, v2}, [Lcom/ironsource/df;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/ironsource/df;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ironsource/df;->g:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/df;
    .locals 1

    const-class v0, Lcom/ironsource/df;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 1
    check-cast p0, Lcom/ironsource/df;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/df;
    .locals 1

    sget-object v0, Lcom/ironsource/df;->f:[Lcom/ironsource/df;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, [Lcom/ironsource/df;

    return-object v0
.end method


# virtual methods
.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ironsource/df;->a:I

    return v0
.end method

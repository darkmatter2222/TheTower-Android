.class public final enum Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/mediation/MaxAdViewConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdaptiveType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ANCHORED:Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;

.field public static final enum INLINE:Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;

.field public static final enum NONE:Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;

.field private static final synthetic b:[Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;

    const/4 v1, 0x0

    const-string v2, "none"

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;->NONE:Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;

    .line 7
    new-instance v0, Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;

    const/4 v1, 0x1

    const-string v2, "anchored"

    const-string v3, "ANCHORED"

    invoke-direct {v0, v3, v1, v2}, Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;->ANCHORED:Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;

    .line 12
    new-instance v0, Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;

    const/4 v1, 0x2

    const-string v2, "inline"

    const-string v3, "INLINE"

    invoke-direct {v0, v3, v1, v2}, Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;->INLINE:Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;

    .line 13
    invoke-static {}, Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;->a()[Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;

    move-result-object v0

    sput-object v0, Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;->b:[Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;->a:Ljava/lang/String;

    return-void
.end method

.method private static synthetic a()[Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;
    .locals 3

    .line 1
    sget-object v0, Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;->NONE:Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;

    sget-object v1, Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;->ANCHORED:Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;

    sget-object v2, Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;->INLINE:Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;

    filled-new-array {v0, v1, v2}, [Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;
    .locals 1

    .line 1
    const-class v0, Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;

    return-object p0
.end method

.method public static values()[Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;->b:[Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;

    invoke-virtual {v0}, [Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;->a:Ljava/lang/String;

    return-object v0
.end method

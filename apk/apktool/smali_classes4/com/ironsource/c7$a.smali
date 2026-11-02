.class public final Lcom/ironsource/c7$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/c7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHealthCheckRecoveryStrategy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HealthCheckRecoveryStrategy.kt\ncom/ironsource/sdk/controller/communication/HealthCheckRecoveryStrategy$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,13:1\n1310#2,2:14\n*S KotlinDebug\n*F\n+ 1 HealthCheckRecoveryStrategy.kt\ncom/ironsource/sdk/controller/communication/HealthCheckRecoveryStrategy$Companion\n*L\n9#1:14,2\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ironsource/c7$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/ironsource/c7;
    .locals 5

    .line 1
    invoke-static {}, Lcom/ironsource/c7;->values()[Lcom/ironsource/c7;

    move-result-object v0

    .line 6
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 7
    invoke-virtual {v3}, Lcom/ironsource/c7;->c()I

    move-result v4

    if-ne v4, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    sget-object p1, Lcom/ironsource/c7;->c:Lcom/ironsource/c7;

    return-object p1

    :cond_2
    return-object v3
.end method

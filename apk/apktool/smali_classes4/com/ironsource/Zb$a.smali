.class public final Lcom/ironsource/Zb$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Zb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/ironsource/Zb$a;

.field public static final b:Ljava/lang/String; = "nativeAd.load"

.field public static final c:Ljava/lang/String; = "nativeAd.loadReport"

.field public static final d:Ljava/lang/String; = "nativeAd.register"

.field public static final e:Ljava/lang/String; = "nativeAd.click"

.field public static final f:Ljava/lang/String; = "nativeAd.privacyClick"

.field public static final g:Ljava/lang/String; = "nativeAd.visibilityChanged"

.field public static final h:Ljava/lang/String; = "nativeAd.destroy"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ironsource/Zb$a;

    invoke-direct {v0}, Lcom/ironsource/Zb$a;-><init>()V

    sput-object v0, Lcom/ironsource/Zb$a;->a:Lcom/ironsource/Zb$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

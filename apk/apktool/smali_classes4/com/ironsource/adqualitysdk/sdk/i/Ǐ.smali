.class public final Lcom/ironsource/adqualitysdk/sdk/i/Ǐ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ﮋ;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# static fields
.field public static final ｋ:Ljava/lang/String;


# instance fields
.field public final ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ǐ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "Y4b6Q2GPF0JfnNZDYpIfTk+HwUxzjyk=\n"

    const-string v1, "LOizLQfgWys=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/Ǐ;->ｋ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaPlayer$OnInfoListener;Lcom/ironsource/adqualitysdk/sdk/i/ǐ;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﮋ;-><init>(Ljava/lang/Object;)V

    .line 2
    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ǐ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ǐ;

    return-void
.end method


# virtual methods
.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ǐ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ǐ;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/ǐ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/Ǐ;Landroid/media/MediaPlayer;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/Ǐ;->ｋ:Ljava/lang/String;

    const-string v3, "p+b2eDOO8ibC+dB1DcfoPIf64WVhwfUBjPLr\n"

    const-string v4, "4pSEF0Gum0g=\n"

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮋ;->ﾒ:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 5
    check-cast v1, Landroid/media/MediaPlayer$OnInfoListener;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

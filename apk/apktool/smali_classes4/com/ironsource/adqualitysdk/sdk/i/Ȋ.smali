.class public final Lcom/ironsource/adqualitysdk/sdk/i/Ȋ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ﮋ;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# static fields
.field public static final ｋ:Ljava/lang/String;


# instance fields
.field public final ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ʅ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "5G2F9avjHS/faqn0ivoCPs5to+iC9hIl2WKy9bQ=\n"

    const-string v1, "qwPGmsaTcUo=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/Ȋ;->ｋ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaPlayer$OnCompletionListener;Lcom/ironsource/adqualitysdk/sdk/i/ʅ;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﮋ;-><init>(Ljava/lang/Object;)V

    .line 2
    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ȋ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ʅ;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ȋ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ʅ;

    invoke-interface {v0, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ʅ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/Ȋ;Landroid/media/MediaPlayer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/Ȋ;->ｋ:Ljava/lang/String;

    const-string v2, "NUrAA8hPkUpQVeYO9gaLUBVW1x6aAJZnH1XCAN8bkUse\n"

    const-string v3, "cDiybLpv+CQ=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮋ;->ﾒ:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 5
    check-cast v0, Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method

.class public final Lcom/ironsource/adqualitysdk/sdk/i/ｼ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ｼ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ｼ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->く:Lcom/ironsource/adqualitysdk/sdk/i/⁀;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 3
    iget-object v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/⁀;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ὶ;

    .line 4
    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ὶ;->ﾒ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ｼ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 6
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->Ṿ:Lcom/ironsource/adqualitysdk/sdk/i/ᒫ;

    .line 7
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᒫ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ܕ;

    .line 8
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ܕ;->ﺙ:Lcom/ironsource/adqualitysdk/sdk/i/ϛ;

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;->NO_NETWORK_CONNECTION:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;

    const-string v2, "qDwYTazbazaUOBhApsFyPIUnUUyn\n"

    const-string v3, "5lM4I8mvHFk=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ϛ;->סּ:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 10
    invoke-static {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ϛ;->ﾒ(Ljava/util/Set;Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ｼ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->ﮐ()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ｼ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 13
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->Ṿ:Lcom/ironsource/adqualitysdk/sdk/i/ᒫ;

    .line 14
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᒫ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ܕ;

    .line 15
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ܕ;->ﺙ:Lcom/ironsource/adqualitysdk/sdk/i/ϛ;

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;->CONFIG_LOAD_TIMEOUT:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;

    const-string v2, "Iii2YThMyWkCD44lOn3jJQgUmWMAXohpBBqTJR1QxWAEDoM=\n"

    const-string v3, "a3v3BWk5qAU=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 16
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ϛ;->סּ:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 17
    invoke-static {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ϛ;->ﾒ(Ljava/util/Set;Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0

    throw v1
.end method

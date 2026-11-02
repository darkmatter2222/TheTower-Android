.class public final Lcom/ironsource/adqualitysdk/sdk/i/ί;
.super Lcom/ironsource/adqualitysdk/sdk/i/ﮋ;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ｋ:Ljava/lang/String;


# instance fields
.field public final ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ד;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "pNbaoN8YvVaCy+2p2B6kXo7b9r7XD7lo\n"

    const-string v1, "67iZzLZ71ho=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ί;->ｋ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View$OnClickListener;Lcom/ironsource/adqualitysdk/sdk/i/ד;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﮋ;-><init>(Ljava/lang/Object;)V

    .line 2
    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ί;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ד;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ί;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ד;

    invoke-interface {v0, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ד;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ί;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ί;->ｋ:Ljava/lang/String;

    const-string v2, "aYjm7FoDw+cMl8DhZErZ/UmU8fEITMTKQJP36A==\n"

    const-string v3, "LPqUgygjqok=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮋ;->ﾒ:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 5
    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

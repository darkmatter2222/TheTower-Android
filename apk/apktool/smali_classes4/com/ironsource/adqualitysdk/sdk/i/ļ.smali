.class public final Lcom/ironsource/adqualitysdk/sdk/i/ļ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ﮋ;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final ｋ:Ljava/lang/String;


# instance fields
.field public final ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ŀ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "X89S9gFNz3J50nL8GkvVenXCaesVWshM\n"

    const-string v1, "EKEGmXQupz4=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ļ;->ｋ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View$OnTouchListener;Lcom/ironsource/adqualitysdk/sdk/i/ŀ;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﮋ;-><init>(Ljava/lang/Object;)V

    .line 2
    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ļ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ŀ;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ļ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ŀ;

    invoke-interface {v1, p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ŀ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ļ;Landroid/view/View;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ļ;->ｋ:Ljava/lang/String;

    const-string v3, "BnOxm5BQ3GNjbJeWrhnGeSZvpobCH9tZLHSgnA==\n"

    const-string v4, "QwHD9OJwtQ0=\n"

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮋ;->ﾒ:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 5
    check-cast v1, Landroid/view/View$OnTouchListener;

    invoke-interface {v1, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

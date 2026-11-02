.class Lcom/ironsource/r4$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/r4;->a(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ironsource/r4;


# direct methods
.method constructor <init>(Lcom/ironsource/r4;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/r4$b;->c:Lcom/ironsource/r4;

    iput-object p2, p0, Lcom/ironsource/r4$b;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/ironsource/r4$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/r4$b;->c:Lcom/ironsource/r4;

    invoke-static {v0}, Lcom/ironsource/r4;->-$$Nest$fgeta(Lcom/ironsource/r4;)Lcom/ironsource/B7;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/r4$b;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/ironsource/B7;->I(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/ironsource/r4$b;->c:Lcom/ironsource/r4;

    invoke-static {v1, v0}, Lcom/ironsource/r4;->-$$Nest$fputc(Lcom/ironsource/r4;Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ironsource/r4$b;->c:Lcom/ironsource/r4;

    invoke-static {v0}, Lcom/ironsource/r4;->-$$Nest$fgeta(Lcom/ironsource/r4;)Lcom/ironsource/B7;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/r4$b;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/ironsource/B7;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/ironsource/r4$b;->c:Lcom/ironsource/r4;

    invoke-static {v1, v0}, Lcom/ironsource/r4;->-$$Nest$fpute(Lcom/ironsource/r4;Ljava/lang/String;)V

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/ironsource/r4$b;->a:Landroid/content/Context;

    const-string v1, "CRep"

    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 15
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 16
    const-string v1, "String1"

    iget-object v2, p0, Lcom/ironsource/r4$b;->c:Lcom/ironsource/r4;

    invoke-static {v2}, Lcom/ironsource/r4;->-$$Nest$fgetc(Lcom/ironsource/r4;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 17
    const-string v1, "sId"

    iget-object v2, p0, Lcom/ironsource/r4$b;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 18
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 21
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void
.end method

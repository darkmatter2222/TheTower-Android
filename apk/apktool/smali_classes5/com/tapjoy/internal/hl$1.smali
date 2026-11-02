.class final Lcom/tapjoy/internal/hl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/hl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 101
    invoke-static {p1}, Lcom/tapjoy/internal/ht;->a(Landroid/content/Context;)Lcom/tapjoy/internal/ht;

    move-result-object p1

    .line 1214
    iget-object p1, p1, Lcom/tapjoy/internal/ht;->b:Landroid/content/SharedPreferences;

    const-string v0, "gcm.regId"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;J)V
    .locals 1

    .line 147
    invoke-static {p1}, Lcom/tapjoy/internal/ht;->a(Landroid/content/Context;)Lcom/tapjoy/internal/ht;

    move-result-object p1

    .line 1246
    iget-object p1, p1, Lcom/tapjoy/internal/ht;->b:Landroid/content/SharedPreferences;

    .line 2023
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2024
    const-string v0, "gcm.onServerExpirationTime"

    invoke-interface {p1, v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2025
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 1

    .line 137
    invoke-static {p1}, Lcom/tapjoy/internal/ht;->a(Landroid/content/Context;)Lcom/tapjoy/internal/ht;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/ht;->a(Z)V

    return-void
.end method

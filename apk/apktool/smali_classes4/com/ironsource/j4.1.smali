.class public interface abstract Lcom/ironsource/j4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/j4$a;,
        Lcom/ironsource/j4$b;,
        Lcom/ironsource/j4$c;,
        Lcom/ironsource/j4$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/ironsource/j4$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ironsource/j4$c;->a:Lcom/ironsource/j4$c;

    sput-object v0, Lcom/ironsource/j4;->a:Lcom/ironsource/j4$c;

    return-void
.end method

.method public static a(Lcom/ironsource/b7;)Lcom/ironsource/j4;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/ironsource/j4;->a:Lcom/ironsource/j4$c;

    invoke-virtual {v0, p0}, Lcom/ironsource/j4$c;->a(Lcom/ironsource/b7;)Lcom/ironsource/j4;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Lcom/ironsource/j4$d;)V
.end method

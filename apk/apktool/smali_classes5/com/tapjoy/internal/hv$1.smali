.class final Lcom/tapjoy/internal/hv$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/ax;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/hv;-><init>(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tapjoy/internal/ax<",
        "Lcom/tapjoy/internal/ex;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/hv;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/hv;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/tapjoy/internal/hv$1;->a:Lcom/tapjoy/internal/hv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 2

    .line 31
    check-cast p2, Lcom/tapjoy/internal/ex;

    .line 2034
    sget-object v0, Lcom/tapjoy/internal/ex;->c:Lcom/tapjoy/internal/el;

    .line 2164
    const-string v1, "value == null"

    invoke-static {p2, v1}, Lcom/tapjoy/internal/ek;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2165
    const-string v1, "stream == null"

    invoke-static {p1, v1}, Lcom/tapjoy/internal/ek;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2166
    invoke-static {p1}, Lcom/tapjoy/internal/jf;->a(Ljava/io/OutputStream;)Lcom/tapjoy/internal/jl;

    move-result-object p1

    invoke-static {p1}, Lcom/tapjoy/internal/jf;->a(Lcom/tapjoy/internal/jl;)Lcom/tapjoy/internal/jc;

    move-result-object p1

    .line 2167
    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/jc;Ljava/lang/Object;)V

    .line 2168
    invoke-interface {p1}, Lcom/tapjoy/internal/jc;->a()Lcom/tapjoy/internal/jc;

    return-void
.end method

.method public final synthetic b(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2

    .line 1039
    sget-object v0, Lcom/tapjoy/internal/ex;->c:Lcom/tapjoy/internal/el;

    .line 1188
    const-string v1, "stream == null"

    invoke-static {p1, v1}, Lcom/tapjoy/internal/ek;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1189
    invoke-static {p1}, Lcom/tapjoy/internal/jf;->a(Ljava/io/InputStream;)Lcom/tapjoy/internal/jm;

    move-result-object p1

    invoke-static {p1}, Lcom/tapjoy/internal/jf;->a(Lcom/tapjoy/internal/jm;)Lcom/tapjoy/internal/jd;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/jd;)Ljava/lang/Object;

    move-result-object p1

    .line 1039
    check-cast p1, Lcom/tapjoy/internal/ex;

    return-object p1
.end method

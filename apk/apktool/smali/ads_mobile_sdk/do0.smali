.class public final Lads_mobile_sdk/do0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/dw2;
.implements Lads_mobile_sdk/ks1;


# static fields
.field public static final c:Ljava/lang/Object;

.field public static final synthetic d:Z = true


# instance fields
.field public volatile a:Lads_mobile_sdk/dw2;

.field public volatile b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lads_mobile_sdk/do0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lads_mobile_sdk/dw2;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lads_mobile_sdk/do0;->c:Ljava/lang/Object;

    iput-object v0, p0, Lads_mobile_sdk/do0;->b:Ljava/lang/Object;

    .line 44
    sget-boolean v0, Lads_mobile_sdk/do0;->d:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 45
    :cond_1
    :goto_0
    iput-object p1, p0, Lads_mobile_sdk/do0;->a:Lads_mobile_sdk/dw2;

    return-void
.end method

.method public static a(Lads_mobile_sdk/dw2;)Lads_mobile_sdk/ks1;
    .locals 1

    .line 112
    instance-of v0, p0, Lads_mobile_sdk/ks1;

    if-eqz v0, :cond_0

    .line 114
    check-cast p0, Lads_mobile_sdk/ks1;

    return-object p0

    .line 122
    :cond_0
    new-instance v0, Lads_mobile_sdk/do0;

    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    invoke-direct {v0, p0}, Lads_mobile_sdk/do0;-><init>(Lads_mobile_sdk/dw2;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    .line 48
    iget-object v0, p0, Lads_mobile_sdk/do0;->b:Ljava/lang/Object;

    .line 49
    sget-object v1, Lads_mobile_sdk/do0;->c:Ljava/lang/Object;

    if-ne v0, v1, :cond_3

    .line 50
    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/do0;->b:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 53
    iget-object v0, p0, Lads_mobile_sdk/do0;->a:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    .line 54
    iget-object v2, p0, Lads_mobile_sdk/do0;->b:Ljava/lang/Object;

    if-eq v2, v1, :cond_1

    if-ne v2, v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Scoped provider was invoked recursively returning different results: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " & "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". This is likely due to a circular dependency."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_1
    :goto_0
    iput-object v0, p0, Lads_mobile_sdk/do0;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 59
    iput-object v1, p0, Lads_mobile_sdk/do0;->a:Lads_mobile_sdk/dw2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 61
    monitor-exit p0

    throw v0

    :cond_3
    return-object v0
.end method

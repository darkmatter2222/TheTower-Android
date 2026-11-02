.class public Lads_mobile_sdk/er0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lads_mobile_sdk/er0$a;,
        Lads_mobile_sdk/er0$b;
    }
.end annotation


# static fields
.field private static volatile c:Lads_mobile_sdk/er0$a;

.field private static volatile d:Lads_mobile_sdk/er0;

.field private static volatile e:Lads_mobile_sdk/er0;

.field static final f:Lads_mobile_sdk/er0;


# instance fields
.field private a:B

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lads_mobile_sdk/er0$b;",
            "Lads_mobile_sdk/vz0$c<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lads_mobile_sdk/er0$a;->a:Lads_mobile_sdk/er0$a;

    sput-object v0, Lads_mobile_sdk/er0;->c:Lads_mobile_sdk/er0$a;

    .line 188
    new-instance v0, Lads_mobile_sdk/er0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lads_mobile_sdk/er0;-><init>(Z)V

    sput-object v0, Lads_mobile_sdk/er0;->f:Lads_mobile_sdk/er0;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 264
    iput-byte p1, p0, Lads_mobile_sdk/er0;->a:B

    .line 460
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/er0;->b:Ljava/util/Map;

    return-void
.end method

.method public static a()Lads_mobile_sdk/er0;
    .locals 2

    .line 211
    sget-boolean v0, Lads_mobile_sdk/gi;->b:Z

    if-eqz v0, :cond_0

    .line 212
    sget-object v0, Lads_mobile_sdk/er0;->f:Lads_mobile_sdk/er0;

    return-object v0

    .line 214
    :cond_0
    sget-object v0, Lads_mobile_sdk/er0;->d:Lads_mobile_sdk/er0;

    if-nez v0, :cond_2

    .line 216
    const-class v1, Lads_mobile_sdk/er0;

    monitor-enter v1

    .line 217
    :try_start_0
    sget-object v0, Lads_mobile_sdk/er0;->d:Lads_mobile_sdk/er0;

    if-nez v0, :cond_1

    .line 219
    invoke-static {}, Lads_mobile_sdk/cr0;->a()Lads_mobile_sdk/er0;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/er0;->d:Lads_mobile_sdk/er0;

    .line 221
    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    return-object v0
.end method

.method public static b()Lads_mobile_sdk/er0;
    .locals 2

    .line 1
    sget-object v0, Lads_mobile_sdk/er0;->e:Lads_mobile_sdk/er0;

    if-eqz v0, :cond_0

    return-object v0

    .line 6
    :cond_0
    const-class v0, Lads_mobile_sdk/er0;

    monitor-enter v0

    .line 7
    :try_start_0
    sget-object v1, Lads_mobile_sdk/er0;->e:Lads_mobile_sdk/er0;

    if-eqz v1, :cond_1

    .line 9
    monitor-exit v0

    return-object v1

    .line 13
    :cond_1
    sget-boolean v1, Lads_mobile_sdk/gi;->b:Z

    if-eqz v1, :cond_2

    .line 14
    invoke-static {}, Lads_mobile_sdk/er0;->d()Lads_mobile_sdk/er0;

    move-result-object v1

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {}, Lads_mobile_sdk/cr0;->b()Lads_mobile_sdk/er0;

    move-result-object v1

    .line 16
    :goto_0
    sput-object v1, Lads_mobile_sdk/er0;->e:Lads_mobile_sdk/er0;

    .line 17
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static d()Lads_mobile_sdk/er0;
    .locals 1

    .line 1
    const-class v0, Lads_mobile_sdk/er0;

    invoke-static {v0}, Lads_mobile_sdk/tz0;->a(Ljava/lang/Class;)Lads_mobile_sdk/er0;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lads_mobile_sdk/tw1;I)Lads_mobile_sdk/vz0$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lads_mobile_sdk/tw1;",
            ">(TContainingType;I)",
            "Lads_mobile_sdk/vz0$c<",
            "TContainingType;*>;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lads_mobile_sdk/er0;->b:Ljava/util/Map;

    new-instance v1, Lads_mobile_sdk/er0$b;

    invoke-direct {v1, p1, p2}, Lads_mobile_sdk/er0$b;-><init>(Ljava/lang/Object;I)V

    .line 210
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lads_mobile_sdk/dr0;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public c()Z
    .locals 4

    .line 79
    iget-byte v0, p0, Lads_mobile_sdk/er0;->a:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 84
    :cond_1
    sget-object v0, Lads_mobile_sdk/er0;->c:Lads_mobile_sdk/er0$a;

    sget-object v3, Lads_mobile_sdk/er0$a;->b:Lads_mobile_sdk/er0$a;

    if-ne v0, v3, :cond_2

    return v1

    :cond_2
    return v2
.end method

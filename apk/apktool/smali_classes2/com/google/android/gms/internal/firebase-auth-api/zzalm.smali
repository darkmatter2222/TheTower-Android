.class final Lcom/google/android/gms/internal/firebase-auth-api/zzalm;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzalo<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzalm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzalm<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzann;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzann<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field zzb:Z

.field private zzd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 170
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzalm;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzanq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzanq;-><init>()V

    .line 174
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzann;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzann<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    .line 178
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zzd()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 181
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzanq;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzanq;-><init>()V

    .line 182
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzann;)V

    .line 183
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zzd()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzalo;Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzalo<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 55
    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzaoj;

    move-result-object v0

    .line 56
    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;->zza()I

    move-result v1

    .line 57
    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;->zze()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 58
    check-cast p1, Ljava/util/List;

    .line 59
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 60
    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;->zzd()Z

    move-result p0

    const/4 v3, 0x0

    if-eqz p0, :cond_2

    .line 61
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return v3

    :cond_0
    move p0, v3

    :goto_0
    if-ge v3, v2, :cond_1

    .line 65
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 66
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaoj;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr p0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    shl-int/lit8 p1, v1, 0x3

    .line 72
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result p1

    add-int/2addr p1, p0

    .line 74
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result p0

    add-int/2addr p1, p0

    return p1

    :cond_2
    move p0, v3

    :goto_1
    if-ge v3, v2, :cond_3

    .line 78
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 79
    invoke-static {v0, v1, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaoj;ILjava/lang/Object;)I

    move-result v4

    add-int/2addr p0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return p0

    .line 82
    :cond_4
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaoj;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaoj;ILjava/lang/Object;)I
    .locals 1

    shl-int/lit8 p1, p1, 0x3

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result p1

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaoj;->zzj:Lcom/google/android/gms/internal/firebase-auth-api/zzaoj;

    if-ne p0, v0, :cond_0

    shl-int/lit8 p1, p1, 0x1

    .line 8
    :cond_0
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaoj;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaoj;Ljava/lang/Object;)I
    .locals 2

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzall;->zzb:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoj;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x4

    const/16 v1, 0x8

    packed-switch p0, :pswitch_data_0

    .line 54
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 47
    :pswitch_0
    instance-of p0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzalv;

    if-eqz p0, :cond_0

    .line 48
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzalv;

    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalv;->zza()I

    move-result p0

    int-to-long p0, p0

    .line 49
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(J)I

    move-result p0

    return p0

    .line 51
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long p0, p0

    .line 52
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(J)I

    move-result p0

    return p0

    .line 38
    :pswitch_1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    .line 39
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(J)I

    move-result p0

    return p0

    .line 35
    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 36
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zze(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result p0

    return p0

    .line 34
    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    return v1

    .line 33
    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    return v0

    .line 32
    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result p0

    return p0

    .line 23
    :pswitch_6
    instance-of p0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    if-eqz p0, :cond_1

    .line 24
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)I

    move-result p0

    return p0

    .line 25
    :cond_1
    check-cast p1, [B

    .line 26
    array-length p0, p1

    .line 27
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result p1

    :goto_0
    add-int/2addr p1, p0

    return p1

    .line 29
    :pswitch_7
    instance-of p0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    if-eqz p0, :cond_2

    .line 30
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)I

    move-result p0

    return p0

    .line 31
    :cond_2
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzb(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 41
    :pswitch_8
    instance-of p0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzama;

    if-eqz p0, :cond_3

    .line 42
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzama;

    .line 43
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzama;->zza()I

    move-result p0

    .line 44
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result p1

    goto :goto_0

    .line 46
    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzamv;)I

    move-result p0

    return p0

    .line 22
    :pswitch_9
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzamv;->zzl()I

    move-result p0

    return p0

    .line 21
    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    const/4 p0, 0x1

    return p0

    .line 20
    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    return v0

    .line 19
    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    return v1

    .line 16
    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long p0, p0

    .line 17
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(J)I

    move-result p0

    return p0

    .line 15
    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(J)I

    move-result p0

    return p0

    .line 12
    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    .line 13
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(J)I

    move-result p0

    return p0

    .line 11
    :pswitch_10
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    return v0

    .line 10
    :pswitch_11
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static zza(Ljava/util/Map$Entry;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 92
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;

    .line 93
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 94
    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzaoq;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzaoq;->zzi:Lcom/google/android/gms/internal/firebase-auth-api/zzaoq;

    if-ne v2, v3, :cond_1

    .line 95
    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;->zze()Z

    move-result v2

    if-nez v2, :cond_1

    .line 96
    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;->zzd()Z

    move-result v2

    if-nez v2, :cond_1

    .line 97
    instance-of v0, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzama;

    const/16 v2, 0x18

    const/4 v3, 0x2

    const/16 v4, 0x8

    if-eqz v0, :cond_0

    .line 98
    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzama;

    .line 99
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;

    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;->zza()I

    move-result p0

    .line 103
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    .line 105
    invoke-static {v3, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzh(II)I

    move-result p0

    add-int/2addr v0, p0

    .line 110
    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result p0

    .line 112
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzama;->zza()I

    move-result v1

    .line 113
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr p0, v2

    :goto_0
    add-int/2addr v0, p0

    return v0

    .line 118
    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;

    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;->zza()I

    move-result p0

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    .line 123
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    .line 125
    invoke-static {v3, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzh(II)I

    move-result p0

    add-int/2addr v0, p0

    .line 130
    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result p0

    .line 131
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzamv;)I

    move-result v1

    add-int/2addr p0, v1

    goto :goto_0

    .line 134
    :cond_1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzalo;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzalo;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 160
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzama;

    if-eqz v0, :cond_0

    .line 161
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzama;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzama;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private static zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 151
    instance-of v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzane;

    if-eqz v0, :cond_0

    .line 152
    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzane;

    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzane;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzane;

    move-result-object p0

    return-object p0

    .line 153
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 154
    check-cast p0, [B

    .line 155
    array-length v0, p0

    new-array v0, v0, [B

    .line 156
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1
    return-object p0
.end method

.method static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaky;Lcom/google/android/gms/internal/firebase-auth-api/zzaoj;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaoj;->zzj:Lcom/google/android/gms/internal/firebase-auth-api/zzaoj;

    if-ne p1, v0, :cond_0

    .line 285
    check-cast p3, Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    const/4 p1, 0x3

    .line 286
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(II)V

    .line 288
    invoke-interface {p3, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamv;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaky;)V

    const/4 p1, 0x4

    .line 289
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(II)V

    return-void

    .line 292
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoj;->zza()I

    move-result v0

    .line 293
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(II)V

    .line 295
    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/zzall;->zzb:[I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoj;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_0

    return-void

    .line 339
    :pswitch_0
    instance-of p1, p3, Lcom/google/android/gms/internal/firebase-auth-api/zzalv;

    if-eqz p1, :cond_1

    .line 340
    check-cast p3, Lcom/google/android/gms/internal/firebase-auth-api/zzalv;

    invoke-interface {p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzalv;->zza()I

    move-result p1

    .line 341
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzb(I)V

    return-void

    .line 343
    :cond_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 344
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzb(I)V

    return-void

    .line 337
    :pswitch_1
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zze(J)V

    return-void

    .line 335
    :pswitch_2
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzf(I)V

    return-void

    .line 332
    :pswitch_3
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 333
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zza(J)V

    return-void

    .line 329
    :pswitch_4
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 330
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zza(I)V

    return-void

    .line 327
    :pswitch_5
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(I)V

    return-void

    .line 322
    :pswitch_6
    instance-of p1, p3, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    if-eqz p1, :cond_2

    .line 323
    check-cast p3, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)V

    return-void

    .line 324
    :cond_2
    check-cast p3, [B

    const/4 p1, 0x0

    .line 325
    array-length p2, p3

    invoke-virtual {p0, p3, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzb([BII)V

    return-void

    .line 318
    :pswitch_7
    instance-of p1, p3, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    if-eqz p1, :cond_3

    .line 319
    check-cast p3, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)V

    return-void

    .line 320
    :cond_3
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zza(Ljava/lang/String;)V

    return-void

    .line 316
    :pswitch_8
    check-cast p3, Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzamv;)V

    return-void

    .line 313
    :pswitch_9
    check-cast p3, Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    .line 314
    invoke-interface {p3, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamv;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaky;)V

    return-void

    .line 311
    :pswitch_a
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zza(Z)V

    return-void

    .line 309
    :pswitch_b
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zza(I)V

    return-void

    .line 307
    :pswitch_c
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zza(J)V

    return-void

    .line 305
    :pswitch_d
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzb(I)V

    return-void

    .line 303
    :pswitch_e
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzb(J)V

    return-void

    .line 300
    :pswitch_f
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 301
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzb(J)V

    return-void

    .line 298
    :pswitch_10
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zza(F)V

    return-void

    .line 296
    :pswitch_11
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zza(D)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzalm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzalo<",
            "TT;>;>()",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzalm<",
            "TT;>;"
        }
    .end annotation

    .line 136
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzalm;

    return-object v0
.end method

.method private final zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzalo;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 246
    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;->zze()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 249
    check-cast p2, Ljava/util/List;

    .line 250
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 251
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 253
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 254
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzalo;Ljava/lang/Object;)V

    .line 255
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object p2, v1

    goto :goto_1

    .line 248
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 259
    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzalo;Ljava/lang/Object;)V

    .line 260
    :goto_1
    instance-of v0, p2, Lcom/google/android/gms/internal/firebase-auth-api/zzama;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 261
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zzd:Z

    .line 262
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzalo;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final zzb(Ljava/util/Map$Entry;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 210
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;

    .line 211
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 212
    instance-of v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzama;

    .line 213
    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;->zze()Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v1, :cond_2

    .line 216
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzalo;)Ljava/lang/Object;

    move-result-object v1

    .line 217
    check-cast p1, Ljava/util/List;

    .line 218
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v1, :cond_0

    .line 220
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 221
    :cond_0
    move-object v3, v1

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 223
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 224
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 226
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzalo;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 215
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Lazy fields can not be repeated"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 227
    :cond_3
    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzaoq;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzaoq;->zzi:Lcom/google/android/gms/internal/firebase-auth-api/zzaoq;

    if-ne v2, v3, :cond_8

    .line 228
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzalo;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    .line 230
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzalo;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_4

    const/4 p1, 0x1

    .line 232
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zzd:Z

    :cond_4
    return-void

    :cond_5
    if-eqz v1, :cond_6

    .line 234
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzama;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzama;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    move-result-object p1

    .line 235
    :cond_6
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;->zza(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 236
    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    invoke-interface {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamv;->zzr()Lcom/google/android/gms/internal/firebase-auth-api/zzamy;

    move-result-object v1

    .line 237
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 238
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    invoke-interface {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzamy;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzalo;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 240
    :cond_7
    invoke-interface {v0, v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_8
    if-nez v1, :cond_9

    .line 244
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzalo;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 243
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Lazy fields must be message-valued"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static zzb(Ljava/lang/Object;)Z
    .locals 1

    .line 397
    instance-of v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamx;

    if-eqz v0, :cond_0

    .line 398
    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamx;

    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamx;->zzj()Z

    move-result p0

    return p0

    .line 399
    :cond_0
    instance-of p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzama;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 401
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzalo;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 264
    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzaoj;

    move-result-object v0

    .line 265
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalw;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzall;->zza:[I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoj;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzaoq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoq;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :cond_0
    move v1, v2

    goto :goto_0

    .line 275
    :pswitch_0
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzama;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 274
    :pswitch_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzalv;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 273
    :pswitch_2
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    if-nez v0, :cond_1

    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    goto :goto_0

    .line 272
    :pswitch_3
    instance-of v1, p1, Ljava/lang/String;

    goto :goto_0

    .line 271
    :pswitch_4
    instance-of v1, p1, Ljava/lang/Boolean;

    goto :goto_0

    .line 270
    :pswitch_5
    instance-of v1, p1, Ljava/lang/Double;

    goto :goto_0

    .line 269
    :pswitch_6
    instance-of v1, p1, Ljava/lang/Float;

    goto :goto_0

    .line 268
    :pswitch_7
    instance-of v1, p1, Ljava/lang/Long;

    goto :goto_0

    .line 267
    :pswitch_8
    instance-of v1, p1, Ljava/lang/Integer;

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    return-void

    .line 278
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 279
    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;->zza()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 280
    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzaoj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoj;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzaoq;

    move-result-object p0

    .line 281
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 282
    const-string p1, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static zzc(Ljava/util/Map$Entry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzalo<",
            "TT;>;>(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 384
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;

    .line 385
    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzaoq;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzaoq;->zzi:Lcom/google/android/gms/internal/firebase-auth-api/zzaoq;

    if-ne v1, v2, :cond_2

    .line 386
    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;->zze()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 388
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 390
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 391
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zzb(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 395
    :cond_1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zzb(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 138
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;-><init>()V

    .line 140
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 142
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza(I)Ljava/util/Map$Entry;

    move-result-object v3

    .line 143
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v4, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzalo;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzb()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 146
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzalo;Ljava/lang/Object;)V

    goto :goto_1

    .line 148
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zzd:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zzd:Z

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 348
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 350
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;

    .line 351
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    .line 352
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->size()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    return v2

    .line 354
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    .line 356
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 357
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 358
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 359
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_5

    move v3, v0

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_8

    if-nez v4, :cond_6

    goto :goto_0

    .line 365
    :cond_6
    instance-of v5, v3, Lcom/google/android/gms/internal/firebase-auth-api/zzama;

    if-nez v5, :cond_7

    .line 366
    instance-of v5, v4, Lcom/google/android/gms/internal/firebase-auth-api/zzama;

    if-eqz v5, :cond_7

    .line 367
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    .line 368
    :cond_7
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    :cond_8
    :goto_0
    move v3, v2

    :goto_1
    if-nez v3, :cond_4

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->hashCode()I

    move-result v0

    return v0
.end method

.method public final zza()I
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 86
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza(Ljava/util/Map$Entry;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzb()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 89
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza(Ljava/util/Map$Entry;)I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_1

    :cond_1
    return v2
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzalm;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzalm<",
            "TT;>;)V"
        }
    .end annotation

    .line 202
    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 204
    iget-object v2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zzb(Ljava/util/Map$Entry;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzb()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 207
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zzb(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final zzc()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 167
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zzd:Z

    if-eqz v0, :cond_1

    .line 168
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamc;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzamc;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()V
    .locals 4

    .line 185
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zzb:Z

    if-eqz v0, :cond_0

    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 189
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 190
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 191
    instance-of v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    if-eqz v3, :cond_1

    .line 192
    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;->zzs()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzb()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 195
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 196
    instance-of v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    if-eqz v2, :cond_3

    .line 197
    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;->zzs()V

    goto :goto_1

    .line 199
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzc()V

    const/4 v0, 0x1

    .line 200
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zzb:Z

    return-void
.end method

.method public final zze()Z
    .locals 4

    .line 374
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 376
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zzc(Ljava/util/Map$Entry;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzb()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 380
    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zzc(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

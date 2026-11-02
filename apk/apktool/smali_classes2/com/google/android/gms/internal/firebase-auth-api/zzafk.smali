.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzafk;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzafy;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzags;


# instance fields
.field private zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

.field private zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzafd;

.field private zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzagh;

.field private zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzafb;

.field private final zze:Lcom/google/android/gms/internal/firebase-auth-api/zzafh;

.field private final zzf:Lcom/google/firebase/FirebaseApp;

.field private zzg:Ljava/lang/String;

.field private zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzafj;


# direct methods
.method constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/firebase-auth-api/zzafh;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 5
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/firebase-auth-api/zzafh;Lcom/google/android/gms/internal/firebase-auth-api/zzagh;Lcom/google/android/gms/internal/firebase-auth-api/zzafe;Lcom/google/android/gms/internal/firebase-auth-api/zzafd;Lcom/google/android/gms/internal/firebase-auth-api/zzafb;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/firebase-auth-api/zzafh;Lcom/google/android/gms/internal/firebase-auth-api/zzagh;Lcom/google/android/gms/internal/firebase-auth-api/zzafe;Lcom/google/android/gms/internal/firebase-auth-api/zzafd;Lcom/google/android/gms/internal/firebase-auth-api/zzafb;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafy;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzf:Lcom/google/firebase/FirebaseApp;

    .line 9
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/firebase/FirebaseOptions;->getApiKey()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzg:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseOptions;->getProjectId()Ljava/lang/String;

    .line 11
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzafh;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzafh;

    const/4 p1, 0x0

    .line 12
    invoke-direct {p0, p1, p1, p1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzagh;Lcom/google/android/gms/internal/firebase-auth-api/zzafe;Lcom/google/android/gms/internal/firebase-auth-api/zzafd;Lcom/google/android/gms/internal/firebase-auth-api/zzafb;)V

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzg:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagq;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzags;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzagh;Lcom/google/android/gms/internal/firebase-auth-api/zzafe;Lcom/google/android/gms/internal/firebase-auth-api/zzafd;Lcom/google/android/gms/internal/firebase-auth-api/zzafb;)V
    .locals 0

    const/4 p1, 0x0

    .line 139
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzagh;

    .line 140
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    .line 141
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzafd;

    .line 142
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzafb;

    .line 143
    const-string p1, "firebear.secureToken"

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagr;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string p3, "LocalClient"

    if-eqz p2, :cond_0

    .line 145
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzg:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagq;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 146
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Found hermetic configuration for secureToken URL: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzagh;

    if-nez p2, :cond_1

    .line 148
    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/zzagh;

    .line 149
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzafj;

    move-result-object p4

    invoke-direct {p2, p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzagh;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzafj;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzagh;

    .line 150
    :cond_1
    const-string p1, "firebear.identityToolkit"

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagr;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 152
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzg:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagq;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 153
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Found hermetic configuration for identityToolkit URL: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    if-nez p2, :cond_3

    .line 155
    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    .line 156
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzafj;

    move-result-object p4

    invoke-direct {p2, p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzafj;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    .line 157
    :cond_3
    const-string p1, "firebear.identityToolkitV2"

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagr;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 159
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzg:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagq;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 160
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Found hermetic configuration for identityToolkitV2 URL: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_2
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzafd;

    if-nez p2, :cond_5

    .line 162
    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/zzafd;

    .line 163
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzafj;

    move-result-object p4

    invoke-direct {p2, p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzafd;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzafj;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzafd;

    .line 164
    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzf:Lcom/google/firebase/FirebaseApp;

    .line 165
    invoke-static {p1}, Lcom/google/firebase/auth/zzad;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/zzad;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/auth/zzad;->zzb()Lcom/google/firebase/auth/zzat;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 167
    const-string p2, "firebear.identityPlatformV2"

    .line 168
    invoke-static {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzagr;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 169
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 170
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzg:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Lcom/google/firebase/auth/zzat;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagq;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 172
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "Found hermetic configuration for identityPlatformV2 URL: "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzafb;

    if-nez p1, :cond_7

    .line 174
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzafb;

    .line 175
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzafj;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzafb;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzafj;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzafb;

    :cond_7
    return-void
.end method

.method private final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzafj;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzafj;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafj;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzf:Lcom/google/firebase/FirebaseApp;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzafh;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzafh;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzafj;-><init>(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzafj;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzafj;

    return-object v0
.end method


# virtual methods
.method public final zza()V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzagh;Lcom/google/android/gms/internal/firebase-auth-api/zzafe;Lcom/google/android/gms/internal/firebase-auth-api/zzafd;Lcom/google/android/gms/internal/firebase-auth-api/zzafb;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahb;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzahb;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaga<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaha;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzg:Ljava/lang/String;

    .line 18
    const-string v2, "/createAuthUri"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafc;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 19
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzaha;

    invoke-direct {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaha;-><init>()V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafj;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagd;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaff;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;Lcom/google/android/gms/internal/firebase-auth-api/zzafi;Lcom/google/android/gms/internal/firebase-auth-api/zzafj;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahc;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzahc;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaga<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzahf;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzg:Ljava/lang/String;

    .line 30
    const-string v2, "/emailLinkSignin"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafc;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzahf;

    invoke-direct {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahf;-><init>()V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafj;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagd;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaff;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;Lcom/google/android/gms/internal/firebase-auth-api/zzafi;Lcom/google/android/gms/internal/firebase-auth-api/zzafj;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzahd;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaga<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzg:Ljava/lang/String;

    .line 24
    const-string v2, "/deleteAccount"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafc;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 25
    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafj;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagd;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaff;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;Lcom/google/android/gms/internal/firebase-auth-api/zzafi;Lcom/google/android/gms/internal/firebase-auth-api/zzafj;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahe;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzahe;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaga<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzahh;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzafd;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzg:Ljava/lang/String;

    .line 36
    const-string v2, "/accounts/mfaEnrollment:finalize"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafc;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzahh;

    invoke-direct {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahh;-><init>()V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafj;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafd;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaff;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;Lcom/google/android/gms/internal/firebase-auth-api/zzafi;Lcom/google/android/gms/internal/firebase-auth-api/zzafj;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahg;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzahg;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaga<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzahj;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzafd;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzg:Ljava/lang/String;

    .line 42
    const-string v2, "/accounts/mfaSignIn:finalize"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafc;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzahj;

    invoke-direct {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahj;-><init>()V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafj;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafd;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaff;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;Lcom/google/android/gms/internal/firebase-auth-api/zzafi;Lcom/google/android/gms/internal/firebase-auth-api/zzafj;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaho;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaho;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaga<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaia;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzagh;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzg:Ljava/lang/String;

    .line 48
    const-string v2, "/token"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafc;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzaia;

    invoke-direct {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaia;-><init>()V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzagh;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafj;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagd;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaff;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;Lcom/google/android/gms/internal/firebase-auth-api/zzafi;Lcom/google/android/gms/internal/firebase-auth-api/zzafj;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahr;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzahr;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaga<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzahq;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzg:Ljava/lang/String;

    .line 54
    const-string v2, "/getAccountInfo"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafc;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzahq;

    invoke-direct {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahq;-><init>()V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafj;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagd;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaff;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;Lcom/google/android/gms/internal/firebase-auth-api/zzafi;Lcom/google/android/gms/internal/firebase-auth-api/zzafj;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahv;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzahv;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaga<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzahu;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahv;->zzb()Lcom/google/firebase/auth/ActionCodeSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzafj;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahv;->zzb()Lcom/google/firebase/auth/ActionCodeSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/auth/ActionCodeSettings;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafj;->zzb(Ljava/lang/String;)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzg:Ljava/lang/String;

    .line 62
    const-string v2, "/getOobConfirmationCode"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafc;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzahu;

    invoke-direct {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahu;-><init>()V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafj;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagd;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaff;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;Lcom/google/android/gms/internal/firebase-auth-api/zzafi;Lcom/google/android/gms/internal/firebase-auth-api/zzafj;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahx;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzahx;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaga<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzahw;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzg:Ljava/lang/String;

    .line 68
    const-string v1, "/getRecaptchaParam"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafc;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzahw;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahw;-><init>()V

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafj;

    invoke-static {v0, p2, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagd;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;Lcom/google/android/gms/internal/firebase-auth-api/zzafi;Lcom/google/android/gms/internal/firebase-auth-api/zzafj;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahy;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzahy;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaga<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaib;",
            ">;)V"
        }
    .end annotation

    .line 71
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzafd;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzg:Ljava/lang/String;

    .line 74
    const-string v2, "/recaptchaConfig"

    .line 75
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafc;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahy;->zzb()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahy;->zzc()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&clientType="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahy;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzac;->zzc(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahy;->zzd()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&tenantId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;-><init>()V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafj;

    .line 81
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagd;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;Lcom/google/android/gms/internal/firebase-auth-api/zzafi;Lcom/google/android/gms/internal/firebase-auth-api/zzafj;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzail;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzail;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaga<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaik;",
            ">;)V"
        }
    .end annotation

    .line 85
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzg:Ljava/lang/String;

    .line 88
    const-string v2, "/resetPassword"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafc;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzaik;

    invoke-direct {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaik;-><init>()V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafj;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagd;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaff;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;Lcom/google/android/gms/internal/firebase-auth-api/zzafi;Lcom/google/android/gms/internal/firebase-auth-api/zzafj;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzain;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzain;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaga<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaip;",
            ">;)V"
        }
    .end annotation

    .line 91
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzafd;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzg:Ljava/lang/String;

    .line 94
    const-string v2, "/accounts:revokeToken"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafc;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzaip;

    invoke-direct {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaip;-><init>()V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafj;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafd;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaff;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;Lcom/google/android/gms/internal/firebase-auth-api/zzafi;Lcom/google/android/gms/internal/firebase-auth-api/zzafj;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaio;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaio;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaga<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzair;",
            ">;)V"
        }
    .end annotation

    .line 97
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaio;->zzc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzafj;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaio;->zzc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafj;->zzb(Ljava/lang/String;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzg:Ljava/lang/String;

    .line 102
    const-string v2, "/sendVerificationCode"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafc;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    invoke-direct {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;-><init>()V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafj;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagd;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaff;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;Lcom/google/android/gms/internal/firebase-auth-api/zzafi;Lcom/google/android/gms/internal/firebase-auth-api/zzafj;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaga<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzait;",
            ">;)V"
        }
    .end annotation

    .line 105
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzg:Ljava/lang/String;

    .line 108
    const-string v2, "/setAccountInfo"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafc;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzait;

    invoke-direct {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzait;-><init>()V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafj;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagd;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaff;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;Lcom/google/android/gms/internal/firebase-auth-api/zzafi;Lcom/google/android/gms/internal/firebase-auth-api/zzafj;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaiv;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaiv;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaga<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaiu;",
            ">;)V"
        }
    .end annotation

    .line 115
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzg:Ljava/lang/String;

    .line 118
    const-string v2, "/signupNewUser"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafc;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzaiu;

    invoke-direct {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaiu;-><init>()V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafj;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagd;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaff;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;Lcom/google/android/gms/internal/firebase-auth-api/zzafi;Lcom/google/android/gms/internal/firebase-auth-api/zzafj;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaix;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaix;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaga<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaiw;",
            ">;)V"
        }
    .end annotation

    .line 121
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzajb;

    if-eqz v0, :cond_0

    .line 124
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzajb;

    .line 125
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzajb;->zzb()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzafj;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzajb;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafj;->zzb(Ljava/lang/String;)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzafd;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzg:Ljava/lang/String;

    .line 128
    const-string v2, "/accounts/mfaEnrollment:start"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafc;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzaiw;

    invoke-direct {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaiw;-><init>()V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafj;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafd;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaff;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;Lcom/google/android/gms/internal/firebase-auth-api/zzafi;Lcom/google/android/gms/internal/firebase-auth-api/zzafj;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaiz;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaiz;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaga<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaiy;",
            ">;)V"
        }
    .end annotation

    .line 131
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaiz;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzafj;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaiz;->zzb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafj;->zzb(Ljava/lang/String;)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzafd;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzg:Ljava/lang/String;

    .line 136
    const-string v2, "/accounts/mfaSignIn:start"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafc;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzaiy;

    invoke-direct {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaiy;-><init>()V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafj;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafd;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaff;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;Lcom/google/android/gms/internal/firebase-auth-api/zzafi;Lcom/google/android/gms/internal/firebase-auth-api/zzafj;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzajg;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzajg;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaga<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaji;",
            ">;)V"
        }
    .end annotation

    .line 177
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzg:Ljava/lang/String;

    .line 180
    const-string v2, "/verifyAssertion"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafc;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzaji;

    invoke-direct {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaji;-><init>()V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafj;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagd;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaff;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;Lcom/google/android/gms/internal/firebase-auth-api/zzafi;Lcom/google/android/gms/internal/firebase-auth-api/zzafj;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzajl;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzajl;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaga<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzajk;",
            ">;)V"
        }
    .end annotation

    .line 183
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzg:Ljava/lang/String;

    .line 186
    const-string v2, "/verifyCustomToken"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafc;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzajk;

    invoke-direct {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzajk;-><init>()V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafj;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagd;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaff;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;Lcom/google/android/gms/internal/firebase-auth-api/zzafi;Lcom/google/android/gms/internal/firebase-auth-api/zzafj;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzajn;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzajn;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaga<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzajm;",
            ">;)V"
        }
    .end annotation

    .line 189
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzg:Ljava/lang/String;

    .line 192
    const-string v2, "/verifyPassword"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafc;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzajm;

    invoke-direct {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzajm;-><init>()V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafj;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagd;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaff;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;Lcom/google/android/gms/internal/firebase-auth-api/zzafi;Lcom/google/android/gms/internal/firebase-auth-api/zzafj;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzajp;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzajp;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaga<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzajo;",
            ">;)V"
        }
    .end annotation

    .line 195
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzg:Ljava/lang/String;

    .line 198
    const-string v2, "/verifyPhoneNumber"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafc;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzajo;

    invoke-direct {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzajo;-><init>()V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafj;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagd;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaff;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;Lcom/google/android/gms/internal/firebase-auth-api/zzafi;Lcom/google/android/gms/internal/firebase-auth-api/zzafj;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzajr;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzajr;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaga<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzajq;",
            ">;)V"
        }
    .end annotation

    .line 201
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzafd;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzg:Ljava/lang/String;

    .line 204
    const-string v2, "/accounts/mfaEnrollment:withdraw"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafc;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzajq;

    invoke-direct {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzajq;-><init>()V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafj;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafd;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaff;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;Lcom/google/android/gms/internal/firebase-auth-api/zzafi;Lcom/google/android/gms/internal/firebase-auth-api/zzafj;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaga<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 111
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzafj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafj;->zza(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 113
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaga;->zza(Ljava/lang/Object;)V

    return-void
.end method

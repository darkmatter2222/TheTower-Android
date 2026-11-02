.class public final Lads_mobile_sdk/ai0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/vz2;


# instance fields
.field public final a:Lads_mobile_sdk/vf0;

.field public b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

.field public c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public d:Lads_mobile_sdk/j53;

.field public e:Ljava/lang/Boolean;

.field public f:Ljava/lang/Boolean;

.field public g:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;

.field public h:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

.field public i:Ljava/lang/Integer;

.field public j:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;

.field public k:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/vf0;)V
    .locals 0

    .line 2588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2589
    iput-object p1, p0, Lads_mobile_sdk/ai0;->a:Lads_mobile_sdk/vf0;

    return-void
.end method


# virtual methods
.method public final a(I)Lads_mobile_sdk/vz2;
    .locals 0

    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/ai0;->i:Ljava/lang/Integer;

    return-object p0
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;)Lads_mobile_sdk/vz2;
    .locals 0

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    iput-object p1, p0, Lads_mobile_sdk/ai0;->g:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;

    return-object p0
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;)Lads_mobile_sdk/vz2;
    .locals 0

    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    iput-object p1, p0, Lads_mobile_sdk/ai0;->h:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    return-object p0
.end method

.method public final a()Lads_mobile_sdk/wz2;
    .locals 11

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/ai0;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    const-class v1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    invoke-static {v0, v1}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/ai0;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    const-class v1, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-static {v0, v1}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4
    iget-object v0, p0, Lads_mobile_sdk/ai0;->d:Lads_mobile_sdk/j53;

    const-class v1, Lads_mobile_sdk/j53;

    invoke-static {v0, v1}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 5
    iget-object v0, p0, Lads_mobile_sdk/ai0;->e:Ljava/lang/Boolean;

    const-class v1, Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    iget-object v0, p0, Lads_mobile_sdk/ai0;->f:Ljava/lang/Boolean;

    const-class v1, Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 7
    iget-object v0, p0, Lads_mobile_sdk/ai0;->g:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;

    const-class v1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;

    invoke-static {v0, v1}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 8
    iget-object v0, p0, Lads_mobile_sdk/ai0;->h:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    const-class v1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    invoke-static {v0, v1}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 9
    iget-object v0, p0, Lads_mobile_sdk/ai0;->i:Ljava/lang/Integer;

    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 10
    iget-object v0, p0, Lads_mobile_sdk/ai0;->j:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;

    const-class v1, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;

    invoke-static {v0, v1}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 11
    iget-object v0, p0, Lads_mobile_sdk/ai0;->k:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest;

    const-class v1, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest;

    invoke-static {v0, v1}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 12
    new-instance v2, Lads_mobile_sdk/bi0;

    iget-object v3, p0, Lads_mobile_sdk/ai0;->a:Lads_mobile_sdk/vf0;

    iget-object v4, p0, Lads_mobile_sdk/ai0;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iget-object v5, p0, Lads_mobile_sdk/ai0;->d:Lads_mobile_sdk/j53;

    iget-object v6, p0, Lads_mobile_sdk/ai0;->e:Ljava/lang/Boolean;

    iget-object v7, p0, Lads_mobile_sdk/ai0;->f:Ljava/lang/Boolean;

    iget-object v8, p0, Lads_mobile_sdk/ai0;->g:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;

    iget-object v9, p0, Lads_mobile_sdk/ai0;->i:Ljava/lang/Integer;

    iget-object v10, p0, Lads_mobile_sdk/ai0;->j:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;

    invoke-direct/range {v2 .. v10}, Lads_mobile_sdk/bi0;-><init>(Lads_mobile_sdk/vf0;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/j53;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;Ljava/lang/Integer;Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;)V

    return-object v2
.end method

.method public final a(Lads_mobile_sdk/j53;)Ljava/lang/Object;
    .locals 0

    .line 30
    iput-object p1, p0, Lads_mobile_sdk/ai0;->d:Lads_mobile_sdk/j53;

    return-object p0
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    iput-object p1, p0, Lads_mobile_sdk/ai0;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    return-object p0
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    iput-object p1, p0, Lads_mobile_sdk/ai0;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    return-object p0
.end method

.method public final a(Z)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/ai0;->f:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final b(Z)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/ai0;->e:Ljava/lang/Boolean;

    return-object p0
.end method

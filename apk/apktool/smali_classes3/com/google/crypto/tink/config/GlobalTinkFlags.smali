.class public final Lcom/google/crypto/tink/config/GlobalTinkFlags;
.super Ljava/lang/Object;
.source "GlobalTinkFlags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/config/GlobalTinkFlags$TinkFlagImpl;
    }
.end annotation


# static fields
.field public static final validateKeysetsOnParsing:Lcom/google/crypto/tink/config/TinkFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/google/crypto/tink/config/GlobalTinkFlags$TinkFlagImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/config/GlobalTinkFlags$TinkFlagImpl;-><init>(Z)V

    sput-object v0, Lcom/google/crypto/tink/config/GlobalTinkFlags;->validateKeysetsOnParsing:Lcom/google/crypto/tink/config/TinkFlag;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class Lorg/chromium/net/impl/CronetExceptionTranslationUtils;
.super Ljava/lang/Object;
.source "CronetExceptionTranslationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/impl/CronetExceptionTranslationUtils$CronetWork;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static executeTranslatingCronetExceptions(Lorg/chromium/net/impl/CronetExceptionTranslationUtils$CronetWork;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "work",
            "nonCronetException"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Exception;",
            ">(",
            "Lorg/chromium/net/impl/CronetExceptionTranslationUtils$CronetWork<",
            "TT;TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)TT;^",
            "Lorg/chromium/net/CronetException;",
            "^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/chromium/net/CronetException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .line 22
    :try_start_0
    invoke-interface {p0}, Lorg/chromium/net/impl/CronetExceptionTranslationUtils$CronetWork;->run()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 24
    invoke-static {p0}, Lorg/chromium/net/impl/CronetExceptionTranslationUtils;->isUncheckedAndroidCronetException(Ljava/lang/Exception;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 26
    invoke-static {p0}, Lorg/chromium/net/impl/CronetExceptionTranslationUtils;->isCheckedAndroidCronetException(Ljava/lang/Exception;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 29
    throw p0

    .line 31
    :cond_0
    throw p0

    .line 27
    :cond_1
    invoke-static {p0}, Lorg/chromium/net/impl/CronetExceptionTranslationUtils;->translateCheckedAndroidCronetException(Ljava/lang/Exception;)Lorg/chromium/net/CronetException;

    move-result-object p0

    throw p0

    .line 25
    :cond_2
    invoke-static {p0}, Lorg/chromium/net/impl/CronetExceptionTranslationUtils;->translateUncheckedAndroidCronetException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static isCheckedAndroidCronetException(Ljava/lang/Exception;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 41
    instance-of p0, p0, Landroid/net/http/HttpException;

    return p0
.end method

.method public static isUncheckedAndroidCronetException(Ljava/lang/Exception;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 37
    instance-of p0, p0, Landroid/net/http/InlineExecutionProhibitedException;

    return p0
.end method

.method public static translateCheckedAndroidCronetException(Ljava/lang/Exception;)Lorg/chromium/net/CronetException;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 61
    invoke-static {p0}, Lorg/chromium/net/impl/CronetExceptionTranslationUtils;->isCheckedAndroidCronetException(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 65
    instance-of v0, p0, Landroid/net/http/QuicException;

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Lorg/chromium/net/impl/AndroidQuicExceptionWrapper;

    check-cast p0, Landroid/net/http/QuicException;

    invoke-direct {v0, p0}, Lorg/chromium/net/impl/AndroidQuicExceptionWrapper;-><init>(Landroid/net/http/QuicException;)V

    return-object v0

    .line 67
    :cond_0
    instance-of v0, p0, Landroid/net/http/NetworkException;

    if-eqz v0, :cond_1

    .line 68
    new-instance v0, Lorg/chromium/net/impl/AndroidNetworkExceptionWrapper;

    check-cast p0, Landroid/net/http/NetworkException;

    invoke-direct {v0, p0}, Lorg/chromium/net/impl/AndroidNetworkExceptionWrapper;-><init>(Landroid/net/http/NetworkException;)V

    return-object v0

    .line 69
    :cond_1
    instance-of v0, p0, Landroid/net/http/CallbackException;

    if-eqz v0, :cond_2

    .line 70
    new-instance v0, Lorg/chromium/net/impl/AndroidCallbackExceptionWrapper;

    check-cast p0, Landroid/net/http/CallbackException;

    invoke-direct {v0, p0}, Lorg/chromium/net/impl/AndroidCallbackExceptionWrapper;-><init>(Landroid/net/http/CallbackException;)V

    return-object v0

    .line 71
    :cond_2
    instance-of v0, p0, Landroid/net/http/HttpException;

    if-eqz v0, :cond_3

    .line 72
    new-instance v0, Lorg/chromium/net/impl/AndroidHttpExceptionWrapper;

    check-cast p0, Landroid/net/http/HttpException;

    invoke-direct {v0, p0}, Lorg/chromium/net/impl/AndroidHttpExceptionWrapper;-><init>(Landroid/net/http/HttpException;)V

    return-object v0

    .line 75
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Checked exception translation discrepancy"

    invoke-direct {v0, v1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 62
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not an Android Cronet exception"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static translateUncheckedAndroidCronetException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 45
    invoke-static {p0}, Lorg/chromium/net/impl/CronetExceptionTranslationUtils;->isUncheckedAndroidCronetException(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    instance-of v0, p0, Landroid/net/http/InlineExecutionProhibitedException;

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Lorg/chromium/net/InlineExecutionProhibitedException;

    invoke-direct {v0}, Lorg/chromium/net/InlineExecutionProhibitedException;-><init>()V

    .line 53
    invoke-virtual {v0, p0}, Lorg/chromium/net/InlineExecutionProhibitedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unchecked exception translation discrepancy"

    invoke-direct {v0, v1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 46
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not an Android Cronet exception"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

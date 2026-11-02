.class final Lorg/chromium/net/apihelpers/ContentTypeParametersParser;
.super Ljava/lang/Object;
.source "ContentTypeParametersParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/apihelpers/ContentTypeParametersParser$ContentTypeParametersParserException;
    }
.end annotation


# static fields
.field private static final TOKEN_ALLOWED_SPECIAL_CHARS:Ljava/lang/String; = "!#$%&\'*+-.^_`|~"


# instance fields
.field private mCurrentPosition:I

.field private final mHeaderValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mHeaderValue"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->mHeaderValue:Ljava/lang/String;

    const/16 v0, 0x3b

    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    iput v0, p0, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->mCurrentPosition:I

    return-void
.end method

.method private advance()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/chromium/net/apihelpers/ContentTypeParametersParser$ContentTypeParametersParserException;
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget v0, p0, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->mCurrentPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->mCurrentPosition:I

    return-void

    .line 148
    :cond_0
    new-instance v0, Lorg/chromium/net/apihelpers/ContentTypeParametersParser$ContentTypeParametersParserException;

    const-string v1, "End of header reached"

    iget v2, p0, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->mCurrentPosition:I

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser$ContentTypeParametersParserException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private currentChar()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/chromium/net/apihelpers/ContentTypeParametersParser$ContentTypeParametersParserException;
        }
    .end annotation

    .line 139
    invoke-virtual {p0}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->mHeaderValue:Ljava/lang/String;

    iget v1, p0, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->mCurrentPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 140
    :cond_0
    new-instance v0, Lorg/chromium/net/apihelpers/ContentTypeParametersParser$ContentTypeParametersParserException;

    const-string v1, "End of header reached"

    iget v2, p0, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->mCurrentPosition:I

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser$ContentTypeParametersParserException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private getNextQuotedString()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/chromium/net/apihelpers/ContentTypeParametersParser$ContentTypeParametersParserException;
        }
    .end annotation

    .line 72
    iget v0, p0, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->mCurrentPosition:I

    .line 73
    invoke-direct {p0}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->currentChar()C

    move-result v1

    const-string v2, "]"

    const-string v3, ": ["

    const/16 v4, 0x22

    if-ne v1, v4, :cond_6

    .line 82
    invoke-direct {p0}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->advance()V

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    :goto_0
    move v6, v5

    .line 89
    :goto_1
    invoke-virtual {p0}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->hasMore()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 95
    const-string v7, "Invalid character at "

    if-eqz v6, :cond_1

    .line 96
    invoke-direct {p0}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->currentChar()C

    move-result v6

    invoke-static {v6}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->isQuotedPairChar(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 102
    invoke-direct {p0}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->currentChar()C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    invoke-direct {p0}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->advance()V

    goto :goto_0

    .line 97
    :cond_0
    new-instance v0, Lorg/chromium/net/apihelpers/ContentTypeParametersParser$ContentTypeParametersParserException;

    iget v1, p0, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->mCurrentPosition:I

    iget-object v4, p0, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->mHeaderValue:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->mCurrentPosition:I

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser$ContentTypeParametersParserException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 104
    :cond_1
    invoke-direct {p0}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->currentChar()C

    move-result v8

    if-ne v8, v4, :cond_2

    .line 105
    invoke-direct {p0}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->advance()V

    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 107
    :cond_2
    invoke-direct {p0}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->currentChar()C

    move-result v8

    const/16 v9, 0x5c

    if-ne v8, v9, :cond_3

    .line 109
    invoke-direct {p0}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->advance()V

    const/4 v6, 0x1

    goto :goto_1

    .line 111
    :cond_3
    invoke-direct {p0}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->currentChar()C

    move-result v8

    invoke-static {v8}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->isQdtextChar(C)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 116
    invoke-direct {p0}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->currentChar()C

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    invoke-direct {p0}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->advance()V

    goto :goto_1

    .line 112
    :cond_4
    new-instance v0, Lorg/chromium/net/apihelpers/ContentTypeParametersParser$ContentTypeParametersParserException;

    iget v1, p0, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->mCurrentPosition:I

    iget-object v4, p0, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->mHeaderValue:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->mCurrentPosition:I

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser$ContentTypeParametersParserException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 90
    :cond_5
    new-instance v1, Lorg/chromium/net/apihelpers/ContentTypeParametersParser$ContentTypeParametersParserException;

    iget-object v4, p0, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->mHeaderValue:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unterminated quoted string at "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser$ContentTypeParametersParserException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 74
    :cond_6
    new-instance v0, Lorg/chromium/net/apihelpers/ContentTypeParametersParser$ContentTypeParametersParserException;

    iget v1, p0, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->mCurrentPosition:I

    iget-object v4, p0, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->mHeaderValue:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Not a quoted string: expected \" at "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->mCurrentPosition:I

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser$ContentTypeParametersParserException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private getNextToken()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/chromium/net/apihelpers/ContentTypeParametersParser$ContentTypeParametersParserException;
        }
    .end annotation

    .line 123
    iget v0, p0, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->mCurrentPosition:I

    .line 124
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->hasMore()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->currentChar()C

    move-result v1

    invoke-static {v1}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->isTokenCharacter(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-direct {p0}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->advance()V

    goto :goto_0

    .line 127
    :cond_0
    iget v1, p0, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->mCurrentPosition:I

    if-eq v0, v1, :cond_1

    .line 131
    iget-object v2, p0, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->mHeaderValue:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 128
    :cond_1
    new-instance v1, Lorg/chromium/net/apihelpers/ContentTypeParametersParser$ContentTypeParametersParserException;

    iget-object v2, p0, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->mHeaderValue:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Token not found at position "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser$ContentTypeParametersParserException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method private static isAscii(C)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ch"
        }
    .end annotation

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isQdtextChar(C)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    const/16 v0, 0x5c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x22

    if-eq p0, v0, :cond_0

    .line 161
    invoke-static {p0}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->isQuotedPairChar(C)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isQuotedPairChar(C)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 165
    invoke-static {p0}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x21

    if-gt v0, p0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    const/16 v0, 0x7f

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static isTokenCharacter(C)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ch"
        }
    .end annotation

    .line 169
    invoke-static {p0}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->isAscii(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "!#$%&\'*+-.^_`|~"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static isWhitespace(C)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private optionallySkipWhitespace()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/chromium/net/apihelpers/ContentTypeParametersParser$ContentTypeParametersParserException;
        }
    .end annotation

    .line 155
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->currentChar()C

    move-result v0

    invoke-static {v0}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-direct {p0}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->advance()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method getNextParameter()Ljava/util/Map$Entry;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/chromium/net/apihelpers/ContentTypeParametersParser$ContentTypeParametersParserException;
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->optionallySkipWhitespace()V

    .line 33
    invoke-direct {p0}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->getNextToken()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-direct {p0}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->currentChar()C

    move-result v1

    const/16 v2, 0x3d

    const-string v3, "]"

    const-string v4, ": ["

    if-ne v1, v2, :cond_3

    .line 44
    invoke-direct {p0}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->advance()V

    .line 47
    invoke-direct {p0}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->currentChar()C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_0

    .line 48
    invoke-direct {p0}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->getNextQuotedString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 50
    :cond_0
    invoke-direct {p0}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->getNextToken()Ljava/lang/String;

    move-result-object v1

    .line 53
    :goto_0
    invoke-direct {p0}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->optionallySkipWhitespace()V

    .line 55
    invoke-virtual {p0}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->hasMore()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    invoke-direct {p0}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->currentChar()C

    move-result v2

    const/16 v5, 0x3b

    if-ne v2, v5, :cond_1

    .line 66
    invoke-direct {p0}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->advance()V

    goto :goto_1

    .line 57
    :cond_1
    new-instance v0, Lorg/chromium/net/apihelpers/ContentTypeParametersParser$ContentTypeParametersParserException;

    iget v1, p0, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->mCurrentPosition:I

    iget-object v2, p0, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->mHeaderValue:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid parameter format: expected ; at "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->mCurrentPosition:I

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser$ContentTypeParametersParserException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 68
    :cond_2
    :goto_1
    new-instance v2, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v2, v0, v1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 35
    :cond_3
    new-instance v0, Lorg/chromium/net/apihelpers/ContentTypeParametersParser$ContentTypeParametersParserException;

    iget v1, p0, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->mCurrentPosition:I

    iget-object v2, p0, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->mHeaderValue:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid parameter format: expected = at "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->mCurrentPosition:I

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/apihelpers/ContentTypeParametersParser$ContentTypeParametersParserException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method hasMore()Z
    .locals 2

    .line 135
    iget v0, p0, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->mCurrentPosition:I

    iget-object v1, p0, Lorg/chromium/net/apihelpers/ContentTypeParametersParser;->mHeaderValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.class public Lcom/google/firebase/database/logging/DefaultLogger;
.super Ljava/lang/Object;
.source "DefaultLogger.java"

# interfaces
.implements Lcom/google/firebase/database/logging/Logger;


# instance fields
.field private final enabledComponents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final minLevel:Lcom/google/firebase/database/logging/Logger$Level;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/logging/Logger$Level;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/logging/Logger$Level;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/firebase/database/logging/DefaultLogger;->enabledComponents:Ljava/util/Set;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 31
    iput-object p2, p0, Lcom/google/firebase/database/logging/DefaultLogger;->enabledComponents:Ljava/util/Set;

    .line 33
    :goto_0
    iput-object p1, p0, Lcom/google/firebase/database/logging/DefaultLogger;->minLevel:Lcom/google/firebase/database/logging/Logger$Level;

    return-void
.end method


# virtual methods
.method protected buildLogMessage(Lcom/google/firebase/database/logging/Logger$Level;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 1

    .line 65
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p4, p5}, Ljava/util/Date;-><init>(J)V

    .line 66
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, " ["

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, "] "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 82
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 70
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getLogLevel()Lcom/google/firebase/database/logging/Logger$Level;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/google/firebase/database/logging/DefaultLogger;->minLevel:Lcom/google/firebase/database/logging/Logger$Level;

    return-object v0
.end method

.method protected info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 78
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onLogMessage(Lcom/google/firebase/database/logging/Logger$Level;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/logging/DefaultLogger;->shouldLog(Lcom/google/firebase/database/logging/Logger$Level;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 44
    invoke-virtual/range {p0 .. p5}, Lcom/google/firebase/database/logging/DefaultLogger;->buildLogMessage(Lcom/google/firebase/database/logging/Logger$Level;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    move-object p4, p2

    move-object p2, p1

    move-object p1, p0

    .line 45
    sget-object p5, Lcom/google/firebase/database/logging/DefaultLogger$1;->$SwitchMap$com$google$firebase$database$logging$Logger$Level:[I

    invoke-virtual {p2}, Lcom/google/firebase/database/logging/Logger$Level;->ordinal()I

    move-result p2

    aget p2, p5, p2

    const/4 p5, 0x1

    if-eq p2, p5, :cond_3

    const/4 p5, 0x2

    if-eq p2, p5, :cond_2

    const/4 p5, 0x3

    if-eq p2, p5, :cond_1

    const/4 p5, 0x4

    if-ne p2, p5, :cond_0

    .line 56
    invoke-virtual {p0, p4, p3}, Lcom/google/firebase/database/logging/DefaultLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 59
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Should not reach here!"

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 53
    :cond_1
    invoke-virtual {p0, p4, p3}, Lcom/google/firebase/database/logging/DefaultLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 50
    :cond_2
    invoke-virtual {p0, p4, p3}, Lcom/google/firebase/database/logging/DefaultLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 47
    :cond_3
    invoke-virtual {p0, p4, p3}, Lcom/google/firebase/database/logging/DefaultLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    move-object p1, p0

    return-void
.end method

.method protected shouldLog(Lcom/google/firebase/database/logging/Logger$Level;Ljava/lang/String;)Z
    .locals 2

    .line 86
    invoke-virtual {p1}, Lcom/google/firebase/database/logging/Logger$Level;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/google/firebase/database/logging/DefaultLogger;->minLevel:Lcom/google/firebase/database/logging/Logger$Level;

    invoke-virtual {v1}, Lcom/google/firebase/database/logging/Logger$Level;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/logging/DefaultLogger;->enabledComponents:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p1}, Lcom/google/firebase/database/logging/Logger$Level;->ordinal()I

    move-result p1

    sget-object v0, Lcom/google/firebase/database/logging/Logger$Level;->DEBUG:Lcom/google/firebase/database/logging/Logger$Level;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/Logger$Level;->ordinal()I

    move-result v0

    if-gt p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/firebase/database/logging/DefaultLogger;->enabledComponents:Ljava/util/Set;

    .line 89
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 74
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

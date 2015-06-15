.class public Lorg/slf4j/impl/AndroidLoggerFactory;
.super Ljava/lang/Object;
.source "AndroidLoggerFactory.java"

# interfaces
.implements Lorg/slf4j/ILoggerFactory;


# static fields
.field static final TAG_MAX_LENGTH:I = 0x17


# instance fields
.field private final loggerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/slf4j/impl/AndroidLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/slf4j/impl/AndroidLoggerFactory;->loggerMap:Ljava/util/Map;

    .line 55
    return-void
.end method

.method private final forceValidName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x17

    const/4 v5, 0x0

    .line 85
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_2

    .line 87
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, "."

    invoke-direct {v1, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .local v1, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .local v0, "sb":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "token":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 97
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_0

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 116
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "token":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_2

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x16

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 121
    .end local v1    # "st":Ljava/util/StringTokenizer;
    :cond_2
    return-object p1

    .line 100
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    .restart local v1    # "st":Ljava/util/StringTokenizer;
    .restart local v2    # "token":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 102
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    const-string v3, "*."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 107
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lorg/slf4j/impl/AndroidLoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/impl/AndroidLogger;

    move-result-object v0

    return-object v0
.end method

.method public getLogger(Ljava/lang/String;)Lorg/slf4j/impl/AndroidLogger;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/slf4j/impl/AndroidLoggerFactory;->forceValidName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "actualName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 64
    .local v2, "slogger":Lorg/slf4j/impl/AndroidLogger;
    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v4, p0, Lorg/slf4j/impl/AndroidLoggerFactory;->loggerMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/slf4j/impl/AndroidLogger;

    move-object v2, v0

    .line 67
    if-nez v2, :cond_1

    .line 69
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lorg/slf4j/impl/AndroidLoggerFactory;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Logger name \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' exceeds maximum length of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x17

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " characters, using \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' instead."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    new-instance v3, Lorg/slf4j/impl/AndroidLogger;

    invoke-direct {v3, v1}, Lorg/slf4j/impl/AndroidLogger;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .end local v2    # "slogger":Lorg/slf4j/impl/AndroidLogger;
    .local v3, "slogger":Lorg/slf4j/impl/AndroidLogger;
    :try_start_1
    iget-object v4, p0, Lorg/slf4j/impl/AndroidLoggerFactory;->loggerMap:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 76
    .end local v3    # "slogger":Lorg/slf4j/impl/AndroidLogger;
    .restart local v2    # "slogger":Lorg/slf4j/impl/AndroidLogger;
    :cond_1
    :try_start_2
    monitor-exit p0

    .line 77
    return-object v2

    .line 76
    :catchall_0
    move-exception v4

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .end local v2    # "slogger":Lorg/slf4j/impl/AndroidLogger;
    .restart local v3    # "slogger":Lorg/slf4j/impl/AndroidLogger;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "slogger":Lorg/slf4j/impl/AndroidLogger;
    .restart local v2    # "slogger":Lorg/slf4j/impl/AndroidLogger;
    goto :goto_0
.end method

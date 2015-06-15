.class public Lorg/apache/log4j/varia/LevelMatchFilter;
.super Lorg/apache/log4j/spi/Filter;


# instance fields
.field acceptOnMatch:Z

.field levelToMatch:Lorg/apache/log4j/Level;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/log4j/spi/Filter;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/varia/LevelMatchFilter;->acceptOnMatch:Z

    return-void
.end method


# virtual methods
.method public decide(Lorg/apache/log4j/spi/LoggingEvent;)I
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/apache/log4j/varia/LevelMatchFilter;->levelToMatch:Lorg/apache/log4j/Level;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lorg/apache/log4j/varia/LevelMatchFilter;->levelToMatch:Lorg/apache/log4j/Level;

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/log4j/Priority;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v1

    :goto_1
    if-eqz v2, :cond_0

    iget-boolean v0, p0, Lorg/apache/log4j/varia/LevelMatchFilter;->acceptOnMatch:Z

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_1
.end method

.method public getAcceptOnMatch()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/log4j/varia/LevelMatchFilter;->acceptOnMatch:Z

    return v0
.end method

.method public getLevelToMatch()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/varia/LevelMatchFilter;->levelToMatch:Lorg/apache/log4j/Level;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/varia/LevelMatchFilter;->levelToMatch:Lorg/apache/log4j/Level;

    invoke-virtual {v0}, Lorg/apache/log4j/Priority;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setAcceptOnMatch(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/log4j/varia/LevelMatchFilter;->acceptOnMatch:Z

    return-void
.end method

.method public setLevelToMatch(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/log4j/helpers/OptionConverter;->toLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)Lorg/apache/log4j/Level;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/varia/LevelMatchFilter;->levelToMatch:Lorg/apache/log4j/Level;

    return-void
.end method

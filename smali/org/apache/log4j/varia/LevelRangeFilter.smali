.class public Lorg/apache/log4j/varia/LevelRangeFilter;
.super Lorg/apache/log4j/spi/Filter;


# instance fields
.field acceptOnMatch:Z

.field levelMax:Lorg/apache/log4j/Level;

.field levelMin:Lorg/apache/log4j/Level;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/log4j/spi/Filter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->acceptOnMatch:Z

    return-void
.end method


# virtual methods
.method public decide(Lorg/apache/log4j/spi/LoggingEvent;)I
    .locals 3

    const/4 v0, -0x1

    iget-object v1, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->levelMin:Lorg/apache/log4j/Level;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->levelMin:Lorg/apache/log4j/Level;

    invoke-virtual {v1, v2}, Lorg/apache/log4j/Priority;->isGreaterOrEqual(Lorg/apache/log4j/Priority;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->levelMax:Lorg/apache/log4j/Level;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/log4j/Priority;->toInt()I

    move-result v1

    iget-object v2, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->levelMax:Lorg/apache/log4j/Level;

    invoke-virtual {v2}, Lorg/apache/log4j/Priority;->toInt()I

    move-result v2

    if-gt v1, v2, :cond_0

    :cond_2
    iget-boolean v0, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->acceptOnMatch:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAcceptOnMatch()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->acceptOnMatch:Z

    return v0
.end method

.method public getLevelMax()Lorg/apache/log4j/Level;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->levelMax:Lorg/apache/log4j/Level;

    return-object v0
.end method

.method public getLevelMin()Lorg/apache/log4j/Level;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->levelMin:Lorg/apache/log4j/Level;

    return-object v0
.end method

.method public setAcceptOnMatch(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->acceptOnMatch:Z

    return-void
.end method

.method public setLevelMax(Lorg/apache/log4j/Level;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->levelMax:Lorg/apache/log4j/Level;

    return-void
.end method

.method public setLevelMin(Lorg/apache/log4j/Level;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->levelMin:Lorg/apache/log4j/Level;

    return-void
.end method

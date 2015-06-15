.class public Lorg/apache/log4j/Logger;
.super Lorg/apache/log4j/Category;


# static fields
.field private static final FQCN:Ljava/lang/String;

.field static class$org$apache$log4j$Logger:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/log4j/Logger;->class$org$apache$log4j$Logger:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.Logger"

    invoke-static {v0}, Lorg/apache/log4j/Logger;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/Logger;->class$org$apache$log4j$Logger:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/Logger;->FQCN:Ljava/lang/String;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/log4j/Logger;->class$org$apache$log4j$Logger:Ljava/lang/Class;

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/log4j/Category;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/LogManager;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;
    .locals 1

    invoke-static {p0}, Lorg/apache/log4j/LogManager;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerFactory;)Lorg/apache/log4j/Logger;
    .locals 1

    invoke-static {p0, p1}, Lorg/apache/log4j/LogManager;->getLogger(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerFactory;)Lorg/apache/log4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getRootLogger()Lorg/apache/log4j/Logger;
    .locals 1

    invoke-static {}, Lorg/apache/log4j/LogManager;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isTraceEnabled()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/log4j/Category;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lorg/apache/log4j/spi/LoggerRepository;->isDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/apache/log4j/Level;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0}, Lorg/apache/log4j/Category;->getEffectiveLevel()Lorg/apache/log4j/Level;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Priority;->isGreaterOrEqual(Lorg/apache/log4j/Priority;)Z

    move-result v0

    goto :goto_0
.end method

.method public trace(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/log4j/Category;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lorg/apache/log4j/spi/LoggerRepository;->isDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lorg/apache/log4j/Level;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0}, Lorg/apache/log4j/Category;->getEffectiveLevel()Lorg/apache/log4j/Level;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Priority;->isGreaterOrEqual(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/log4j/Logger;->FQCN:Ljava/lang/String;

    sget-object v1, Lorg/apache/log4j/Level;->TRACE:Lorg/apache/log4j/Level;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/apache/log4j/Category;->forcedLog(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public trace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/log4j/Category;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lorg/apache/log4j/spi/LoggerRepository;->isDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lorg/apache/log4j/Level;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0}, Lorg/apache/log4j/Category;->getEffectiveLevel()Lorg/apache/log4j/Level;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Priority;->isGreaterOrEqual(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/log4j/Logger;->FQCN:Ljava/lang/String;

    sget-object v1, Lorg/apache/log4j/Level;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/apache/log4j/Category;->forcedLog(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

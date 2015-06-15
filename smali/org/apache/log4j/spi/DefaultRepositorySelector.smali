.class public Lorg/apache/log4j/spi/DefaultRepositorySelector;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/log4j/spi/RepositorySelector;


# instance fields
.field final repository:Lorg/apache/log4j/spi/LoggerRepository;


# direct methods
.method public constructor <init>(Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/spi/DefaultRepositorySelector;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    return-void
.end method


# virtual methods
.method public getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/spi/DefaultRepositorySelector;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    return-object v0
.end method

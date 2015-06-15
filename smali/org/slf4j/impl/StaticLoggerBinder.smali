.class public Lorg/slf4j/impl/StaticLoggerBinder;
.super Ljava/lang/Object;
.source "StaticLoggerBinder.java"

# interfaces
.implements Lorg/slf4j/spi/LoggerFactoryBinder;


# static fields
.field public static REQUESTED_API_VERSION:Ljava/lang/String;

.field private static final SINGLETON:Lorg/slf4j/impl/StaticLoggerBinder;

.field private static final loggerFactoryClassStr:Ljava/lang/String;


# instance fields
.field private final loggerFactory:Lorg/slf4j/ILoggerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lorg/slf4j/impl/StaticLoggerBinder;

    invoke-direct {v0}, Lorg/slf4j/impl/StaticLoggerBinder;-><init>()V

    sput-object v0, Lorg/slf4j/impl/StaticLoggerBinder;->SINGLETON:Lorg/slf4j/impl/StaticLoggerBinder;

    .line 64
    const-string v0, "1.6"

    sput-object v0, Lorg/slf4j/impl/StaticLoggerBinder;->REQUESTED_API_VERSION:Ljava/lang/String;

    .line 66
    const-class v0, Lorg/slf4j/impl/AndroidLoggerFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/slf4j/impl/StaticLoggerBinder;->loggerFactoryClassStr:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lorg/slf4j/impl/AndroidLoggerFactory;

    invoke-direct {v0}, Lorg/slf4j/impl/AndroidLoggerFactory;-><init>()V

    iput-object v0, p0, Lorg/slf4j/impl/StaticLoggerBinder;->loggerFactory:Lorg/slf4j/ILoggerFactory;

    .line 77
    return-void
.end method

.method public static final getSingleton()Lorg/slf4j/impl/StaticLoggerBinder;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lorg/slf4j/impl/StaticLoggerBinder;->SINGLETON:Lorg/slf4j/impl/StaticLoggerBinder;

    return-object v0
.end method


# virtual methods
.method public getLoggerFactory()Lorg/slf4j/ILoggerFactory;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/slf4j/impl/StaticLoggerBinder;->loggerFactory:Lorg/slf4j/ILoggerFactory;

    return-object v0
.end method

.method public getLoggerFactoryClassStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lorg/slf4j/impl/StaticLoggerBinder;->loggerFactoryClassStr:Ljava/lang/String;

    return-object v0
.end method

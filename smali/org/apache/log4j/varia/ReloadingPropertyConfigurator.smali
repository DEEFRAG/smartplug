.class public Lorg/apache/log4j/varia/ReloadingPropertyConfigurator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/log4j/spi/Configurator;


# instance fields
.field delegate:Lorg/apache/log4j/PropertyConfigurator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/log4j/PropertyConfigurator;

    invoke-direct {v0}, Lorg/apache/log4j/PropertyConfigurator;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/varia/ReloadingPropertyConfigurator;->delegate:Lorg/apache/log4j/PropertyConfigurator;

    return-void
.end method


# virtual methods
.method public doConfigure(Ljava/net/URL;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 0

    return-void
.end method

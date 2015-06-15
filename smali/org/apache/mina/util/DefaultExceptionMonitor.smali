.class public Lorg/apache/mina/util/DefaultExceptionMonitor;
.super Lorg/apache/mina/util/ExceptionMonitor;
.source "DefaultExceptionMonitor.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/apache/mina/util/DefaultExceptionMonitor;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/util/DefaultExceptionMonitor;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/apache/mina/util/ExceptionMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public exceptionCaught(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 43
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_0

    .line 44
    check-cast p1, Ljava/lang/Error;

    .end local p1    # "cause":Ljava/lang/Throwable;
    throw p1

    .line 47
    .restart local p1    # "cause":Ljava/lang/Throwable;
    :cond_0
    sget-object v0, Lorg/apache/mina/util/DefaultExceptionMonitor;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Unexpected exception."

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    return-void
.end method

.class public abstract Lorg/apache/mina/util/ExceptionMonitor;
.super Ljava/lang/Object;
.source "ExceptionMonitor.java"


# static fields
.field private static instance:Lorg/apache/mina/util/ExceptionMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lorg/apache/mina/util/DefaultExceptionMonitor;

    invoke-direct {v0}, Lorg/apache/mina/util/DefaultExceptionMonitor;-><init>()V

    sput-object v0, Lorg/apache/mina/util/ExceptionMonitor;->instance:Lorg/apache/mina/util/ExceptionMonitor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/mina/util/ExceptionMonitor;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lorg/apache/mina/util/ExceptionMonitor;->instance:Lorg/apache/mina/util/ExceptionMonitor;

    return-object v0
.end method

.method public static setInstance(Lorg/apache/mina/util/ExceptionMonitor;)V
    .locals 0
    .param p0, "monitor"    # Lorg/apache/mina/util/ExceptionMonitor;

    .prologue
    .line 55
    if-nez p0, :cond_0

    .line 56
    new-instance p0, Lorg/apache/mina/util/DefaultExceptionMonitor;

    .end local p0    # "monitor":Lorg/apache/mina/util/ExceptionMonitor;
    invoke-direct {p0}, Lorg/apache/mina/util/DefaultExceptionMonitor;-><init>()V

    .line 59
    .restart local p0    # "monitor":Lorg/apache/mina/util/ExceptionMonitor;
    :cond_0
    sput-object p0, Lorg/apache/mina/util/ExceptionMonitor;->instance:Lorg/apache/mina/util/ExceptionMonitor;

    .line 60
    return-void
.end method


# virtual methods
.method public abstract exceptionCaught(Ljava/lang/Throwable;)V
.end method

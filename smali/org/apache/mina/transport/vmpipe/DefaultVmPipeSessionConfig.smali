.class Lorg/apache/mina/transport/vmpipe/DefaultVmPipeSessionConfig;
.super Lorg/apache/mina/core/session/AbstractIoSessionConfig;
.source "DefaultVmPipeSessionConfig.java"

# interfaces
.implements Lorg/apache/mina/transport/vmpipe/VmPipeSessionConfig;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method protected doSetAll(Lorg/apache/mina/core/session/IoSessionConfig;)V
    .locals 0
    .param p1, "config"    # Lorg/apache/mina/core/session/IoSessionConfig;

    .prologue
    .line 39
    return-void
.end method

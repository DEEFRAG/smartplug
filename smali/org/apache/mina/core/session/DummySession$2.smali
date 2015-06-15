.class Lorg/apache/mina/core/session/DummySession$2;
.super Lorg/apache/mina/core/session/AbstractIoSessionConfig;
.source "DummySession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/session/DummySession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/session/DummySession;


# direct methods
.method constructor <init>(Lorg/apache/mina/core/session/DummySession;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lorg/apache/mina/core/session/DummySession$2;->this$0:Lorg/apache/mina/core/session/DummySession;

    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;-><init>()V

    return-void
.end method


# virtual methods
.method protected doSetAll(Lorg/apache/mina/core/session/IoSessionConfig;)V
    .locals 0
    .param p1, "config"    # Lorg/apache/mina/core/session/IoSessionConfig;

    .prologue
    .line 75
    return-void
.end method

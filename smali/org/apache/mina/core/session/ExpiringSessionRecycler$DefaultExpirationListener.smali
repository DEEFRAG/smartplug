.class Lorg/apache/mina/core/session/ExpiringSessionRecycler$DefaultExpirationListener;
.super Ljava/lang/Object;
.source "ExpiringSessionRecycler.java"

# interfaces
.implements Lorg/apache/mina/util/ExpirationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/session/ExpiringSessionRecycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultExpirationListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/mina/util/ExpirationListener",
        "<",
        "Lorg/apache/mina/core/session/IoSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/session/ExpiringSessionRecycler;


# direct methods
.method private constructor <init>(Lorg/apache/mina/core/session/ExpiringSessionRecycler;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lorg/apache/mina/core/session/ExpiringSessionRecycler$DefaultExpirationListener;->this$0:Lorg/apache/mina/core/session/ExpiringSessionRecycler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/core/session/ExpiringSessionRecycler;Lorg/apache/mina/core/session/ExpiringSessionRecycler$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/core/session/ExpiringSessionRecycler;
    .param p2, "x1"    # Lorg/apache/mina/core/session/ExpiringSessionRecycler$1;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lorg/apache/mina/core/session/ExpiringSessionRecycler$DefaultExpirationListener;-><init>(Lorg/apache/mina/core/session/ExpiringSessionRecycler;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic expired(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 109
    check-cast p1, Lorg/apache/mina/core/session/IoSession;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/session/ExpiringSessionRecycler$DefaultExpirationListener;->expired(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public expired(Lorg/apache/mina/core/session/IoSession;)V
    .locals 1
    .param p1, "expiredSession"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 112
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    .line 113
    return-void
.end method

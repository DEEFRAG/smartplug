.class public interface abstract Lorg/apache/mina/core/session/IoSessionRecycler;
.super Ljava/lang/Object;
.source "IoSessionRecycler.java"


# static fields
.field public static final NOOP:Lorg/apache/mina/core/session/IoSessionRecycler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lorg/apache/mina/core/session/IoSessionRecycler$1;

    invoke-direct {v0}, Lorg/apache/mina/core/session/IoSessionRecycler$1;-><init>()V

    sput-object v0, Lorg/apache/mina/core/session/IoSessionRecycler;->NOOP:Lorg/apache/mina/core/session/IoSessionRecycler;

    return-void
.end method


# virtual methods
.method public abstract put(Lorg/apache/mina/core/session/IoSession;)V
.end method

.method public abstract recycle(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/IoSession;
.end method

.method public abstract remove(Lorg/apache/mina/core/session/IoSession;)V
.end method

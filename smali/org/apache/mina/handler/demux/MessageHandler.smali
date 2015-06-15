.class public interface abstract Lorg/apache/mina/handler/demux/MessageHandler;
.super Ljava/lang/Object;
.source "MessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final NOOP:Lorg/apache/mina/handler/demux/MessageHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/handler/demux/MessageHandler",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lorg/apache/mina/handler/demux/MessageHandler$1;

    invoke-direct {v0}, Lorg/apache/mina/handler/demux/MessageHandler$1;-><init>()V

    sput-object v0, Lorg/apache/mina/handler/demux/MessageHandler;->NOOP:Lorg/apache/mina/handler/demux/MessageHandler;

    return-void
.end method


# virtual methods
.method public abstract handleMessage(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSession;",
            "TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

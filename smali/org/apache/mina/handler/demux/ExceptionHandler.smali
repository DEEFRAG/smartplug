.class public interface abstract Lorg/apache/mina/handler/demux/ExceptionHandler;
.super Ljava/lang/Object;
.source "ExceptionHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Throwable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CLOSE:Lorg/apache/mina/handler/demux/ExceptionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/handler/demux/ExceptionHandler",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public static final NOOP:Lorg/apache/mina/handler/demux/ExceptionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/handler/demux/ExceptionHandler",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lorg/apache/mina/handler/demux/ExceptionHandler$1;

    invoke-direct {v0}, Lorg/apache/mina/handler/demux/ExceptionHandler$1;-><init>()V

    sput-object v0, Lorg/apache/mina/handler/demux/ExceptionHandler;->NOOP:Lorg/apache/mina/handler/demux/ExceptionHandler;

    .line 48
    new-instance v0, Lorg/apache/mina/handler/demux/ExceptionHandler$2;

    invoke-direct {v0}, Lorg/apache/mina/handler/demux/ExceptionHandler$2;-><init>()V

    sput-object v0, Lorg/apache/mina/handler/demux/ExceptionHandler;->CLOSE:Lorg/apache/mina/handler/demux/ExceptionHandler;

    return-void
.end method


# virtual methods
.method public abstract exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
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

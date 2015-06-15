.class public interface abstract Lorg/apache/mina/filter/executor/IoEventQueueHandler;
.super Ljava/lang/Object;
.source "IoEventQueueHandler.java"

# interfaces
.implements Ljava/util/EventListener;


# static fields
.field public static final NOOP:Lorg/apache/mina/filter/executor/IoEventQueueHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lorg/apache/mina/filter/executor/IoEventQueueHandler$1;

    invoke-direct {v0}, Lorg/apache/mina/filter/executor/IoEventQueueHandler$1;-><init>()V

    sput-object v0, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->NOOP:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    return-void
.end method


# virtual methods
.method public abstract accept(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)Z
.end method

.method public abstract offered(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V
.end method

.method public abstract polled(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V
.end method

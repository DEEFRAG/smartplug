.class public interface abstract Lorg/apache/mina/core/future/IoFutureListener;
.super Ljava/lang/Object;
.source "IoFutureListener.java"

# interfaces
.implements Ljava/util/EventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F::",
        "Lorg/apache/mina/core/future/IoFuture;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/EventListener;"
    }
.end annotation


# static fields
.field public static final CLOSE:Lorg/apache/mina/core/future/IoFutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/core/future/IoFutureListener",
            "<",
            "Lorg/apache/mina/core/future/IoFuture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lorg/apache/mina/core/future/IoFutureListener$1;

    invoke-direct {v0}, Lorg/apache/mina/core/future/IoFutureListener$1;-><init>()V

    sput-object v0, Lorg/apache/mina/core/future/IoFutureListener;->CLOSE:Lorg/apache/mina/core/future/IoFutureListener;

    return-void
.end method


# virtual methods
.method public abstract operationComplete(Lorg/apache/mina/core/future/IoFuture;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation
.end method

.class public Lorg/apache/mina/filter/reqres/RequestTimeoutException;
.super Ljava/lang/RuntimeException;
.source "RequestTimeoutException.java"


# static fields
.field private static final serialVersionUID:J = 0x4cfa238cdbd330e4L


# instance fields
.field private final request:Lorg/apache/mina/filter/reqres/Request;


# direct methods
.method public constructor <init>(Lorg/apache/mina/filter/reqres/Request;)V
    .locals 2
    .param p1, "request"    # Lorg/apache/mina/filter/reqres/Request;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "request"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/filter/reqres/RequestTimeoutException;->request:Lorg/apache/mina/filter/reqres/Request;

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/filter/reqres/Request;Ljava/lang/String;)V
    .locals 2
    .param p1, "request"    # Lorg/apache/mina/filter/reqres/Request;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 49
    if-nez p1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "request"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/filter/reqres/RequestTimeoutException;->request:Lorg/apache/mina/filter/reqres/Request;

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/filter/reqres/Request;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "request"    # Lorg/apache/mina/filter/reqres/Request;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 60
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, p3}, Lorg/apache/mina/filter/reqres/RequestTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 62
    if-nez p1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "request"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/filter/reqres/RequestTimeoutException;->request:Lorg/apache/mina/filter/reqres/Request;

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/filter/reqres/Request;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "request"    # Lorg/apache/mina/filter/reqres/Request;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 72
    invoke-virtual {p0, p2}, Lorg/apache/mina/filter/reqres/RequestTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 73
    if-nez p1, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "request"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/filter/reqres/RequestTimeoutException;->request:Lorg/apache/mina/filter/reqres/Request;

    .line 77
    return-void
.end method


# virtual methods
.method public getRequest()Lorg/apache/mina/filter/reqres/Request;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/mina/filter/reqres/RequestTimeoutException;->request:Lorg/apache/mina/filter/reqres/Request;

    return-object v0
.end method

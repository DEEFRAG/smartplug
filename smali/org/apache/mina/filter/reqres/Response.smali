.class public Lorg/apache/mina/filter/reqres/Response;
.super Ljava/lang/Object;
.source "Response.java"


# instance fields
.field private final message:Ljava/lang/Object;

.field private final request:Lorg/apache/mina/filter/reqres/Request;

.field private final type:Lorg/apache/mina/filter/reqres/ResponseType;


# direct methods
.method public constructor <init>(Lorg/apache/mina/filter/reqres/Request;Ljava/lang/Object;Lorg/apache/mina/filter/reqres/ResponseType;)V
    .locals 2
    .param p1, "request"    # Lorg/apache/mina/filter/reqres/Request;
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "type"    # Lorg/apache/mina/filter/reqres/ResponseType;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "request"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    if-nez p2, :cond_1

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "message"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_1
    if-nez p3, :cond_2

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_2
    iput-object p1, p0, Lorg/apache/mina/filter/reqres/Response;->request:Lorg/apache/mina/filter/reqres/Request;

    .line 48
    iput-object p3, p0, Lorg/apache/mina/filter/reqres/Response;->type:Lorg/apache/mina/filter/reqres/ResponseType;

    .line 49
    iput-object p2, p0, Lorg/apache/mina/filter/reqres/Response;->message:Ljava/lang/Object;

    .line 50
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 71
    if-ne p1, p0, :cond_1

    .line 72
    const/4 v1, 0x1

    .line 88
    :cond_0
    :goto_0
    return v1

    .line 75
    :cond_1
    if-eqz p1, :cond_0

    .line 79
    instance-of v2, p1, Lorg/apache/mina/filter/reqres/Response;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 83
    check-cast v0, Lorg/apache/mina/filter/reqres/Response;

    .line 84
    .local v0, "that":Lorg/apache/mina/filter/reqres/Response;
    invoke-virtual {p0}, Lorg/apache/mina/filter/reqres/Response;->getRequest()Lorg/apache/mina/filter/reqres/Request;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/mina/filter/reqres/Response;->getRequest()Lorg/apache/mina/filter/reqres/Request;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/mina/filter/reqres/Request;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    invoke-virtual {p0}, Lorg/apache/mina/filter/reqres/Response;->getType()Lorg/apache/mina/filter/reqres/ResponseType;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/mina/filter/reqres/Response;->getType()Lorg/apache/mina/filter/reqres/ResponseType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/mina/filter/reqres/ResponseType;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/mina/filter/reqres/Response;->message:Ljava/lang/Object;

    return-object v0
.end method

.method public getRequest()Lorg/apache/mina/filter/reqres/Request;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/mina/filter/reqres/Response;->request:Lorg/apache/mina/filter/reqres/Request;

    return-object v0
.end method

.method public getType()Lorg/apache/mina/filter/reqres/ResponseType;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/mina/filter/reqres/Response;->type:Lorg/apache/mina/filter/reqres/ResponseType;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lorg/apache/mina/filter/reqres/Response;->getRequest()Lorg/apache/mina/filter/reqres/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/filter/reqres/Request;->getId()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response: { requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/mina/filter/reqres/Response;->getRequest()Lorg/apache/mina/filter/reqres/Request;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/mina/filter/reqres/Request;->getId()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/mina/filter/reqres/Response;->getType()Lorg/apache/mina/filter/reqres/ResponseType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/mina/filter/reqres/Response;->getMessage()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

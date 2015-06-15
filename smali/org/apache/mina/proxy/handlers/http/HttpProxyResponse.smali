.class public Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;
.super Ljava/lang/Object;
.source "HttpProxyResponse.java"


# instance fields
.field public body:Ljava/lang/String;

.field public final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final httpVersion:Ljava/lang/String;

.field public final statusCode:I

.field public final statusLine:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1, "httpVersion"    # Ljava/lang/String;
    .param p2, "statusLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->httpVersion:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->statusLine:Ljava/lang/String;

    .line 70
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iput v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->statusCode:I

    .line 74
    iput-object p3, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->headers:Ljava/util/Map;

    .line 75
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->body:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public final getHttpVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->httpVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatusCode()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->statusCode:I

    return v0
.end method

.method public final getStatusLine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->statusLine:Ljava/lang/String;

    return-object v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->body:Ljava/lang/String;

    .line 110
    return-void
.end method

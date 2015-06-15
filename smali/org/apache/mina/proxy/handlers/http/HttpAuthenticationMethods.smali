.class public final enum Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;
.super Ljava/lang/Enum;
.source "HttpAuthenticationMethods.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

.field public static final enum BASIC:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

.field public static final enum DIGEST:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

.field public static final enum NO_AUTH:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

.field public static final enum NTLM:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 37
    new-instance v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    const-string v1, "NO_AUTH"

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->NO_AUTH:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    new-instance v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    const-string v1, "BASIC"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->BASIC:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    new-instance v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    const-string v1, "NTLM"

    invoke-direct {v0, v1, v3, v4}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->NTLM:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    new-instance v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    const-string v1, "DIGEST"

    invoke-direct {v0, v1, v4, v6}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->DIGEST:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    .line 35
    new-array v0, v6, [Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    sget-object v1, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->NO_AUTH:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->BASIC:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->NTLM:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->DIGEST:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->$VALUES:[Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->id:I

    .line 43
    return-void
.end method

.method public static getNewHandler(ILorg/apache/mina/proxy/session/ProxyIoSession;)Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;
    .locals 1
    .param p0, "method"    # I
    .param p1, "proxyIoSession"    # Lorg/apache/mina/proxy/session/ProxyIoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation

    .prologue
    .line 75
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->BASIC:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    iget v0, v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->id:I

    if-ne p0, v0, :cond_0

    .line 76
    new-instance v0, Lorg/apache/mina/proxy/handlers/http/basic/HttpBasicAuthLogicHandler;

    invoke-direct {v0, p1}, Lorg/apache/mina/proxy/handlers/http/basic/HttpBasicAuthLogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    .line 87
    :goto_0
    return-object v0

    .line 78
    :cond_0
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->DIGEST:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    iget v0, v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->id:I

    if-ne p0, v0, :cond_1

    .line 79
    new-instance v0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;

    invoke-direct {v0, p1}, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    goto :goto_0

    .line 81
    :cond_1
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->NTLM:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    iget v0, v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->id:I

    if-ne p0, v0, :cond_2

    .line 82
    new-instance v0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;

    invoke-direct {v0, p1}, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    goto :goto_0

    .line 84
    :cond_2
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->NO_AUTH:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    iget v0, v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->id:I

    if-ne p0, v0, :cond_3

    .line 85
    new-instance v0, Lorg/apache/mina/proxy/handlers/http/basic/HttpNoAuthLogicHandler;

    invoke-direct {v0, p1}, Lorg/apache/mina/proxy/handlers/http/basic/HttpNoAuthLogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    goto :goto_0

    .line 87
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    return-object v0
.end method

.method public static values()[Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->$VALUES:[Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    invoke-virtual {v0}, [Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->id:I

    return v0
.end method

.method public getNewHandler(Lorg/apache/mina/proxy/session/ProxyIoSession;)Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;
    .locals 1
    .param p1, "proxyIoSession"    # Lorg/apache/mina/proxy/session/ProxyIoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation

    .prologue
    .line 61
    iget v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->id:I

    invoke-static {v0, p1}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->getNewHandler(ILorg/apache/mina/proxy/session/ProxyIoSession;)Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    move-result-object v0

    return-object v0
.end method

.class public Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;
.super Lorg/jivesoftware/smack/sasl/SASLMechanism;
.source "SASLFacebookConnect.java"


# instance fields
.field private apiKey:Ljava/lang/String;

.field private sessionKey:Ljava/lang/String;

.field private sessionSecret:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const-string v0, "X-FACEBOOK-PLATFORM"

    const-class v1, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;

    invoke-static {v0, v1}, Lorg/jivesoftware/smack/SASLAuthentication;->registerSASLMechanism(Ljava/lang/String;Ljava/lang/Class;)V

    .line 34
    const-string v0, "X-FACEBOOK-PLATFORM"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/jivesoftware/smack/SASLAuthentication;->supportSASLMechanism(Ljava/lang/String;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/SASLAuthentication;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/sasl/SASLMechanism;-><init>(Lorg/jivesoftware/smack/SASLAuthentication;)V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->sessionKey:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->sessionSecret:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->apiKey:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private convertToHex([B)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 177
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    .line 178
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 179
    aget-byte v2, p1, v0

    ushr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    move v3, v2

    move v2, v1

    .line 182
    :goto_1
    if-ltz v3, :cond_0

    const/16 v4, 0x9

    if-gt v3, v4, :cond_0

    .line 183
    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 186
    :goto_2
    aget-byte v3, p1, v0

    and-int/lit8 v4, v3, 0xf

    .line 187
    add-int/lit8 v3, v2, 0x1

    const/4 v6, 0x1

    if-lt v2, v6, :cond_2

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_0
    add-int/lit8 v3, v3, -0xa

    add-int/lit8 v3, v3, 0x61

    int-to-char v3, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 189
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    move v2, v3

    move v3, v4

    goto :goto_1
.end method

.method private getQueryMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 166
    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 167
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 168
    array-length v4, v2

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v2, v0

    .line 169
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v1

    .line 170
    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aget-object v5, v5, v7

    .line 171
    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_0
    return-object v3
.end method


# virtual methods
.method public MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 194
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 195
    const/16 v1, 0x20

    new-array v1, v1, [B

    .line 196
    const-string v1, "iso-8859-1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 197
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 198
    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->convertToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected authenticate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    const-string v1, "<auth mechanism=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v1, "\" xmlns=\"urn:ietf:params:xml:ns:xmpp-sasl\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, "</auth>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v1

    new-instance v2, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect$1;

    invoke-direct {v2, p0, v0}, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect$1;-><init>(Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/SASLAuthentication;->send(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 65
    return-void
.end method

.method public authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 70
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid parameters!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    .line 76
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Api key or session key is not present!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_3
    aget-object v1, v0, v3

    iput-object v1, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->apiKey:Ljava/lang/String;

    .line 79
    aget-object v0, v0, v4

    iput-object v0, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->sessionKey:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->sessionSecret:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->sessionKey:Ljava/lang/String;

    iput-object v0, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->authenticationId:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->password:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->hostname:Ljava/lang/String;

    .line 86
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "DIGEST-MD5"

    aput-object v1, v0, v3

    .line 87
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 88
    const/4 v1, 0x0

    const-string v2, "xmpp"

    move-object v3, p2

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lde/measite/smack/Sasl;->createSaslClient([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)Lorg/apache/harmony/javax/security/sasl/SaslClient;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->sc:Lorg/apache/harmony/javax/security/sasl/SaslClient;

    .line 89
    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->authenticate()V

    .line 90
    return-void
.end method

.method public authenticate(Ljava/lang/String;Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DIGEST-MD5"

    aput-object v2, v0, v1

    .line 95
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 96
    const/4 v1, 0x0

    const-string v2, "xmpp"

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lde/measite/smack/Sasl;->createSaslClient([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)Lorg/apache/harmony/javax/security/sasl/SaslClient;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->sc:Lorg/apache/harmony/javax/security/sasl/SaslClient;

    .line 97
    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->authenticate()V

    .line 98
    return-void
.end method

.method public challengeReceived(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    const/4 v0, 0x0

    .line 109
    if-eqz p1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lorg/jivesoftware/smack/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 111
    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->getQueryMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 113
    const-string v3, "1.0"

    .line 114
    const-string v0, "nonce"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    const-string v4, "method"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 117
    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v4}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "api_key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->apiKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "call_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "method="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "nonce="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "session_key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->sessionKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "v="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->sessionSecret:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 128
    :try_start_0
    invoke-virtual {p0, v5}, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->MD5(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 133
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "api_key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->apiKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "call_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "method="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "nonce="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "session_key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->sessionKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 144
    :cond_0
    const-string v1, ""

    .line 146
    if-eqz v0, :cond_1

    .line 147
    const/16 v1, 0x8

    invoke-static {v0, v1}, Lorg/jivesoftware/smack/util/Base64;->encodeBytes([BI)Ljava/lang/String;

    move-result-object v0

    .line 150
    :goto_0
    const-string v1, "<response xmlns=\"urn:ietf:params:xml:ns:xmpp-sasl\">"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v0, "</response>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v0

    new-instance v1, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect$2;

    invoke-direct {v1, p0, v2}, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect$2;-><init>(Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/SASLAuthentication;->send(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 163
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string v0, "X-FACEBOOK-PLATFORM"

    return-object v0
.end method

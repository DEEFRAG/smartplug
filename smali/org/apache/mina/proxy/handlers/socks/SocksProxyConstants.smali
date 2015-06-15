.class public Lorg/apache/mina/proxy/handlers/socks/SocksProxyConstants;
.super Ljava/lang/Object;
.source "SocksProxyConstants.java"


# static fields
.field public static final BASIC_AUTH:B = 0x2t

.field public static final BASIC_AUTH_SUBNEGOTIATION_VERSION:B = 0x1t

.field public static final DOMAIN_NAME_ADDRESS_TYPE:B = 0x3t

.field public static final ESTABLISH_TCPIP_BIND:B = 0x2t

.field public static final ESTABLISH_TCPIP_STREAM:B = 0x1t

.field public static final ESTABLISH_UDP_ASSOCIATE:B = 0x3t

.field public static final FAKE_IP:[B

.field public static final GSSAPI_AUTH:B = 0x1t

.field public static final GSSAPI_AUTH_SUBNEGOTIATION_VERSION:B = 0x1t

.field public static final GSSAPI_MSG_TYPE:B = 0x1t

.field public static final IPV4_ADDRESS_TYPE:B = 0x1t

.field public static final IPV6_ADDRESS_TYPE:B = 0x4t

.field public static final KERBEROS_V5_OID:Ljava/lang/String; = "1.2.840.113554.1.2.2"

.field public static final MS_KERBEROS_V5_OID:Ljava/lang/String; = "1.2.840.48018.1.2.2"

.field public static final NO_ACCEPTABLE_AUTH_METHOD:B = -0x1t

.field public static final NO_AUTH:B = 0x0t

.field public static final NTLMSSP_OID:Ljava/lang/String; = "1.3.6.1.4.1.311.2.2.10"

.field public static final SOCKS5_AUTH_STEP:I = 0x1

.field public static final SOCKS5_GREETING_STEP:I = 0x0

.field public static final SOCKS5_REQUEST_STEP:I = 0x2

.field public static final SOCKS_4_RESPONSE_SIZE:I = 0x8

.field public static final SOCKS_VERSION_4:B = 0x4t

.field public static final SOCKS_VERSION_5:B = 0x5t

.field public static final SUPPORTED_AUTH_METHODS:[B

.field public static final TERMINATOR:B = 0x0t

.field public static final V4_REPLY_REQUEST_FAILED_ID_NOT_CONFIRMED:B = 0x5dt

.field public static final V4_REPLY_REQUEST_FAILED_NO_IDENTD:B = 0x5ct

.field public static final V4_REPLY_REQUEST_GRANTED:B = 0x5at

.field public static final V4_REPLY_REQUEST_REJECTED_OR_FAILED:B = 0x5bt

.field public static final V5_REPLY_ADDRESS_TYPE_NOT_SUPPORTED:B = 0x8t

.field public static final V5_REPLY_COMMAND_NOT_SUPPORTED:B = 0x7t

.field public static final V5_REPLY_CONNECTION_REFUSED:B = 0x5t

.field public static final V5_REPLY_GENERAL_FAILURE:B = 0x1t

.field public static final V5_REPLY_HOST_UNREACHABLE:B = 0x4t

.field public static final V5_REPLY_NETWORK_UNREACHABLE:B = 0x3t

.field public static final V5_REPLY_NOT_ALLOWED:B = 0x2t

.field public static final V5_REPLY_SUCCEEDED:B = 0x0t

.field public static final V5_REPLY_TTL_EXPIRED:B = 0x6t


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/mina/proxy/handlers/socks/SocksProxyConstants;->FAKE_IP:[B

    .line 119
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/mina/proxy/handlers/socks/SocksProxyConstants;->SUPPORTED_AUTH_METHODS:[B

    return-void

    .line 47
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0xat
    .end array-data

    .line 119
    :array_1
    .array-data 1
        0x0t
        0x1t
        0x2t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getReplyCodeAsString(B)Ljava/lang/String;
    .locals 1
    .param p0, "code"    # B

    .prologue
    .line 147
    sparse-switch p0, :sswitch_data_0

    .line 179
    const-string v0, "Unknown reply code"

    :goto_0
    return-object v0

    .line 150
    :sswitch_0
    const-string v0, "Request granted"

    goto :goto_0

    .line 152
    :sswitch_1
    const-string v0, "Request rejected or failed"

    goto :goto_0

    .line 154
    :sswitch_2
    const-string v0, "Request failed because client is not running identd (or not reachable from the server)"

    goto :goto_0

    .line 156
    :sswitch_3
    const-string v0, "Request failed because client\'s identd could not confirm the user ID string in the request"

    goto :goto_0

    .line 160
    :sswitch_4
    const-string v0, "Request succeeded"

    goto :goto_0

    .line 162
    :sswitch_5
    const-string v0, "Request failed: general SOCKS server failure"

    goto :goto_0

    .line 164
    :sswitch_6
    const-string v0, "Request failed: connection not allowed by ruleset"

    goto :goto_0

    .line 166
    :sswitch_7
    const-string v0, "Request failed: network unreachable"

    goto :goto_0

    .line 168
    :sswitch_8
    const-string v0, "Request failed: host unreachable"

    goto :goto_0

    .line 170
    :sswitch_9
    const-string v0, "Request failed: connection refused"

    goto :goto_0

    .line 172
    :sswitch_a
    const-string v0, "Request failed: TTL expired"

    goto :goto_0

    .line 174
    :sswitch_b
    const-string v0, "Request failed: command not supported"

    goto :goto_0

    .line 176
    :sswitch_c
    const-string v0, "Request failed: address type not supported"

    goto :goto_0

    .line 147
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x1 -> :sswitch_5
        0x2 -> :sswitch_6
        0x3 -> :sswitch_7
        0x4 -> :sswitch_8
        0x5 -> :sswitch_9
        0x6 -> :sswitch_a
        0x7 -> :sswitch_b
        0x8 -> :sswitch_c
        0x5a -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_2
        0x5d -> :sswitch_3
    .end sparse-switch
.end method

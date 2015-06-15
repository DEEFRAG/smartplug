.class public interface abstract Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMConstants;
.super Ljava/lang/Object;
.source "NTLMConstants.java"


# static fields
.field public static final DEFAULT_FLAGS:I = 0x3003

.field public static final DEFAULT_OS_VERSION:[B

.field public static final FLAG_NEGOTIATE_128_BIT_ENCRYPTION:I = 0x20000000

.field public static final FLAG_NEGOTIATE_56_BIT_ENCRYPTION:I = -0x80000000

.field public static final FLAG_NEGOTIATE_ALWAYS_SIGN:I = 0x8000

.field public static final FLAG_NEGOTIATE_ANONYMOUS:I = 0x800

.field public static final FLAG_NEGOTIATE_DATAGRAM_STYLE:I = 0x40

.field public static final FLAG_NEGOTIATE_DOMAIN_SUPPLIED:I = 0x1000

.field public static final FLAG_NEGOTIATE_KEY_EXCHANGE:I = 0x40000000

.field public static final FLAG_NEGOTIATE_LAN_MANAGER_KEY:I = 0x80

.field public static final FLAG_NEGOTIATE_LOCAL_CALL:I = 0x4000

.field public static final FLAG_NEGOTIATE_NTLM:I = 0x200

.field public static final FLAG_NEGOTIATE_NTLM2:I = 0x80000

.field public static final FLAG_NEGOTIATE_OEM:I = 0x2

.field public static final FLAG_NEGOTIATE_SEAL:I = 0x20

.field public static final FLAG_NEGOTIATE_SIGN:I = 0x10

.field public static final FLAG_NEGOTIATE_TARGET_INFO:I = 0x800000

.field public static final FLAG_NEGOTIATE_UNICODE:I = 0x1

.field public static final FLAG_NEGOTIATE_WORKSTATION_SUPPLIED:I = 0x2000

.field public static final FLAG_REQUEST_SERVER_AUTH_REALM:I = 0x4

.field public static final FLAG_TARGET_TYPE_DOMAIN:I = 0x10000

.field public static final FLAG_TARGET_TYPE_SERVER:I = 0x20000

.field public static final FLAG_TARGET_TYPE_SHARE:I = 0x40000

.field public static final FLAG_UNIDENTIFIED_1:I = 0x8

.field public static final FLAG_UNIDENTIFIED_10:I = 0x8000000

.field public static final FLAG_UNIDENTIFIED_11:I = 0x10000000

.field public static final FLAG_UNIDENTIFIED_2:I = 0x100

.field public static final FLAG_UNIDENTIFIED_3:I = 0x400

.field public static final FLAG_UNIDENTIFIED_4:I = 0x100000

.field public static final FLAG_UNIDENTIFIED_5:I = 0x200000

.field public static final FLAG_UNIDENTIFIED_6:I = 0x400000

.field public static final FLAG_UNIDENTIFIED_7:I = 0x1000000

.field public static final FLAG_UNIDENTIFIED_8:I = 0x2000000

.field public static final FLAG_UNIDENTIFIED_9:I = 0x4000000

.field public static final MESSAGE_TYPE_1:I = 0x1

.field public static final MESSAGE_TYPE_2:I = 0x2

.field public static final MESSAGE_TYPE_3:I = 0x3

.field public static final NTLM_SIGNATURE:[B

.field public static final TARGET_INFORMATION_SUBBLOCK_DNS_DOMAIN_NAME_TYPE:S = 0x400s

.field public static final TARGET_INFORMATION_SUBBLOCK_DOMAIN_TYPE:S = 0x200s

.field public static final TARGET_INFORMATION_SUBBLOCK_FQDNS_HOSTNAME_TYPE:S = 0x300s

.field public static final TARGET_INFORMATION_SUBBLOCK_PARENT_DNS_DOMAIN_NAME_TYPE:S = 0x500s

.field public static final TARGET_INFORMATION_SUBBLOCK_SERVER_TYPE:S = 0x100s

.field public static final TARGET_INFORMATION_SUBBLOCK_TERMINATOR_TYPE:S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 30
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMConstants;->NTLM_SIGNATURE:[B

    .line 34
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMConstants;->DEFAULT_OS_VERSION:[B

    return-void

    .line 30
    nop

    :array_0
    .array-data 1
        0x4et
        0x54t
        0x4ct
        0x4dt
        0x53t
        0x53t
        0x50t
        0x0t
    .end array-data

    .line 34
    :array_1
    .array-data 1
        0x5t
        0x1t
        0x28t
        0xat
        0x0t
        0x0t
        0x0t
        0xft
    .end array-data
.end method

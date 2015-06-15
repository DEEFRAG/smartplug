.class public Lcom/kankunit/smartplugcronus/util/MapType;
.super Ljava/lang/Object;
.source "MapType.java"


# static fields
.field public static final APKURL:Ljava/lang/String; = "http://101.64.176.140:8080/Firefighting/fire.apk"

.field public static final BACK_BRMODE:I = 0xd3

.field public static final BACK_GETINFO_OK:I = 0x71

.field public static final BACK_LIGHTTIMERFINISH:I = 0x19b

.field public static final BACK_OK:I = 0x6f

.field public static final BACK_TIMEOUT:I = 0x70

.field public static final BACK_TIMERFINISH:I = 0x137

.field public static final BROKEN:Ljava/lang/String; = "1"

.field public static final CURRENTVERSION:Ljava/lang/Float;

.field public static final ICONSIZE:Ljava/lang/Integer;

.field public static final ICONWIDTH:Ljava/lang/Integer;

.field public static final MSG_TYPE_XMPP_CONNECT:I = 0x1

.field public static final MSG_TYPE_XMPP_CREATECHAT:I = 0x6

.field public static final MSG_TYPE_XMPP_DELETEACCOUNT:I = 0x5

.field public static final MSG_TYPE_XMPP_LOGIN:I = 0x3

.field public static final MSG_TYPE_XMPP_PRESENCE:I = 0x4

.field public static final MSG_TYPE_XMPP_REGISTER:I = 0x2

.field public static final MSG_TYPE_XMPP_SERVER_REGISTER_ERROR:I = 0x3

.field public static final MSG_TYPE_XMPP_SERVER_REGISTER_EXIST:I = 0x2

.field public static final MSG_TYPE_XMPP_SERVER_REGISTER_NORESPONSE:I = 0x0

.field public static final MSG_TYPE_XMPP_SERVER_REGISTER_SUCCESS:I = 0x1

.field public static final NOAUTH:I = 0x1ff

.field public static final NORMAL:Ljava/lang/String; = "0"

.field public static final UPLOADURL:Ljava/lang/String; = "http://101.64.176.140:8080/Firefighting/uploadServlet"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/16 v0, 0x60

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/kankunit/smartplugcronus/util/MapType;->ICONSIZE:Ljava/lang/Integer;

    .line 7
    const/16 v0, 0x6a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/kankunit/smartplugcronus/util/MapType;->ICONWIDTH:Ljava/lang/Integer;

    .line 14
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/kankunit/smartplugcronus/util/MapType;->CURRENTVERSION:Ljava/lang/Float;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

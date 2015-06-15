.class public Lcom/tencent/open/ServerSetting;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final ASK_URL:I = 0x8

.field public static final AUTHORIZE_CGI:I = 0x2

.field public static final BRAG_URL:I = 0x7

.field private static final DEFAULT_CGI_AUTHORIZE:Ljava/lang/String; = "https://openmobile.qq.com/oauth2.0/m_authorize?"

.field private static final DEFAULT_LOCAL_STORAGE_URI:Ljava/lang/String; = "http://qzs.qq.com"

.field private static final DEFAULT_REDIRECT_URI:Ljava/lang/String; = "auth://tauth.qq.com/"

.field private static final DEFAULT_URL_ASK:Ljava/lang/String; = "http://qzs.qq.com/open/mobile/request/sdk_request.html?"

.field private static final DEFAULT_URL_BRAG:Ljava/lang/String; = "http://qzs.qq.com/open/mobile/brag/sdk_brag.html?"

.field private static final DEFAULT_URL_GIFT:Ljava/lang/String; = "http://qzs.qq.com/open/mobile/request/sdk_request.html?"

.field private static final DEFAULT_URL_GRAPH_BASE:Ljava/lang/String; = "https://openmobile.qq.com/"

.field private static final DEFAULT_URL_INVITE:Ljava/lang/String; = "http://qzs.qq.com/open/mobile/invite/sdk_invite.html?"

.field private static final DEFAULT_URL_REPORT:Ljava/lang/String; = "http://wspeed.qq.com/w.cgi"

.field private static final DEFAULT_URL_SEND_STORY:Ljava/lang/String; = "http://qzs.qq.com/open/mobile/sendstory/sdk_sendstory_v1.3.html?"

.field public static final ENVIRONMENT_EXPERIENCE:I = 0x1

.field public static final ENVIRONMENT_NORMOL:I = 0x0

.field public static final GIFT_URL:I = 0x9

.field public static final GRAPH_BASE_URL:I = 0x6

.field public static final INVITE_URL:I = 0x4

.field private static final KEY_ASK_URL:Ljava/lang/String; = "AskUrl"

.field private static final KEY_AUTHORIZE_CGI:Ljava/lang/String; = "AuthorizeCgi"

.field private static final KEY_BRAG_URL:Ljava/lang/String; = "BragUrl"

.field private static final KEY_GIFT_URL:Ljava/lang/String; = "GiftUrl"

.field private static final KEY_GRAPH_BASE_URL:Ljava/lang/String; = "GraphBaseUrl"

.field private static final KEY_INVITE_URL:Ljava/lang/String; = "InviteUrl"

.field private static final KEY_LOCAL_STORAGE_URl:Ljava/lang/String; = "LocalStorageUrl"

.field private static final KEY_REDIRECT_URL:Ljava/lang/String; = "RedirectUrl"

.field private static final KEY_REPORT_URL:Ljava/lang/String; = "ReportUrl"

.field private static final KEY_STORY_URL:Ljava/lang/String; = "StoryUrl"

.field public static final LOCAL_STORAGE_URL:I = 0xa

.field public static final REDIRECT_URL:I = 0x1

.field public static final REPORT_URL:I = 0x5

.field private static final SERVER_PREFS:Ljava/lang/String; = "ServerPrefs"

.field private static final SERVER_TYPE:Ljava/lang/String; = "ServerType"

.field public static final STORY_URL:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static sServerSetting:Lcom/tencent/open/ServerSetting;


# instance fields
.field private sAskUrl:Ljava/lang/String;

.field private sAuthorizeCgi:Ljava/lang/String;

.field private sBragUrl:Ljava/lang/String;

.field private sGiftUrl:Ljava/lang/String;

.field private sGraphBaseUrl:Ljava/lang/String;

.field private sInviteUrl:Ljava/lang/String;

.field private sLocalStorageUrl:Ljava/lang/String;

.field private sRedirectUrl:Ljava/lang/String;

.field private sReportUrl:Ljava/lang/String;

.field private sSendStoryUrl:Ljava/lang/String;

.field private sWeakSharedPrefs:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/tencent/open/ServerSetting;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/open/ServerSetting;->TAG:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/open/ServerSetting;->sServerSetting:Lcom/tencent/open/ServerSetting;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/tencent/open/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    .line 62
    iput-object v0, p0, Lcom/tencent/open/ServerSetting;->sRedirectUrl:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/tencent/open/ServerSetting;->sAuthorizeCgi:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/tencent/open/ServerSetting;->sSendStoryUrl:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/tencent/open/ServerSetting;->sInviteUrl:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/tencent/open/ServerSetting;->sReportUrl:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/tencent/open/ServerSetting;->sGraphBaseUrl:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/tencent/open/ServerSetting;->sBragUrl:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/tencent/open/ServerSetting;->sAskUrl:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/tencent/open/ServerSetting;->sGiftUrl:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/tencent/open/ServerSetting;->sLocalStorageUrl:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/tencent/open/ServerSetting;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/tencent/open/ServerSetting;->sServerSetting:Lcom/tencent/open/ServerSetting;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/tencent/open/ServerSetting;

    invoke-direct {v0}, Lcom/tencent/open/ServerSetting;-><init>()V

    sput-object v0, Lcom/tencent/open/ServerSetting;->sServerSetting:Lcom/tencent/open/ServerSetting;

    .line 77
    :cond_0
    sget-object v0, Lcom/tencent/open/ServerSetting;->sServerSetting:Lcom/tencent/open/ServerSetting;

    return-object v0
.end method


# virtual methods
.method public changeServer()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/tencent/open/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    .line 82
    iput-object v0, p0, Lcom/tencent/open/ServerSetting;->sRedirectUrl:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/tencent/open/ServerSetting;->sAuthorizeCgi:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/tencent/open/ServerSetting;->sSendStoryUrl:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/tencent/open/ServerSetting;->sInviteUrl:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/tencent/open/ServerSetting;->sReportUrl:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lcom/tencent/open/ServerSetting;->sGraphBaseUrl:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/tencent/open/ServerSetting;->sBragUrl:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/tencent/open/ServerSetting;->sAskUrl:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/tencent/open/ServerSetting;->sGiftUrl:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lcom/tencent/open/ServerSetting;->sLocalStorageUrl:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public getSettingUrl(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 103
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/open/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/open/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 104
    :cond_0
    const-string v0, "ServerPrefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 105
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/tencent/open/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    .line 107
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 219
    const-string v0, ""

    :goto_0
    return-object v0

    .line 109
    :pswitch_0
    if-nez p1, :cond_2

    .line 110
    const-string v0, "auth://tauth.qq.com/"

    goto :goto_0

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/tencent/open/ServerSetting;->sRedirectUrl:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 113
    iget-object v0, p0, Lcom/tencent/open/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "RedirectUrl"

    const-string v2, "auth://tauth.qq.com/"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/open/ServerSetting;->sRedirectUrl:Ljava/lang/String;

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/tencent/open/ServerSetting;->sRedirectUrl:Ljava/lang/String;

    goto :goto_0

    .line 120
    :pswitch_1
    if-nez p1, :cond_4

    .line 121
    const-string v0, "https://openmobile.qq.com/oauth2.0/m_authorize?"

    goto :goto_0

    .line 123
    :cond_4
    iget-object v0, p0, Lcom/tencent/open/ServerSetting;->sAuthorizeCgi:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 124
    iget-object v0, p0, Lcom/tencent/open/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "AuthorizeCgi"

    const-string v2, "https://openmobile.qq.com/oauth2.0/m_authorize?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/open/ServerSetting;->sAuthorizeCgi:Ljava/lang/String;

    .line 127
    :cond_5
    iget-object v0, p0, Lcom/tencent/open/ServerSetting;->sAuthorizeCgi:Ljava/lang/String;

    goto :goto_0

    .line 131
    :pswitch_2
    if-nez p1, :cond_6

    .line 132
    const-string v0, "http://qzs.qq.com/open/mobile/sendstory/sdk_sendstory_v1.3.html?"

    goto :goto_0

    .line 134
    :cond_6
    iget-object v0, p0, Lcom/tencent/open/ServerSetting;->sSendStoryUrl:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 135
    iget-object v0, p0, Lcom/tencent/open/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "StoryUrl"

    const-string v2, "http://qzs.qq.com/open/mobile/sendstory/sdk_sendstory_v1.3.html?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/open/ServerSetting;->sSendStoryUrl:Ljava/lang/String;

    .line 138
    :cond_7
    iget-object v0, p0, Lcom/tencent/open/ServerSetting;->sSendStoryUrl:Ljava/lang/String;

    goto :goto_0

    .line 142
    :pswitch_3
    if-nez p1, :cond_8

    .line 143
    const-string v0, "http://qzs.qq.com/open/mobile/invite/sdk_invite.html?"

    goto :goto_0

    .line 145
    :cond_8
    iget-object v0, p0, Lcom/tencent/open/ServerSetting;->sInviteUrl:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 146
    iget-object v0, p0, Lcom/tencent/open/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "InviteUrl"

    const-string v2, "http://qzs.qq.com/open/mobile/invite/sdk_invite.html?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/open/ServerSetting;->sInviteUrl:Ljava/lang/String;

    .line 149
    :cond_9
    iget-object v0, p0, Lcom/tencent/open/ServerSetting;->sInviteUrl:Ljava/lang/String;

    goto :goto_0

    .line 153
    :pswitch_4
    if-nez p1, :cond_a

    .line 154
    const-string v0, "http://wspeed.qq.com/w.cgi"

    goto :goto_0

    .line 156
    :cond_a
    iget-object v0, p0, Lcom/tencent/open/ServerSetting;->sReportUrl:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 157
    iget-object v0, p0, Lcom/tencent/open/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "ReportUrl"

    const-string v2, "http://wspeed.qq.com/w.cgi"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/open/ServerSetting;->sReportUrl:Ljava/lang/String;

    .line 160
    :cond_b
    iget-object v0, p0, Lcom/tencent/open/ServerSetting;->sReportUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 164
    :pswitch_5
    if-nez p1, :cond_c

    .line 165
    const-string v0, "https://openmobile.qq.com/"

    goto/16 :goto_0

    .line 167
    :cond_c
    iget-object v0, p0, Lcom/tencent/open/ServerSetting;->sGraphBaseUrl:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 168
    iget-object v0, p0, Lcom/tencent/open/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "GraphBaseUrl"

    const-string v2, "https://openmobile.qq.com/"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/open/ServerSetting;->sGraphBaseUrl:Ljava/lang/String;

    .line 171
    :cond_d
    iget-object v0, p0, Lcom/tencent/open/ServerSetting;->sGraphBaseUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 175
    :pswitch_6
    if-nez p1, :cond_e

    .line 176
    const-string v0, "http://qzs.qq.com/open/mobile/brag/sdk_brag.html?"

    goto/16 :goto_0

    .line 178
    :cond_e
    iget-object v0, p0, Lcom/tencent/open/ServerSetting;->sBragUrl:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 179
    iget-object v0, p0, Lcom/tencent/open/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "BragUrl"

    const-string v2, "http://qzs.qq.com/open/mobile/brag/sdk_brag.html?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/open/ServerSetting;->sBragUrl:Ljava/lang/String;

    .line 182
    :cond_f
    iget-object v0, p0, Lcom/tencent/open/ServerSetting;->sBragUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 186
    :pswitch_7
    if-nez p1, :cond_10

    .line 187
    const-string v0, "http://qzs.qq.com/open/mobile/request/sdk_request.html?"

    goto/16 :goto_0

    .line 189
    :cond_10
    iget-object v0, p0, Lcom/tencent/open/ServerSetting;->sAskUrl:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 190
    iget-object v0, p0, Lcom/tencent/open/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "AskUrl"

    const-string v2, "http://qzs.qq.com/open/mobile/request/sdk_request.html?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/open/ServerSetting;->sAskUrl:Ljava/lang/String;

    .line 193
    :cond_11
    iget-object v0, p0, Lcom/tencent/open/ServerSetting;->sAskUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 197
    :pswitch_8
    if-nez p1, :cond_12

    .line 198
    const-string v0, "http://qzs.qq.com/open/mobile/request/sdk_request.html?"

    goto/16 :goto_0

    .line 200
    :cond_12
    iget-object v0, p0, Lcom/tencent/open/ServerSetting;->sGiftUrl:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 201
    iget-object v0, p0, Lcom/tencent/open/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "GiftUrl"

    const-string v2, "http://qzs.qq.com/open/mobile/request/sdk_request.html?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/open/ServerSetting;->sGiftUrl:Ljava/lang/String;

    .line 204
    :cond_13
    iget-object v0, p0, Lcom/tencent/open/ServerSetting;->sGiftUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 208
    :pswitch_9
    if-nez p1, :cond_14

    .line 209
    const-string v0, "http://qzs.qq.com"

    goto/16 :goto_0

    .line 211
    :cond_14
    iget-object v0, p0, Lcom/tencent/open/ServerSetting;->sLocalStorageUrl:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 212
    iget-object v0, p0, Lcom/tencent/open/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "LocalStorageUrl"

    const-string v2, "http://qzs.qq.com"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/open/ServerSetting;->sLocalStorageUrl:Ljava/lang/String;

    .line 215
    :cond_15
    iget-object v0, p0, Lcom/tencent/open/ServerSetting;->sLocalStorageUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public setEnvironment(Landroid/content/Context;I)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 231
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/open/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/open/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 232
    :cond_0
    const-string v0, "ServerPrefs"

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 233
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/tencent/open/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    .line 235
    :cond_1
    if-eqz p2, :cond_2

    if-eq p2, v2, :cond_2

    .line 236
    sget-object v0, Lcom/tencent/open/ServerSetting;->TAG:Ljava/lang/String;

    const-string v1, "\u5207\u6362\u73af\u5883\u53c2\u6570\u9519\u8bef\uff0c\u6b63\u5f0f\u73af\u5883\u4e3a0\uff0c\u4f53\u9a8c\u73af\u5883\u4e3a1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :goto_0
    return-void

    .line 239
    :cond_2
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 241
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/open/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 242
    const-string v1, "ServerType"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 243
    const-string v1, "RedirectUrl"

    const-string v2, "auth://tauth.qq.com/"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 244
    const-string v1, "AuthorizeCgi"

    const-string v2, "https://openmobile.qq.com/oauth2.0/m_authorize?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 246
    const-string v1, "StoryUrl"

    const-string v2, "http://qzs.qq.com/open/mobile/sendstory/sdk_sendstory_v1.3.html?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 248
    const-string v1, "InviteUrl"

    const-string v2, "http://qzs.qq.com/open/mobile/invite/sdk_invite.html?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 250
    const-string v1, "ReportUrl"

    const-string v2, "http://wspeed.qq.com/w.cgi"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 251
    const-string v1, "GraphBaseUrl"

    const-string v2, "https://openmobile.qq.com/"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 252
    const-string v1, "BragUrl"

    const-string v2, "http://qzs.qq.com/open/mobile/brag/sdk_brag.html?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 254
    const-string v1, "AskUrl"

    const-string v2, "http://qzs.qq.com/open/mobile/request/sdk_request.html?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 256
    const-string v1, "GiftUrl"

    const-string v2, "http://qzs.qq.com/open/mobile/request/sdk_request.html?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 258
    const-string v1, "LocalStorageUrl"

    const-string v2, "http://qzs.qq.com"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 260
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 261
    invoke-virtual {p0}, Lcom/tencent/open/ServerSetting;->changeServer()V

    .line 262
    const-string v0, "\u5df2\u5207\u6362\u5230\u6b63\u5f0f\u73af\u5883"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 267
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/open/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 268
    const-string v1, "ServerType"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 269
    const-string v1, "RedirectUrl"

    const-string v2, "auth://tauth.qq.com/"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 270
    const-string v1, "AuthorizeCgi"

    const-string v2, "https://test.openmobile.qq.com/oauth2.0/m_authorize?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 272
    const-string v1, "StoryUrl"

    const-string v2, "http://testmobile.qq.com/open/mobile/sendstory/sdk_sendstory_v1.3.html?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 275
    const-string v1, "InviteUrl"

    const-string v2, "http://testmobile.qq.com/open/mobile/invite/sdk_invite.html?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 277
    const-string v1, "ReportUrl"

    const-string v2, "http://wspeed.qq.com/w.cgi"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 278
    const-string v1, "GraphBaseUrl"

    const-string v2, "https://test.openmobile.qq.com/"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 279
    const-string v1, "BragUrl"

    const-string v2, "http://testmobile.qq.com/open/mobile/brag/sdk_brag.html?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 281
    const-string v1, "AskUrl"

    const-string v2, "http://testmobile.qq.com/open/mobile/request/sdk_request.html?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 284
    const-string v1, "GiftUrl"

    const-string v2, "http://testmobile.qq.com/open/mobile/request/sdk_request.html?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 287
    const-string v1, "LocalStorageUrl"

    const-string v2, "http://test.openmobile.qq.com"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 289
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 290
    invoke-virtual {p0}, Lcom/tencent/open/ServerSetting;->changeServer()V

    .line 291
    const-string v0, "\u5df2\u5207\u6362\u5230\u4f53\u9a8c\u73af\u5883"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

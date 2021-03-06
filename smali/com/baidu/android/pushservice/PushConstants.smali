.class public Lcom/baidu/android/pushservice/PushConstants;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_FB_MESSAGE:Ljava/lang/String; = "com.baidu.android.pushservice.action.FB_MESSAGE"

.field public static final ACTION_LAPP_MESSAGE:Ljava/lang/String; = "com.baidu.android.pushservice.action.LAPP_MESSAGE"

.field public static final ACTION_LAPP_RECEIVE:Ljava/lang/String; = "com.baidu.android.pushservice.action.lapp.RECEIVE"

.field public static final ACTION_MESSAGE:Ljava/lang/String; = "com.baidu.android.pushservice.action.MESSAGE"

.field public static final ACTION_METHOD:Ljava/lang/String; = "com.baidu.android.pushservice.action.METHOD"

.field public static final ACTION_RECEIVE:Ljava/lang/String; = "com.baidu.android.pushservice.action.RECEIVE"

.field public static final ACTION_RECEIVER_NOTIFICATION_CLICK:Ljava/lang/String; = "com.baidu.android.pushservice.action.notification.CLICK"

.field public static final ACTION_SDK_MESSAGE:Ljava/lang/String; = "com.baidu.android.pushservice.action.SDK_MESSAGE"

.field public static final ACTION_SDK_RECEIVE:Ljava/lang/String; = "com.baidu.android.pushservice.action.sdk.RECEIVE"

.field public static final ACTION_WEB_RECEIVE:Ljava/lang/String; = "com.baidu.android.pushservice.action.web.RECEIVE"

.field public static final BIND_STATUS_OFFLINE:I = 0x1

.field public static final BIND_STATUS_ONLINE:I = 0x0

.field public static final ERROR_AIDL_FAIL:I = 0x9c41

.field public static final ERROR_AIDL_FAIL_EXCEPTION:Ljava/lang/String; = "aidl_error: INTERNAL_EXCEPTION"

.field public static final ERROR_AIDL_FAIL_NO_PUSHSERVICE:Ljava/lang/String; = "aidl_error: NO BINDED PUSHSERVICE"

.field public static final ERROR_AUTHENTICATION_FAILED:I = 0x778b

.field public static final ERROR_BIND_NOT_EXIST:I = 0x7790

.field public static final ERROR_BIND_OVERLOAD:I = 0x7791

.field public static final ERROR_CHANNEL_TOKEN_TIMEOUT:I = 0x778f

.field public static final ERROR_DATA_NOT_FOUND:I = 0x778d

.field public static final ERROR_METHOD_ERROR:I = 0x7789

.field public static final ERROR_NETWORK_ERROR:I = 0x2711

.field public static final ERROR_PARAMS_ERROR:I = 0x778a

.field public static final ERROR_QUOTA_USE_UP:I = 0x778c

.field public static final ERROR_SERVER_INTERNAL_ERROR:I = 0x7788

.field public static final ERROR_SERVICE_NOT_AVAILABLE:I = 0x2712

.field public static final ERROR_SERVICE_NOT_AVAILABLE_TEMP:I = 0x2713

.field public static final ERROR_SUCCESS:I = 0x0

.field public static final ERROR_TIME_EXPIRES:I = 0x778e

.field public static final ERROR_UNKNOWN:I = 0x4e21

.field public static final EXTRA_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final EXTRA_API_KEY:Ljava/lang/String; = "secret_key"

.field public static final EXTRA_APP:Ljava/lang/String; = "app"

.field public static final EXTRA_APP_ID:Ljava/lang/String; = "app_id"

.field public static final EXTRA_BIND_NAME:Ljava/lang/String; = "bind_name"

.field public static final EXTRA_BIND_STATUS:Ljava/lang/String; = "bind_status"

.field public static final EXTRA_CB_URL:Ljava/lang/String; = "cb_url"

.field public static final EXTRA_CONTENT:Ljava/lang/String; = "content"

.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "error_msg"

.field public static final EXTRA_EXTRA:Ljava/lang/String; = "extra_extra_custom_content"

.field public static final EXTRA_FETCH_NUM:Ljava/lang/String; = "fetch_num"

.field public static final EXTRA_FETCH_TYPE:Ljava/lang/String; = "fetch_type"

.field public static final EXTRA_GID:Ljava/lang/String; = "gid"

.field public static final EXTRA_GROUP_FETCH_NUM:Ljava/lang/String; = "group_fetch_num"

.field public static final EXTRA_GROUP_FETCH_TYPE:Ljava/lang/String; = "group_fetch_type"

.field public static final EXTRA_HASHCODE:Ljava/lang/String; = "hash_code"

.field public static final EXTRA_LAPP_BIND_STATE:Ljava/lang/String; = "lapp_bind_state"

.field public static final EXTRA_METHOD:Ljava/lang/String; = "method"

.field public static final EXTRA_MSG:Ljava/lang/String; = "push_ msg"

.field public static final EXTRA_MSGID:Ljava/lang/String; = "msgid"

.field public static final EXTRA_MSG_IDS:Ljava/lang/String; = "msg_ids"

.field public static final EXTRA_MSG_KEY:Ljava/lang/String; = "push_ msg_key"

.field public static final EXTRA_NOTIFICATION_CONTENT:Ljava/lang/String; = "notification_content"

.field public static final EXTRA_NOTIFICATION_TITLE:Ljava/lang/String; = "notification_title"

.field public static final EXTRA_OPENTYPE:Ljava/lang/String; = "open_type"

.field public static final EXTRA_PUSH_MESSAGE:Ljava/lang/String; = "message"

.field public static final EXTRA_PUSH_MESSAGE_STRING:Ljava/lang/String; = "message_string"

.field public static final EXTRA_PUSH_SDK_VERSION:Ljava/lang/String; = "push_sdk_version"

.field public static final EXTRA_TAGS:Ljava/lang/String; = "tags"

.field public static final EXTRA_TAGS_LIST:Ljava/lang/String; = "tags_list"

.field public static final EXTRA_TIMESTAMP:Ljava/lang/String; = "time_stamp"

.field public static final EXTRA_USER_ID:Ljava/lang/String; = "user_id"

.field public static final EXTRA_WEB_BIND_API_KEY:Ljava/lang/String; = "com.baidu.pushservice.webapp.apikey"

.field public static final LOGIN_TYPE_ACCESS_TOKEN:I = 0x1

.field public static final LOGIN_TYPE_API_KEY:I = 0x0

.field public static final LOGIN_TYPE_BDUSS:I = 0x2

.field public static final LOGIN_TYPE_LIGHT_APP_API_KEY:I = 0x4

.field public static final LOGIN_TYPE_UNKNOWN:I = 0x9

.field public static final METHOD_APPSTART:Ljava/lang/String; = "method_appstart"

.field public static final METHOD_APPSTOP:Ljava/lang/String; = "method_appstop"

.field public static final METHOD_BIND:Ljava/lang/String; = "method_bind"

.field public static final METHOD_COUNT:Ljava/lang/String; = "method_count"

.field public static final METHOD_COUNTGMSG:Ljava/lang/String; = "method_countgmsg"

.field public static final METHOD_DELETE:Ljava/lang/String; = "method_delete"

.field public static final METHOD_DEL_LAPP_TAGS:Ljava/lang/String; = "method_del_lapp_tags"

.field public static final METHOD_DEL_TAGS:Ljava/lang/String; = "method_del_tags"

.field public static final METHOD_FETCH:Ljava/lang/String; = "method_fetch"

.field public static final METHOD_FETCHGMSG:Ljava/lang/String; = "method_fetchgmsg"

.field public static final METHOD_GBIND:Ljava/lang/String; = "method_gbind"

.field public static final METHOD_GET_LAPP_BIND_STATE:Ljava/lang/String; = "method_get_lapp_bind_state"

.field public static final METHOD_GINFO:Ljava/lang/String; = "method_ginfo"

.field public static final METHOD_GLIST:Ljava/lang/String; = "method_glist"

.field public static final METHOD_GUNBIND:Ljava/lang/String; = "method_gunbind"

.field public static final METHOD_LAPP_BIND_INTENT:Ljava/lang/String; = "method_deal_lapp_bind_intent"

.field public static final METHOD_LAPP_UNBIND:Ljava/lang/String; = "method_lapp_unbind"

.field public static final METHOD_LISTTAGS:Ljava/lang/String; = "method_listtags"

.field public static final METHOD_LIST_LAPP_TAGS:Ljava/lang/String; = "method_list_lapp_tags"

.field public static final METHOD_ONLINE:Ljava/lang/String; = "method_online"

.field public static final METHOD_SEND:Ljava/lang/String; = "method_send"

.field public static final METHOD_SEND_MSG_TO_SERVER:Ljava/lang/String; = "method_send_msg_to_server"

.field public static final METHOD_SEND_MSG_TO_USER:Ljava/lang/String; = "method_send_msg_to_user"

.field public static final METHOD_SET_LAPP_TAGS:Ljava/lang/String; = "method_set_lapp_tags"

.field public static final METHOD_SET_TAGS:Ljava/lang/String; = "method_set_tags"

.field public static final METHOD_UNBIND:Ljava/lang/String; = "method_unbind"

.field public static final OPEN_BY_NOTIFICATION:I = 0x1

.field public static final OPEN_BY_USER:I = 0x0

.field public static final ORIGINAL_VERSION:S = 0x17s

.field public static final PACKAGE_NAME:Ljava/lang/String; = "pkg_name"

.field private static final a:I = 0x400

.field private static final b:Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC/7VlVn9LIrZ71PL2RZMbK/Yxc\r\ndb046w/cXVylxS7ouPY06namZUFVhdbUnNRJzmGUZlzs3jUbvMO3l+4c9cw/n9aQ\r\nrm/brgaRDeZbeSrQYRZv60xzJIimuFFxsRM+ku6/dAyYmXiQXlRbgvFQ0MsVng4j\r\nv+cXhtTis2Kbwb8mQwIDAQAB\r\n"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([BLjava/lang/String;I)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/frontia/base/util/Base64;->decode([B)[B

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    const/4 v1, 0x1

    invoke-virtual {v5, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    div-int/lit8 v6, p2, 0x8

    add-int/lit8 v1, v6, -0xb

    array-length v7, p0

    add-int v0, v7, v1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v1

    mul-int/2addr v0, v6

    new-array v8, v0, [B

    move v2, v3

    move v4, v3

    :goto_0
    if-ge v4, v7, :cond_1

    sub-int v0, v7, v4

    if-ge v1, v0, :cond_0

    move v0, v1

    :cond_0
    new-array v9, v0, [B

    invoke-static {p0, v4, v9, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v0

    invoke-virtual {v5, v9}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0, v3, v8, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v0, v2, v6

    move v2, v0

    goto :goto_0

    :cond_1
    return-object v8
.end method

.method public static createMethodIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    invoke-static {p0}, Lcom/baidu/android/pushservice/LoadExecutor;->loadPush(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/baidu/android/pushservice/apiproxy/BridgePushConstants;->createMethodIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public static getErrorMsg(I)Ljava/lang/String;
    .locals 1

    const-string v0, "Unknown"

    sparse-switch p0, :sswitch_data_0

    const-string v0, "Unknown"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "Success"

    goto :goto_0

    :sswitch_1
    const-string v0, "Network Problem"

    goto :goto_0

    :sswitch_2
    const-string v0, "Authentication Failed"

    goto :goto_0

    :sswitch_3
    const-string v0, "Service not available"

    goto :goto_0

    :sswitch_4
    const-string v0, "Service not available temporary"

    goto :goto_0

    :sswitch_5
    const-string v0, "Bind Relation Not Found"

    goto :goto_0

    :sswitch_6
    const-string v0, "Internal Server Error"

    goto :goto_0

    :sswitch_7
    const-string v0, "Method Not Allowed"

    goto :goto_0

    :sswitch_8
    const-string v0, "Request Params Not Valid"

    goto :goto_0

    :sswitch_9
    const-string v0, "Quota Use Up Payment Required"

    goto :goto_0

    :sswitch_a
    const-string v0, "Data Required Not Found"

    goto :goto_0

    :sswitch_b
    const-string v0, "Request Time Expires Timeout"

    goto :goto_0

    :sswitch_c
    const-string v0, "Channel Token Timeout"

    goto :goto_0

    :sswitch_d
    const-string v0, "Bind Number Too Many"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2711 -> :sswitch_1
        0x2712 -> :sswitch_3
        0x2713 -> :sswitch_4
        0x7788 -> :sswitch_6
        0x7789 -> :sswitch_7
        0x778a -> :sswitch_8
        0x778b -> :sswitch_2
        0x778c -> :sswitch_9
        0x778d -> :sswitch_a
        0x778e -> :sswitch_b
        0x778f -> :sswitch_c
        0x7790 -> :sswitch_5
        0x7791 -> :sswitch_d
    .end sparse-switch
.end method

.method public static restartPushService(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/baidu/android/pushservice/LoadExecutor;->loadPush(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/baidu/android/pushservice/apiproxy/BridgePushConstants;->restartPushService(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static rsaEncrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC/7VlVn9LIrZ71PL2RZMbK/Yxc\r\ndb046w/cXVylxS7ouPY06namZUFVhdbUnNRJzmGUZlzs3jUbvMO3l+4c9cw/n9aQ\r\nrm/brgaRDeZbeSrQYRZv60xzJIimuFFxsRM+ku6/dAyYmXiQXlRbgvFQ0MsVng4j\r\nv+cXhtTis2Kbwb8mQwIDAQAB\r\n"

    const/16 v3, 0x400

    invoke-static {v1, v2, v3}, Lcom/baidu/android/pushservice/PushConstants;->a([BLjava/lang/String;I)[B

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lcom/baidu/frontia/base/util/Base64;->encode([BLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static startPushService(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/baidu/android/pushservice/LoadExecutor;->loadPush(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/baidu/android/pushservice/apiproxy/BridgePushConstants;->startPushService(Landroid/content/Context;)V

    goto :goto_0
.end method

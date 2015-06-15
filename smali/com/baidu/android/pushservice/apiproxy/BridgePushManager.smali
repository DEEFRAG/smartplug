.class public Lcom/baidu/android/pushservice/apiproxy/BridgePushManager;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activityStarted(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/baidu/android/pushservice/internal/PushManager;->activityStarted(Landroid/app/Activity;)V

    return-void
.end method

.method public static activityStoped(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/baidu/android/pushservice/internal/PushManager;->activityStoped(Landroid/app/Activity;)V

    return-void
.end method

.method public static bind(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/internal/PushManager;->bind(Landroid/content/Context;I)V

    return-void
.end method

.method public static bindGroup(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/internal/PushManager;->bindGroup(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static delLappTags(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/baidu/android/pushservice/internal/PushManager;->delLappTags(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static delSDKTags(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/baidu/android/pushservice/internal/PushManager;->delSDKTags(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static delTags(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/internal/PushManager;->delTags(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static deleteMessages(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/internal/PushManager;->deleteMessages(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method public static disableLbs(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/baidu/android/pushservice/internal/PushManager;->disableLbs(Landroid/content/Context;)V

    return-void
.end method

.method public static enableLbs(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/baidu/android/pushservice/internal/PushManager;->enableLbs(Landroid/content/Context;)V

    return-void
.end method

.method public static fetchGroupMessages(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/baidu/android/pushservice/internal/PushManager;->fetchGroupMessages(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method

.method public static fetchMessages(Landroid/content/Context;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/baidu/android/pushservice/internal/PushManager;->fetchMessages(Landroid/content/Context;II)V

    return-void
.end method

.method public static getAppNotiMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/baidu/android/pushservice/internal/PushManager;->getAppNotiMap()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static getGroupInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/internal/PushManager;->getGroupInfo(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static getGroupList(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/baidu/android/pushservice/internal/PushManager;->getGroupList(Landroid/content/Context;)V

    return-void
.end method

.method public static getGroupMessageCounts(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/internal/PushManager;->getGroupMessageCounts(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static getLappBindState(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/internal/PushManager;->getLappBindState(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static getMessageCounts(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/baidu/android/pushservice/internal/PushManager;->getMessageCounts(Landroid/content/Context;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/internal/PushManager;->init(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/baidu/android/pushservice/internal/PushManager;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static initFromAKSK(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/internal/PushManager;->initFromAKSK(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/baidu/android/pushservice/internal/PushManager;->isConnected(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isPushEnabled(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/baidu/android/pushservice/internal/PushManager;->isPushEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static listLappTags(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/internal/PushManager;->listLappTags(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static listSDKTags(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/internal/PushManager;->listSDKTags(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static listTags(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/baidu/android/pushservice/internal/PushManager;->listTags(Landroid/content/Context;)V

    return-void
.end method

.method public static resumeWork(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/baidu/android/pushservice/internal/PushManager;->resumeWork(Landroid/content/Context;)V

    return-void
.end method

.method public static saveAppNotiMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/baidu/android/pushservice/internal/PushManager;->saveAppNotiMap(Ljava/util/HashMap;)V

    return-void
.end method

.method public static sdkStartWork(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/baidu/android/pushservice/internal/PushManager;->sdkStartWork(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static sdkUnbind(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/internal/PushManager;->sdkUnbind(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static sendMsgToUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/baidu/android/pushservice/internal/PushManager;->sendMsgToUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setAccessToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/internal/PushManager;->setAccessToken(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static setApiKey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/internal/PushManager;->setApiKey(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static setBduss(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/internal/PushManager;->setBduss(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static setDefaultNotificationBuilder(Landroid/content/Context;Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;)V
    .locals 1

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;->getInner()Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/internal/PushManager;->setDefaultNotificationBuilder(Landroid/content/Context;Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;)V

    return-void
.end method

.method public static setLappTags(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/baidu/android/pushservice/internal/PushManager;->setLappTags(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static setMediaNotificationBuilder(Landroid/content/Context;Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;)V
    .locals 1

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;->getInner()Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/internal/PushManager;->setMediaNotificationBuilder(Landroid/content/Context;Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;)V

    return-void
.end method

.method public static setNoDisturbMode(Landroid/content/Context;IIII)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/baidu/android/pushservice/internal/PushManager;->setNoDisturbMode(Landroid/content/Context;IIII)V

    return-void
.end method

.method public static setNotificationBuilder(Landroid/content/Context;ILcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;)V
    .locals 1

    :try_start_0
    invoke-virtual {p2}, Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;->getInner()Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/baidu/android/pushservice/internal/PushManager;->setNotificationBuilder(Landroid/content/Context;ILcom/baidu/android/pushservice/internal/PushNotificationBuilder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setSDKTags(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/baidu/android/pushservice/internal/PushManager;->setSDKTags(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static setTags(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/internal/PushManager;->setTags(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static startWork(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/baidu/android/pushservice/internal/PushManager;->startWork(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public static startWork(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/baidu/android/pushservice/internal/PushManager;->startWork(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static stopWork(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/baidu/android/pushservice/internal/PushManager;->stopWork(Landroid/content/Context;)V

    return-void
.end method

.method public static tryConnect(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/baidu/android/pushservice/internal/PushManager;->tryConnect(Landroid/content/Context;)V

    return-void
.end method

.method public static unbind(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/baidu/android/pushservice/internal/PushManager;->unbind(Landroid/content/Context;)V

    return-void
.end method

.method public static unbindGroup(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/internal/PushManager;->unbindGroup(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

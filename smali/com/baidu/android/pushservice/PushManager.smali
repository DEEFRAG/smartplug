.class public Lcom/baidu/android/pushservice/PushManager;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "com.baidu.pushservice.PushSettings.connect_state"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.baidu.pushservice.PushSettings.connect_state"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static activityStarted(Landroid/app/Activity;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$4;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/PushManager$4;-><init>(Landroid/app/Activity;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static activityStoped(Landroid/app/Activity;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$5;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/PushManager$5;-><init>(Landroid/app/Activity;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static bind(Landroid/content/Context;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$9;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/pushservice/PushManager$9;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static bindGroup(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$16;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/pushservice/PushManager$16;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static delLappTags(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
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

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$24;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/android/pushservice/PushManager$24;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static delSDKTags(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
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

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$22;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/android/pushservice/PushManager$22;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static delTags(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
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

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$21;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/pushservice/PushManager$21;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static deleteMessages(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$14;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/pushservice/PushManager$14;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static disableLbs(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$36;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/PushManager$36;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static enableLbs(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$35;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/PushManager$35;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static fetchGroupMessages(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$28;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/baidu/android/pushservice/PushManager$28;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static fetchMessages(Landroid/content/Context;II)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/android/pushservice/PushManager$11;-><init>(Landroid/content/Context;II)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static getAppNotiMap(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/baidu/android/pushservice/apiproxy/BridgePushManager;->getAppNotiMap()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static getGroupInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$26;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/pushservice/PushManager$26;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static getGroupList(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$27;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/PushManager$27;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static getGroupMessageCounts(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$29;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/pushservice/PushManager$29;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static getLappBindState(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$37;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/pushservice/PushManager$37;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static getMessageCounts(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$13;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/PushManager$13;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$12;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/pushservice/PushManager$12;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/android/pushservice/PushManager$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static initFromAKSK(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$23;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/pushservice/PushManager$23;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x1

    invoke-static {p0}, Lcom/baidu/android/pushservice/PushManager;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isPushEnabled(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "pst"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "s_e"

    const-string v4, "default"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "enabled"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v3, "disabled"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static listLappTags(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$20;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/pushservice/PushManager$20;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static listSDKTags(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$19;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/pushservice/PushManager$19;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static listTags(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$18;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/PushManager$18;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static resumeWork(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$3;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/PushManager$3;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static saveAppNotiMap(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$38;

    invoke-direct {v0, p1}, Lcom/baidu/android/pushservice/PushManager$38;-><init>(Ljava/util/HashMap;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static sdkStartWork(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$41;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/android/pushservice/PushManager$41;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static sdkUnbind(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$42;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/pushservice/PushManager$42;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static sendMsgToUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$15;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/android/pushservice/PushManager$15;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static setAccessToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$6;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/pushservice/PushManager$6;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static setApiKey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$7;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/pushservice/PushManager$7;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static setBduss(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$8;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/pushservice/PushManager$8;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static setDefaultNotificationBuilder(Landroid/content/Context;Lcom/baidu/android/pushservice/PushNotificationBuilder;)V
    .locals 1

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$30;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/pushservice/PushManager$30;-><init>(Landroid/content/Context;Lcom/baidu/android/pushservice/PushNotificationBuilder;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static setLappTags(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
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

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$44;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/android/pushservice/PushManager$44;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static setMediaNotificationBuilder(Landroid/content/Context;Lcom/baidu/android/pushservice/PushNotificationBuilder;)V
    .locals 1

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$32;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/pushservice/PushManager$32;-><init>(Landroid/content/Context;Lcom/baidu/android/pushservice/PushNotificationBuilder;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static setNoDisturbMode(Landroid/content/Context;IIII)V
    .locals 6

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$39;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/android/pushservice/PushManager$39;-><init>(Landroid/content/Context;IIII)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static setNotificationBuilder(Landroid/content/Context;ILcom/baidu/android/pushservice/PushNotificationBuilder;)V
    .locals 1

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$31;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/android/pushservice/PushManager$31;-><init>(Landroid/content/Context;ILcom/baidu/android/pushservice/PushNotificationBuilder;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static setSDKTags(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
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

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$43;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/android/pushservice/PushManager$43;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static setTags(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
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

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$17;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/pushservice/PushManager$17;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static startWork(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$40;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/android/pushservice/PushManager$40;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static startWork(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$34;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/android/pushservice/PushManager$34;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static stopWork(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$2;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/PushManager$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static tryConnect(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$33;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/PushManager$33;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static unbind(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$10;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/PushManager$10;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static unbindGroup(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/baidu/android/pushservice/PushManager$25;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/pushservice/PushManager$25;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

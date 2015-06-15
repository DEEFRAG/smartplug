.class public Lcom/avos/avospush/push/AVPushServiceAppManager;
.super Ljava/lang/Object;
.source "AVPushServiceAppManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final AV_PUSH_SERVICE_APP_DATA:Ljava/lang/String; = "AV_PUSH_SERVICE_APP_DATA"

.field private static final ICON_KEY:Ljava/lang/String; = "_notification_icon"

.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private final defaultPushCallback:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private notificationIcon:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/avos/avospush/push/AVPushServiceAppManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avos/avospush/push/AVPushServiceAppManager;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avospush/push/AVPushServiceAppManager;->defaultPushCallback:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    if-nez p1, :cond_0

    .line 30
    sget-object v0, Lcom/avos/avospush/push/AVPushServiceAppManager;->LOGTAG:Ljava/lang/String;

    const-string v1, "Please call AVOSCloud.initialize first"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :goto_0
    return-void

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/avos/avospush/push/AVPushServiceAppManager;->context:Landroid/content/Context;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v0, p0, Lcom/avos/avospush/push/AVPushServiceAppManager;->notificationIcon:I

    .line 37
    invoke-direct {p0}, Lcom/avos/avospush/push/AVPushServiceAppManager;->readDataFromCache()V

    .line 38
    sget-object v0, Lcom/avos/avospush/push/AVPushServiceAppManager;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init AppManager Done, read data from cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avospush/push/AVPushServiceAppManager;->defaultPushCallback:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readDataFromCache()V
    .locals 8

    .prologue
    .line 42
    iget-object v5, p0, Lcom/avos/avospush/push/AVPushServiceAppManager;->context:Landroid/content/Context;

    const-string v6, "AV_PUSH_SERVICE_APP_DATA"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 44
    .local v0, "appData":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 45
    .local v3, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 46
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 47
    .local v4, "pairs":Ljava/util/Map$Entry;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 48
    .local v1, "channel":Ljava/lang/String;
    const-string v5, "_notification_icon"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 50
    :try_start_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/avos/avospush/push/AVPushServiceAppManager;->notificationIcon:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v5

    goto :goto_0

    .line 55
    :cond_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 56
    .local v2, "defaultCls":Ljava/lang/String;
    iget-object v5, p0, Lcom/avos/avospush/push/AVPushServiceAppManager;->defaultPushCallback:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 59
    .end local v1    # "channel":Ljava/lang/String;
    .end local v2    # "defaultCls":Ljava/lang/String;
    .end local v4    # "pairs":Ljava/util/Map$Entry;
    :cond_1
    return-void
.end method


# virtual methods
.method public addDefaultPushCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "clsName"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushServiceAppManager;->defaultPushCallback:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const-string v1, "AV_PUSH_SERVICE_APP_DATA"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public containsDefaultPushCallback(Ljava/lang/String;)Z
    .locals 1
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushServiceAppManager;->defaultPushCallback:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getDefaultPushCallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushServiceAppManager;->defaultPushCallback:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationIcon()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/avos/avospush/push/AVPushServiceAppManager;->notificationIcon:I

    return v0
.end method

.method public removeDefaultPushCallback(Ljava/lang/String;)V
    .locals 2
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushServiceAppManager;->defaultPushCallback:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const-string v1, "AV_PUSH_SERVICE_APP_DATA"

    invoke-virtual {v0, v1, p1}, Lcom/avos/avoscloud/AVPersistenceUtils;->removePersistentSettingString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public setNotificationIcon(I)V
    .locals 4
    .param p1, "icon"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/avos/avospush/push/AVPushServiceAppManager;->notificationIcon:I

    .line 67
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const-string v1, "AV_PUSH_SERVICE_APP_DATA"

    const-string v2, "_notification_icon"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushServiceAppManager;->defaultPushCallback:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

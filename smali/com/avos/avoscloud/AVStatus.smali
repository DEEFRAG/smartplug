.class public Lcom/avos/avoscloud/AVStatus;
.super Lcom/avos/avoscloud/AVObject;
.source "AVStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;
    }
.end annotation


# static fields
.field private static final AV_CLASS_NAME:Ljava/lang/String; = "_FeedStatus"

.field private static DEFAULT_COUNT:I = 0x0

.field public static final IMAGE_TAG:Ljava/lang/String; = "image"

.field public static final INBOX_PRIVATE:Ljava/lang/String; = "private"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INBOX_TIMELINE:Ljava/lang/String; = "default"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MESSAGE_TAG:Ljava/lang/String; = "message"

.field public static final STATUS_END_POINT:Ljava/lang/String; = "statuses"

.field private static final UNREAD_TAG:Ljava/lang/String; = "unread"

.field static ignoreList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private createdAt:Ljava/lang/String;

.field private final dataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private inboxType:Ljava/lang/String;

.field private messageId:J

.field private query:Lcom/avos/avoscloud/AVQuery;

.field private source:Lcom/avos/avoscloud/AVObject;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/16 v0, 0x64

    sput v0, Lcom/avos/avoscloud/AVStatus;->DEFAULT_COUNT:I

    .line 50
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "objectId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "updatedAt"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "createdAt"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "inboxType"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "messageId"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVStatus;->ignoreList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Lcom/avos/avoscloud/AVObject;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/avos/avoscloud/AVStatus;->messageId:J

    .line 48
    iput-object v2, p0, Lcom/avos/avoscloud/AVStatus;->source:Lcom/avos/avoscloud/AVObject;

    .line 49
    iput-object v2, p0, Lcom/avos/avoscloud/AVStatus;->query:Lcom/avos/avoscloud/AVQuery;

    .line 68
    return-void
.end method

.method private static checkCurrentUser(Lcom/avos/avoscloud/AVCallback;)Z
    .locals 2
    .param p0, "callback"    # Lcom/avos/avoscloud/AVCallback;

    .prologue
    .line 71
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    if-nez v0, :cond_1

    .line 72
    if-eqz p0, :cond_0

    .line 73
    const/4 v0, 0x0

    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->sessionMissingException()Lcom/avos/avoscloud/AVException;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 75
    :cond_0
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static checkStatusId(Ljava/lang/String;Lcom/avos/avoscloud/StatusCallback;)Z
    .locals 2
    .param p0, "statusId"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/avos/avoscloud/StatusCallback;

    .prologue
    .line 554
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 555
    if-eqz p1, :cond_0

    .line 556
    const/4 v0, 0x0

    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->invalidObjectIdException()Lcom/avos/avoscloud/AVException;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/avos/avoscloud/StatusCallback;->done(Lcom/avos/avoscloud/AVStatus;Lcom/avos/avoscloud/AVException;)V

    .line 558
    :cond_0
    const/4 v0, 0x0

    .line 560
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static createStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVStatus;
    .locals 1
    .param p0, "imageUrl"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 54
    new-instance v0, Lcom/avos/avoscloud/AVStatus;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVStatus;-><init>()V

    .line 55
    .local v0, "status":Lcom/avos/avoscloud/AVStatus;
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVStatus;->setImageUrl(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVStatus;->setMessage(Ljava/lang/String;)V

    .line 57
    return-object v0
.end method

.method public static createStatusWithData(Ljava/util/Map;)Lcom/avos/avoscloud/AVStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/avos/avoscloud/AVStatus;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/avos/avoscloud/AVStatus;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVStatus;-><init>()V

    .line 62
    .local v0, "status":Lcom/avos/avoscloud/AVStatus;
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVStatus;->setData(Ljava/util/Map;)V

    .line 63
    return-object v0
.end method

.method private static currentUserBody()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 741
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 742
    .local v1, "userBody":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->mapFromPointerObject(Lcom/avos/avoscloud/AVObject;)Ljava/util/Map;

    move-result-object v0

    .line 743
    .local v0, "object":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "user"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    return-object v1
.end method

.method public static deleteStatusWithIDInBackgroud(Ljava/lang/String;Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 1
    .param p0, "statusId"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/avos/avoscloud/DeleteCallback;

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/avos/avoscloud/AVStatus;->deleteStatusWithId(ZLjava/lang/String;Lcom/avos/avoscloud/DeleteCallback;)V

    .line 211
    return-void
.end method

.method private static deleteStatusWithId(ZLjava/lang/String;Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 6
    .param p0, "sync"    # Z
    .param p1, "statusId"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/avos/avoscloud/DeleteCallback;

    .prologue
    const/4 v5, 0x0

    .line 216
    invoke-static {v5}, Lcom/avos/avoscloud/AVStatus;->checkCurrentUser(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 217
    if-eqz p2, :cond_0

    .line 218
    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->sessionMissingException()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/DeleteCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    if-eqz p2, :cond_0

    .line 225
    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->invalidObjectIdException()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/DeleteCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 229
    :cond_2
    const-string v0, "statuses/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "endPoint":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    new-instance v3, Lcom/avos/avoscloud/AVStatus$1;

    invoke-direct {v3, p2}, Lcom/avos/avoscloud/AVStatus$1;-><init>(Lcom/avos/avoscloud/DeleteCallback;)V

    move v2, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->deleteObject(Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInboxPrivteStatuses(JJLcom/avos/avoscloud/StatusListCallback;)V
    .locals 6
    .param p0, "sid"    # J
    .param p2, "count"    # J
    .param p4, "callback"    # Lcom/avos/avoscloud/StatusListCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 550
    sget-object v0, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->PRIVATE:Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    move-wide v0, p0

    move-wide v2, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/avos/avoscloud/AVStatus;->getInboxStatusesWithInboxType(JJLjava/lang/String;Lcom/avos/avoscloud/StatusListCallback;)V

    .line 551
    return-void
.end method

.method public static getInboxStatusesInBackground(JJLcom/avos/avoscloud/StatusListCallback;)V
    .locals 6
    .param p0, "skip"    # J
    .param p2, "limit"    # J
    .param p4, "callback"    # Lcom/avos/avoscloud/StatusListCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 500
    sget-object v0, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->TIMELINE:Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    move-wide v0, p0

    move-wide v2, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/avos/avoscloud/AVStatus;->getInboxStatusesWithInboxType(JJLjava/lang/String;Lcom/avos/avoscloud/StatusListCallback;)V

    .line 501
    return-void
.end method

.method public static getInboxStatusesWithInboxType(JJLjava/lang/String;Lcom/avos/avoscloud/StatusListCallback;)V
    .locals 13
    .param p0, "skip"    # J
    .param p2, "limit"    # J
    .param p4, "inboxType"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/avos/avoscloud/StatusListCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 506
    invoke-static/range {p5 .. p5}, Lcom/avos/avoscloud/AVStatus;->checkCurrentUser(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 512
    :goto_0
    return-void

    .line 509
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, "userId":Ljava/lang/String;
    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-wide v2, p0

    move-wide v4, p2

    move-object/from16 v8, p4

    invoke-static/range {v1 .. v11}, Lcom/avos/avoscloud/AVStatus;->statusQueryMap(Ljava/lang/String;JJJLjava/lang/String;Ljava/util/Map;ZZ)Ljava/util/Map;

    move-result-object v12

    .line 511
    .local v12, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "subscribe/statuses"

    move-object/from16 v0, p5

    invoke-static {v2, v12, v0}, Lcom/avos/avoscloud/AVStatus;->getStatusImpl(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/StatusListCallback;)V

    goto :goto_0
.end method

.method public static getInboxUnreadStatusesCountInBackgroud(Lcom/avos/avoscloud/CountCallback;)V
    .locals 6
    .param p0, "callback"    # Lcom/avos/avoscloud/CountCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 530
    sget-object v2, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->TIMELINE:Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    move-wide v2, v0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/avos/avoscloud/AVStatus;->getInboxUnreadStatusesCountWithInboxTypeInBackgroud(JJLjava/lang/String;Lcom/avos/avoscloud/CountCallback;)V

    .line 532
    return-void
.end method

.method public static getInboxUnreadStatusesCountWithInboxTypeInBackgroud(JJLjava/lang/String;Lcom/avos/avoscloud/CountCallback;)V
    .locals 13
    .param p0, "sid"    # J
    .param p2, "count"    # J
    .param p4, "inboxType"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/avos/avoscloud/CountCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 537
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/avos/avoscloud/AVStatus;->checkCurrentUser(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 538
    if-eqz p5, :cond_0

    .line 539
    const/4 v2, 0x0

    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->sessionMissingException()Lcom/avos/avoscloud/AVException;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Lcom/avos/avoscloud/CountCallback;->done(ILcom/avos/avoscloud/AVException;)V

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    .line 544
    .local v1, "userId":Ljava/lang/String;
    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-wide v2, p0

    move-wide v4, p2

    move-object/from16 v8, p4

    invoke-static/range {v1 .. v11}, Lcom/avos/avoscloud/AVStatus;->statusQueryMap(Ljava/lang/String;JJJLjava/lang/String;Ljava/util/Map;ZZ)Ljava/util/Map;

    move-result-object v12

    .line 545
    .local v12, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "subscribe/statuses/count"

    move-object/from16 v0, p5

    invoke-static {v2, v12, v0}, Lcom/avos/avoscloud/AVStatus;->getStatusCountImpl(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/CountCallback;)V

    goto :goto_0
.end method

.method static getStatusCountImpl(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/CountCallback;)V
    .locals 6
    .param p0, "endPoint"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/avos/avoscloud/CountCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/CountCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 473
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    new-instance v2, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v2, p1}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVStatus$3;

    invoke-direct {v5, p2}, Lcom/avos/avoscloud/AVStatus$3;-><init>(Lcom/avos/avoscloud/CountCallback;)V

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 490
    return-void
.end method

.method static getStatusImpl(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/StatusListCallback;)V
    .locals 6
    .param p0, "endPoint"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/avos/avoscloud/StatusListCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/StatusListCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 442
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 443
    .local v2, "params":Lcom/loopj/android/http/RequestParams;
    if-eqz p1, :cond_0

    .line 444
    new-instance v2, Lcom/loopj/android/http/RequestParams;

    .end local v2    # "params":Lcom/loopj/android/http/RequestParams;
    invoke-direct {v2, p1}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 447
    .restart local v2    # "params":Lcom/loopj/android/http/RequestParams;
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVStatus$2;

    invoke-direct {v5, p2}, Lcom/avos/avoscloud/AVStatus$2;-><init>(Lcom/avos/avoscloud/StatusListCallback;)V

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 464
    return-void
.end method

.method static getStatusQueryMap(Ljava/lang/String;JJJLjava/lang/String;Ljava/util/Map;ZZ)Ljava/util/Map;
    .locals 6
    .param p0, "ownerId"    # Ljava/lang/String;
    .param p1, "sinceId"    # J
    .param p3, "limit"    # J
    .param p5, "maxId"    # J
    .param p7, "inboxType"    # Ljava/lang/String;
    .param p9, "includeSource"    # Z
    .param p10, "count"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJJ",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    .local p8, "where":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromUserObjectId(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 361
    .local v1, "owner":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 363
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v3, "owner"

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_0

    .line 365
    const-string v3, "sinceId"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-lez v3, :cond_1

    .line 368
    const-string v3, "limit"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v3, p5, v3

    if-lez v3, :cond_2

    .line 371
    const-string v3, "maxId"

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    :cond_2
    invoke-static {p7}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 374
    const-string v3, "inboxType"

    invoke-interface {v2, v3, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    :cond_3
    if-eqz p8, :cond_4

    .line 377
    const-string v3, "where"

    invoke-static {p8}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :cond_4
    if-eqz p9, :cond_5

    .line 380
    const-string v3, "include"

    const-string v4, "source"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    :cond_5
    if-eqz p10, :cond_6

    .line 383
    const-string v3, "count"

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :cond_6
    :goto_0
    return-object v2

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getStatusWithIdInBackgroud(Ljava/lang/String;Lcom/avos/avoscloud/StatusCallback;)V
    .locals 13
    .param p0, "statusId"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/avos/avoscloud/StatusCallback;

    .prologue
    const/4 v9, 0x1

    const-wide/16 v1, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 564
    invoke-static {p0, p1}, Lcom/avos/avoscloud/AVStatus;->checkStatusId(Ljava/lang/String;Lcom/avos/avoscloud/StatusCallback;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    invoke-static {p1}, Lcom/avos/avoscloud/AVStatus;->checkCurrentUser(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 570
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, "userId":Ljava/lang/String;
    const-string v3, "statuses/%s"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object p0, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .local v11, "endPoint":Ljava/lang/String;
    move-wide v3, v1

    move-wide v5, v1

    move-object v8, v7

    .line 572
    invoke-static/range {v0 .. v10}, Lcom/avos/avoscloud/AVStatus;->statusQueryMap(Ljava/lang/String;JJJLjava/lang/String;Ljava/util/Map;ZZ)Ljava/util/Map;

    move-result-object v12

    .line 573
    .local v12, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v5, v12}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 574
    .local v5, "params":Lcom/loopj/android/http/RequestParams;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v3

    new-instance v8, Lcom/avos/avoscloud/AVStatus$4;

    invoke-direct {v8, p1}, Lcom/avos/avoscloud/AVStatus$4;-><init>(Lcom/avos/avoscloud/StatusCallback;)V

    move-object v4, v11

    move v6, v10

    invoke-virtual/range {v3 .. v8}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0
.end method

.method public static getStatuses(JJLcom/avos/avoscloud/StatusListCallback;)V
    .locals 13
    .param p0, "skip"    # J
    .param p2, "limit"    # J
    .param p4, "callback"    # Lcom/avos/avoscloud/StatusListCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 256
    invoke-static/range {p4 .. p4}, Lcom/avos/avoscloud/AVStatus;->checkCurrentUser(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 262
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "userId":Ljava/lang/String;
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-wide v2, p0

    move-wide v4, p2

    invoke-static/range {v1 .. v11}, Lcom/avos/avoscloud/AVStatus;->statusQueryMap(Ljava/lang/String;JJJLjava/lang/String;Ljava/util/Map;ZZ)Ljava/util/Map;

    move-result-object v12

    .line 261
    .local v12, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "statuses"

    move-object/from16 v0, p4

    invoke-static {v2, v12, v0}, Lcom/avos/avoscloud/AVStatus;->getStatusImpl(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/StatusListCallback;)V

    goto :goto_0
.end method

.method public static getStatusesFromCurrentUserWithType(Ljava/lang/String;JJLcom/avos/avoscloud/StatusListCallback;)V
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "skip"    # J
    .param p3, "limit"    # J
    .param p5, "callback"    # Lcom/avos/avoscloud/StatusListCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 295
    invoke-static {p5}, Lcom/avos/avoscloud/AVStatus;->checkCurrentUser(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Lcom/avos/avoscloud/AVStatus;->sourceQueryMap(Ljava/lang/String;JJ)Ljava/util/Map;

    move-result-object v0

    .line 300
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "statuses"

    invoke-static {v1, v0, p5}, Lcom/avos/avoscloud/AVStatus;->getStatusImpl(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/StatusListCallback;)V

    goto :goto_0
.end method

.method public static getStatusesFromUser(Ljava/lang/String;JJLcom/avos/avoscloud/StatusListCallback;)V
    .locals 3
    .param p0, "userObejctId"    # Ljava/lang/String;
    .param p1, "skip"    # J
    .param p3, "limit"    # J
    .param p5, "callback"    # Lcom/avos/avoscloud/StatusListCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 314
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    if-eqz p5, :cond_0

    .line 316
    const/4 v1, 0x0

    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->invalidObjectIdException()Lcom/avos/avoscloud/AVException;

    move-result-object v2

    invoke-virtual {p5, v1, v2}, Lcom/avos/avoscloud/StatusListCallback;->done(Ljava/util/List;Lcom/avos/avoscloud/AVException;)V

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/avos/avoscloud/AVStatus;->sourceQueryMap(Ljava/lang/String;JJ)Ljava/util/Map;

    move-result-object v0

    .line 321
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "statuses"

    invoke-static {v1, v0, p5}, Lcom/avos/avoscloud/AVStatus;->getStatusImpl(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/StatusListCallback;)V

    goto :goto_0
.end method

.method public static getUnreadStatusesCountInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CountCallback;)V
    .locals 12
    .param p0, "inboxType"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/avos/avoscloud/CountCallback;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    const-wide/16 v1, 0x0

    .line 517
    invoke-static {v8}, Lcom/avos/avoscloud/AVStatus;->checkCurrentUser(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 518
    if-eqz p1, :cond_0

    .line 519
    const/4 v1, 0x0

    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->sessionMissingException()Lcom/avos/avoscloud/AVException;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/avos/avoscloud/CountCallback;->done(ILcom/avos/avoscloud/AVException;)V

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    .local v0, "userId":Ljava/lang/String;
    move-wide v3, v1

    move-wide v5, v1

    move-object v7, p0

    move v10, v9

    .line 524
    invoke-static/range {v0 .. v10}, Lcom/avos/avoscloud/AVStatus;->getStatusQueryMap(Ljava/lang/String;JJJLjava/lang/String;Ljava/util/Map;ZZ)Ljava/util/Map;

    move-result-object v11

    .line 525
    .local v11, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "subscribe/statuses/count"

    invoke-static {v1, v11, p1}, Lcom/avos/avoscloud/AVStatus;->getStatusCountImpl(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/CountCallback;)V

    goto :goto_0
.end method

.method public static inboxQuery(Lcom/avos/avoscloud/AVUser;Ljava/lang/String;)Lcom/avos/avoscloud/AVStatusQuery;
    .locals 2
    .param p0, "owner"    # Lcom/avos/avoscloud/AVUser;
    .param p1, "inBoxType"    # Ljava/lang/String;

    .prologue
    .line 770
    new-instance v0, Lcom/avos/avoscloud/AVStatusQuery;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVStatusQuery;-><init>()V

    .line 771
    .local v0, "query":Lcom/avos/avoscloud/AVStatusQuery;
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVStatusQuery;->setInboxType(Ljava/lang/String;)V

    .line 772
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVStatusQuery;->setOwner(Lcom/avos/avoscloud/AVUser;)V

    .line 773
    const-string v1, "subscribe/statuses"

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVStatusQuery;->setExternalQueryPath(Ljava/lang/String;)V

    .line 774
    return-object v0
.end method

.method static postStatusImpl(Lcom/avos/avoscloud/AVStatus;Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 8
    .param p0, "status"    # Lcom/avos/avoscloud/AVStatus;
    .param p2, "callback"    # Lcom/avos/avoscloud/SaveCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVStatus;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .line 596
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 597
    .local v2, "postData":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const-string v1, "statuses"

    new-instance v5, Lcom/avos/avoscloud/AVStatus$5;

    invoke-direct {v5, p0, p2}, Lcom/avos/avoscloud/AVStatus$5;-><init>(Lcom/avos/avoscloud/AVStatus;Lcom/avos/avoscloud/SaveCallback;)V

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVStatus;->getObjectId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move v4, v3

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    return-void
.end method

.method static processStatus(Ljava/lang/String;Lcom/avos/avoscloud/AVStatus;)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "status"    # Lcom/avos/avoscloud/AVStatus;

    .prologue
    .line 408
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 409
    .local v0, "object":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVStatus;->processStatusFromObject(Ljava/lang/Object;Lcom/avos/avoscloud/AVStatus;)V

    .line 410
    return-void
.end method

.method static processStatusCount(Ljava/lang/String;)I
    .locals 2
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 467
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 468
    .local v0, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string v1, "unread"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method static processStatusFromObject(Ljava/lang/Object;Lcom/avos/avoscloud/AVStatus;)V
    .locals 9
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "status"    # Lcom/avos/avoscloud/AVStatus;

    .prologue
    .line 415
    move-object v3, p0

    check-cast v3, Lcom/alibaba/fastjson/JSONObject;

    .line 416
    .local v3, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string v6, "objectId"

    iget-object v7, p1, Lcom/avos/avoscloud/AVStatus;->objectId:Ljava/lang/String;

    invoke-static {v3, v6, v7}, Lcom/avos/avoscloud/AVUtils;->getJSONString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/avos/avoscloud/AVStatus;->objectId:Ljava/lang/String;

    .line 417
    const-string v6, "messageId"

    iget-wide v7, p1, Lcom/avos/avoscloud/AVStatus;->messageId:J

    invoke-static {v3, v6, v7, v8}, Lcom/avos/avoscloud/AVUtils;->getJSONInteger(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p1, Lcom/avos/avoscloud/AVStatus;->messageId:J

    .line 418
    const-string v6, "inboxType"

    iget-object v7, p1, Lcom/avos/avoscloud/AVStatus;->inboxType:Ljava/lang/String;

    invoke-static {v3, v6, v7}, Lcom/avos/avoscloud/AVUtils;->getJSONString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/avos/avoscloud/AVStatus;->inboxType:Ljava/lang/String;

    .line 419
    const-string v6, "createdAt"

    iget-object v7, p1, Lcom/avos/avoscloud/AVStatus;->createdAt:Ljava/lang/String;

    invoke-static {v3, v6, v7}, Lcom/avos/avoscloud/AVUtils;->getJSONString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/avos/avoscloud/AVStatus;->createdAt:Ljava/lang/String;

    .line 421
    const-string v6, "image"

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVStatus;->getImageUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/avos/avoscloud/AVUtils;->getJSONString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/avos/avoscloud/AVStatus;->setImageUrl(Ljava/lang/String;)V

    .line 422
    const-string v6, "message"

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVStatus;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/avos/avoscloud/AVUtils;->getJSONString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/avos/avoscloud/AVStatus;->setMessage(Ljava/lang/String;)V

    .line 425
    const-string v6, "source"

    const-string v7, ""

    invoke-static {v3, v6, v7}, Lcom/avos/avoscloud/AVUtils;->getJSONString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 426
    .local v5, "sourceString":Ljava/lang/String;
    invoke-static {v5}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 427
    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 428
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v4}, Lcom/avos/avoscloud/AVUtils;->parseObjectFromMap(Ljava/util/Map;)Lcom/avos/avoscloud/AVObject;

    move-result-object v6

    iput-object v6, p1, Lcom/avos/avoscloud/AVStatus;->source:Lcom/avos/avoscloud/AVObject;

    .line 431
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 433
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 434
    .local v1, "entry":Ljava/util/Map$Entry;
    sget-object v6, Lcom/avos/avoscloud/AVStatus;->ignoreList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 435
    iget-object v6, p1, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/avos/avoscloud/AVUtils;->getParsedObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 438
    .end local v1    # "entry":Ljava/util/Map$Entry;
    :cond_2
    return-void
.end method

.method static processStatusResultList(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 392
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 393
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 404
    :cond_0
    return-object v4

    .line 396
    :cond_1
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 397
    .local v5, "results":Lcom/alibaba/fastjson/JSONObject;
    const-string v6, "results"

    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 398
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 399
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVStatus;>;"
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 400
    .local v2, "item":Ljava/lang/Object;
    new-instance v3, Lcom/avos/avoscloud/AVStatus;

    invoke-direct {v3}, Lcom/avos/avoscloud/AVStatus;-><init>()V

    .line 401
    .local v3, "object":Lcom/avos/avoscloud/AVStatus;
    invoke-static {v2, v3}, Lcom/avos/avoscloud/AVStatus;->processStatusFromObject(Ljava/lang/Object;Lcom/avos/avoscloud/AVStatus;)V

    .line 402
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static sendPrivateStatusInBackgroud(Lcom/avos/avoscloud/AVStatus;Ljava/lang/String;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 5
    .param p0, "status"    # Lcom/avos/avoscloud/AVStatus;
    .param p1, "receiverObjectId"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/avos/avoscloud/SaveCallback;

    .prologue
    .line 726
    invoke-static {p2}, Lcom/avos/avoscloud/AVStatus;->checkCurrentUser(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 738
    :goto_0
    return-void

    .line 731
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 732
    .local v1, "queryBody":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v3, Lcom/avos/avoscloud/AVUtils;->classNameTag:Ljava/lang/String;

    const-string v4, "_User"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 734
    .local v2, "whereBody":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "objectId"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    const-string v3, "where"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    sget-object v3, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->PRIVATE:Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v1}, Lcom/avos/avoscloud/AVStatus;->statusBody(Lcom/avos/avoscloud/AVStatus;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 737
    .local v0, "body":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0, v0, p2}, Lcom/avos/avoscloud/AVStatus;->postStatusImpl(Lcom/avos/avoscloud/AVStatus;Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V

    goto :goto_0
.end method

.method public static sendStatusToFollowersInBackgroud(Lcom/avos/avoscloud/AVStatus;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 4
    .param p0, "status"    # Lcom/avos/avoscloud/AVStatus;
    .param p1, "callback"    # Lcom/avos/avoscloud/SaveCallback;

    .prologue
    .line 701
    invoke-static {p1}, Lcom/avos/avoscloud/AVStatus;->checkCurrentUser(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 715
    :goto_0
    return-void

    .line 706
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 707
    .local v1, "queryBody":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v2, Lcom/avos/avoscloud/AVUtils;->classNameTag:Ljava/lang/String;

    const-string v3, "_Follower"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    const-string v2, "keys"

    const-string v3, "follower"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    const-string v2, "where"

    invoke-static {}, Lcom/avos/avoscloud/AVStatus;->currentUserBody()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    iget-object v2, p0, Lcom/avos/avoscloud/AVStatus;->inboxType:Ljava/lang/String;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->TIMELINE:Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {p0, v2, v1}, Lcom/avos/avoscloud/AVStatus;->statusBody(Lcom/avos/avoscloud/AVStatus;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 714
    .local v0, "body":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0, v0, p1}, Lcom/avos/avoscloud/AVStatus;->postStatusImpl(Lcom/avos/avoscloud/AVStatus;Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V

    goto :goto_0

    .line 710
    .end local v0    # "body":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    iget-object v2, p0, Lcom/avos/avoscloud/AVStatus;->inboxType:Ljava/lang/String;

    goto :goto_1
.end method

.method static sourceQueryMap(Ljava/lang/String;JJ)Ljava/util/Map;
    .locals 7
    .param p0, "ownerId"    # Ljava/lang/String;
    .param p1, "skip"    # J
    .param p3, "count"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide/16 v5, 0x0

    .line 266
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 267
    .local v2, "source":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 269
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v3, "source"

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromUserObjectId(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string v3, "where"

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string v3, "include"

    const-string v4, "source"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    cmp-long v3, p1, v5

    if-lez v3, :cond_0

    .line 273
    const-string v3, "skip"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :cond_0
    cmp-long v3, p3, v5

    if-lez v3, :cond_1

    .line 276
    const-string v3, "count"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :cond_1
    :goto_0
    return-object v1

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static statusBody(Lcom/avos/avoscloud/AVStatus;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .param p0, "status"    # Lcom/avos/avoscloud/AVStatus;
    .param p1, "inboxType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVStatus;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 618
    .local p2, "queryBody":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 619
    .local v1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 620
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 621
    .local v0, "body":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/avos/avoscloud/AVStatus;->source:Lcom/avos/avoscloud/AVObject;

    if-eqz v2, :cond_0

    .line 622
    const-string v2, "source"

    iget-object v3, p0, Lcom/avos/avoscloud/AVStatus;->source:Lcom/avos/avoscloud/AVObject;

    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->getParsedObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    :goto_0
    const-string v2, "data"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    const-string v2, "inboxType"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    const-string v2, "query"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    return-object v0

    .line 624
    :cond_0
    const-string v2, "source"

    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->getParsedObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static statusQuery(Lcom/avos/avoscloud/AVUser;)Lcom/avos/avoscloud/AVStatusQuery;
    .locals 2
    .param p0, "owner"    # Lcom/avos/avoscloud/AVUser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 755
    new-instance v0, Lcom/avos/avoscloud/AVStatusQuery;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVStatusQuery;-><init>()V

    .line 756
    .local v0, "query":Lcom/avos/avoscloud/AVStatusQuery;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVStatusQuery;->setSelfQuery(Z)V

    .line 757
    const-string v1, "source"

    invoke-virtual {v0, v1, p0}, Lcom/avos/avoscloud/AVStatusQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    .line 758
    const-string v1, "statuses"

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVStatusQuery;->setExternalQueryPath(Ljava/lang/String;)V

    .line 759
    return-object v0
.end method

.method static statusQueryMap(Ljava/lang/String;JJJLjava/lang/String;Ljava/util/Map;ZZ)Ljava/util/Map;
    .locals 6
    .param p0, "ownerId"    # Ljava/lang/String;
    .param p1, "skip"    # J
    .param p3, "limit"    # J
    .param p5, "maxId"    # J
    .param p7, "inboxType"    # Ljava/lang/String;
    .param p9, "includeSource"    # Z
    .param p10, "count"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJJ",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 327
    .local p8, "where":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromUserObjectId(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 328
    .local v1, "owner":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 330
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v3, "owner"

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_0

    .line 332
    const-string v3, "skip"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-lez v3, :cond_1

    .line 335
    const-string v3, "limit"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v3, p5, v3

    if-lez v3, :cond_2

    .line 338
    const-string v3, "maxId"

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    :cond_2
    invoke-static {p7}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 341
    const-string v3, "inboxType"

    invoke-interface {v2, v3, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    :cond_3
    if-eqz p8, :cond_4

    .line 344
    const-string v3, "where"

    invoke-static {p8}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    :cond_4
    if-eqz p9, :cond_5

    .line 347
    const-string v3, "include"

    const-string v4, "source"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    :cond_5
    if-eqz p10, :cond_6

    .line 350
    const-string v3, "count"

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :cond_6
    :goto_0
    return-object v2

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 783
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 792
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAllUnique(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 801
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addUnique(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 810
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "k"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 819
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public delete()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 824
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVStatus;->getObjectId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/avos/avoscloud/AVStatus$6;

    invoke-direct {v2, p0}, Lcom/avos/avoscloud/AVStatus$6;-><init>(Lcom/avos/avoscloud/AVStatus;)V

    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/AVStatus;->deleteStatusWithId(ZLjava/lang/String;Lcom/avos/avoscloud/DeleteCallback;)V

    .line 838
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 839
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 841
    :cond_0
    return-void
.end method

.method public deleteEventually()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 858
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public deleteEventually(Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/avos/avoscloud/DeleteCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 849
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public deleteInBackground()V
    .locals 1

    .prologue
    .line 863
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVStatus;->deleteStatusInBackground(Lcom/avos/avoscloud/DeleteCallback;)V

    .line 864
    return-void
.end method

.method public deleteInBackground(Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/avos/avoscloud/DeleteCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 986
    invoke-super {p0, p1}, Lcom/avos/avoscloud/AVObject;->deleteInBackground(Lcom/avos/avoscloud/DeleteCallback;)V

    .line 987
    return-void
.end method

.method public deleteStatusInBackground(Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/avos/avoscloud/DeleteCallback;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->objectId:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVStatus;->deleteStatusWithIDInBackgroud(Ljava/lang/String;Lcom/avos/avoscloud/DeleteCallback;)V

    .line 201
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 872
    iget-object v3, p0, Lcom/avos/avoscloud/AVStatus;->objectId:Ljava/lang/String;

    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 885
    :cond_0
    :goto_0
    return v1

    .line 875
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 876
    :cond_2
    if-eqz p1, :cond_0

    .line 877
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 878
    check-cast v0, Lcom/avos/avoscloud/AVStatus;

    .line 879
    .local v0, "other":Lcom/avos/avoscloud/AVStatus;
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVStatus;->getClassName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    .line 880
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVStatus;->getClassName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 882
    :cond_3
    iget-object v3, p0, Lcom/avos/avoscloud/AVStatus;->objectId:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 883
    iget-object v3, v0, Lcom/avos/avoscloud/AVStatus;->objectId:Ljava/lang/String;

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    .line 885
    goto :goto_0

    .line 881
    :cond_5
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVStatus;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVStatus;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 884
    :cond_6
    iget-object v3, p0, Lcom/avos/avoscloud/AVStatus;->objectId:Ljava/lang/String;

    iget-object v4, v0, Lcom/avos/avoscloud/AVStatus;->objectId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0
.end method

.method public fetch()Lcom/avos/avoscloud/AVObject;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 894
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public fetch(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 1
    .param p1, "includedKeys"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 903
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public fetchIfNeeded()Lcom/avos/avoscloud/AVObject;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 912
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public fetchIfNeeded(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 1
    .param p1, "includedKeys"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 921
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public fetchIfNeededInBackground(Lcom/avos/avoscloud/GetCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/GetCallback",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 930
    .local p1, "callback":Lcom/avos/avoscloud/GetCallback;, "Lcom/avos/avoscloud/GetCallback<Lcom/avos/avoscloud/AVObject;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public fetchIfNeededInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetCallback;)V
    .locals 1
    .param p1, "includedkeys"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/GetCallback",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 939
    .local p2, "callback":Lcom/avos/avoscloud/GetCallback;, "Lcom/avos/avoscloud/GetCallback<Lcom/avos/avoscloud/AVObject;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public fetchInBackground(Lcom/avos/avoscloud/GetCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/GetCallback",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 996
    .local p1, "callback":Lcom/avos/avoscloud/GetCallback;, "Lcom/avos/avoscloud/GetCallback<Lcom/avos/avoscloud/AVObject;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public fetchInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetCallback;)V
    .locals 1
    .param p1, "includeKeys"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/GetCallback",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1006
    .local p2, "callback":Lcom/avos/avoscloud/GetCallback;, "Lcom/avos/avoscloud/GetCallback<Lcom/avos/avoscloud/AVObject;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getACL()Lcom/avos/avoscloud/AVACL;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1021
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAVFile(Ljava/lang/String;)Lcom/avos/avoscloud/AVFile;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVFile;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1151
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAVGeoPoint(Ljava/lang/String;)Lcom/avos/avoscloud/AVGeoPoint;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1161
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAVObject(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1171
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAVUser(Ljava/lang/String;)Lcom/avos/avoscloud/AVUser;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1181
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1031
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1041
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1051
    const-class v0, Lcom/avos/avoscloud/AVStatus;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->createdAt:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->dateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    return-object v0
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1061
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1071
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 102
    iget-object v1, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    const-string v2, "image"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 103
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 104
    check-cast v0, Ljava/lang/String;

    .line 106
    .end local v0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInboxType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->inboxType:Ljava/lang/String;

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1081
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1091
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1101
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1111
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1121
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1131
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 135
    iget-object v1, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    const-string v2, "message"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 136
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 137
    check-cast v0, Ljava/lang/String;

    .line 139
    .end local v0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMessageId()J
    .locals 2

    .prologue
    .line 180
    iget-wide v0, p0, Lcom/avos/avoscloud/AVStatus;->messageId:J

    return-wide v0
.end method

.method public getNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1141
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method public getRelation(Ljava/lang/String;)Lcom/avos/avoscloud/AVRelation;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVRelation",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1191
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSource()Lcom/avos/avoscloud/AVObject;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->source:Lcom/avos/avoscloud/AVObject;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1201
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getUpdatedAt()Ljava/util/Date;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1211
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 976
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1221
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasSameId(Lcom/avos/avoscloud/AVObject;)Z
    .locals 1
    .param p1, "other"    # Lcom/avos/avoscloud/AVObject;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1231
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public increment(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1241
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public increment(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "amount"    # Ljava/lang/Number;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1251
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isFetchWhenSave()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 956
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1261
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method myQueryParameters(Lcom/avos/avoscloud/AVQuery;)Ljava/util/Map;
    .locals 5
    .param p1, "query"    # Lcom/avos/avoscloud/AVQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVQuery;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 636
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 637
    .local v1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getWhere()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 638
    const-string v3, "where"

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getWhere()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lcom/avos/avoscloud/AVUtils;->getParsedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getLimit()I

    move-result v3

    if-lez v3, :cond_1

    .line 641
    const-string v3, "limit"

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getLimit()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    :cond_1
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getSkip()I

    move-result v3

    if-lez v3, :cond_2

    .line 644
    const-string v3, "skip"

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getSkip()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    :cond_2
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getOrder()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getOrder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 647
    const-string v3, "order"

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getOrder()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    :cond_3
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getInclude()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getInclude()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 650
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getInclude()Ljava/util/List;

    move-result-object v3

    const-string v4, ","

    invoke-static {v3, v4}, Lcom/avos/avoscloud/AVUtils;->joinCollection(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 651
    .local v2, "value":Ljava/lang/String;
    const-string v3, "include"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    .end local v2    # "value":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getSelectedKeys()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getSelectedKeys()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 654
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getSelectedKeys()Ljava/util/Set;

    move-result-object v3

    const-string v4, ","

    invoke-static {v3, v4}, Lcom/avos/avoscloud/AVUtils;->joinCollection(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, "keys":Ljava/lang/String;
    const-string v3, "keys"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    .end local v0    # "keys":Ljava/lang/String;
    :cond_5
    return-object v1
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Object;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    return-void
.end method

.method public refresh()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1271
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public refresh(Ljava/lang/String;)V
    .locals 1
    .param p1, "includeKeys"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1281
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public refreshInBackground(Lcom/avos/avoscloud/RefreshCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/RefreshCallback",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1291
    .local p1, "callback":Lcom/avos/avoscloud/RefreshCallback;, "Lcom/avos/avoscloud/RefreshCallback<Lcom/avos/avoscloud/AVObject;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public refreshInBackground(Ljava/lang/String;Lcom/avos/avoscloud/RefreshCallback;)V
    .locals 1
    .param p1, "includeKeys"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/RefreshCallback",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1301
    .local p2, "callback":Lcom/avos/avoscloud/RefreshCallback;, "Lcom/avos/avoscloud/RefreshCallback<Lcom/avos/avoscloud/AVObject;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    return-void
.end method

.method public removeAll(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1311
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public save()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1321
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public saveEventually()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1331
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public saveEventually(Lcom/avos/avoscloud/SaveCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/avos/avoscloud/SaveCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1341
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public saveInBackground()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1351
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/avos/avoscloud/SaveCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1361
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public sendInBackground(Lcom/avos/avoscloud/SaveCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/avos/avoscloud/SaveCallback;

    .prologue
    .line 672
    invoke-static {p1}, Lcom/avos/avoscloud/AVStatus;->checkCurrentUser(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 691
    :goto_0
    return-void

    .line 676
    :cond_0
    iget-object v3, p0, Lcom/avos/avoscloud/AVStatus;->query:Lcom/avos/avoscloud/AVQuery;

    if-nez v3, :cond_1

    .line 677
    invoke-static {p0, p1}, Lcom/avos/avoscloud/AVStatus;->sendStatusToFollowersInBackgroud(Lcom/avos/avoscloud/AVStatus;Lcom/avos/avoscloud/SaveCallback;)V

    goto :goto_0

    .line 681
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 682
    .local v2, "queryBody":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/avos/avoscloud/AVStatus;->query:Lcom/avos/avoscloud/AVQuery;

    invoke-virtual {p0, v3}, Lcom/avos/avoscloud/AVStatus;->myQueryParameters(Lcom/avos/avoscloud/AVQuery;)Ljava/util/Map;

    move-result-object v1

    .line 683
    .local v1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 684
    const-string v3, "className"

    iget-object v4, p0, Lcom/avos/avoscloud/AVStatus;->query:Lcom/avos/avoscloud/AVQuery;

    invoke-virtual {v4}, Lcom/avos/avoscloud/AVQuery;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    iget-object v3, p0, Lcom/avos/avoscloud/AVStatus;->inboxType:Ljava/lang/String;

    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->TIMELINE:Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {p0, v3, v2}, Lcom/avos/avoscloud/AVStatus;->statusBody(Lcom/avos/avoscloud/AVStatus;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 690
    .local v0, "body":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0, v0, p1}, Lcom/avos/avoscloud/AVStatus;->postStatusImpl(Lcom/avos/avoscloud/AVStatus;Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V

    goto :goto_0

    .line 686
    .end local v0    # "body":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    iget-object v3, p0, Lcom/avos/avoscloud/AVStatus;->inboxType:Ljava/lang/String;

    goto :goto_1
.end method

.method public sendInBackgroundWithBlock(Lcom/avos/avoscloud/SaveCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/avos/avoscloud/SaveCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 668
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVStatus;->sendInBackground(Lcom/avos/avoscloud/SaveCallback;)V

    .line 669
    return-void
.end method

.method public setACL(Lcom/avos/avoscloud/AVACL;)V
    .locals 1
    .param p1, "acl"    # Lcom/avos/avoscloud/AVACL;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1371
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected setCreatedAt(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/avos/avoscloud/AVStatus;->createdAt:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setData(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 145
    return-void
.end method

.method public setFetchWhenSave(Z)V
    .locals 1
    .param p1, "fetchWhenSave"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 966
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 96
    if-eqz p1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    const-string v1, "image"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_0
    return-void
.end method

.method public setInboxType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 119
    if-eqz p1, :cond_0

    .line 120
    iput-object p1, p0, Lcom/avos/avoscloud/AVStatus;->inboxType:Ljava/lang/String;

    .line 122
    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 129
    if-eqz p1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    const-string v1, "message"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_0
    return-void
.end method

.method protected setMessageId(J)V
    .locals 0
    .param p1, "messageId"    # J

    .prologue
    .line 184
    iput-wide p1, p0, Lcom/avos/avoscloud/AVStatus;->messageId:J

    .line 185
    return-void
.end method

.method public setQuery(Lcom/avos/avoscloud/AVQuery;)V
    .locals 0
    .param p1, "query"    # Lcom/avos/avoscloud/AVQuery;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/avos/avoscloud/AVStatus;->query:Lcom/avos/avoscloud/AVQuery;

    .line 126
    return-void
.end method

.method public setSource(Lcom/avos/avoscloud/AVObject;)V
    .locals 0
    .param p1, "source"    # Lcom/avos/avoscloud/AVObject;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/avos/avoscloud/AVStatus;->source:Lcom/avos/avoscloud/AVObject;

    .line 116
    return-void
.end method

.method public toObject()Lcom/avos/avoscloud/AVObject;
    .locals 2

    .prologue
    .line 867
    const-string v0, "_Status"

    iget-object v1, p0, Lcom/avos/avoscloud/AVStatus;->objectId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AVStatus [, objectId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVStatus;->objectId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVStatus;->createdAt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

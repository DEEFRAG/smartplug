.class public Lcom/avos/avoscloud/AVObject;
.super Ljava/lang/Object;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVObject$KeyValueCallback;,
        Lcom/avos/avoscloud/AVObject$FetchObjectCallback;
    }
.end annotation


# static fields
.field public static final INVALID_KEYS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGTAG:Ljava/lang/String;

.field private static final SUB_CLASSES_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final SUB_CLASSES_REVERSE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static deserializing:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected transient acl:Lcom/avos/avoscloud/AVACL;

.field private className:Ljava/lang/String;

.field private createdAt:Ljava/lang/String;

.field private volatile fetchWhenSave:Z

.field private isDataReady:Z

.field protected keyValues:Ljava/util/Map;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVKeyValues",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected objectId:Ljava/lang/String;

.field private pendingKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient queue:Lcom/avos/avoscloud/AVOperationQueue;

.field private volatile transient running:Z

.field private updatedAt:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sput-object v0, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 44
    const-class v0, Lcom/avos/avoscloud/AVObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVObject;->LOGTAG:Ljava/lang/String;

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVObject;->SUB_CLASSES_MAP:Ljava/util/Map;

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVObject;->SUB_CLASSES_REVERSE_MAP:Ljava/util/Map;

    .line 1269
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    .line 1272
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "code"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1273
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "uuid"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1274
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "className"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1275
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "keyValues"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1276
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "fetchWhenSave"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1277
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "running"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1278
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "acl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1279
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "ACL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1280
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "isDataReady"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1281
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "pendingKeys"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1282
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "createdAt"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1283
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "updatedAt"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1284
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "objectId"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1297
    new-instance v0, Lcom/avos/avoscloud/AVObject$11;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVObject$11;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVObject;->deserializing:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avos/avoscloud/AVObject;->fetchWhenSave:Z

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->keyValues:Ljava/util/Map;

    .line 87
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->pendingKeys:Ljava/util/Set;

    .line 95
    invoke-direct {p0}, Lcom/avos/avoscloud/AVObject;->init()V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "theClassName"    # Ljava/lang/String;

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avos/avoscloud/AVObject;->fetchWhenSave:Z

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->keyValues:Ljava/util/Map;

    .line 87
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->pendingKeys:Ljava/util/Set;

    .line 271
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->checkClassName(Ljava/lang/String;)V

    .line 272
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject;->className:Ljava/lang/String;

    .line 273
    invoke-direct {p0}, Lcom/avos/avoscloud/AVObject;->init()V

    .line 274
    return-void
.end method

.method private static _saveAll(ZLjava/util/List;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 13
    .param p0, "sync"    # Z
    .param p2, "callback"    # Lcom/avos/avoscloud/SaveCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;",
            "Lcom/avos/avoscloud/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1534
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<+Lcom/avos/avoscloud/AVObject;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1535
    .local v1, "list":Ljava/util/LinkedList;
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 1536
    .local v9, "files":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVFile;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/avos/avoscloud/AVObject;

    .line 1537
    .local v12, "o":Lcom/avos/avoscloud/AVObject;
    invoke-direct {v12}, Lcom/avos/avoscloud/AVObject;->checkCircleReference()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1538
    if-eqz p2, :cond_1

    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->circleException()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 1629
    .end local v12    # "o":Lcom/avos/avoscloud/AVObject;
    :cond_1
    :goto_1
    return-void

    .line 1542
    .restart local v12    # "o":Lcom/avos/avoscloud/AVObject;
    :cond_2
    :try_start_0
    invoke-direct {v12, v1, p0}, Lcom/avos/avoscloud/AVObject;->addBatchSaveRequest(Ljava/util/LinkedList;Z)Ljava/util/List;

    move-result-object v10

    .line 1543
    .local v10, "filesNeedToUpload":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVFile;>;"
    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1544
    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lcom/avos/avoscloud/AVException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1546
    .end local v10    # "filesNeedToUpload":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVFile;>;"
    :catch_0
    move-exception v8

    .line 1547
    .local v8, "e":Lcom/avos/avoscloud/AVException;
    if-eqz p2, :cond_0

    .line 1548
    invoke-virtual {p2, v8}, Lcom/avos/avoscloud/SaveCallback;->done(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 1552
    .end local v8    # "e":Lcom/avos/avoscloud/AVException;
    .end local v12    # "o":Lcom/avos/avoscloud/AVObject;
    :cond_3
    new-instance v5, Lcom/avos/avoscloud/AVObject$17;

    invoke-direct {v5, p1, p0, p2}, Lcom/avos/avoscloud/AVObject$17;-><init>(Ljava/util/List;ZLcom/avos/avoscloud/SaveCallback;)V

    .line 1610
    .local v5, "genericObjectCallback":Lcom/avos/avoscloud/GenericObjectCallback;
    if-eqz v9, :cond_4

    :try_start_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1611
    new-instance v0, Lcom/avos/avoscloud/AVObject$18;

    invoke-direct {v0, v1, p0, v5}, Lcom/avos/avoscloud/AVObject$18;-><init>(Ljava/util/LinkedList;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    invoke-static {v9, p0, v1, v0}, Lcom/avos/avoscloud/AVObject;->saveFileBeforeSave(Ljava/util/List;ZLjava/util/List;Lcom/avos/avoscloud/SaveCallback;)V
    :try_end_1
    .catch Lcom/avos/avoscloud/AVException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1624
    :catch_1
    move-exception v8

    .line 1625
    .restart local v8    # "e":Lcom/avos/avoscloud/AVException;
    if-eqz p2, :cond_1

    .line 1626
    invoke-virtual {p2, v8}, Lcom/avos/avoscloud/SaveCallback;->done(Lcom/avos/avoscloud/AVException;)V

    goto :goto_1

    .line 1621
    .end local v8    # "e":Lcom/avos/avoscloud/AVException;
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v2, p0

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postBatchSave(Ljava/util/List;ZZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/avos/avoscloud/AVException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method private _saveObject(Ljava/util/List;ZZLcom/avos/avoscloud/SaveCallback;)V
    .locals 5
    .param p1, "list"    # Ljava/util/List;
    .param p2, "sync"    # Z
    .param p3, "isEventually"    # Z
    .param p4, "callback"    # Lcom/avos/avoscloud/SaveCallback;

    .prologue
    const/4 v4, 0x0

    .line 1697
    const/4 v2, 0x1

    .line 1698
    .local v2, "runCallback":Z
    const/4 v0, 0x0

    .line 1699
    .local v0, "operation":Lcom/avos/avoscloud/AVOperation;
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1700
    iget-object v3, p0, Lcom/avos/avoscloud/AVObject;->queue:Lcom/avos/avoscloud/AVOperationQueue;

    invoke-virtual {v3, p1, p4}, Lcom/avos/avoscloud/AVOperationQueue;->addSnapshotOperation(Ljava/util/List;Lcom/avos/avoscloud/SaveCallback;)Lcom/avos/avoscloud/AVOperation;

    move-result-object v0

    .line 1701
    const/4 v2, 0x0

    .line 1704
    :cond_0
    iget-object v3, p0, Lcom/avos/avoscloud/AVObject;->pendingKeys:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1705
    if-eqz v0, :cond_1

    .line 1706
    invoke-virtual {v0, v4}, Lcom/avos/avoscloud/AVOperation;->setLast(Z)V

    .line 1709
    :cond_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1710
    .local v1, "pendingRequests":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-direct {p0, v1}, Lcom/avos/avoscloud/AVObject;->addPendingBatchRequest(Ljava/util/LinkedList;)V

    .line 1711
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1712
    iget-object v3, p0, Lcom/avos/avoscloud/AVObject;->queue:Lcom/avos/avoscloud/AVOperationQueue;

    invoke-virtual {v3, v1, p4}, Lcom/avos/avoscloud/AVOperationQueue;->addPendingOperation(Ljava/util/List;Lcom/avos/avoscloud/SaveCallback;)Lcom/avos/avoscloud/AVOperation;

    .line 1713
    const/4 v2, 0x0

    .line 1717
    .end local v1    # "pendingRequests":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_2
    iget-object v3, p0, Lcom/avos/avoscloud/AVObject;->queue:Lcom/avos/avoscloud/AVOperationQueue;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVOperationQueue;->increaseSequence()V

    .line 1718
    iget-boolean v3, p0, Lcom/avos/avoscloud/AVObject;->running:Z

    if-eqz v3, :cond_3

    .line 1719
    const-string v3, "already has one request sending"

    invoke-static {v3}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 1733
    :goto_0
    return-void

    .line 1722
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/avos/avoscloud/AVObject;->running:Z

    .line 1724
    if-eqz v2, :cond_5

    .line 1725
    if-eqz p4, :cond_4

    .line 1726
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->onSaveSuccess()V

    .line 1727
    const/4 v3, 0x0

    invoke-virtual {p4, v3}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 1729
    :cond_4
    iput-boolean v4, p0, Lcom/avos/avoscloud/AVObject;->running:Z

    goto :goto_0

    .line 1731
    :cond_5
    invoke-direct {p0, p2, p3, p4}, Lcom/avos/avoscloud/AVObject;->saveObjectToAVOSCloud(ZZLcom/avos/avoscloud/SaveCallback;)V

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/avos/avoscloud/AVObject;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/avos/avoscloud/AVObject;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVObject;->isDataReady:Z

    return p1
.end method

.method static synthetic access$200(Lcom/avos/avoscloud/AVObject;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVObject;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->pendingKeys:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/avos/avoscloud/AVObject;Ljava/util/LinkedList;)V
    .locals 0
    .param p0, "x0"    # Lcom/avos/avoscloud/AVObject;
    .param p1, "x1"    # Ljava/util/LinkedList;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;->addPendingBatchRequest(Ljava/util/LinkedList;)V

    return-void
.end method

.method static synthetic access$500(Lcom/avos/avoscloud/AVObject;ZZLcom/avos/avoscloud/SaveCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/avos/avoscloud/AVObject;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lcom/avos/avoscloud/SaveCallback;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/AVObject;->saveObject(ZZLcom/avos/avoscloud/SaveCallback;)V

    return-void
.end method

.method static synthetic access$602(Lcom/avos/avoscloud/AVObject;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/avos/avoscloud/AVObject;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVObject;->running:Z

    return p1
.end method

.method static synthetic access$700(Lcom/avos/avoscloud/AVObject;ZZLcom/avos/avoscloud/SaveCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/avos/avoscloud/AVObject;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lcom/avos/avoscloud/SaveCallback;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/AVObject;->saveObjectToAVOSCloud(ZZLcom/avos/avoscloud/SaveCallback;)V

    return-void
.end method

.method static synthetic access$800(Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVOperationQueue;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVObject;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->queue:Lcom/avos/avoscloud/AVOperationQueue;

    return-object v0
.end method

.method private addBatchSaveRequest(Ljava/util/LinkedList;Z)Ljava/util/List;
    .locals 10
    .param p1, "list"    # Ljava/util/LinkedList;
    .param p2, "sync"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVFile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 1981
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 1982
    .local v2, "fileNeedToUpload":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVFile;>;"
    iget-object v9, p0, Lcom/avos/avoscloud/AVObject;->keyValues:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1983
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/avos/avoscloud/AVKeyValues<*>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/avos/avoscloud/AVKeyValues;

    .line 1984
    .local v6, "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    iget-object v8, v6, Lcom/avos/avoscloud/AVKeyValues;->value:Ljava/lang/Object;

    .line 1985
    .local v8, "o":Ljava/lang/Object;
    iget-object v5, v6, Lcom/avos/avoscloud/AVKeyValues;->key:Ljava/lang/String;

    .line 1988
    .local v5, "k":Ljava/lang/String;
    if-eqz v8, :cond_1

    const-class v9, Lcom/avos/avoscloud/AVObject;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1989
    check-cast v8, Lcom/avos/avoscloud/AVObject;

    .end local v8    # "o":Ljava/lang/Object;
    invoke-direct {v8, p1, p2}, Lcom/avos/avoscloud/AVObject;->addBatchSaveRequest(Ljava/util/LinkedList;Z)Ljava/util/List;

    move-result-object v3

    .line 1990
    .local v3, "files":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVFile;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1991
    .end local v3    # "files":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVFile;>;"
    .restart local v8    # "o":Ljava/lang/Object;
    :cond_1
    if-eqz v8, :cond_0

    const-class v9, Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v1, v8

    .line 1992
    check-cast v1, Lcom/avos/avoscloud/AVFile;

    .line 1993
    .local v1, "file":Lcom/avos/avoscloud/AVFile;
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVFile;->getObjectId()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    .line 1994
    if-eqz p2, :cond_2

    .line 1995
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVFile;->save()V

    goto :goto_0

    .line 1997
    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2002
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/avos/avoscloud/AVKeyValues<*>;>;"
    .end local v1    # "file":Lcom/avos/avoscloud/AVFile;
    .end local v5    # "k":Ljava/lang/String;
    .end local v6    # "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    .end local v8    # "o":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->batchRequestFromKeyValues()Ljava/util/Map;

    move-result-object v7

    .line 2003
    .local v7, "map":Ljava/util/Map;
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 2004
    invoke-virtual {p1, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2006
    :cond_4
    return-object v2
.end method

.method private addObjectToArray(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "unique"    # Z

    .prologue
    .line 2208
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;->checkKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2209
    new-instance v0, Lcom/avos/avoscloud/AVObject$24;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/avos/avoscloud/AVObject$24;-><init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/Object;ZLjava/lang/String;)V

    .line 2243
    .local v0, "cb":Lcom/avos/avoscloud/AVObject$KeyValueCallback;, "Lcom/avos/avoscloud/AVObject$KeyValueCallback<Ljava/util/Collection<Ljava/lang/Object;>;>;"
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->execute(Ljava/lang/String;)V

    .line 2246
    .end local v0    # "cb":Lcom/avos/avoscloud/AVObject$KeyValueCallback;, "Lcom/avos/avoscloud/AVObject$KeyValueCallback<Ljava/util/Collection<Ljava/lang/Object;>;>;"
    :cond_0
    return-void
.end method

.method private addPendingBatchRequest(Ljava/util/LinkedList;)V
    .locals 9
    .param p1, "list"    # Ljava/util/LinkedList;

    .prologue
    .line 2010
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->batchRequestFromPendingKeys()Ljava/util/List;

    move-result-object v7

    .line 2011
    .local v7, "requests":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map;>;"
    const/4 v1, 0x0

    .line 2012
    .local v1, "i":I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 2013
    .local v5, "map":Ljava/util/Map;
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 2014
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {p1, v1, v5}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 2017
    .end local v5    # "map":Ljava/util/Map;
    :cond_1
    iget-object v8, p0, Lcom/avos/avoscloud/AVObject;->keyValues:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2018
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/avos/avoscloud/AVKeyValues<*>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/avos/avoscloud/AVKeyValues;

    .line 2019
    .local v4, "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    iget-object v6, v4, Lcom/avos/avoscloud/AVKeyValues;->value:Ljava/lang/Object;

    .line 2022
    .local v6, "o":Ljava/lang/Object;
    if-eqz v6, :cond_2

    const-class v8, Lcom/avos/avoscloud/AVObject;

    invoke-virtual {v8, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2023
    check-cast v6, Lcom/avos/avoscloud/AVObject;

    .end local v6    # "o":Ljava/lang/Object;
    invoke-direct {v6, p1}, Lcom/avos/avoscloud/AVObject;->addPendingBatchRequest(Ljava/util/LinkedList;)V

    goto :goto_1

    .line 2026
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/avos/avoscloud/AVKeyValues<*>;>;"
    .end local v4    # "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    :cond_3
    return-void
.end method

.method public static beginDeserialize()V
    .locals 2

    .prologue
    .line 1307
    sget-object v0, Lcom/avos/avoscloud/AVObject;->deserializing:Ljava/lang/ThreadLocal;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1308
    return-void
.end method

.method private checkCircleReference()Z
    .locals 1

    .prologue
    .line 2033
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVObject;->checkCircleReference(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method private checkCircleReference(Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "status":Ljava/util/Map;, "Ljava/util/Map<Lcom/avos/avoscloud/AVObject;Ljava/lang/Boolean;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2040
    const/4 v3, 0x1

    .line 2042
    .local v3, "result":Z
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 2043
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {p1, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2051
    iget-object v4, p0, Lcom/avos/avoscloud/AVObject;->keyValues:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVKeyValues;

    .line 2052
    .local v1, "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    iget-object v2, v1, Lcom/avos/avoscloud/AVKeyValues;->value:Ljava/lang/Object;

    .line 2053
    .local v2, "o":Ljava/lang/Object;
    instance-of v4, v2, Lcom/avos/avoscloud/AVObject;

    if-eqz v4, :cond_0

    .line 2054
    if-eqz v3, :cond_3

    check-cast v2, Lcom/avos/avoscloud/AVObject;

    .end local v2    # "o":Ljava/lang/Object;
    invoke-direct {v2, p1}, Lcom/avos/avoscloud/AVObject;->checkCircleReference(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v3, v5

    :goto_1
    goto :goto_0

    .line 2044
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    :cond_1
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2045
    const-string v4, "Found a circular dependency while saving"

    invoke-static {v4}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    .line 2060
    :goto_2
    return v6

    :cond_2
    move v6, v5

    .line 2048
    goto :goto_2

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    :cond_3
    move v3, v6

    .line 2054
    goto :goto_1

    .line 2058
    .end local v1    # "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    :cond_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {p1, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v6, v3

    .line 2060
    goto :goto_2
.end method

.method private checkKey(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1288
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Blank key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1289
    :cond_0
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1290
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key should not start with \'_\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1292
    :cond_1
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Internal key name:`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "`,please use setter/getter for it."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->w(Ljava/lang/String;)V

    .line 1294
    :cond_2
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private copyFromJsonArray(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;
    .locals 8
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 1803
    :try_start_0
    const-class v6, Ljava/util/ArrayList;

    invoke-static {p1, v6}, Lcom/avos/avoscloud/AVUtils;->getFromJSON(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1804
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 1805
    .local v5, "map":Ljava/util/Map;
    const-string v6, "success"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 1806
    .local v4, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v4, :cond_1

    .line 1807
    invoke-static {v4, p0}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1814
    .end local v0    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "map":Ljava/util/Map;
    :catch_0
    move-exception v1

    .line 1815
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "parse jsonArray exception"

    invoke-static {v6, v1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1817
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v6, 0x0

    :goto_1
    return-object v6

    .line 1809
    .restart local v0    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v5    # "map":Ljava/util/Map;
    :cond_1
    :try_start_1
    const-string v6, "error"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1810
    .local v2, "errorMap":Ljava/util/Map;
    const-string v6, "code"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v7

    const-string v6, "error"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_1
.end method

.method public static create(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 362
    new-instance v0, Lcom/avos/avoscloud/AVObject;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createWithoutData(Ljava/lang/Class;Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 4
    .param p1, "objectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 400
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVObject;

    .line 401
    .local v1, "result":Lcom/avos/avoscloud/AVObject;, "TT;"
    invoke-static {p0}, Lcom/avos/avoscloud/AVObject;->getSubClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/AVObject;->setClassName(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v1, p1}, Lcom/avos/avoscloud/AVObject;->setObjectId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    return-object v1

    .line 404
    .end local v1    # "result":Lcom/avos/avoscloud/AVObject;, "TT;"
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/avos/avoscloud/AVException;

    const-string v3, "Create subclass instance failed."

    invoke-direct {v2, v3, v0}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "objectId"    # Ljava/lang/String;

    .prologue
    .line 376
    new-instance v0, Lcom/avos/avoscloud/AVObject;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVObject;-><init>(Ljava/lang/String;)V

    .line 377
    .local v0, "object":Lcom/avos/avoscloud/AVObject;
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVObject;->setObjectId(Ljava/lang/String;)V

    .line 378
    return-object v0
.end method

.method private delete(ZZLcom/avos/avoscloud/DeleteCallback;)V
    .locals 8
    .param p1, "sync"    # Z
    .param p2, "isEventually"    # Z
    .param p3, "callback"    # Lcom/avos/avoscloud/DeleteCallback;

    .prologue
    .line 579
    move-object v7, p3

    .line 580
    .local v7, "internalCallback":Lcom/avos/avoscloud/DeleteCallback;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-static {p0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getEndpoint(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/avos/avoscloud/AVObject$4;

    invoke-direct {v4, p0, v7}, Lcom/avos/avoscloud/AVObject$4;-><init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/DeleteCallback;)V

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->internalId()Ljava/lang/String;

    move-result-object v6

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/avos/avoscloud/PaasClient;->deleteObject(Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    return-void
.end method

.method public static deleteAll(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 441
    .local p0, "objects":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/avos/avoscloud/AVObject;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/avos/avoscloud/AVObject$2;

    invoke-direct {v2}, Lcom/avos/avoscloud/AVObject$2;-><init>()V

    invoke-static {v0, v1, p0, v2}, Lcom/avos/avoscloud/AVObject;->deleteAll(ZZLjava/util/Collection;Lcom/avos/avoscloud/DeleteCallback;)V

    .line 454
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 457
    :cond_0
    return-void
.end method

.method private static deleteAll(ZZLjava/util/Collection;Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 14
    .param p0, "sync"    # Z
    .param p1, "isEventually"    # Z
    .param p3, "callback"    # Lcom/avos/avoscloud/DeleteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/Collection",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;",
            "Lcom/avos/avoscloud/DeleteCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 474
    .local p2, "objects":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/avos/avoscloud/AVObject;>;"
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 475
    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v3}, Lcom/avos/avoscloud/DeleteCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 522
    :cond_1
    :goto_0
    return-void

    .line 478
    :cond_2
    if-eqz p1, :cond_4

    .line 479
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/avos/avoscloud/AVObject;

    .line 480
    .local v11, "object":Lcom/avos/avoscloud/AVObject;
    if-eqz v11, :cond_3

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/avos/avoscloud/AVObject;->deleteEventually(Lcom/avos/avoscloud/DeleteCallback;)V

    goto :goto_1

    .line 483
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "object":Lcom/avos/avoscloud/AVObject;
    :cond_4
    const/4 v8, 0x0

    .line 484
    .local v8, "className":Ljava/lang/String;
    const/4 v13, 0x1

    .line 485
    .local v13, "wasFirst":Z
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 486
    .local v12, "sb":Ljava/lang/StringBuilder;
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/avos/avoscloud/AVObject;

    .line 487
    .restart local v11    # "object":Lcom/avos/avoscloud/AVObject;
    invoke-virtual {v11}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v11, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 488
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid AVObject, the class name or objectId is blank."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 491
    :cond_6
    if-nez v8, :cond_8

    .line 492
    invoke-virtual {v11}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 496
    :cond_7
    if-eqz v13, :cond_9

    .line 497
    invoke-static {v11}, Lcom/avos/avoscloud/AVPowerfulUtils;->getEndpoint(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    const/4 v13, 0x0

    goto :goto_2

    .line 493
    :cond_8
    invoke-virtual {v11}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 494
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "The objects class name must be the same."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 500
    :cond_9
    const-string v1, ","

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 504
    .end local v11    # "object":Lcom/avos/avoscloud/AVObject;
    :cond_a
    move-object/from16 v10, p3

    .line 505
    .local v10, "internalCallback":Lcom/avos/avoscloud/DeleteCallback;
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 506
    .local v2, "endpoint":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVObject$3;

    invoke-direct {v5, v10}, Lcom/avos/avoscloud/AVObject$3;-><init>(Lcom/avos/avoscloud/DeleteCallback;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p0

    invoke-virtual/range {v1 .. v7}, Lcom/avos/avoscloud/PaasClient;->deleteObject(Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static deleteAllInBackground(Ljava/util/Collection;Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 1
    .param p1, "deleteCallback"    # Lcom/avos/avoscloud/DeleteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;",
            "Lcom/avos/avoscloud/DeleteCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "objects":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/avos/avoscloud/AVObject;>;"
    const/4 v0, 0x0

    .line 469
    invoke-static {v0, v0, p0, p1}, Lcom/avos/avoscloud/AVObject;->deleteAll(ZZLjava/util/Collection;Lcom/avos/avoscloud/DeleteCallback;)V

    .line 470
    return-void
.end method

.method public static endDeserialize()V
    .locals 2

    .prologue
    .line 1311
    sget-object v0, Lcom/avos/avoscloud/AVObject;->deserializing:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1312
    return-void
.end method

.method public static fetchAll(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 630
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVObject;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public static fetchAllIfNeeded(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 640
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVObject;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public static fetchAllIfNeededInBackground(Ljava/util/List;Lcom/avos/avoscloud/FindCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;",
            "Lcom/avos/avoscloud/FindCallback",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 651
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVObject;>;"
    .local p1, "callback":Lcom/avos/avoscloud/FindCallback;, "Lcom/avos/avoscloud/FindCallback<Lcom/avos/avoscloud/AVObject;>;"
    move-object v0, p1

    .line 652
    .local v0, "internalCallback":Lcom/avos/avoscloud/FindCallback;, "Lcom/avos/avoscloud/FindCallback<Lcom/avos/avoscloud/AVObject;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 653
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVObject;>;"
    const/4 v2, 0x1

    new-instance v3, Lcom/avos/avoscloud/AVObject$6;

    invoke-direct {v3, v1, v0}, Lcom/avos/avoscloud/AVObject$6;-><init>(Ljava/util/List;Lcom/avos/avoscloud/FindCallback;)V

    invoke-static {v2, p0, v3}, Lcom/avos/avoscloud/AVObject;->fetchAllInBackground(ZLjava/util/List;Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 664
    return-void
.end method

.method public static fetchAllInBackground(Ljava/util/List;Lcom/avos/avoscloud/FindCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;",
            "Lcom/avos/avoscloud/FindCallback",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 673
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVObject;>;"
    .local p1, "callback":Lcom/avos/avoscloud/FindCallback;, "Lcom/avos/avoscloud/FindCallback<Lcom/avos/avoscloud/AVObject;>;"
    move-object v0, p1

    .line 674
    .local v0, "internalCallback":Lcom/avos/avoscloud/FindCallback;, "Lcom/avos/avoscloud/FindCallback<Lcom/avos/avoscloud/AVObject;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 675
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVObject;>;"
    const/4 v2, 0x0

    new-instance v3, Lcom/avos/avoscloud/AVObject$7;

    invoke-direct {v3, v1, v0}, Lcom/avos/avoscloud/AVObject$7;-><init>(Ljava/util/List;Lcom/avos/avoscloud/FindCallback;)V

    invoke-static {v2, p0, v3}, Lcom/avos/avoscloud/AVObject;->fetchAllInBackground(ZLjava/util/List;Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 686
    return-void
.end method

.method private static fetchAllInBackground(ZLjava/util/List;Lcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 8
    .param p0, "check"    # Z
    .param p2, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVObject;>;"
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 690
    move-object v2, p2

    .line 691
    .local v2, "internalCallback":Lcom/avos/avoscloud/GenericObjectCallback;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 692
    .local v4, "total":I
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 693
    .local v0, "counter":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/avos/avoscloud/AVObject;

    .line 694
    .local v3, "object":Lcom/avos/avoscloud/AVObject;
    if-eqz p0, :cond_1

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVObject;->isDataAvailable()Z

    move-result v5

    if-nez v5, :cond_2

    .line 695
    :cond_1
    new-instance v5, Lcom/avos/avoscloud/AVObject$8;

    invoke-direct {v5, v2, v0, v4}, Lcom/avos/avoscloud/AVObject$8;-><init>(Lcom/avos/avoscloud/GenericObjectCallback;Ljava/util/concurrent/atomic/AtomicInteger;I)V

    invoke-direct {v3, v6, v7, v5}, Lcom/avos/avoscloud/AVObject;->fetchInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/GetCallback;)V

    goto :goto_0

    .line 703
    :cond_2
    if-eqz v2, :cond_0

    .line 704
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v5

    invoke-virtual {v2, v5, v4, v3}, Lcom/avos/avoscloud/GenericObjectCallback;->onGroupRequestFinished(IILcom/avos/avoscloud/AVObject;)V

    goto :goto_0

    .line 708
    .end local v3    # "object":Lcom/avos/avoscloud/AVObject;
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_4

    if-eqz v2, :cond_4

    .line 709
    invoke-virtual {v2, v6, v6, v7}, Lcom/avos/avoscloud/GenericObjectCallback;->onGroupRequestFinished(IILcom/avos/avoscloud/AVObject;)V

    .line 711
    :cond_4
    return-void
.end method

.method private fetchInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/GetCallback;)V
    .locals 8
    .param p1, "sync"    # Z
    .param p2, "includeKeys"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/GetCallback",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "callback":Lcom/avos/avoscloud/GetCallback;, "Lcom/avos/avoscloud/GetCallback<Lcom/avos/avoscloud/AVObject;>;"
    const/4 v3, 0x0

    .line 789
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 790
    if-eqz p3, :cond_0

    .line 791
    const/16 v0, 0x68

    const-string v1, "Missing objectId"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v6

    .line 793
    .local v6, "exception":Lcom/avos/avoscloud/AVException;
    invoke-virtual {p3, v3, v6}, Lcom/avos/avoscloud/GetCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 803
    .end local v6    # "exception":Lcom/avos/avoscloud/AVException;
    :cond_0
    :goto_0
    return-void

    .line 797
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 798
    .local v7, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 799
    const-string v0, "include"

    invoke-interface {v7, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    :cond_2
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-static {p0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getEndpoint(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v2, v7}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->headerMap()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Lcom/avos/avoscloud/AVObject$FetchObjectCallback;

    invoke-direct {v5, p0, p3, v3}, Lcom/avos/avoscloud/AVObject$FetchObjectCallback;-><init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/AVObject$1;)V

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0
.end method

.method private findArray(Ljava/util/Map;Ljava/lang/String;Z)Ljava/util/List;
    .locals 6
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List;"
        }
    .end annotation

    .prologue
    .line 2104
    .local p1, "parent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 2106
    .local v1, "array":Ljava/util/List;
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 2107
    if-nez v1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move-object v2, v1

    .line 2116
    .end local v1    # "array":Ljava/util/List;
    :goto_0
    return-object v2

    .line 2110
    .restart local v1    # "array":Ljava/util/List;
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2111
    .end local v1    # "array":Ljava/util/List;
    .local v2, "array":Ljava/util/List;
    :try_start_1
    invoke-interface {p1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 2112
    .end local v2    # "array":Ljava/util/List;
    .restart local v1    # "array":Ljava/util/List;
    goto :goto_0

    .line 2113
    :catch_0
    move-exception v3

    .line 2114
    .local v3, "exception":Ljava/lang/Exception;
    :goto_1
    sget-object v4, Lcom/avos/avoscloud/AVObject;->LOGTAG:Ljava/lang/String;

    const-string v5, "find array failed."

    invoke-static {v4, v5, v3}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v2, v1

    .line 2116
    .local v2, "array":Ljava/lang/Object;
    goto :goto_0

    .line 2113
    .end local v1    # "array":Ljava/util/List;
    .end local v3    # "exception":Ljava/lang/Exception;
    .local v2, "array":Ljava/util/List;
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "array":Ljava/util/List;
    .restart local v1    # "array":Ljava/util/List;
    goto :goto_1
.end method

.method private getBatchParams()Ljava/util/Map;
    .locals 3

    .prologue
    .line 1972
    iget-boolean v1, p0, Lcom/avos/avoscloud/AVObject;->fetchWhenSave:Z

    if-eqz v1, :cond_0

    .line 1973
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1974
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v1, "new"

    iget-boolean v2, p0, Lcom/avos/avoscloud/AVObject;->fetchWhenSave:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1977
    .end local v0    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getQuery(Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 316
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    invoke-static {p0}, Lcom/avos/avoscloud/AVObject;->getSubClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method static getSubClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    sget-object v0, Lcom/avos/avoscloud/AVObject;->SUB_CLASSES_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method static getSubClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/avos/avoscloud/AVObject;>;"
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->userClassName()Ljava/lang/String;

    move-result-object v0

    .line 237
    :goto_0
    return-object v0

    .line 234
    :cond_0
    const-class v0, Lcom/avos/avoscloud/AVRole;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    const-string v0, "_Role"

    goto :goto_0

    .line 237
    :cond_1
    sget-object v0, Lcom/avos/avoscloud/AVObject;->SUB_CLASSES_REVERSE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 277
    const-string v0, ""

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    .line 278
    iput-boolean v2, p0, Lcom/avos/avoscloud/AVObject;->isDataReady:Z

    .line 279
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/PaasClient;->getDefaultACL()Lcom/avos/avoscloud/AVACL;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    new-instance v0, Lcom/avos/avoscloud/AVACL;

    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/PaasClient;->getDefaultACL()Lcom/avos/avoscloud/AVACL;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVACL;-><init>(Lcom/avos/avoscloud/AVACL;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->acl:Lcom/avos/avoscloud/AVACL;

    .line 282
    :cond_0
    iput-boolean v2, p0, Lcom/avos/avoscloud/AVObject;->running:Z

    .line 283
    new-instance v0, Lcom/avos/avoscloud/AVOperationQueue;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVOperationQueue;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->queue:Lcom/avos/avoscloud/AVOperationQueue;

    .line 284
    return-void
.end method

.method private refreshInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/RefreshCallback;)V
    .locals 7
    .param p1, "sync"    # Z
    .param p2, "includeKeys"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/RefreshCallback",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1410
    .local p3, "callback":Lcom/avos/avoscloud/RefreshCallback;, "Lcom/avos/avoscloud/RefreshCallback<Lcom/avos/avoscloud/AVObject;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1411
    .local v6, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1412
    const-string v0, "include"

    invoke-interface {v6, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-static {p0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getEndpoint(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v2, v6}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->headerMap()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Lcom/avos/avoscloud/AVObject$FetchObjectCallback;

    const/4 v3, 0x0

    invoke-direct {v5, p0, p3, v3}, Lcom/avos/avoscloud/AVObject$FetchObjectCallback;-><init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/AVObject$1;)V

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 1416
    return-void
.end method

.method public static registerSubclass(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v2, Lcom/avos/avoscloud/AVClassName;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVClassName;

    .line 249
    .local v1, "parseClassName":Lcom/avos/avoscloud/AVClassName;
    if-nez v1, :cond_0

    .line 250
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The class is not annotated by @AVClassName"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 252
    :cond_0
    invoke-interface {v1}, Lcom/avos/avoscloud/AVClassName;->value()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->checkClassName(Ljava/lang/String;)V

    .line 254
    sget-object v2, Lcom/avos/avoscloud/AVObject;->SUB_CLASSES_MAP:Ljava/util/Map;

    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v2, Lcom/avos/avoscloud/AVObject;->SUB_CLASSES_REVERSE_MAP:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    return-void
.end method

.method private removeObjectForKey(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2249
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;->checkKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2250
    new-instance v0, Lcom/avos/avoscloud/AVObject$25;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/AVObject$25;-><init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;)V

    .line 2267
    .local v0, "cb":Lcom/avos/avoscloud/AVObject$KeyValueCallback;, "Lcom/avos/avoscloud/AVObject$KeyValueCallback<Ljava/lang/Void;>;"
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->execute(Ljava/lang/String;)V

    .line 2269
    .end local v0    # "cb":Lcom/avos/avoscloud/AVObject$KeyValueCallback;, "Lcom/avos/avoscloud/AVObject$KeyValueCallback<Ljava/lang/Void;>;"
    :cond_0
    return-void
.end method

.method public static saveAll(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 1493
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<+Lcom/avos/avoscloud/AVObject;>;"
    const/4 v0, 0x1

    new-instance v1, Lcom/avos/avoscloud/AVObject$16;

    invoke-direct {v1}, Lcom/avos/avoscloud/AVObject$16;-><init>()V

    invoke-static {v0, p0, v1}, Lcom/avos/avoscloud/AVObject;->_saveAll(ZLjava/util/List;Lcom/avos/avoscloud/SaveCallback;)V

    .line 1506
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1507
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 1509
    :cond_0
    return-void
.end method

.method public static saveAllInBackground(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1518
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<+Lcom/avos/avoscloud/AVObject;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/avos/avoscloud/AVObject;->_saveAll(ZLjava/util/List;Lcom/avos/avoscloud/SaveCallback;)V

    .line 1519
    return-void
.end method

.method public static saveAllInBackground(Ljava/util/List;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/avos/avoscloud/SaveCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;",
            "Lcom/avos/avoscloud/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1529
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<+Lcom/avos/avoscloud/AVObject;>;"
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/avos/avoscloud/AVObject;->_saveAll(ZLjava/util/List;Lcom/avos/avoscloud/SaveCallback;)V

    .line 1530
    return-void
.end method

.method public static saveFileBeforeSave(Ljava/util/List;ZLjava/util/List;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 5
    .param p1, "sync"    # Z
    .param p2, "list"    # Ljava/util/List;
    .param p3, "callback"    # Lcom/avos/avoscloud/SaveCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVFile;",
            ">;Z",
            "Ljava/util/List;",
            "Lcom/avos/avoscloud/SaveCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 2273
    .local p0, "files":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVFile;>;"
    if-eqz p1, :cond_3

    .line 2274
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVFile;

    .line 2275
    .local v1, "file":Lcom/avos/avoscloud/AVFile;
    if-eqz v1, :cond_0

    .line 2276
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVFile;->save()V

    goto :goto_0

    .line 2279
    .end local v1    # "file":Lcom/avos/avoscloud/AVFile;
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Lcom/avos/avoscloud/SaveCallback;->done(Lcom/avos/avoscloud/AVException;)V

    .line 2301
    :cond_2
    return-void

    .line 2281
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->collectionNonNullCount(Ljava/util/Collection;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 2282
    .local v3, "lock":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 2283
    .local v0, "failureLock":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVFile;

    .line 2284
    .restart local v1    # "file":Lcom/avos/avoscloud/AVFile;
    if-eqz v1, :cond_4

    .line 2285
    new-instance v4, Lcom/avos/avoscloud/AVObject$26;

    invoke-direct {v4, v0, p3, v3}, Lcom/avos/avoscloud/AVObject$26;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/avos/avoscloud/SaveCallback;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v1, v4}, Lcom/avos/avoscloud/AVFile;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V

    goto :goto_1
.end method

.method private saveInBackground(Lcom/avos/avoscloud/SaveCallback;Z)V
    .locals 1
    .param p1, "callback"    # Lcom/avos/avoscloud/SaveCallback;
    .param p2, "isEventually"    # Z

    .prologue
    .line 2082
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p1}, Lcom/avos/avoscloud/AVObject;->saveObject(ZZLcom/avos/avoscloud/SaveCallback;)V

    .line 2083
    return-void
.end method

.method private saveObject(ZZLcom/avos/avoscloud/SaveCallback;)V
    .locals 4
    .param p1, "sync"    # Z
    .param p2, "isEventually"    # Z
    .param p3, "callback"    # Lcom/avos/avoscloud/SaveCallback;

    .prologue
    .line 1672
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 1674
    .local v2, "list":Ljava/util/LinkedList;
    :try_start_0
    invoke-direct {p0, v2, p1}, Lcom/avos/avoscloud/AVObject;->addBatchSaveRequest(Ljava/util/LinkedList;Z)Ljava/util/List;

    move-result-object v1

    .line 1675
    .local v1, "files":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVFile;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1676
    new-instance v3, Lcom/avos/avoscloud/AVObject$19;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/avos/avoscloud/AVObject$19;-><init>(Lcom/avos/avoscloud/AVObject;ZZLcom/avos/avoscloud/SaveCallback;)V

    invoke-static {v1, p1, v2, v3}, Lcom/avos/avoscloud/AVObject;->saveFileBeforeSave(Ljava/util/List;ZLjava/util/List;Lcom/avos/avoscloud/SaveCallback;)V

    .line 1693
    .end local v1    # "files":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVFile;>;"
    :cond_0
    :goto_0
    return-void

    .line 1685
    .restart local v1    # "files":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVFile;>;"
    :cond_1
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/avos/avoscloud/AVObject;->_saveObject(Ljava/util/List;ZZLcom/avos/avoscloud/SaveCallback;)V
    :try_end_0
    .catch Lcom/avos/avoscloud/AVException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1687
    .end local v1    # "files":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVFile;>;"
    :catch_0
    move-exception v0

    .line 1688
    .local v0, "e":Lcom/avos/avoscloud/AVException;
    if-eqz p3, :cond_0

    .line 1689
    invoke-virtual {p3, v0}, Lcom/avos/avoscloud/SaveCallback;->done(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method

.method private saveObjectToAVOSCloud(ZZLcom/avos/avoscloud/SaveCallback;)V
    .locals 22
    .param p1, "sync"    # Z
    .param p2, "isEventually"    # Z
    .param p3, "callback"    # Lcom/avos/avoscloud/SaveCallback;

    .prologue
    .line 1742
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/avos/avoscloud/AVObject;->queue:Lcom/avos/avoscloud/AVOperationQueue;

    invoke-virtual {v4}, Lcom/avos/avoscloud/AVOperationQueue;->popHead()Lcom/avos/avoscloud/AVOperation;

    move-result-object v18

    .line 1743
    .local v18, "operation":Lcom/avos/avoscloud/AVOperation;
    if-nez v18, :cond_0

    .line 1799
    :goto_0
    return-void

    .line 1747
    :cond_0
    invoke-virtual/range {v18 .. v18}, Lcom/avos/avoscloud/AVOperation;->isPendingRequest()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1749
    invoke-virtual/range {v18 .. v18}, Lcom/avos/avoscloud/AVOperation;->getBatchRequest()Ljava/util/List;

    move-result-object v21

    .line 1750
    .local v21, "requests":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map;

    .line 1751
    .local v20, "request":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/avos/avoscloud/PaasClient;->getApiVersion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v4, v0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getBatchEndpoint(Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)Ljava/lang/String;

    move-result-object v19

    .line 1753
    .local v19, "path":Ljava/lang/String;
    const-string v4, "body"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    .line 1754
    .local v12, "body":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v12, :cond_3

    .line 1755
    const-string v4, "__children"

    invoke-interface {v12, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 1756
    .local v14, "children":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v14, :cond_2

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1757
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    .line 1758
    .local v13, "child":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "key"

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1759
    .local v17, "key":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1760
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVObject;->getAVObject(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/avos/avoscloud/AVUtils;->mapFromChildObject(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_2

    .line 1764
    .end local v13    # "child":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v17    # "key":Ljava/lang/String;
    :cond_2
    const-string v4, "__internalId"

    invoke-virtual/range {p0 .. p0}, Lcom/avos/avoscloud/AVObject;->internalId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1767
    .end local v14    # "children":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_3
    const-string v4, "path"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1771
    .end local v12    # "body":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v19    # "path":Ljava/lang/String;
    .end local v20    # "request":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v21    # "requests":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_4
    invoke-virtual/range {v18 .. v18}, Lcom/avos/avoscloud/AVOperation;->getBatchRequest()Ljava/util/List;

    move-result-object v5

    .line 1772
    .local v5, "list":Ljava/util/List;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/avos/avoscloud/AVObject;->headerMap()Ljava/util/Map;

    move-result-object v8

    new-instance v9, Lcom/avos/avoscloud/AVObject$20;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v9, v0, v1, v2, v3}, Lcom/avos/avoscloud/AVObject$20;-><init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVOperation;ZZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/avos/avoscloud/AVObject;->internalId()Ljava/lang/String;

    move-result-object v11

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-virtual/range {v4 .. v11}, Lcom/avos/avoscloud/PaasClient;->postBatchSave(Ljava/util/List;ZZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/avos/avoscloud/AVObject;->addObjectToArray(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 294
    return-void
.end method

.method public addAll(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 305
    .local v1, "item":Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/avos/avoscloud/AVObject;->addObjectToArray(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 307
    .end local v1    # "item":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public addAllUnique(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 328
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 329
    .local v1, "item":Ljava/lang/Object;
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/avos/avoscloud/AVObject;->addObjectToArray(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 331
    .end local v1    # "item":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method addRelation(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "object"    # Lcom/avos/avoscloud/AVObject;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "submit"    # Z

    .prologue
    .line 2153
    invoke-direct {p0, p2}, Lcom/avos/avoscloud/AVObject;->checkKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2154
    new-instance v0, Lcom/avos/avoscloud/AVObject$22;

    invoke-direct {v0, p0, p2, p1}, Lcom/avos/avoscloud/AVObject$22;-><init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)V

    .line 2176
    .local v0, "cb":Lcom/avos/avoscloud/AVObject$KeyValueCallback;, "Lcom/avos/avoscloud/AVObject$KeyValueCallback<Ljava/util/Set<Lcom/avos/avoscloud/AVObject;>;>;"
    invoke-virtual {v0, p2, p3}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->execute(Ljava/lang/String;Z)V

    .line 2178
    .end local v0    # "cb":Lcom/avos/avoscloud/AVObject$KeyValueCallback;, "Lcom/avos/avoscloud/AVObject$KeyValueCallback<Ljava/util/Set<Lcom/avos/avoscloud/AVObject;>;>;"
    :cond_0
    return-void
.end method

.method addRelationFromServer(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "submit"    # Z

    .prologue
    .line 2128
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;->checkKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2129
    new-instance v0, Lcom/avos/avoscloud/AVObject$21;

    invoke-direct {v0, p0, p1, p2}, Lcom/avos/avoscloud/AVObject$21;-><init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 2148
    .local v0, "cb":Lcom/avos/avoscloud/AVObject$KeyValueCallback;, "Lcom/avos/avoscloud/AVObject$KeyValueCallback<Ljava/util/Set<Lcom/avos/avoscloud/AVObject;>;>;"
    invoke-virtual {v0, p1, p3}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->execute(Ljava/lang/String;Z)V

    .line 2150
    .end local v0    # "cb":Lcom/avos/avoscloud/AVObject$KeyValueCallback;, "Lcom/avos/avoscloud/AVObject$KeyValueCallback<Ljava/util/Set<Lcom/avos/avoscloud/AVObject;>;>;"
    :cond_0
    return-void
.end method

.method public addUnique(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 341
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/avos/avoscloud/AVObject;->addObjectToArray(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 342
    return-void
.end method

.method protected alwaysSaveAllKeyValues()Z
    .locals 1

    .prologue
    .line 1916
    const/4 v0, 0x0

    return v0
.end method

.method protected alwaysUsePost()Z
    .locals 1

    .prologue
    .line 1856
    const/4 v0, 0x0

    return v0
.end method

.method protected batchRequestFromKeyValues()Ljava/util/Map;
    .locals 14

    .prologue
    .line 1921
    iget-object v12, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-static {v12}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->alwaysSaveAllKeyValues()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 1922
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1923
    .local v0, "body":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1925
    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v12, p0, Lcom/avos/avoscloud/AVObject;->keyValues:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1926
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/avos/avoscloud/AVKeyValues<*>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1927
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/avos/avoscloud/AVKeyValues;

    .line 1928
    .local v6, "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    iget-object v8, v6, Lcom/avos/avoscloud/AVKeyValues;->value:Ljava/lang/Object;

    .line 1930
    .local v8, "o":Ljava/lang/Object;
    iget-boolean v12, v6, Lcom/avos/avoscloud/AVKeyValues;->relationKey:Z

    if-nez v12, :cond_1

    .line 1931
    instance-of v12, v8, Lcom/avos/avoscloud/AVObject;

    if-eqz v12, :cond_2

    move-object v9, v8

    .line 1932
    check-cast v9, Lcom/avos/avoscloud/AVObject;

    .line 1933
    .local v9, "oo":Lcom/avos/avoscloud/AVObject;
    invoke-static {v9, v5}, Lcom/avos/avoscloud/AVUtils;->mapFromChildObject(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 1934
    .local v1, "child":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1947
    .end local v1    # "child":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "o":Ljava/lang/Object;
    .end local v9    # "oo":Lcom/avos/avoscloud/AVObject;
    :goto_1
    iget-object v12, p0, Lcom/avos/avoscloud/AVObject;->pendingKeys:Ljava/util/Set;

    invoke-interface {v12, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1948
    invoke-virtual {v6}, Lcom/avos/avoscloud/AVKeyValues;->resetOp()V

    goto :goto_0

    .line 1935
    .restart local v8    # "o":Ljava/lang/Object;
    :cond_2
    instance-of v12, v8, Lcom/avos/avoscloud/AVGeoPoint;

    if-eqz v12, :cond_3

    .line 1936
    check-cast v8, Lcom/avos/avoscloud/AVGeoPoint;

    .end local v8    # "o":Ljava/lang/Object;
    invoke-static {v8}, Lcom/avos/avoscloud/AVUtils;->mapFromGeoPoint(Lcom/avos/avoscloud/AVGeoPoint;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v0, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1937
    .restart local v8    # "o":Ljava/lang/Object;
    :cond_3
    instance-of v12, v8, Ljava/util/Date;

    if-eqz v12, :cond_4

    .line 1938
    check-cast v8, Ljava/util/Date;

    .end local v8    # "o":Ljava/lang/Object;
    invoke-static {v8}, Lcom/avos/avoscloud/AVUtils;->mapFromDate(Ljava/util/Date;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v0, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1939
    .restart local v8    # "o":Ljava/lang/Object;
    :cond_4
    instance-of v12, v8, [B

    if-eqz v12, :cond_5

    .line 1940
    check-cast v8, [B

    .end local v8    # "o":Ljava/lang/Object;
    check-cast v8, [B

    invoke-static {v8}, Lcom/avos/avoscloud/AVUtils;->mapFromByteArray([B)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v0, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1941
    .restart local v8    # "o":Ljava/lang/Object;
    :cond_5
    instance-of v12, v8, Lcom/avos/avoscloud/AVFile;

    if-eqz v12, :cond_6

    .line 1942
    check-cast v8, Lcom/avos/avoscloud/AVFile;

    .end local v8    # "o":Ljava/lang/Object;
    invoke-static {v8}, Lcom/avos/avoscloud/AVUtils;->mapFromFile(Lcom/avos/avoscloud/AVFile;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v0, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1944
    .restart local v8    # "o":Ljava/lang/Object;
    :cond_6
    invoke-static {v8}, Lcom/avos/avoscloud/AVUtils;->getParsedObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v0, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1952
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/avos/avoscloud/AVKeyValues<*>;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    .end local v8    # "o":Ljava/lang/Object;
    :cond_7
    const-string v12, "__children"

    invoke-interface {v0, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1953
    iget-object v12, p0, Lcom/avos/avoscloud/AVObject;->acl:Lcom/avos/avoscloud/AVACL;

    if-eqz v12, :cond_8

    .line 1954
    iget-object v12, p0, Lcom/avos/avoscloud/AVObject;->acl:Lcom/avos/avoscloud/AVACL;

    invoke-virtual {v12}, Lcom/avos/avoscloud/AVACL;->getACLMap()Ljava/util/Map;

    move-result-object v12

    invoke-static {v12}, Lcom/avos/avoscloud/AVUtils;->getParsedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1957
    :cond_8
    const-string v12, "__internalId"

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->internalId()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1958
    const-string v7, "PUT"

    .line 1959
    .local v7, "method":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->alwaysUsePost()Z

    move-result v12

    if-eqz v12, :cond_b

    :cond_9
    const/4 v11, 0x1

    .line 1960
    .local v11, "post":Z
    :goto_2
    if-eqz v11, :cond_a

    .line 1961
    const-string v7, "POST"

    .line 1963
    :cond_a
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v12

    invoke-virtual {v12}, Lcom/avos/avoscloud/PaasClient;->getApiVersion()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, p0, v11}, Lcom/avos/avoscloud/AVPowerfulUtils;->getBatchEndpoint(Ljava/lang/String;Lcom/avos/avoscloud/AVObject;Z)Ljava/lang/String;

    move-result-object v10

    .line 1966
    .local v10, "path":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v12

    invoke-direct {p0}, Lcom/avos/avoscloud/AVObject;->getBatchParams()Ljava/util/Map;

    move-result-object v13

    invoke-virtual {v12, v7, v10, v0, v13}, Lcom/avos/avoscloud/PaasClient;->batchItemMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v12

    .line 1968
    .end local v0    # "body":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "children":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "method":Ljava/lang/String;
    .end local v10    # "path":Ljava/lang/String;
    .end local v11    # "post":Z
    :goto_3
    return-object v12

    .line 1959
    .restart local v0    # "body":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2    # "children":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v7    # "method":Ljava/lang/String;
    :cond_b
    const/4 v11, 0x0

    goto :goto_2

    .line 1968
    .end local v0    # "body":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "children":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "method":Ljava/lang/String;
    :cond_c
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v12

    goto :goto_3
.end method

.method protected batchRequestFromPendingKeys()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1860
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1861
    .local v11, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map;>;"
    const/4 v6, -0x1

    .line 1862
    .local v6, "maxSize":I
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1863
    .local v10, "pendingKeyValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/avos/avoscloud/AVKeyValues<*>;>;"
    iget-object v12, p0, Lcom/avos/avoscloud/AVObject;->keyValues:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/avos/avoscloud/AVKeyValues;

    .line 1864
    .local v5, "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    iget-object v12, p0, Lcom/avos/avoscloud/AVObject;->pendingKeys:Ljava/util/Set;

    iget-object v13, v5, Lcom/avos/avoscloud/AVKeyValues;->key:Ljava/lang/String;

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1865
    invoke-virtual {v5}, Lcom/avos/avoscloud/AVKeyValues;->opSize()I

    move-result v12

    if-le v12, v6, :cond_1

    .line 1866
    invoke-virtual {v5}, Lcom/avos/avoscloud/AVKeyValues;->opSize()I

    move-result v6

    .line 1868
    :cond_1
    iget-object v12, v5, Lcom/avos/avoscloud/AVKeyValues;->key:Ljava/lang/String;

    invoke-interface {v10, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1871
    .end local v5    # "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    :cond_2
    if-gtz v6, :cond_3

    .line 1872
    const/4 v6, 0x1

    .line 1874
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v6, :cond_a

    .line 1875
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1876
    .local v0, "body":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1877
    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/avos/avoscloud/AVKeyValues;

    .line 1878
    .restart local v5    # "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    invoke-virtual {v5, v3}, Lcom/avos/avoscloud/AVKeyValues;->getOp(I)Lcom/avos/avoscloud/ops/AVOp;

    move-result-object v8

    .line 1879
    .local v8, "op":Lcom/avos/avoscloud/ops/AVOp;
    if-eqz v8, :cond_4

    sget-object v12, Lcom/avos/avoscloud/ops/NullOP;->INSTANCE:Lcom/avos/avoscloud/ops/NullOP;

    if-eq v8, v12, :cond_4

    .line 1880
    iget-object v12, v5, Lcom/avos/avoscloud/AVKeyValues;->value:Ljava/lang/Object;

    instance-of v12, v12, Lcom/avos/avoscloud/AVObject;

    if-eqz v12, :cond_5

    .line 1881
    iget-object v12, v5, Lcom/avos/avoscloud/AVKeyValues;->value:Ljava/lang/Object;

    check-cast v12, Lcom/avos/avoscloud/AVObject;

    iget-object v13, v5, Lcom/avos/avoscloud/AVKeyValues;->key:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/avos/avoscloud/AVUtils;->mapFromChildObject(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 1882
    .local v1, "child":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1884
    .end local v1    # "child":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    invoke-interface {v8}, Lcom/avos/avoscloud/ops/AVOp;->encodeOp()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_2

    .line 1888
    .end local v5    # "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    .end local v8    # "op":Lcom/avos/avoscloud/ops/AVOp;
    :cond_6
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_9

    .line 1889
    :cond_7
    const-string v12, "__children"

    invoke-interface {v0, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1890
    iget-object v12, p0, Lcom/avos/avoscloud/AVObject;->acl:Lcom/avos/avoscloud/AVACL;

    if-eqz v12, :cond_8

    .line 1891
    iget-object v12, p0, Lcom/avos/avoscloud/AVObject;->acl:Lcom/avos/avoscloud/AVACL;

    invoke-virtual {v12}, Lcom/avos/avoscloud/AVACL;->getACLMap()Ljava/util/Map;

    move-result-object v12

    invoke-static {v12}, Lcom/avos/avoscloud/AVUtils;->getParsedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1894
    :cond_8
    const-string v12, "__internalId"

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->internalId()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1895
    const-string v7, "PUT"

    .line 1896
    .local v7, "method":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v12

    invoke-virtual {v12}, Lcom/avos/avoscloud/PaasClient;->getApiVersion()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, p0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getBatchEndpoint(Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)Ljava/lang/String;

    move-result-object v9

    .line 1898
    .local v9, "path":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v12

    invoke-direct {p0}, Lcom/avos/avoscloud/AVObject;->getBatchParams()Ljava/util/Map;

    move-result-object v13

    invoke-virtual {v12, v7, v9, v0, v13}, Lcom/avos/avoscloud/PaasClient;->batchItemMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1874
    .end local v7    # "method":Ljava/lang/String;
    .end local v9    # "path":Ljava/lang/String;
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1902
    .end local v0    # "body":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "children":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_a
    iget-object v12, p0, Lcom/avos/avoscloud/AVObject;->keyValues:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/avos/avoscloud/AVKeyValues;

    .line 1903
    .restart local v5    # "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    invoke-virtual {v5}, Lcom/avos/avoscloud/AVKeyValues;->resetOp()V

    goto :goto_3

    .line 1906
    .end local v5    # "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    :cond_b
    iget-object v12, p0, Lcom/avos/avoscloud/AVObject;->pendingKeys:Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->clear()V

    .line 1907
    return-object v11
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 351
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected copyFromJson(Ljava/lang/String;)V
    .locals 3
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 1822
    :try_start_0
    const-class v2, Ljava/util/Map;

    invoke-static {p1, v2}, Lcom/avos/avoscloud/AVUtils;->getFromJSON(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1823
    .local v1, "map":Ljava/util/Map;
    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/AVObject;->copyFromMap(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1827
    .end local v1    # "map":Ljava/util/Map;
    :goto_0
    return-void

    .line 1824
    :catch_0
    move-exception v0

    .line 1825
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AVObject parse error"

    invoke-static {v2, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected copyFromMap(Ljava/util/Map;)V
    .locals 5
    .param p1, "map"    # Ljava/util/Map;

    .prologue
    .line 1835
    iget-object v4, p0, Lcom/avos/avoscloud/AVObject;->uuid:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1836
    .local v1, "item":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v4, v1, Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 1837
    check-cast v1, Ljava/util/Map;

    .end local v1    # "item":Ljava/lang/Object;
    invoke-static {v1, p0}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V

    .line 1842
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1843
    .restart local v1    # "item":Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v4, v1, Ljava/util/Map;

    if-eqz v4, :cond_1

    .line 1844
    check-cast v1, Ljava/util/Map;

    .end local v1    # "item":Ljava/lang/Object;
    invoke-static {v1, p0}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V

    .line 1847
    :cond_1
    iget-object v4, p0, Lcom/avos/avoscloud/AVObject;->keyValues:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/AVKeyValues;

    .line 1848
    .local v2, "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    iget-object v3, v2, Lcom/avos/avoscloud/AVKeyValues;->value:Ljava/lang/Object;

    .line 1849
    .local v3, "o":Ljava/lang/Object;
    instance-of v4, v3, Lcom/avos/avoscloud/AVObject;

    if-eqz v4, :cond_2

    .line 1850
    check-cast v3, Lcom/avos/avoscloud/AVObject;

    .end local v3    # "o":Ljava/lang/Object;
    invoke-virtual {v3, p1}, Lcom/avos/avoscloud/AVObject;->copyFromMap(Ljava/util/Map;)V

    goto :goto_0

    .line 1853
    .end local v2    # "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    :cond_3
    return-void
.end method

.method public delete()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 415
    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/avos/avoscloud/AVObject$1;

    invoke-direct {v2, p0}, Lcom/avos/avoscloud/AVObject$1;-><init>(Lcom/avos/avoscloud/AVObject;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/avos/avoscloud/AVObject;->delete(ZZLcom/avos/avoscloud/DeleteCallback;)V

    .line 428
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 431
    :cond_0
    return-void
.end method

.method public deleteEventually()V
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVObject;->deleteEventually(Lcom/avos/avoscloud/DeleteCallback;)V

    .line 539
    return-void
.end method

.method public deleteEventually(Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/avos/avoscloud/DeleteCallback;

    .prologue
    .line 557
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/avos/avoscloud/AVObject;->delete(ZZLcom/avos/avoscloud/DeleteCallback;)V

    .line 558
    return-void
.end method

.method public deleteInBackground()V
    .locals 1

    .prologue
    .line 565
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVObject;->deleteInBackground(Lcom/avos/avoscloud/DeleteCallback;)V

    .line 566
    return-void
.end method

.method public deleteInBackground(Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/avos/avoscloud/DeleteCallback;

    .prologue
    const/4 v0, 0x0

    .line 575
    invoke-direct {p0, v0, v0, p1}, Lcom/avos/avoscloud/AVObject;->delete(ZZLcom/avos/avoscloud/DeleteCallback;)V

    .line 576
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2318
    iget-object v3, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2331
    :cond_0
    :goto_0
    return v1

    .line 2321
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 2322
    :cond_2
    if-eqz p1, :cond_0

    .line 2323
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 2324
    check-cast v0, Lcom/avos/avoscloud/AVObject;

    .line 2325
    .local v0, "other":Lcom/avos/avoscloud/AVObject;
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    .line 2326
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 2328
    :cond_3
    iget-object v3, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 2329
    iget-object v3, v0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    .line 2331
    goto :goto_0

    .line 2327
    :cond_5
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 2330
    :cond_6
    iget-object v3, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    iget-object v4, v0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0
.end method

.method public fetch()Lcom/avos/avoscloud/AVObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 599
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVObject;->fetch(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    return-object v0
.end method

.method public fetch(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 2
    .param p1, "includeKeys"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 603
    const/4 v0, 0x1

    new-instance v1, Lcom/avos/avoscloud/AVObject$5;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/AVObject$5;-><init>(Lcom/avos/avoscloud/AVObject;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/avos/avoscloud/AVObject;->fetchInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/GetCallback;)V

    .line 616
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 619
    :cond_0
    return-object p0
.end method

.method public fetchIfNeeded()Lcom/avos/avoscloud/AVObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 714
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVObject;->fetchIfNeeded(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    return-object v0
.end method

.method public fetchIfNeeded(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 2
    .param p1, "includeKeys"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->isDataAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 719
    const/4 v0, 0x1

    new-instance v1, Lcom/avos/avoscloud/AVObject$9;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/AVObject$9;-><init>(Lcom/avos/avoscloud/AVObject;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/avos/avoscloud/AVObject;->fetchInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/GetCallback;)V

    .line 733
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 734
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 736
    :cond_1
    return-object p0
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

    .prologue
    .line 747
    .local p1, "callback":Lcom/avos/avoscloud/GetCallback;, "Lcom/avos/avoscloud/GetCallback<Lcom/avos/avoscloud/AVObject;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVObject;->fetchIfNeededInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetCallback;)V

    .line 748
    return-void
.end method

.method public fetchIfNeededInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetCallback;)V
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

    .prologue
    .line 760
    .local p2, "callback":Lcom/avos/avoscloud/GetCallback;, "Lcom/avos/avoscloud/GetCallback<Lcom/avos/avoscloud/AVObject;>;"
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->isDataAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 761
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/AVObject;->fetchInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetCallback;)V

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 762
    :cond_1
    if-eqz p2, :cond_0

    .line 763
    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0}, Lcom/avos/avoscloud/GetCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
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

    .prologue
    .line 774
    .local p1, "callback":Lcom/avos/avoscloud/GetCallback;, "Lcom/avos/avoscloud/GetCallback<Lcom/avos/avoscloud/AVObject;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVObject;->fetchInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetCallback;)V

    .line 775
    return-void
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

    .prologue
    .line 785
    .local p2, "callback":Lcom/avos/avoscloud/GetCallback;, "Lcom/avos/avoscloud/GetCallback<Lcom/avos/avoscloud/AVObject;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/avos/avoscloud/AVObject;->fetchInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/GetCallback;)V

    .line 786
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 813
    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->keyValues:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVKeyValues;

    .line 814
    .local v0, "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    if-eqz v0, :cond_0

    .line 815
    iget-object v1, v0, Lcom/avos/avoscloud/AVKeyValues;->value:Ljava/lang/Object;

    .line 817
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getACL()Lcom/avos/avoscloud/AVACL;
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->acl:Lcom/avos/avoscloud/AVACL;

    return-object v0
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

    .prologue
    .line 1040
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVFile;

    return-object v0
.end method

.method public getAVGeoPoint(Ljava/lang/String;)Lcom/avos/avoscloud/AVGeoPoint;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1050
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVGeoPoint;

    return-object v0
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

    .prologue
    .line 1063
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVObject;

    return-object v0
.end method

.method public getAVObject(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVObject;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1068
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->getAVObject(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v2

    .line 1069
    .local v2, "object":Lcom/avos/avoscloud/AVObject;
    if-nez v2, :cond_1

    .line 1070
    const/4 v2, 0x0

    .line 1078
    .end local v2    # "object":Lcom/avos/avoscloud/AVObject;
    :cond_0
    :goto_0
    return-object v2

    .line 1072
    .restart local v2    # "object":Lcom/avos/avoscloud/AVObject;
    :cond_1
    invoke-virtual {p2, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1075
    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromObjectWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1076
    .local v0, "jsonString":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVObject;

    .line 1077
    .local v1, "newObject":Lcom/avos/avoscloud/AVObject;, "TT;"
    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromJsonStringToAVObject(Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)V

    move-object v2, v1

    .line 1078
    goto :goto_0
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

    .prologue
    .line 1093
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVUser;

    return-object v0
.end method

.method public getAVUser(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1106
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVUser;

    .line 1107
    .local v0, "user":Lcom/avos/avoscloud/AVUser;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0, p2}, Lcom/avos/avoscloud/AVUser;->cast(Lcom/avos/avoscloud/AVUser;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;

    move-result-object v1

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 834
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 835
    .local v0, "b":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 845
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->className:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVObject;->getSubClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->className:Ljava/lang/String;

    .line 855
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->createdAt:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->dateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 876
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 886
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 887
    .local v0, "number":Ljava/lang/Number;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 888
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 898
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 899
    .local v0, "v":Ljava/lang/Number;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 900
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 910
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 911
    .local v4, "list":Ljava/lang/Object;
    if-nez v4, :cond_1

    .line 924
    .end local v4    # "list":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v1

    .line 912
    .restart local v4    # "list":Ljava/lang/Object;
    :cond_1
    instance-of v6, v4, Lorg/json/JSONArray;

    if-eqz v6, :cond_2

    check-cast v4, Lorg/json/JSONArray;

    .end local v4    # "list":Ljava/lang/Object;
    move-object v1, v4

    goto :goto_0

    .line 913
    .restart local v4    # "list":Ljava/lang/Object;
    :cond_2
    instance-of v6, v4, Ljava/util/Collection;

    if-eqz v6, :cond_3

    .line 914
    new-instance v1, Lorg/json/JSONArray;

    check-cast v4, Ljava/util/Collection;

    .end local v4    # "list":Ljava/lang/Object;
    invoke-direct {v1, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 915
    .local v1, "array":Lorg/json/JSONArray;
    goto :goto_0

    .line 917
    .end local v1    # "array":Lorg/json/JSONArray;
    .restart local v4    # "list":Ljava/lang/Object;
    :cond_3
    instance-of v6, v4, [Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 918
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 919
    .restart local v1    # "array":Lorg/json/JSONArray;
    check-cast v4, [Ljava/lang/Object;

    .end local v4    # "list":Ljava/lang/Object;
    move-object v0, v4

    check-cast v0, [Ljava/lang/Object;

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 920
    .local v5, "obj":Ljava/lang/Object;
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 919
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 934
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 935
    .local v3, "object":Ljava/lang/Object;
    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 936
    .local v2, "jsonString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 938
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 942
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    return-object v1

    .line 939
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 940
    .local v0, "exception":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Invalid json string"

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method getKeyValues()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVKeyValues",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->keyValues:Ljava/util/Map;

    return-object v0
.end method

.method public getList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 952
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 964
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 965
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVObject;>;"
    const/4 v6, 0x0

    .line 966
    .local v6, "returnList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz v4, :cond_0

    .line 967
    new-instance v6, Ljava/util/LinkedList;

    .end local v6    # "returnList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 969
    .restart local v6    # "returnList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/AVObject;

    .line 970
    .local v2, "item":Lcom/avos/avoscloud/AVObject;
    const/4 v7, 0x6

    new-array v7, v7, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v8, 0x0

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteRootClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v9, v7, v8

    const/4 v8, 0x5

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v9, v7, v8

    invoke-static {v2, v7}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v3

    .line 977
    .local v3, "jsonString":Ljava/lang/String;
    invoke-static {v3, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/avos/avoscloud/AVObject;

    .line 978
    .local v5, "newItem":Lcom/avos/avoscloud/AVObject;, "TT;"
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 980
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/avos/avoscloud/AVObject;
    .end local v3    # "jsonString":Ljava/lang/String;
    .end local v5    # "newItem":Lcom/avos/avoscloud/AVObject;, "TT;"
    :catch_0
    move-exception v0

    .line 981
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "ClassCast Exception"

    invoke-static {v7, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 984
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v6
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 994
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 995
    .local v0, "number":Ljava/lang/Number;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 996
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
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

    .prologue
    .line 1006
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1016
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 1017
    .local v0, "number":Ljava/lang/Number;
    return-object v0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method getPendingKeys()Ljava/util/Set;
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

    .prologue
    .line 148
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->pendingKeys:Ljava/util/Set;

    return-object v0
.end method

.method public getRelation(Ljava/lang/String;)Lcom/avos/avoscloud/AVRelation;
    .locals 5
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

    .prologue
    .line 1118
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;->checkKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1119
    new-instance v1, Lcom/avos/avoscloud/AVRelation;

    invoke-direct {v1, p0, p1}, Lcom/avos/avoscloud/AVRelation;-><init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;)V

    .line 1122
    .local v1, "relation":Lcom/avos/avoscloud/AVRelation;, "Lcom/avos/avoscloud/AVRelation<TT;>;"
    iget-object v4, p0, Lcom/avos/avoscloud/AVObject;->keyValues:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVKeyValues;

    .line 1123
    .local v0, "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    if-eqz v0, :cond_0

    .line 1124
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/avos/avoscloud/AVKeyValues;->relationKey:Z

    .line 1125
    iget-object v4, v0, Lcom/avos/avoscloud/AVKeyValues;->relationClassName:Ljava/lang/String;

    invoke-static {v4}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1126
    iget-object v4, v0, Lcom/avos/avoscloud/AVKeyValues;->relationClassName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/avos/avoscloud/AVRelation;->setTargetClass(Ljava/lang/String;)V

    .line 1139
    .end local v0    # "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    .end local v1    # "relation":Lcom/avos/avoscloud/AVRelation;, "Lcom/avos/avoscloud/AVRelation<TT;>;"
    :cond_0
    :goto_0
    return-object v1

    .line 1128
    .restart local v0    # "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    .restart local v1    # "relation":Lcom/avos/avoscloud/AVRelation;, "Lcom/avos/avoscloud/AVRelation<TT;>;"
    :cond_1
    iget-object v2, v0, Lcom/avos/avoscloud/AVKeyValues;->value:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    .line 1129
    .local v2, "set":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1130
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/avos/avoscloud/AVObject;

    .line 1131
    .local v3, "target":Lcom/avos/avoscloud/AVObject;
    if-eqz v3, :cond_0

    .line 1132
    invoke-virtual {v3}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/avos/avoscloud/AVRelation;->setTargetClass(Ljava/lang/String;)V

    goto :goto_0

    .line 1139
    .end local v0    # "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    .end local v1    # "relation":Lcom/avos/avoscloud/AVRelation;, "Lcom/avos/avoscloud/AVRelation<TT;>;"
    .end local v2    # "set":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .end local v3    # "target":Lcom/avos/avoscloud/AVObject;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1149
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1150
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1151
    check-cast v0, Ljava/lang/String;

    .line 1153
    .end local v0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUpdatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->updatedAt:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->dateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->uuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->uuid:Ljava/lang/String;

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1174
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSameId(Lcom/avos/avoscloud/AVObject;)Z
    .locals 2
    .param p1, "other"    # Lcom/avos/avoscloud/AVObject;

    .prologue
    .line 1180
    iget-object v0, p1, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2306
    iget-object v2, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2307
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 2313
    :goto_0
    return v1

    .line 2309
    :cond_0
    const/16 v0, 0x1f

    .line 2310
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 2311
    .local v1, "result":I
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int/lit8 v1, v2, 0x1f

    .line 2312
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    if-nez v4, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 2313
    goto :goto_0

    .line 2311
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 2312
    :cond_2
    iget-object v3, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method protected headerMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1666
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/PaasClient;->userHeaderMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public increment(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1189
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/AVObject;->increment(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1190
    return-void
.end method

.method public increment(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "amount"    # Ljava/lang/Number;

    .prologue
    .line 1230
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;->checkKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1231
    new-instance v0, Lcom/avos/avoscloud/AVObject$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/avos/avoscloud/AVObject$10;-><init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Ljava/lang/Number;)V

    .line 1248
    .local v0, "cb":Lcom/avos/avoscloud/AVObject$KeyValueCallback;, "Lcom/avos/avoscloud/AVObject$KeyValueCallback<Ljava/lang/Number;>;"
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->execute(Ljava/lang/String;)V

    .line 1250
    .end local v0    # "cb":Lcom/avos/avoscloud/AVObject$KeyValueCallback;, "Lcom/avos/avoscloud/AVObject$KeyValueCallback<Ljava/lang/Number;>;"
    :cond_0
    return-void
.end method

.method protected internalClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2120
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected internalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1912
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getUuid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method isDataAvailable()Z
    .locals 1

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/avos/avoscloud/AVObject;->isDataReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDataReady()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVObject;->isDataReady:Z

    return v0
.end method

.method public isFetchWhenSave()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVObject;->fetchWhenSave:Z

    return v0
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

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->keyValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected onDataSynchronized()V
    .locals 0

    .prologue
    .line 1659
    return-void
.end method

.method protected onSaveFailure()V
    .locals 0

    .prologue
    .line 1663
    return-void
.end method

.method protected onSaveSuccess()V
    .locals 0

    .prologue
    .line 1655
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1323
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 1324
    return-void
.end method

.method protected put(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "pending"    # Z

    .prologue
    .line 1327
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;->checkKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1328
    new-instance v0, Lcom/avos/avoscloud/AVObject$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/avos/avoscloud/AVObject$12;-><init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1345
    .local v0, "cb":Lcom/avos/avoscloud/AVObject$KeyValueCallback;, "Lcom/avos/avoscloud/AVObject$KeyValueCallback<Ljava/lang/Object;>;"
    invoke-virtual {v0, p1, p3}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->execute(Ljava/lang/String;Z)V

    .line 1347
    .end local v0    # "cb":Lcom/avos/avoscloud/AVObject$KeyValueCallback;, "Lcom/avos/avoscloud/AVObject$KeyValueCallback<Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 1356
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVObject;->refresh(Ljava/lang/String;)V

    .line 1357
    return-void
.end method

.method public refresh(Ljava/lang/String;)V
    .locals 2
    .param p1, "includeKeys"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 1368
    const/4 v0, 0x1

    new-instance v1, Lcom/avos/avoscloud/AVObject$13;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/AVObject$13;-><init>(Lcom/avos/avoscloud/AVObject;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/avos/avoscloud/AVObject;->refreshInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/RefreshCallback;)V

    .line 1381
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1382
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 1384
    :cond_0
    return-void
.end method

.method public refreshInBackground(Lcom/avos/avoscloud/RefreshCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/RefreshCallback",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1393
    .local p1, "callback":Lcom/avos/avoscloud/RefreshCallback;, "Lcom/avos/avoscloud/RefreshCallback<Lcom/avos/avoscloud/AVObject;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/avos/avoscloud/AVObject;->refreshInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/RefreshCallback;)V

    .line 1394
    return-void
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

    .prologue
    .line 1405
    .local p2, "callback":Lcom/avos/avoscloud/RefreshCallback;, "Lcom/avos/avoscloud/RefreshCallback<Lcom/avos/avoscloud/AVObject;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/avos/avoscloud/AVObject;->refreshInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/RefreshCallback;)V

    .line 1406
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1424
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;->removeObjectForKey(Ljava/lang/String;)V

    .line 1425
    return-void
.end method

.method public removeAll(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1437
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;->checkKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1438
    new-instance v0, Lcom/avos/avoscloud/AVObject$14;

    invoke-direct {v0, p0, p1, p2}, Lcom/avos/avoscloud/AVObject$14;-><init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Ljava/util/Collection;)V

    .line 1455
    .local v0, "cb":Lcom/avos/avoscloud/AVObject$KeyValueCallback;, "Lcom/avos/avoscloud/AVObject$KeyValueCallback<Ljava/util/List<Ljava/lang/Object;>;>;"
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->execute(Ljava/lang/String;)V

    .line 1457
    .end local v0    # "cb":Lcom/avos/avoscloud/AVObject$KeyValueCallback;, "Lcom/avos/avoscloud/AVObject$KeyValueCallback<Ljava/util/List<Ljava/lang/Object;>;>;"
    :cond_0
    return-void
.end method

.method removeRelation(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "object"    # Lcom/avos/avoscloud/AVObject;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "submit"    # Z

    .prologue
    .line 2181
    invoke-direct {p0, p2}, Lcom/avos/avoscloud/AVObject;->checkKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2182
    new-instance v0, Lcom/avos/avoscloud/AVObject$23;

    invoke-direct {v0, p0, p2, p1}, Lcom/avos/avoscloud/AVObject$23;-><init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)V

    .line 2203
    .local v0, "cb":Lcom/avos/avoscloud/AVObject$KeyValueCallback;, "Lcom/avos/avoscloud/AVObject$KeyValueCallback<Ljava/util/Set<Lcom/avos/avoscloud/AVObject;>;>;"
    invoke-virtual {v0, p2, p3}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->execute(Ljava/lang/String;Z)V

    .line 2205
    .end local v0    # "cb":Lcom/avos/avoscloud/AVObject$KeyValueCallback;, "Lcom/avos/avoscloud/AVObject$KeyValueCallback<Ljava/util/Set<Lcom/avos/avoscloud/AVObject;>;>;"
    :cond_0
    return-void
.end method

.method public save()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 1467
    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/avos/avoscloud/AVObject$15;

    invoke-direct {v2, p0}, Lcom/avos/avoscloud/AVObject$15;-><init>(Lcom/avos/avoscloud/AVObject;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/avos/avoscloud/AVObject;->saveObject(ZZLcom/avos/avoscloud/SaveCallback;)V

    .line 1480
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1481
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 1483
    :cond_0
    return-void
.end method

.method public saveEventually()V
    .locals 1

    .prologue
    .line 1637
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVObject;->saveEventually(Lcom/avos/avoscloud/SaveCallback;)V

    .line 1638
    return-void
.end method

.method public saveEventually(Lcom/avos/avoscloud/SaveCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/avos/avoscloud/SaveCallback;

    .prologue
    .line 1649
    invoke-static {p0}, Lcom/avos/avoscloud/PaasClient;->registerEventuallyObject(Lcom/avos/avoscloud/AVObject;)V

    .line 1650
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVObject;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;Z)V

    .line 1651
    return-void
.end method

.method public saveInBackground()V
    .locals 1

    .prologue
    .line 2068
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVObject;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V

    .line 2069
    return-void
.end method

.method public saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/avos/avoscloud/SaveCallback;

    .prologue
    .line 2078
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVObject;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;Z)V

    .line 2079
    return-void
.end method

.method public setACL(Lcom/avos/avoscloud/AVACL;)V
    .locals 0
    .param p1, "acl"    # Lcom/avos/avoscloud/AVACL;

    .prologue
    .line 2091
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject;->acl:Lcom/avos/avoscloud/AVACL;

    .line 2092
    return-void
.end method

.method setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject;->className:Ljava/lang/String;

    .line 385
    return-void
.end method

.method setCreatedAt(Ljava/lang/String;)V
    .locals 0
    .param p1, "createdAt"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject;->createdAt:Ljava/lang/String;

    .line 194
    return-void
.end method

.method setDataReady(Z)V
    .locals 0
    .param p1, "isDataReady"    # Z

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVObject;->isDataReady:Z

    .line 176
    return-void
.end method

.method public setFetchWhenSave(Z)V
    .locals 0
    .param p1, "fetchWhenSave"    # Z

    .prologue
    .line 210
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVObject;->fetchWhenSave:Z

    .line 211
    return-void
.end method

.method setKeyValues(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVKeyValues",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "keyValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/avos/avoscloud/AVKeyValues<*>;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject;->keyValues:Ljava/util/Map;

    .line 140
    return-void
.end method

.method public setObjectId(Ljava/lang/String;)V
    .locals 0
    .param p1, "newObjectId"    # Ljava/lang/String;

    .prologue
    .line 2100
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    .line 2101
    return-void
.end method

.method setPendingKeys(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "pendingKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject;->pendingKeys:Ljava/util/Set;

    .line 158
    return-void
.end method

.method setUpdatedAt(Ljava/lang/String;)V
    .locals 0
    .param p1, "updatedAt"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject;->updatedAt:Ljava/lang/String;

    .line 185
    return-void
.end method

.method setUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject;->uuid:Ljava/lang/String;

    .line 203
    return-void
.end method

.method protected shouldThrowException(Ljava/lang/Throwable;Ljava/lang/String;)Z
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 2124
    const/4 v0, 0x1

    return v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 107
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 109
    .local v3, "result":Lorg/json/JSONObject;
    :try_start_0
    iget-object v4, p0, Lcom/avos/avoscloud/AVObject;->keyValues:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 110
    .local v2, "k":Ljava/lang/String;
    iget-object v4, p0, Lcom/avos/avoscloud/AVObject;->keyValues:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/avos/avoscloud/AVKeyValues;

    iget-object v4, v4, Lcom/avos/avoscloud/AVKeyValues;->value:Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "k":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 118
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v3

    .line 112
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    const-string v4, "objectId"

    iget-object v5, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string v4, "createdAt"

    iget-object v5, p0, Lcom/avos/avoscloud/AVObject;->createdAt:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v4, "updatedAt"

    iget-object v5, p0, Lcom/avos/avoscloud/AVObject;->updatedAt:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AVObject [className="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", objectId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updatedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->updatedAt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->createdAt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fetchWhenSave="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/avos/avoscloud/AVObject;->fetchWhenSave:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->keyValues:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

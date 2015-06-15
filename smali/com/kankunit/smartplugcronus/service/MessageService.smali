.class public Lcom/kankunit/smartplugcronus/service/MessageService;
.super Landroid/app/Service;
.source "MessageService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/service/MessageService$LocalBinder;,
        Lcom/kankunit/smartplugcronus/service/MessageService$MessageServiceHandler;,
        Lcom/kankunit/smartplugcronus/service/MessageService$ServiceChatManagerListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MessageService"

.field public static airMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private binder:Landroid/os/IBinder;

.field private db:Lnet/tsz/afinal/FinalDb;

.field private handler:Lcom/kankunit/smartplugcronus/service/MessageService$MessageServiceHandler;

.field private mac:Ljava/lang/String;

.field private nm:Landroid/app/NotificationManager;

.field private notification:Landroid/app/Notification;

.field private notificationId:I

.field private sj:Lcom/kankunit/smartplugcronus/jni/SuperJNI;

.field private xmppUtil:Lcom/kankunit/smartplugcronus/util/XMPPUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kankunit/smartplugcronus/service/MessageService;->airMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 69
    new-instance v0, Lcom/kankunit/smartplugcronus/service/MessageService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/service/MessageService$LocalBinder;-><init>(Lcom/kankunit/smartplugcronus/service/MessageService;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/MessageService;->binder:Landroid/os/IBinder;

    .line 74
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/kankunit/smartplugcronus/service/MessageService;->notificationId:I

    .line 66
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/service/MessageService;)Lcom/kankunit/smartplugcronus/service/MessageService$MessageServiceHandler;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/MessageService;->handler:Lcom/kankunit/smartplugcronus/service/MessageService$MessageServiceHandler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/service/MessageService;Lcom/kankunit/smartplugcronus/util/XMPPUtil;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/MessageService;->xmppUtil:Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    return-void
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/service/MessageService;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/MessageService;->xmppUtil:Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    return-object v0
.end method

.method private renewSceneData()V
    .locals 5

    .prologue
    .line 345
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/MessageService;->db:Lnet/tsz/afinal/FinalDb;

    const-class v3, Lcom/kankunit/smartplugcronus/model/SceneModel;

    invoke-virtual {v2, v3}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 346
    .local v1, "sceneModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/SceneModel;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 352
    return-void

    .line 346
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/SceneModel;

    .line 347
    .local v0, "sceneModel":Lcom/kankunit/smartplugcronus/model/SceneModel;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 348
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/kankunit/smartplugcronus/model/SceneModel;->setStatus(I)V

    .line 349
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/MessageService;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v3, v0}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public createNotification(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 86
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/MessageService;->notification:Landroid/app/Notification;

    .line 87
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/MessageService;->notification:Landroid/app/Notification;

    const v1, 0x1080077

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 88
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/MessageService;->notification:Landroid/app/Notification;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f0c000d

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/service/MessageService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Update"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 90
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/MessageService;->notification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 91
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/MessageService;->notification:Landroid/app/Notification;

    const/4 v1, 0x4

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 96
    return-void
.end method

.method public dealXml()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/service/MessageService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v15

    const-string v16, "AirConBrand.xml"

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 356
    .local v4, "is":Ljava/io/InputStream;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 357
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 358
    .local v2, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 359
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 360
    .local v1, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v13

    .line 361
    .local v13, "rootElement":Lorg/w3c/dom/Element;
    const-string v15, "dict"

    invoke-interface {v13, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 362
    .local v6, "items":Lorg/w3c/dom/NodeList;
    const-string v8, ""

    .line 363
    .local v8, "keyString":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    if-lt v3, v15, :cond_0

    .line 378
    sput-object v9, Lcom/kankunit/smartplugcronus/service/MessageService;->airMap:Ljava/util/Map;

    .line 379
    return-void

    .line 364
    :cond_0
    invoke-interface {v6, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 365
    .local v5, "item":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 366
    .local v11, "properties":Lorg/w3c/dom/NodeList;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    if-lt v7, v15, :cond_1

    .line 363
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 367
    :cond_1
    invoke-interface {v11, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    .line 368
    .local v12, "property":Lorg/w3c/dom/Node;
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    .line 369
    .local v10, "nodeName":Ljava/lang/String;
    const-string v15, "key"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 370
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    .line 366
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 371
    :cond_3
    const-string v15, "string"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 372
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v15

    .line 373
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    .line 374
    .local v14, "valueString":Ljava/lang/String;
    invoke-interface {v9, v8, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public doLogin(Ljava/lang/String;)V
    .locals 3
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 193
    const-string v1, ":"

    const-string v2, "-"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 194
    move-object v0, p1

    .line 195
    .local v0, "fMac":Ljava/lang/String;
    new-instance v1, Lcom/kankunit/smartplugcronus/service/MessageService$2;

    invoke-direct {v1, p0, v0}, Lcom/kankunit/smartplugcronus/service/MessageService$2;-><init>(Lcom/kankunit/smartplugcronus/service/MessageService;Ljava/lang/String;)V

    .line 268
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/service/MessageService$2;->start()V

    .line 270
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/MessageService;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 102
    :try_start_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/service/MessageService;->dealXml()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    new-instance v1, Lcom/kankunit/smartplugcronus/jni/SuperJNI;

    invoke-direct {v1}, Lcom/kankunit/smartplugcronus/jni/SuperJNI;-><init>()V

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/service/MessageService;->sj:Lcom/kankunit/smartplugcronus/jni/SuperJNI;

    .line 107
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/service/MessageService;->db:Lnet/tsz/afinal/FinalDb;

    .line 108
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/service/MessageService;->renewSceneData()V

    .line 109
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/service/MessageService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/service/MessageService;->nm:Landroid/app/NotificationManager;

    .line 110
    new-instance v1, Lcom/kankunit/smartplugcronus/service/MessageService$MessageServiceHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, p0}, Lcom/kankunit/smartplugcronus/service/MessageService$MessageServiceHandler;-><init>(Lcom/kankunit/smartplugcronus/service/MessageService;Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/service/MessageService;->handler:Lcom/kankunit/smartplugcronus/service/MessageService$MessageServiceHandler;

    .line 111
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/service/MessageService;->mac:Ljava/lang/String;

    .line 112
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/service/MessageService;->mac:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/service/MessageService;->registerMac(Ljava/lang/String;)V

    .line 122
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 133
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/MessageService;->mac:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/service/MessageService;->registerMac(Ljava/lang/String;)V

    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method public registerMac(Ljava/lang/String;)V
    .locals 3
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 142
    const-string v1, "000000000000"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    :goto_0
    return-void

    .line 145
    :cond_0
    const-string v1, ":"

    const-string v2, "-"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 146
    move-object v0, p1

    .line 147
    .local v0, "fMac":Ljava/lang/String;
    new-instance v1, Lcom/kankunit/smartplugcronus/service/MessageService$1;

    invoke-direct {v1, p0, v0}, Lcom/kankunit/smartplugcronus/service/MessageService$1;-><init>(Lcom/kankunit/smartplugcronus/service/MessageService;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/service/MessageService$1;->start()V

    goto :goto_0
.end method

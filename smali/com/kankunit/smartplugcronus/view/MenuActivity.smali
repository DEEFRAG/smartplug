.class public Lcom/kankunit/smartplugcronus/view/MenuActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "MenuActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/view/MenuActivity$CheckFirewareThead;,
        Lcom/kankunit/smartplugcronus/view/MenuActivity$GetThread;,
        Lcom/kankunit/smartplugcronus/view/MenuActivity$MyOntouchListener;
    }
.end annotation


# static fields
.field private static final CAMERA_REQUEST_CODE:I = 0x3e6

.field private static final IMAGE_FILE_NAME:Ljava/lang/String; = "faceImage.jpg"

.field private static final IMAGE_REQUEST_CODE:I = 0x3e5

.field private static final RESULT_REQUEST_CODE:I = 0x3e7

.field public static canFirewareUpdata:Z

.field public static isUpdate:Z

.field public static nickname:Landroid/widget/TextView;


# instance fields
.field public accountFlag:I

.field private baseUdpBroadcastService:Landroid/content/Intent;

.field private canExceit:Z

.field private checkFirewareMinaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field public currentMenuNo:I

.field private deviceListFragment:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

.field private exitTime:J

.field public fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

.field private handler:Landroid/os/Handler;

.field private hasNewFound:Ljava/lang/String;

.field private homeFragment:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

.field public isMenuOpen:Z

.field private mainview:Landroid/widget/LinearLayout;

.field private menuAdapter:Lcom/kankunit/smartplugcronus/adapter/MenuAdapter;

.field private menuListener:Lcom/special/ResideMenu/ResideMenu$OnMenuListener;

.field private messageService:Landroid/content/Intent;

.field newVerCode:I

.field person_image:Landroid/widget/ImageView;

.field private progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

.field public resideMenu:Lcom/special/ResideMenu/ResideMenu;

.field private touchListener:Lcom/kankunit/smartplugcronus/view/MenuActivity$MyOntouchListener;

.field private userModel:Lcom/kankunit/smartplugcronus/model/UserModel;

.field private videoIp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 119
    iput v0, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->newVerCode:I

    .line 131
    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->isMenuOpen:Z

    .line 133
    iput v0, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->currentMenuNo:I

    .line 140
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->videoIp:Ljava/lang/String;

    .line 149
    iput v2, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->accountFlag:I

    .line 876
    new-instance v0, Lcom/kankunit/smartplugcronus/view/MenuActivity$1;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/MenuActivity;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->menuListener:Lcom/special/ResideMenu/ResideMenu$OnMenuListener;

    .line 1304
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->exitTime:J

    .line 1305
    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->canExceit:Z

    .line 115
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/MenuActivity;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->checkFirewareMinaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/MenuActivity;)Z
    .locals 1

    .prologue
    .line 1518
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->getServerVerCode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/MenuActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/MenuActivity;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    return-object v0
.end method

.method private doNewVersionUpdate()V
    .locals 4

    .prologue
    .line 1549
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1550
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    const-string v1, "Software Upgrade"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1551
    const-string v2, "Discover the new version, it is recommended to update immediately."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1552
    const-string v2, "Update"

    new-instance v3, Lcom/kankunit/smartplugcronus/view/MenuActivity$11;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity$11;-><init>(Lcom/kankunit/smartplugcronus/view/MenuActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1560
    const-string v2, "Cancel"

    new-instance v3, Lcom/kankunit/smartplugcronus/view/MenuActivity$12;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity$12;-><init>(Lcom/kankunit/smartplugcronus/view/MenuActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1565
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1566
    return-void
.end method

.method private getAllAuth()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 383
    new-instance v5, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    new-instance v8, Lcom/kankunit/smartplugcronus/view/MenuActivity$4;

    invoke-direct {v8, p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/MenuActivity;)V

    .line 407
    const/4 v9, 0x0

    .line 383
    invoke-direct {v5, v8, v9}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    .line 409
    .local v5, "minaHandler":Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    const-string v8, "userinfo"

    const-string v9, "userid"

    .line 408
    invoke-static {p0, v8, v9}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 410
    .local v7, "userid":Ljava/lang/String;
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    .line 411
    .local v1, "db":Lnet/tsz/afinal/FinalDb;
    const-class v8, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v1, v8}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 412
    .local v2, "deviceModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    const-string v4, ""

    .line 413
    .local v4, "macs":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 419
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 420
    invoke-virtual {v4, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 422
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "wan_phone%"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 423
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%auth_req"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 422
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, "aMsg":Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getAllDevAuth:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/EncryptUtil;->minaEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 425
    invoke-static {v5, v8}, Lcom/kankunit/smartplugcronus/minautil/MinaUtil;->sendMsg(Lcom/kankunit/smartplugcronus/minautil/MinaHandler;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :goto_1
    return-void

    .line 413
    .end local v0    # "aMsg":Ljava/lang/String;
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 414
    .local v6, "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v9

    if-eq v9, v11, :cond_0

    .line 417
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 427
    .end local v6    # "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .restart local v0    # "aMsg":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 428
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getImageToView(Landroid/content/Intent;)V
    .locals 5
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 1428
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1429
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 1430
    const-string v4, "data"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 1431
    .local v3, "photo":Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/util/ImageUtil;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1432
    invoke-direct {p0, v3}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->savePic(Landroid/graphics/Bitmap;)V

    .line 1433
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1434
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    instance-of v4, v4, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;

    if-eqz v4, :cond_0

    .line 1435
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    check-cast v0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;

    .line 1436
    .local v0, "accountManagerFragMent":Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;
    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->setAccHead(Landroid/graphics/drawable/Drawable;)V

    .line 1437
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->person_image:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1440
    .end local v0    # "accountManagerFragMent":Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "photo":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method private getServerVerCode()Z
    .locals 9

    .prologue
    .line 1520
    :try_start_0
    const-string v6, "http://app.ikonke.com/ver.json"

    invoke-static {v6}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1523
    .local v5, "verjson":Ljava/lang/String;
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 1524
    .local v1, "g":Lcom/google/gson/Gson;
    const-class v6, Lcom/kankunit/smartplugcronus/model/UpdateAppModel;

    invoke-virtual {v1, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/UpdateAppModel;

    .line 1525
    .local v4, "ss":Lcom/kankunit/smartplugcronus/model/UpdateAppModel;
    if-eqz v4, :cond_1

    .line 1526
    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/UpdateAppModel;->getVerCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->newVerCode:I

    .line 1527
    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/UpdateAppModel;->getHasNewFound()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->hasNewFound:Ljava/lang/String;

    .line 1529
    const-string v6, "hasNewFound"

    const-string v7, "hasNewFound"

    .line 1528
    invoke-static {p0, v6, v7}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1530
    .local v2, "hasNewFoundLocal":Ljava/lang/String;
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->hasNewFound:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1531
    const-string v6, "hasNewFound"

    const-string v7, "hasNewFound"

    .line 1532
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->hasNewFound:Ljava/lang/String;

    .line 1531
    invoke-static {p0, v6, v7, v8}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->saveValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    const-string v6, "hasNewFound"

    .line 1534
    const-string v7, "hasNewFoundClick"

    const-string v8, "new"

    .line 1533
    invoke-static {p0, v6, v7, v8}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->saveValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 1537
    .local v3, "msg":Landroid/os/Message;
    const/16 v6, 0x6f

    iput v6, v3, Landroid/os/Message;->what:I

    .line 1538
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1544
    .end local v2    # "hasNewFoundLocal":Ljava/lang/String;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_1
    const/4 v6, 0x1

    .end local v1    # "g":Lcom/google/gson/Gson;
    .end local v4    # "ss":Lcom/kankunit/smartplugcronus/model/UpdateAppModel;
    .end local v5    # "verjson":Ljava/lang/String;
    :goto_0
    return v6

    .line 1540
    :catch_0
    move-exception v0

    .line 1541
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1542
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private initDatabase()V
    .locals 10

    .prologue
    .line 260
    const-string v7, "initInfo"

    .line 261
    const-string v8, "isDataInit"

    .line 260
    invoke-static {p0, v7, v8}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, "isDataInit":Ljava/lang/String;
    const-string v7, "initInfo"

    .line 263
    const-string v8, "version"

    .line 262
    invoke-static {p0, v7, v8}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 264
    .local v5, "swversion":Ljava/lang/String;
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->resetIcon()V

    .line 265
    const-string v7, "yes"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 267
    const-string v7, "initInfo"

    const-string v8, "version"

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->getVersion()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v7, v8, v9}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->saveValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v2

    .line 270
    .local v2, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v7, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;

    invoke-virtual {v2, v7}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    .line 271
    const-string v7, "ikonke_scene_record"

    .line 272
    const-string v8, "buttonEname"

    .line 271
    invoke-virtual {v2, v7, v8}, Lnet/tsz/afinal/FinalDb;->checkColumnExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 273
    .local v0, "b":Z
    if-nez v0, :cond_0

    .line 274
    const-string v7, "ALTER TABLE ikonke_scene_record ADD COLUMN buttonEname BLOB;"

    invoke-virtual {v2, v7}, Lnet/tsz/afinal/FinalDb;->exeSql(Ljava/lang/String;)V

    .line 277
    :cond_0
    const-class v7, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-virtual {v2, v7}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    .line 278
    const-class v7, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v2, v7}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    .line 279
    const-class v7, Lcom/kankunit/smartplugcronus/model/DevicePluginModel;

    invoke-virtual {v2, v7}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    .line 280
    const-class v7, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;

    invoke-virtual {v2, v7}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    .line 281
    const-class v7, Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-virtual {v2, v7}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    .line 282
    const-class v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v2, v7}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    .line 283
    const-string v7, "initInfo"

    const-string v8, "isDataInit"

    const-string v9, "yes"

    invoke-static {p0, v7, v8, v9}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->saveValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    .end local v0    # "b":Z
    .end local v2    # "finalDb":Lnet/tsz/afinal/FinalDb;
    :cond_1
    :goto_0
    const-string v7, "initInfo"

    const-string v8, "x"

    invoke-static {p0, v7, v8}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 323
    .local v6, "x":Ljava/lang/String;
    const-string v7, "yes"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 324
    const-string v7, "initInfo"

    const-string v8, "x"

    const-string v9, "yes"

    invoke-static {p0, v7, v8, v9}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->saveValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v7, "x"

    .line 326
    const/4 v8, 0x0

    .line 325
    invoke-virtual {p0, v7, v8}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 327
    .local v4, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 328
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "x"

    const/4 v8, 0x1

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 329
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 331
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "sp":Landroid/content/SharedPreferences;
    :cond_2
    return-void

    .line 284
    .end local v6    # "x":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 286
    const-string v7, "initInfo"

    const-string v8, "version"

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->getVersion()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v7, v8, v9}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->saveValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v2

    .line 289
    .restart local v2    # "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v7, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-virtual {v2, v7}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    .line 290
    const-class v7, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v2, v7}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    .line 291
    const-class v7, Lcom/kankunit/smartplugcronus/model/DevicePluginModel;

    invoke-virtual {v2, v7}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    .line 292
    const-class v7, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;

    invoke-virtual {v2, v7}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    .line 293
    const-class v7, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    invoke-virtual {v2, v7}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    .line 294
    const-class v7, Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-virtual {v2, v7}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    .line 295
    const-class v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v2, v7}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    .line 296
    const-string v7, "ikonke_linkagedetail"

    .line 297
    const-string v8, "isPoint"

    .line 296
    invoke-virtual {v2, v7, v8}, Lnet/tsz/afinal/FinalDb;->checkColumnExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 298
    .restart local v0    # "b":Z
    if-nez v0, :cond_4

    .line 299
    const-string v7, "ALTER TABLE ikonke_linkagedetail ADD COLUMN isPoint VARCHAR;"

    invoke-virtual {v2, v7}, Lnet/tsz/afinal/FinalDb;->exeSql(Ljava/lang/String;)V

    .line 301
    :cond_4
    const-string v7, "ikonke_linkage"

    const-string v8, "isDo"

    invoke-virtual {v2, v7, v8}, Lnet/tsz/afinal/FinalDb;->checkColumnExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 302
    if-nez v0, :cond_5

    .line 303
    const-string v7, "ALTER TABLE ikonke_linkage ADD COLUMN isDo VARCHAR;"

    invoke-virtual {v2, v7}, Lnet/tsz/afinal/FinalDb;->exeSql(Ljava/lang/String;)V

    .line 305
    :cond_5
    const-string v7, "ikonke_linkage"

    const-string v8, "needPush"

    invoke-virtual {v2, v7, v8}, Lnet/tsz/afinal/FinalDb;->checkColumnExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 306
    if-nez v0, :cond_6

    .line 307
    const-string v7, "ALTER TABLE ikonke_linkage ADD COLUMN needPush VARCHAR;"

    invoke-virtual {v2, v7}, Lnet/tsz/afinal/FinalDb;->exeSql(Ljava/lang/String;)V

    .line 309
    :cond_6
    const-string v7, "ikonke_device"

    const-string v8, "lightStatus"

    invoke-virtual {v2, v7, v8}, Lnet/tsz/afinal/FinalDb;->checkColumnExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 310
    if-nez v0, :cond_7

    .line 311
    const-string v7, "ALTER TABLE ikonke_device ADD COLUMN lightStatus VARCHAR;"

    invoke-virtual {v2, v7}, Lnet/tsz/afinal/FinalDb;->exeSql(Ljava/lang/String;)V

    .line 313
    :cond_7
    const-string v7, "ikonke_device"

    const-string v8, "isAuth"

    invoke-virtual {v2, v7, v8}, Lnet/tsz/afinal/FinalDb;->checkColumnExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_8

    .line 315
    const-string v7, "ALTER TABLE ikonke_device ADD COLUMN isAuth VARCHAR;"

    invoke-virtual {v2, v7}, Lnet/tsz/afinal/FinalDb;->exeSql(Ljava/lang/String;)V

    .line 317
    :cond_8
    const-string v7, "initInfo"

    const-string v8, "isDataInit"

    const-string v9, "yes"

    invoke-static {p0, v7, v8, v9}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->saveValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private resetIcon()V
    .locals 15

    .prologue
    const v14, 0x7f0201b8

    const v13, 0x7f0201b7

    const v12, 0x7f0201b6

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 177
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/dao/RemoteControlDao;->getAll(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 179
    .local v3, "rcmList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlModel;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-lt v1, v8, :cond_0

    .line 202
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getAllShortcut(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 203
    .local v5, "scmList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lt v1, v8, :cond_a

    .line 257
    return-void

    .line 180
    .end local v5    # "scmList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 181
    .local v2, "rcm":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v8

    const/16 v9, 0x9

    if-ne v8, v9, :cond_2

    .line 182
    const v8, 0x7f0201bb

    invoke-virtual {v2, v8}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setPhoto(I)V

    .line 179
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    :cond_2
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_3

    .line 184
    invoke-virtual {v2, v14}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setPhoto(I)V

    goto :goto_2

    .line 185
    :cond_3
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_4

    .line 186
    const v8, 0x7f0201be

    invoke-virtual {v2, v8}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setPhoto(I)V

    goto :goto_2

    .line 187
    :cond_4
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v8

    const/4 v9, 0x7

    if-ne v8, v9, :cond_5

    .line 188
    const v8, 0x7f0201bf

    invoke-virtual {v2, v8}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setPhoto(I)V

    goto :goto_2

    .line 189
    :cond_5
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_6

    .line 190
    const v8, 0x7f0201cc

    invoke-virtual {v2, v8}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setPhoto(I)V

    goto :goto_2

    .line 191
    :cond_6
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v8

    if-ne v8, v11, :cond_7

    .line 192
    const v8, 0x7f0201d2

    invoke-virtual {v2, v8}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setPhoto(I)V

    goto :goto_2

    .line 193
    :cond_7
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v8

    if-ne v8, v10, :cond_8

    .line 194
    invoke-virtual {v2, v12}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setPhoto(I)V

    goto :goto_2

    .line 195
    :cond_8
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_9

    .line 196
    invoke-virtual {v2, v13}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setPhoto(I)V

    goto :goto_2

    .line 197
    :cond_9
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_1

    .line 198
    const v8, 0x7f0201bc

    invoke-virtual {v2, v8}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setPhoto(I)V

    goto :goto_2

    .line 204
    .end local v2    # "rcm":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    .restart local v5    # "scmList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    :cond_a
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    .line 205
    .local v4, "scm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getShortcutType()Ljava/lang/String;

    move-result-object v6

    .line 206
    .local v6, "st":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getRelatedid()I

    move-result v8

    if-eqz v8, :cond_e

    const-string v8, "device"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 208
    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getRelatedid()I

    move-result v8

    .line 207
    invoke-static {p0, v8}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceById(Landroid/content/Context;I)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v0

    .line 209
    .local v0, "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    if-eqz v0, :cond_b

    .line 210
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v7

    .line 211
    .local v7, "v":I
    if-ne v7, v10, :cond_c

    .line 212
    const v8, 0x7f0201c9

    invoke-virtual {v4, v8}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    .line 254
    .end local v0    # "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v7    # "v":I
    :cond_b
    :goto_3
    invoke-static {p0, v4}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->updateShortcut(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/ShortCutModel;)V

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 213
    .restart local v0    # "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .restart local v7    # "v":I
    :cond_c
    if-ne v7, v11, :cond_d

    .line 214
    const v8, 0x7f0201c6

    invoke-virtual {v4, v8}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    goto :goto_3

    .line 216
    :cond_d
    const v8, 0x7f0201c7

    invoke-virtual {v4, v8}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    goto :goto_3

    .line 219
    .end local v0    # "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v7    # "v":I
    :cond_e
    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getRelatedid()I

    move-result v8

    if-eqz v8, :cond_17

    const-string v8, "device"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    .line 221
    const-string v8, "airRemoteControl"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 222
    invoke-virtual {v4, v12}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    goto :goto_3

    .line 223
    :cond_f
    const-string v8, "tvRemoteControl"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 224
    const v8, 0x7f0201d2

    invoke-virtual {v4, v8}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    goto :goto_3

    .line 225
    :cond_10
    const-string v8, "curtainRemoteControl"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 226
    invoke-virtual {v4, v14}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    goto :goto_3

    .line 227
    :cond_11
    const-string v8, "universalRemoteControl"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 228
    const v8, 0x7f0201be

    invoke-virtual {v4, v8}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    goto :goto_3

    .line 229
    :cond_12
    const-string v8, "appleRemoteControl"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 230
    invoke-virtual {v4, v13}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    goto :goto_3

    .line 231
    :cond_13
    const-string v8, "miRemoteControl"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 232
    const v8, 0x7f0201bf

    invoke-virtual {v4, v8}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    goto :goto_3

    .line 233
    :cond_14
    const-string v8, "radioRemoteControl"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 234
    const v8, 0x7f0201cc

    invoke-virtual {v4, v8}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    goto/16 :goto_3

    .line 235
    :cond_15
    const-string v8, "garageRemoteControl"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 236
    const v8, 0x7f0201bb

    invoke-virtual {v4, v8}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    goto/16 :goto_3

    .line 237
    :cond_16
    const-string v8, "ghRemoteControl"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 238
    const v8, 0x7f0201bc

    invoke-virtual {v4, v8}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    goto/16 :goto_3

    .line 242
    :cond_17
    if-eqz v6, :cond_18

    const-string v8, "rt_module"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 243
    const v8, 0x7f0201bd

    invoke-virtual {v4, v8}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    goto/16 :goto_3

    .line 244
    :cond_18
    if-eqz v6, :cond_19

    const-string v8, "ir_module"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 245
    const v8, 0x7f0201ca

    invoke-virtual {v4, v8}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    goto/16 :goto_3

    .line 246
    :cond_19
    if-eqz v6, :cond_1a

    const-string v8, "tp_module"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 247
    const v8, 0x7f0201ba

    invoke-virtual {v4, v8}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    goto/16 :goto_3

    .line 248
    :cond_1a
    if-eqz v6, :cond_1b

    const-string v8, "rf_module"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 249
    const v8, 0x7f0201cb

    invoke-virtual {v4, v8}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    goto/16 :goto_3

    .line 250
    :cond_1b
    if-eqz v6, :cond_b

    const-string v8, "vd_module"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 251
    const v8, 0x7f020471

    invoke-virtual {v4, v8}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    goto/16 :goto_3
.end method

.method private savePic(Landroid/graphics/Bitmap;)V
    .locals 11
    .param p1, "photo"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1443
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1444
    .local v5, "l2":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1445
    .local v4, "fileName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->getCacheDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1446
    const-string v9, "/sysfiles/temp/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1445
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1447
    .local v7, "tempImgPath":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->getDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1448
    .local v1, "dir":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1449
    .local v2, "dirFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 1450
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 1455
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    .line 1456
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1455
    invoke-direct {v0, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1457
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x4b

    invoke-virtual {p1, v8, v9, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1458
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "faceimage==="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1459
    const-string v8, "userface"

    const-string v9, "faceimage"

    invoke-static {p0, v8, v9, v7}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->saveValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1465
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    :goto_0
    return-void

    .line 1462
    :catch_0
    move-exception v3

    .line 1463
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setUpMenu()V
    .locals 15

    .prologue
    const/4 v14, -0x1

    .line 631
    new-instance v11, Lcom/special/ResideMenu/ResideMenu;

    invoke-direct {v11, p0}, Lcom/special/ResideMenu/ResideMenu;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->resideMenu:Lcom/special/ResideMenu/ResideMenu;

    .line 632
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->resideMenu:Lcom/special/ResideMenu/ResideMenu;

    const v12, 0x7f0202fc

    invoke-virtual {v11, v12}, Lcom/special/ResideMenu/ResideMenu;->setBackground(I)V

    .line 633
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->resideMenu:Lcom/special/ResideMenu/ResideMenu;

    invoke-virtual {v11, p0}, Lcom/special/ResideMenu/ResideMenu;->attachToActivity(Landroid/app/Activity;)V

    .line 634
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->resideMenu:Lcom/special/ResideMenu/ResideMenu;

    iget-object v12, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->menuListener:Lcom/special/ResideMenu/ResideMenu$OnMenuListener;

    invoke-virtual {v11, v12}, Lcom/special/ResideMenu/ResideMenu;->setMenuListener(Lcom/special/ResideMenu/ResideMenu$OnMenuListener;)V

    .line 635
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->resideMenu:Lcom/special/ResideMenu/ResideMenu;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/special/ResideMenu/ResideMenu;->setDirectionDisable(I)V

    .line 637
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f03009c

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 638
    .local v10, "view":Landroid/view/View;
    const v11, 0x7f0702c1

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    sput-object v11, Lcom/kankunit/smartplugcronus/view/MenuActivity;->nickname:Landroid/widget/TextView;

    .line 639
    const v11, 0x7f0702c2

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 640
    .local v4, "kscore":Landroid/widget/TextView;
    sget-object v11, Lcom/kankunit/smartplugcronus/view/MenuActivity;->nickname:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->userModel:Lcom/kankunit/smartplugcronus/model/UserModel;

    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/UserModel;->getNickname()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "K points:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->userModel:Lcom/kankunit/smartplugcronus/model/UserModel;

    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/UserModel;->getPoints()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Branch"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 642
    const v11, 0x7f0702c0

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->person_image:Landroid/widget/ImageView;

    .line 643
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->person_image:Landroid/widget/ImageView;

    invoke-virtual {v11, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    const-string v11, "userface"

    .line 645
    const-string v12, "faceimage"

    .line 644
    invoke-static {p0, v11, v12}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 646
    .local v9, "photoPathString":Ljava/lang/String;
    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 648
    :try_start_0
    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 649
    .local v8, "photo":Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/kankunit/smartplugcronus/util/ImageUtil;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 650
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-direct {v1, v11, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 652
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->person_image:Landroid/widget/ImageView;

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v8    # "photo":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 662
    .local v7, "params":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 663
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 664
    iget v11, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v11, v11, 0x3

    mul-int/lit8 v11, v11, 0x2

    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 666
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->resideMenu:Lcom/special/ResideMenu/ResideMenu;

    invoke-virtual {v11, v10, v7}, Lcom/special/ResideMenu/ResideMenu;->addMenuLayout(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 668
    const v11, 0x7f0702c3

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 669
    .local v6, "listView":Landroid/widget/ListView;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 670
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v11, 0x7

    if-lt v3, v11, :cond_1

    .line 673
    new-instance v11, Lcom/kankunit/smartplugcronus/adapter/MenuAdapter;

    invoke-direct {v11, p0, v5}, Lcom/kankunit/smartplugcronus/adapter/MenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v11, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->menuAdapter:Lcom/kankunit/smartplugcronus/adapter/MenuAdapter;

    .line 674
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->menuAdapter:Lcom/kankunit/smartplugcronus/adapter/MenuAdapter;

    invoke-virtual {v6, v11}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 675
    new-instance v11, Lcom/kankunit/smartplugcronus/view/MenuActivity$9;

    invoke-direct {v11, p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity$9;-><init>(Lcom/kankunit/smartplugcronus/view/MenuActivity;)V

    invoke-virtual {v6, v11}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 693
    return-void

    .line 654
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v3    # "i":I
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v6    # "listView":Landroid/widget/ListView;
    .end local v7    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :catch_0
    move-exception v2

    .line 655
    .local v2, "exception":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 671
    .end local v2    # "exception":Ljava/lang/Exception;
    .restart local v0    # "dm":Landroid/util/DisplayMetrics;
    .restart local v3    # "i":I
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v6    # "listView":Landroid/widget/ListView;
    .restart local v7    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private showRedPoint()V
    .locals 3

    .prologue
    .line 1588
    const-string v1, "hasNewFound"

    const-string v2, "hasNewFoundClick"

    .line 1587
    invoke-static {p0, v1, v2}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1589
    .local v0, "hasNotClickFound":Ljava/lang/String;
    sget-object v1, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->menu_red_point:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 1599
    :goto_0
    return-void

    .line 1592
    :cond_0
    const-string v1, "new"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/kankunit/smartplugcronus/view/MenuActivity;->isUpdate:Z

    if-nez v1, :cond_1

    .line 1593
    sget-boolean v1, Lcom/kankunit/smartplugcronus/view/MenuActivity;->canFirewareUpdata:Z

    if-eqz v1, :cond_2

    .line 1594
    :cond_1
    sget-object v1, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->menu_red_point:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1598
    :goto_1
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->menuAdapter:Lcom/kankunit/smartplugcronus/adapter/MenuAdapter;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/adapter/MenuAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1596
    :cond_2
    sget-object v1, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->menu_red_point:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private synchAuth()V
    .locals 10

    .prologue
    .line 334
    new-instance v3, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    new-instance v7, Lcom/kankunit/smartplugcronus/view/MenuActivity$3;

    invoke-direct {v7, p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/MenuActivity;)V

    .line 353
    const/4 v8, 0x0

    .line 334
    invoke-direct {v3, v7, v8}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    .line 355
    .local v3, "minaHandler":Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    const-string v7, "userinfo"

    const-string v8, "userid"

    .line 354
    invoke-static {p0, v7, v8}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 356
    .local v6, "userid":Ljava/lang/String;
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    .line 358
    .local v1, "db":Lnet/tsz/afinal/FinalDb;
    const-class v7, Lcom/kankunit/smartplugcronus/model/BindFailRecordModel;

    invoke-virtual {v1, v7}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    .line 359
    .local v5, "recordModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/BindFailRecordModel;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 380
    return-void

    .line 359
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/BindFailRecordModel;

    .line 360
    .local v4, "recordModel":Lcom/kankunit/smartplugcronus/model/BindFailRecordModel;
    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/BindFailRecordModel;->getFlag()Ljava/lang/String;

    move-result-object v8

    const-string v9, "sub"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 361
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "wan_phone%"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/BindFailRecordModel;->getMac()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 362
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%sub_bind_req"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 361
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "bindMsg":Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "subBind:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/EncryptUtil;->minaEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 364
    invoke-static {v3, v8}, Lcom/kankunit/smartplugcronus/minautil/MinaUtil;->sendMsg(Lcom/kankunit/smartplugcronus/minautil/MinaHandler;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 366
    :catch_0
    move-exception v2

    .line 367
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 370
    .end local v0    # "bindMsg":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "wan_phone%"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/BindFailRecordModel;->getMac()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 371
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%main_bind_req"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 370
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    .restart local v0    # "bindMsg":Ljava/lang/String;
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "mainBind:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/EncryptUtil;->minaEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 373
    invoke-static {v3, v8}, Lcom/kankunit/smartplugcronus/minautil/MinaUtil;->sendMsg(Lcom/kankunit/smartplugcronus/minautil/MinaHandler;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 375
    :catch_1
    move-exception v2

    .line 376
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private testVideo()V
    .locals 0

    .prologue
    .line 440
    return-void
.end method


# virtual methods
.method public ShowDialog()V
    .locals 4

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c024a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5014

    new-instance v3, Lcom/kankunit/smartplugcronus/view/MenuActivity$2;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/MenuActivity;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .line 174
    return-void
.end method

.method public changeFragment(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "targetFragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 925
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->resideMenu:Lcom/special/ResideMenu/ResideMenu;

    invoke-virtual {v0}, Lcom/special/ResideMenu/ResideMenu;->clearIgnoredViewList()V

    .line 926
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 927
    const v1, 0x7f07025b

    const-string v2, "fragment"

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 928
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransitionStyle(I)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 929
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 930
    return-void
.end method

.method public closeMenu()V
    .locals 3

    .prologue
    .line 731
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 732
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->resideMenu:Lcom/special/ResideMenu/ResideMenu;

    invoke-virtual {v1}, Lcom/special/ResideMenu/ResideMenu;->closeMenu()V

    .line 744
    :goto_0
    return-void

    .line 734
    :cond_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->mainview:Landroid/widget/LinearLayout;

    .line 735
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 734
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 736
    .local v0, "vl":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 737
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/lit16 v1, v1, -0x172

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 738
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/lit16 v1, v1, 0x172

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 739
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/lit16 v1, v1, -0x9c

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 740
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/lit16 v1, v1, -0xaa

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 741
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->mainview:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 742
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->resideMenu:Lcom/special/ResideMenu/ResideMenu;

    invoke-virtual {v1}, Lcom/special/ResideMenu/ResideMenu;->closeMenu()V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 699
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->isMenuOpen:Z

    if-nez v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->touchListener:Lcom/kankunit/smartplugcronus/view/MenuActivity$MyOntouchListener;

    invoke-interface {v0, p1}, Lcom/kankunit/smartplugcronus/view/MenuActivity$MyOntouchListener;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 703
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 705
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->resideMenu:Lcom/special/ResideMenu/ResideMenu;

    invoke-virtual {v0, p1}, Lcom/special/ResideMenu/ResideMenu;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 706
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 705
    const/4 v0, 0x0

    .line 709
    :goto_0
    return v0

    .line 705
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 709
    :cond_2
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public doReceive(Landroid/content/Intent;)V
    .locals 27
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 945
    :try_start_0
    const-string v24, "msgBody"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_0

    .line 948
    const-string v24, "msgBody"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 949
    .local v13, "msg":Ljava/lang/String;
    const-string v24, "refreshPlug"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 1209
    .end local v13    # "msg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 963
    .restart local v13    # "msg":Ljava/lang/String;
    :cond_1
    const-string v24, "getUserIp_ack"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 964
    const-string v24, "%"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 965
    .local v19, "sArr":[Ljava/lang/String;
    const/16 v24, 0x3

    aget-object v24, v19, v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/MenuActivity;->videoIp:Ljava/lang/String;

    .line 966
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_4

    .line 968
    invoke-static/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 969
    .local v15, "phoneMac":Ljava/lang/String;
    const-string v24, ":"

    const-string v25, "-"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .line 970
    const/16 v24, 0x1

    aget-object v21, v19, v24

    .line 971
    .local v21, "vMac":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, "@"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 972
    const-string v25, "kankun-smartplug.com"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 971
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 973
    .local v3, "address":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "wan_phone%"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 974
    const-string v25, "%nopassword%open%video"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 973
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 975
    .local v12, "message":Ljava/lang/String;
    sget-object v24, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "video==="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 976
    invoke-static/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v24

    .line 977
    invoke-static {v12}, Lcom/kankunit/smartplugcronus/util/EncryptUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 976
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendMessage(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1206
    .end local v3    # "address":Ljava/lang/String;
    .end local v12    # "message":Ljava/lang/String;
    .end local v13    # "msg":Ljava/lang/String;
    .end local v15    # "phoneMac":Ljava/lang/String;
    .end local v19    # "sArr":[Ljava/lang/String;
    .end local v21    # "vMac":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1207
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 985
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v13    # "msg":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v24, "vack"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->isShowing()Z

    move-result v24

    if-eqz v24, :cond_3

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 989
    :cond_3
    sget-object v24, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "video==="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->videoIp:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 990
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "http://"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->videoIp:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 991
    const-string v25, ":19527/?action=stream"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 990
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    .line 993
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v23

    .line 994
    .local v23, "xmppUtil":Lcom/kankunit/smartplugcronus/util/XMPPUtil;
    invoke-virtual/range {v23 .. v23}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->isConnected()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 996
    const-string v24, "%"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 997
    const-string v24, "%"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x3

    aget-object v18, v24, v25

    .line 998
    .local v18, "pluginNameInfo":Ljava/lang/String;
    const-string v24, "%"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    aget-object v4, v24, v25

    .line 1001
    .local v4, "deviceMac":Ljava/lang/String;
    const-string v24, "#"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_11

    .line 1004
    const-string v24, "#"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aget-object v17, v24, v25

    .line 1005
    .local v17, "pluginName":Ljava/lang/String;
    const-string v24, "#"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    aget-object v9, v24, v25

    .line 1006
    .local v9, "isOn":Ljava/lang/String;
    const-string v24, "#"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x2

    aget-object v16, v24, v25

    .line 1007
    .local v16, "pluginMac":Ljava/lang/String;
    const/4 v11, 0x1

    .line 1008
    .local v11, "isUpdateScm":Z
    const/16 v22, 0x0

    .line 1009
    .local v22, "weatherAddPlugin":Z
    const/16 v20, 0x0

    .line 1010
    .local v20, "scm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_5

    .line 1012
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v4, v1}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutModelByMacAndPluginType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v20

    .line 1018
    :cond_5
    if-nez v20, :cond_6

    .line 1019
    new-instance v20, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    .end local v20    # "scm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-direct/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;-><init>()V

    .line 1020
    .restart local v20    # "scm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    const/4 v11, 0x0

    .line 1028
    :cond_6
    invoke-static/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutCount(Landroid/content/Context;)I

    move-result v14

    .line 1029
    .local v14, "orderNo":I
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setOrderNo(I)V

    .line 1031
    const-string v24, "on"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_7

    const-string v24, "active"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_f

    .line 1034
    :cond_7
    const-string v24, "closed"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOn(Ljava/lang/String;)V

    .line 1035
    const/16 v24, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOnline(I)V

    .line 1036
    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setRelatedid(I)V

    .line 1037
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setShortcutType(Ljava/lang/String;)V

    .line 1038
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setPluginMac(Ljava/lang/String;)V

    .line 1039
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setDeviceMac(Ljava/lang/String;)V

    .line 1040
    const-string v24, "rt_"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 1041
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 1042
    const v25, 0x7f0c0162

    .line 1041
    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setTitle(Ljava/lang/String;)V

    .line 1043
    const/16 v22, 0x1

    .line 1044
    const v24, 0x7f0201bd

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    .line 1045
    const-string v24, "rt_"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setPluginType(Ljava/lang/String;)V

    .line 1068
    :cond_8
    :goto_1
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getDeviceShortcut(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v5

    .line 1072
    .local v5, "deviceScm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    if-nez v5, :cond_d

    .line 1073
    const/16 v22, 0x0

    .line 1079
    :goto_2
    if-eqz v22, :cond_9

    .line 1082
    if-eqz v11, :cond_e

    .line 1083
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->updateShortcut(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/ShortCutModel;)V

    .line 1182
    .end local v5    # "deviceScm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .end local v9    # "isOn":Ljava/lang/String;
    .end local v11    # "isUpdateScm":Z
    .end local v14    # "orderNo":I
    .end local v16    # "pluginMac":Ljava/lang/String;
    .end local v17    # "pluginName":Ljava/lang/String;
    .end local v20    # "scm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .end local v22    # "weatherAddPlugin":Z
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->homeFragment:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->getIndexGridView()Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    move-result-object v24

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->isDragable:Z

    move/from16 v24, v0

    if-nez v24, :cond_0

    .line 1183
    new-instance v24, Lcom/kankunit/smartplugcronus/view/MenuActivity$10;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/view/MenuActivity$10;-><init>(Lcom/kankunit/smartplugcronus/view/MenuActivity;)V

    .line 1197
    invoke-virtual/range {v24 .. v24}, Lcom/kankunit/smartplugcronus/view/MenuActivity$10;->start()V

    goto/16 :goto_0

    .line 1046
    .restart local v9    # "isOn":Ljava/lang/String;
    .restart local v11    # "isUpdateScm":Z
    .restart local v14    # "orderNo":I
    .restart local v16    # "pluginMac":Ljava/lang/String;
    .restart local v17    # "pluginName":Ljava/lang/String;
    .restart local v20    # "scm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .restart local v22    # "weatherAddPlugin":Z
    :cond_a
    const-string v24, "ir_"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 1047
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 1048
    const v25, 0x7f0c0165

    .line 1047
    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setTitle(Ljava/lang/String;)V

    .line 1049
    const/16 v22, 0x1

    .line 1050
    const v24, 0x7f0201ca

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    .line 1051
    const-string v24, "ir_"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setPluginType(Ljava/lang/String;)V

    goto :goto_1

    .line 1052
    :cond_b
    const-string v24, "rf_"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 1053
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 1054
    const v25, 0x7f0c0163

    .line 1053
    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setTitle(Ljava/lang/String;)V

    .line 1055
    const/16 v22, 0x1

    .line 1056
    const v24, 0x7f0201cb

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    .line 1057
    const-string v24, "rf_"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setPluginType(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1058
    :cond_c
    const-string v24, "tp_"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 1059
    const-string v24, "#"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x8

    aget-object v16, v24, v25

    .line 1060
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setPluginMac(Ljava/lang/String;)V

    .line 1061
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 1062
    const v25, 0x7f0c0164

    .line 1061
    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setTitle(Ljava/lang/String;)V

    .line 1063
    const/16 v22, 0x1

    .line 1064
    const v24, 0x7f0201ba

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    .line 1065
    const-string v24, "tp_"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setPluginType(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1075
    .restart local v5    # "deviceScm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_d
    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getTitle()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setDeviceTitle(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1089
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->saveShortcut(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/ShortCutModel;)V

    .line 1095
    const/16 v24, 0x1

    .line 1091
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v24

    invoke-static {v0, v4, v1, v2}, Lcom/kankunit/smartplugcronus/dao/DevicePluginDao;->updateDevicePlug(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 1105
    .end local v5    # "deviceScm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_f
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_10

    .line 1113
    const/16 v24, 0x0

    const/16 v25, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 1111
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v4, v1}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->deleteShortcutByMacAndPluginType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    :cond_10
    const/16 v24, 0x0

    .line 1118
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v24

    invoke-static {v0, v4, v1, v2}, Lcom/kankunit/smartplugcronus/dao/DevicePluginDao;->updateDevicePlug(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 1123
    .end local v9    # "isOn":Ljava/lang/String;
    .end local v11    # "isUpdateScm":Z
    .end local v14    # "orderNo":I
    .end local v16    # "pluginMac":Ljava/lang/String;
    .end local v17    # "pluginName":Ljava/lang/String;
    .end local v20    # "scm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .end local v22    # "weatherAddPlugin":Z
    :cond_11
    const-string v24, "%"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x3

    aget-object v6, v24, v25

    .line 1124
    .local v6, "deviceState":Ljava/lang/String;
    const-string v24, "%"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x4

    aget-object v10, v24, v25

    .line 1126
    .local v10, "isRack":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v7

    .line 1128
    .local v7, "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    if-eqz v7, :cond_9

    .line 1129
    const-string v24, "rack"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 1133
    invoke-virtual {v7, v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setStatus(Ljava/lang/String;)V

    .line 1135
    const-string v24, "offline"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_12

    .line 1136
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsOnline(I)V

    .line 1137
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->updateDevice(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    .line 1144
    const/16 v24, 0x0

    .line 1140
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v4, v6, v1}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->updateShortcutByDeviceMac(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->showSwitch(Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    goto/16 :goto_3

    .line 1149
    :cond_12
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsOnline(I)V

    .line 1150
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->updateDevice(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    .line 1156
    const/16 v24, 0x1

    .line 1152
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v4, v6, v1}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->updateShortcutByDeviceMac(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1158
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Jump start"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 1159
    const-string v25, "---"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->currentMenuNo:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1158
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 1160
    sget v24, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v25, 0xf

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_9

    .line 1174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->showSwitch(Lcom/kankunit/smartplugcronus/model/DeviceModel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public getCurrentMenuNo()I
    .locals 1

    .prologue
    .line 1251
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->currentMenuNo:I

    return v0
.end method

.method public getDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1468
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1469
    .local v0, "lastSlastPos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getResideMenu()Lcom/special/ResideMenu/ResideMenu;
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->resideMenu:Lcom/special/ResideMenu/ResideMenu;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 6

    .prologue
    .line 153
    :try_start_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 154
    .local v2, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 155
    .local v1, "info":Landroid/content/pm/PackageInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 159
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "manager":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 159
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "arg0"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "get ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1261
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/ConfigUtil;->getVerCode(Landroid/content/Context;)I

    move-result v0

    .line 1262
    .local v0, "vercode":I
    iget v1, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->newVerCode:I

    if-le v1, v0, :cond_2

    .line 1263
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->doNewVersionUpdate()V

    .line 1264
    sput-boolean v4, Lcom/kankunit/smartplugcronus/view/MenuActivity;->isUpdate:Z

    .line 1269
    :goto_0
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->showRedPoint()V

    .line 1271
    .end local v0    # "vercode":I
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1301
    :cond_1
    :goto_1
    return v3

    .line 1266
    .restart local v0    # "vercode":I
    :cond_2
    sput-boolean v3, Lcom/kankunit/smartplugcronus/view/MenuActivity;->isUpdate:Z

    goto :goto_0

    .line 1273
    .end local v0    # "vercode":I
    :sswitch_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->homeFragment:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->getIndexGridView()Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    move-result-object v1

    iget-boolean v1, v1, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->isDragable:Z

    if-nez v1, :cond_1

    .line 1274
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->homeFragment:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->getIndexGridView()Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->isDeleteable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1275
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->homeFragment:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->refreshGrid()V

    .line 1276
    const-string v1, "Refresh ---"

    invoke-static {p0, v1}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 1281
    :sswitch_1
    sput-boolean v4, Lcom/kankunit/smartplugcronus/view/MenuActivity;->canFirewareUpdata:Z

    .line 1283
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->showRedPoint()V

    goto :goto_1

    .line 1296
    :sswitch_2
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->showRedPoint()V

    goto :goto_1

    .line 1271
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6f -> :sswitch_2
        0x8a4 -> :sswitch_1
    .end sparse-switch
.end method

.method public initHongMiHeader()V
    .locals 0

    .prologue
    .line 1399
    return-void
.end method

.method public isMenuOpen()Z
    .locals 1

    .prologue
    .line 748
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->isMenuOpen:Z

    return v0
.end method

.method public itemClick(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 836
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->menuAdapter:Lcom/kankunit/smartplugcronus/adapter/MenuAdapter;

    invoke-virtual {v2, p1}, Lcom/kankunit/smartplugcronus/adapter/MenuAdapter;->setCurrent(I)V

    .line 837
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->menuAdapter:Lcom/kankunit/smartplugcronus/adapter/MenuAdapter;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/adapter/MenuAdapter;->notifyDataSetChanged()V

    .line 838
    if-nez p1, :cond_1

    .line 839
    new-instance v2, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    invoke-direct {v2}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;-><init>()V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    .line 840
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->changeFragment(Landroid/support/v4/app/Fragment;)V

    .line 841
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->closeMenu()V

    .line 874
    :cond_0
    :goto_0
    return-void

    .line 842
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 843
    new-instance v2, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    invoke-direct {v2}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;-><init>()V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    .line 844
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->changeFragment(Landroid/support/v4/app/Fragment;)V

    .line 845
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->closeMenu()V

    goto :goto_0

    .line 846
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 847
    const-string v2, "hasNewFound"

    const-string v3, "hasNewFoundClick"

    .line 848
    const-string v4, "click"

    .line 847
    invoke-static {p0, v2, v3, v4}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->saveValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 850
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 851
    const-string v2, "http://faxian.ikonke.com"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 852
    .local v0, "content_url":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 853
    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 854
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->closeMenu()V

    goto :goto_0

    .line 857
    .end local v0    # "content_url":Landroid/net/Uri;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    .line 858
    new-instance v2, Lcom/kankunit/smartplugcronus/fragment/MessageFragment;

    invoke-direct {v2}, Lcom/kankunit/smartplugcronus/fragment/MessageFragment;-><init>()V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    .line 859
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->changeFragment(Landroid/support/v4/app/Fragment;)V

    .line 860
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->closeMenu()V

    goto :goto_0

    .line 861
    :cond_4
    const/4 v2, 0x4

    if-ne p1, v2, :cond_5

    .line 862
    new-instance v2, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;

    invoke-direct {v2}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;-><init>()V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    .line 863
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->changeFragment(Landroid/support/v4/app/Fragment;)V

    .line 864
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->closeMenu()V

    goto :goto_0

    .line 865
    :cond_5
    const/4 v2, 0x5

    if-ne p1, v2, :cond_6

    .line 866
    new-instance v2, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;

    invoke-direct {v2}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;-><init>()V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    .line 867
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->changeFragment(Landroid/support/v4/app/Fragment;)V

    .line 868
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->closeMenu()V

    goto :goto_0

    .line 869
    :cond_6
    const/4 v2, 0x6

    if-ne p1, v2, :cond_0

    .line 870
    new-instance v2, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;

    invoke-direct {v2}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;-><init>()V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    .line 871
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->changeFragment(Landroid/support/v4/app/Fragment;)V

    .line 872
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->closeMenu()V

    goto/16 :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1213
    if-eqz p3, :cond_0

    .line 1214
    const-string v2, "isShowSceneFragment"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1215
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->homeFragment:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->switchFragment(I)V

    .line 1219
    :cond_0
    if-eqz p2, :cond_1

    .line 1221
    packed-switch p1, :pswitch_data_0

    .line 1243
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1244
    return-void

    .line 1223
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->startPhotoZoom(Landroid/net/Uri;)V

    goto :goto_0

    .line 1228
    :pswitch_1
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1229
    .local v0, "path":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "faceImage.jpg"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1230
    .local v1, "tempFile":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->startPhotoZoom(Landroid/net/Uri;)V

    goto :goto_0

    .line 1237
    .end local v0    # "path":Ljava/io/File;
    .end local v1    # "tempFile":Ljava/io/File;
    :pswitch_2
    if-eqz p3, :cond_1

    .line 1238
    invoke-direct {p0, p3}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->getImageToView(Landroid/content/Intent;)V

    goto :goto_0

    .line 1221
    :pswitch_data_0
    .packed-switch 0x3e5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 754
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0702c0

    if-ne v2, v3, :cond_0

    .line 755
    const/4 v2, 0x1

    iput v2, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->accountFlag:I

    .line 756
    new-instance v2, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;

    invoke-direct {v2}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;-><init>()V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    .line 757
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->changeFragment(Landroid/support/v4/app/Fragment;)V

    .line 758
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->closeMenu()V

    .line 832
    :goto_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->resideMenu:Lcom/special/ResideMenu/ResideMenu;

    invoke-virtual {v2}, Lcom/special/ResideMenu/ResideMenu;->closeMenu()V

    .line 833
    return-void

    .line 759
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0702ca

    if-ne v2, v3, :cond_1

    .line 766
    new-instance v2, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    invoke-direct {v2}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;-><init>()V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    .line 767
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->changeFragment(Landroid/support/v4/app/Fragment;)V

    .line 768
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->closeMenu()V

    goto :goto_0

    .line 769
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0702cd

    if-ne v2, v3, :cond_2

    .line 772
    new-instance v2, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    invoke-direct {v2}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;-><init>()V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    .line 773
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->changeFragment(Landroid/support/v4/app/Fragment;)V

    .line 774
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->closeMenu()V

    goto :goto_0

    .line 775
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0702ce

    if-ne v2, v3, :cond_3

    .line 780
    new-instance v2, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;

    invoke-direct {v2}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;-><init>()V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    .line 781
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->changeFragment(Landroid/support/v4/app/Fragment;)V

    .line 782
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->closeMenu()V

    goto :goto_0

    .line 783
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0702d1

    if-ne v2, v3, :cond_4

    .line 788
    new-instance v2, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;

    invoke-direct {v2}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;-><init>()V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    .line 789
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->changeFragment(Landroid/support/v4/app/Fragment;)V

    .line 790
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->closeMenu()V

    goto :goto_0

    .line 791
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0702d4

    if-ne v2, v3, :cond_5

    .line 796
    new-instance v2, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;

    invoke-direct {v2}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;-><init>()V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    .line 797
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->changeFragment(Landroid/support/v4/app/Fragment;)V

    .line 798
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->closeMenu()V

    goto/16 :goto_0

    .line 799
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0702c4

    if-ne v2, v3, :cond_6

    .line 800
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kankunit/smartplugcronus/view/KShopActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 801
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 803
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->closeMenu()V

    goto/16 :goto_0

    .line 804
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0702c6

    if-ne v2, v3, :cond_7

    .line 805
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 806
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 807
    const-string v2, "http://www.ikonke.com"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 808
    .local v0, "content_url":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 809
    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 811
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->closeMenu()V

    goto/16 :goto_0

    .line 812
    .end local v0    # "content_url":Landroid/net/Uri;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0702c8

    if-ne v2, v3, :cond_8

    .line 813
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 814
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 815
    const-string v2, "http://bbs.ikonke.com:8080"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 816
    .restart local v0    # "content_url":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 817
    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 819
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->closeMenu()V

    goto/16 :goto_0

    .line 821
    .end local v0    # "content_url":Landroid/net/Uri;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_8
    const-string v2, "hasNewFound"

    const-string v3, "hasNewFoundClick"

    .line 822
    const-string v4, "click"

    .line 821
    invoke-static {p0, v2, v3, v4}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->saveValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 824
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 825
    const-string v2, "http://faxian.ikonke.com"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 826
    .restart local v0    # "content_url":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 827
    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 829
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->closeMenu()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 446
    sput-boolean v12, Lcom/kankunit/smartplugcronus/view/MenuActivity;->canFirewareUpdata:Z

    .line 447
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->synchPhoneMacAndUserId()V

    .line 450
    const-class v9, Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-static {p0, v9}, Lcom/avos/avoscloud/PushService;->setDefaultPushCallback(Landroid/content/Context;Ljava/lang/Class;)V

    .line 452
    const-string v9, "public"

    const-class v10, Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-static {p0, v9, v10}, Lcom/avos/avoscloud/PushService;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    .line 454
    const-string v9, "avosinfo"

    const-string v10, "isAVOSUploaded"

    invoke-static {p0, v9, v10}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 455
    const-string v10, "yes"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 460
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v9

    .line 461
    invoke-virtual {v9}, Lcom/avos/avoscloud/AVInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v4

    .line 462
    .local v4, "installationId":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 463
    .local v7, "phoneMac":Ljava/lang/String;
    const-string v9, ":"

    const-string v10, "-"

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 464
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "saveAVOS:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 465
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 466
    const-string v11, "_android"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 465
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/kankunit/smartplugcronus/util/EncryptUtil;->minaEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 464
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 467
    .local v6, "msg":Ljava/lang/String;
    move-object v2, v4

    .line 470
    .local v2, "fInstallationId":Ljava/lang/String;
    :try_start_0
    new-instance v5, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    new-instance v9, Lcom/kankunit/smartplugcronus/view/MenuActivity$5;

    invoke-direct {v9, p0, v6, v2}, Lcom/kankunit/smartplugcronus/view/MenuActivity$5;-><init>(Lcom/kankunit/smartplugcronus/view/MenuActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const/4 v10, 0x0

    .line 470
    invoke-direct {v5, v9, v10}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    .line 481
    .local v5, "minaHandler":Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    invoke-static {v5, v6}, Lcom/kankunit/smartplugcronus/minautil/MinaUtil;->sendMsg(Lcom/kankunit/smartplugcronus/minautil/MinaHandler;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    .end local v5    # "minaHandler":Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    :goto_0
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v9

    .line 488
    new-instance v10, Lcom/kankunit/smartplugcronus/view/MenuActivity$6;

    invoke-direct {v10, p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity$6;-><init>(Lcom/kankunit/smartplugcronus/view/MenuActivity;)V

    .line 487
    invoke-virtual {v9, v10}, Lcom/avos/avoscloud/AVInstallation;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V

    .line 497
    .end local v2    # "fInstallationId":Ljava/lang/String;
    .end local v4    # "installationId":Ljava/lang/String;
    .end local v6    # "msg":Ljava/lang/String;
    .end local v7    # "phoneMac":Ljava/lang/String;
    :cond_0
    new-instance v9, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    new-instance v10, Lcom/kankunit/smartplugcronus/view/MenuActivity$7;

    invoke-direct {v10, p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity$7;-><init>(Lcom/kankunit/smartplugcronus/view/MenuActivity;)V

    .line 547
    new-instance v11, Lcom/kankunit/smartplugcronus/view/MenuActivity$8;

    invoke-direct {v11, p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity$8;-><init>(Lcom/kankunit/smartplugcronus/view/MenuActivity;)V

    .line 552
    invoke-direct {v9, v10, v11, v12}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;Z)V

    .line 497
    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->checkFirewareMinaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 560
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/DataUtil;->isFirstOpenForDay(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 561
    new-instance v0, Lcom/kankunit/smartplugcronus/view/MenuActivity$CheckFirewareThead;

    invoke-direct {v0, p0, v13}, Lcom/kankunit/smartplugcronus/view/MenuActivity$CheckFirewareThead;-><init>(Lcom/kankunit/smartplugcronus/view/MenuActivity;Lcom/kankunit/smartplugcronus/view/MenuActivity$CheckFirewareThead;)V

    .line 562
    .local v0, "cft":Lcom/kankunit/smartplugcronus/view/MenuActivity$CheckFirewareThead;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/MenuActivity$CheckFirewareThead;->start()V

    .line 573
    .end local v0    # "cft":Lcom/kankunit/smartplugcronus/view/MenuActivity$CheckFirewareThead;
    :cond_1
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->handler:Landroid/os/Handler;

    .line 575
    new-instance v3, Lcom/kankunit/smartplugcronus/view/MenuActivity$GetThread;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity$GetThread;-><init>(Lcom/kankunit/smartplugcronus/view/MenuActivity;)V

    .line 576
    .local v3, "gt":Lcom/kankunit/smartplugcronus/view/MenuActivity$GetThread;
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/MenuActivity$GetThread;->start()V

    .line 578
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 580
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 582
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->testVideo()V

    .line 584
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->initDatabase()V

    .line 586
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->synchAuth()V

    .line 587
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->getAllAuth()V

    .line 589
    const v9, 0x7f03008f

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->setContentView(I)V

    .line 590
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 595
    const-string v9, "userinfo"

    const-string v10, "userid"

    .line 594
    invoke-static {p0, v9, v10}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 597
    .local v8, "userid":Ljava/lang/String;
    invoke-static {p0, v8}, Lcom/kankunit/smartplugcronus/dao/UserDao;->getUserByUserId(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/UserModel;

    move-result-object v9

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->userModel:Lcom/kankunit/smartplugcronus/model/UserModel;

    .line 598
    const v9, 0x7f070123

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->mainview:Landroid/widget/LinearLayout;

    .line 599
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->setUpMenu()V

    .line 600
    new-instance v9, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    invoke-direct {v9}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;-><init>()V

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    .line 601
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    check-cast v9, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->homeFragment:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    .line 602
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "sceneFlag"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 603
    new-instance v9, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    invoke-direct {v9}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;-><init>()V

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->changeFragment(Landroid/support/v4/app/Fragment;)V

    .line 608
    :goto_1
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcom/kankunit/smartplugcronus/service/MessageService;

    invoke-direct {v9, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->messageService:Landroid/content/Intent;

    .line 609
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->messageService:Landroid/content/Intent;

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 611
    new-instance v9, Landroid/content/Intent;

    .line 612
    const-class v10, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    invoke-direct {v9, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 611
    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->baseUdpBroadcastService:Landroid/content/Intent;

    .line 613
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->baseUdpBroadcastService:Landroid/content/Intent;

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 627
    return-void

    .line 483
    .end local v3    # "gt":Lcom/kankunit/smartplugcronus/view/MenuActivity$GetThread;
    .end local v8    # "userid":Ljava/lang/String;
    .restart local v2    # "fInstallationId":Ljava/lang/String;
    .restart local v4    # "installationId":Ljava/lang/String;
    .restart local v6    # "msg":Ljava/lang/String;
    .restart local v7    # "phoneMac":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 484
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 605
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "fInstallationId":Ljava/lang/String;
    .end local v4    # "installationId":Ljava/lang/String;
    .end local v6    # "msg":Ljava/lang/String;
    .end local v7    # "phoneMac":Ljava/lang/String;
    .restart local v3    # "gt":Lcom/kankunit/smartplugcronus/view/MenuActivity$GetThread;
    .restart local v8    # "userid":Ljava/lang/String;
    :cond_2
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->changeFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1346
    const-string v0, "main destory"

    invoke-static {p0, v0}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 1354
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->baseUdpBroadcastService:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->stopService(Landroid/content/Intent;)Z

    .line 1355
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->messageService:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->stopService(Landroid/content/Intent;)Z

    .line 1356
    sget-boolean v0, Lcom/kankunit/smartplugcronus/service/ProtectService;->isProtect:Z

    if-nez v0, :cond_0

    .line 1357
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kankunit/smartplugcronus/service/ProtectService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->stopService(Landroid/content/Intent;)Z

    .line 1359
    :cond_0
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onDestroy()V

    .line 1360
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    .line 1308
    const/4 v4, 0x4

    if-ne p1, v4, :cond_5

    .line 1309
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_5

    .line 1310
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->isMenuOpen:Z

    if-eqz v4, :cond_0

    .line 1311
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->closeMenu()V

    .line 1340
    :goto_0
    return v3

    .line 1312
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->exitTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7d0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 1313
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1314
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c019b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1313
    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 1315
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->exitTime:J

    goto :goto_0

    .line 1318
    :cond_1
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->canExceit:Z

    if-eqz v4, :cond_3

    .line 1319
    iput-boolean v8, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->canExceit:Z

    .line 1320
    invoke-static {p0, v3}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByVersion(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    .line 1321
    .local v1, "dms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1332
    .end local v1    # "dms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    :cond_3
    iput-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->canExceit:Z

    .line 1333
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->finish()V

    goto :goto_0

    .line 1321
    .restart local v1    # "dms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 1322
    .local v0, "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-virtual {v0, v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsOnline(I)V

    .line 1323
    invoke-static {p0, v0}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->updateDevice(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    .line 1324
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v2

    .line 1325
    .local v2, "scm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    if-eqz v2, :cond_2

    .line 1328
    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOnline(I)V

    .line 1329
    invoke-static {p0, v2}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->updateShortcut(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/ShortCutModel;)V

    goto :goto_1

    .line 1340
    .end local v0    # "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v1    # "dms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    .end local v2    # "scm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 1391
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 1392
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 1393
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 1374
    const-string v3, "baiduinfo"

    .line 1375
    const-string v4, "userId"

    .line 1374
    invoke-static {p0, v3, v4}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1376
    .local v1, "baiduUserId":Ljava/lang/String;
    const-string v3, "baiduinfo"

    .line 1377
    const-string v4, "channelId"

    .line 1376
    invoke-static {p0, v3, v4}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1378
    .local v0, "baiduChannelId":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1379
    :cond_0
    const-string v3, "baiduinfo"

    const-string v4, "isBaiduUploaded"

    const-string v5, "no"

    invoke-static {p0, v3, v4, v5}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->saveValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1383
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "msgBody"

    const-string v4, "startScan"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1384
    const-string v3, "ikonke.udpbroadcast"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1385
    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1386
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 1387
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 1388
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 940
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1605
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->isMenuOpen:Z

    if-nez v0, :cond_0

    .line 1606
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->touchListener:Lcom/kankunit/smartplugcronus/view/MenuActivity$MyOntouchListener;

    invoke-interface {v0, p1}, Lcom/kankunit/smartplugcronus/view/MenuActivity$MyOntouchListener;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 1609
    :cond_0
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onUserLeaveHint()V
    .locals 3

    .prologue
    .line 1365
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1366
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "msgBody"

    const-string v2, "stopScan"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1367
    const-string v1, "ikonke.udpbroadcast"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1368
    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1369
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onUserLeaveHint()V

    .line 1370
    return-void
.end method

.method public openMenu(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 714
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 715
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->resideMenu:Lcom/special/ResideMenu/ResideMenu;

    invoke-virtual {v1, p1}, Lcom/special/ResideMenu/ResideMenu;->openMenu(I)V

    .line 728
    :goto_0
    return-void

    .line 717
    :cond_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->mainview:Landroid/widget/LinearLayout;

    .line 718
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 717
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 719
    .local v0, "vl":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 720
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/lit16 v1, v1, 0x172

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 721
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/lit16 v1, v1, -0x172

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 722
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/lit16 v1, v1, 0x9c

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 723
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/lit16 v1, v1, 0xaa

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 724
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->mainview:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 725
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->resideMenu:Lcom/special/ResideMenu/ResideMenu;

    invoke-virtual {v1, p1}, Lcom/special/ResideMenu/ResideMenu;->openMenuOld(I)V

    goto :goto_0
.end method

.method public registerListener(Lcom/kankunit/smartplugcronus/view/MenuActivity$MyOntouchListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/kankunit/smartplugcronus/view/MenuActivity$MyOntouchListener;

    .prologue
    .line 1616
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->touchListener:Lcom/kankunit/smartplugcronus/view/MenuActivity$MyOntouchListener;

    .line 1617
    return-void
.end method

.method public setCurrentMenuNo(I)V
    .locals 0
    .param p1, "currentMenuNo"    # I

    .prologue
    .line 1255
    iput p1, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->currentMenuNo:I

    .line 1256
    return-void
.end method

.method public setMenuOpen(Z)V
    .locals 0
    .param p1, "isMenuOpen"    # Z

    .prologue
    .line 1247
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->isMenuOpen:Z

    .line 1248
    return-void
.end method

.method public startPhotoZoom(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/16 v4, 0x154

    const/4 v3, 0x1

    .line 1408
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1409
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1411
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1413
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1414
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1416
    const-string v1, "outputX"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1417
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1418
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1419
    const/16 v1, 0x3e7

    invoke-virtual {p0, v0, v1}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1420
    return-void
.end method

.method public synchPhoneMacAndUserId()V
    .locals 7

    .prologue
    .line 1570
    :try_start_0
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1571
    .local v1, "phoneMac":Ljava/lang/String;
    const-string v4, ":"

    const-string v5, "-"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1572
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1574
    const-string v4, "userinfo"

    const-string v5, "userid"

    .line 1573
    invoke-static {p0, v4, v5}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1575
    .local v3, "userid":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1576
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "wan_phone%"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1577
    const-string v5, "%synPhoneAndUserid_req"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1576
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1578
    .local v2, "syMsg":Ljava/lang/String;
    new-instance v4, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v4}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>()V

    .line 1579
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "synPhoneAndUserid:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/kankunit/smartplugcronus/util/EncryptUtil;->minaEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1578
    invoke-static {v4, v5}, Lcom/kankunit/smartplugcronus/minautil/MinaUtil;->sendMsgWithNoResponse(Lcom/kankunit/smartplugcronus/minautil/MinaHandler;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1584
    .end local v1    # "phoneMac":Ljava/lang/String;
    .end local v2    # "syMsg":Ljava/lang/String;
    .end local v3    # "userid":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1581
    :catch_0
    move-exception v0

    .line 1582
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

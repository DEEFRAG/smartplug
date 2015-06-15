.class public Lcom/kankunit/smartplugcronus/service/UpdateAppService;
.super Landroid/app/Service;
.source "UpdateAppService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/service/UpdateAppService$GetThread;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.kankunit.smartplugcronus.service.UpdateAppService"

.field private static final TAG:Ljava/lang/String; = "UpdateAppService"

.field public static isUpdate:Z

.field static newVerName:Ljava/lang/String;


# instance fields
.field private handler:Landroid/os/Handler;

.field private isDown:Z

.field private mHandler:Landroid/os/Handler;

.field private newVerCode:I

.field private onKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public pBar:Landroid/app/ProgressDialog;

.field path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, ""

    sput-object v0, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->newVerName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->handler:Landroid/os/Handler;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->newVerCode:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->mHandler:Landroid/os/Handler;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->isDown:Z

    .line 334
    new-instance v0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$1;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/service/UpdateAppService$1;-><init>(Lcom/kankunit/smartplugcronus/service/UpdateAppService;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->onKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/service/UpdateAppService;)Z
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->getServerVerCode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/service/UpdateAppService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/service/UpdateAppService;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->newVerCode:I

    return v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/service/UpdateAppService;)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->doNewVersionUpdate()V

    return-void
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/service/UpdateAppService;Z)V
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->isDown:Z

    return-void
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/service/UpdateAppService;)Landroid/content/DialogInterface$OnKeyListener;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->onKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-object v0
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/service/UpdateAppService;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->isDown:Z

    return v0
.end method

.method private doNewVersionUpdate()V
    .locals 5

    .prologue
    .line 166
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 167
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0148

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 178
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 179
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 181
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0149

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 182
    new-instance v4, Lcom/kankunit/smartplugcronus/service/UpdateAppService$3;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/service/UpdateAppService$3;-><init>(Lcom/kankunit/smartplugcronus/service/UpdateAppService;)V

    .line 181
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 215
    const-string v3, "Do not update"

    .line 216
    new-instance v4, Lcom/kankunit/smartplugcronus/service/UpdateAppService$4;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/service/UpdateAppService$4;-><init>(Lcom/kankunit/smartplugcronus/service/UpdateAppService;)V

    .line 215
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 223
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 225
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 226
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 227
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 228
    return-void
.end method

.method private getServerVerCode()Z
    .locals 5

    .prologue
    .line 146
    :try_start_0
    const-string v4, "http://app.ikonke.com/ver.json"

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "verjson":Ljava/lang/String;
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 150
    .local v1, "g":Lcom/google/gson/Gson;
    const-class v4, Lcom/kankunit/smartplugcronus/model/UpdateAppModel;

    invoke-virtual {v1, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/UpdateAppModel;

    .line 151
    .local v2, "ss":Lcom/kankunit/smartplugcronus/model/UpdateAppModel;
    if-eqz v2, :cond_0

    .line 152
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/UpdateAppModel;->getVerCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->newVerCode:I

    .line 153
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/UpdateAppModel;->getVerName()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->newVerName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_0
    const/4 v4, 0x1

    .end local v1    # "g":Lcom/google/gson/Gson;
    .end local v2    # "ss":Lcom/kankunit/smartplugcronus/model/UpdateAppModel;
    .end local v3    # "verjson":Ljava/lang/String;
    :goto_0
    return v4

    .line 155
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method down()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kankunit/smartplugcronus/service/UpdateAppService$6;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/service/UpdateAppService$6;-><init>(Lcom/kankunit/smartplugcronus/service/UpdateAppService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 307
    return-void
.end method

.method downFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->pBar:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 232
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->pBar:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 234
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->path:Ljava/lang/String;

    .line 235
    new-instance v0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$5;

    invoke-direct {v0, p0, p1}, Lcom/kankunit/smartplugcronus/service/UpdateAppService$5;-><init>(Lcom/kankunit/smartplugcronus/service/UpdateAppService;Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/service/UpdateAppService$5;->start()V

    .line 297
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 57
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 349
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 350
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 64
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0239

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "ok":Ljava/lang/String;
    new-instance v2, Lcom/kankunit/smartplugcronus/service/UpdateAppService$2;

    invoke-direct {v2, p0, v1}, Lcom/kankunit/smartplugcronus/service/UpdateAppService$2;-><init>(Lcom/kankunit/smartplugcronus/service/UpdateAppService;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->mHandler:Landroid/os/Handler;

    .line 125
    new-instance v0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$GetThread;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/service/UpdateAppService$GetThread;-><init>(Lcom/kankunit/smartplugcronus/service/UpdateAppService;)V

    .line 126
    .local v0, "gt":Lcom/kankunit/smartplugcronus/service/UpdateAppService$GetThread;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/service/UpdateAppService$GetThread;->start()V

    .line 127
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 331
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method update()V
    .locals 5

    .prologue
    .line 311
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 316
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->path:Ljava/lang/String;

    const-string v3, "ikonke.apk"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .local v0, "file1":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->path:Ljava/lang/String;

    const-string v4, "ikonke.apk"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 318
    const-string v3, "application/vnd.android.package-archive"

    .line 317
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->startActivity(Landroid/content/Intent;)V

    .line 326
    return-void
.end method

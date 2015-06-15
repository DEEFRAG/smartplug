.class final Lcom/avos/avoscloud/PushService$5;
.super Lcom/avos/avoscloud/SaveCallback;
.source "PushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/PushService;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$finalChannel:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/avos/avoscloud/PushService$5;->val$finalChannel:Ljava/lang/String;

    invoke-direct {p0}, Lcom/avos/avoscloud/SaveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVException;)V
    .locals 3
    .param p1, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 389
    if-nez p1, :cond_1

    .line 390
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v0

    const-string v1, "channels"

    iget-object v2, p0, Lcom/avos/avoscloud/PushService$5;->val$finalChannel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/AVInstallation;->addUnique(Ljava/lang/String;Ljava/lang/Object;)V

    .line 391
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVInstallation;->saveEventually()V

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVException;->printStackTrace()V

    goto :goto_0
.end method

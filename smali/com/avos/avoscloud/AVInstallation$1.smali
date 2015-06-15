.class final Lcom/avos/avoscloud/AVInstallation$1;
.super Lcom/avos/avoscloud/GetCallback;
.source "AVInstallation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVInstallation;->updateCurrentInstallation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/GetCallback",
        "<",
        "Lcom/avos/avoscloud/AVObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/avos/avoscloud/GetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVException;)V
    .locals 3
    .param p1, "object"    # Lcom/avos/avoscloud/AVObject;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 288
    move-object v1, p1

    check-cast v1, Lcom/avos/avoscloud/AVInstallation;

    .line 290
    .local v1, "updatedInstallation":Lcom/avos/avoscloud/AVInstallation;
    :try_start_0
    # invokes: Lcom/avos/avoscloud/AVInstallation;->writeInstallationFile(Lcom/avos/avoscloud/AVInstallation;)V
    invoke-static {v1}, Lcom/avos/avoscloud/AVInstallation;->access$000(Lcom/avos/avoscloud/AVInstallation;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e1":Ljava/io/IOException;
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

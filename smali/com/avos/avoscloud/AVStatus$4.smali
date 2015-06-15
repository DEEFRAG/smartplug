.class final Lcom/avos/avoscloud/AVStatus$4;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVStatus;->getStatusWithIdInBackgroud(Ljava/lang/String;Lcom/avos/avoscloud/StatusCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/avos/avoscloud/StatusCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/StatusCallback;)V
    .locals 0

    .prologue
    .line 575
    iput-object p1, p0, Lcom/avos/avoscloud/AVStatus$4;->val$callback:Lcom/avos/avoscloud/StatusCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 587
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus$4;->val$callback:Lcom/avos/avoscloud/StatusCallback;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus$4;->val$callback:Lcom/avos/avoscloud/StatusCallback;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/StatusCallback;->done(Lcom/avos/avoscloud/AVStatus;Lcom/avos/avoscloud/AVException;)V

    .line 590
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 578
    new-instance v0, Lcom/avos/avoscloud/AVStatus;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVStatus;-><init>()V

    .line 579
    .local v0, "status":Lcom/avos/avoscloud/AVStatus;
    invoke-static {p1, v0}, Lcom/avos/avoscloud/AVStatus;->processStatus(Ljava/lang/String;Lcom/avos/avoscloud/AVStatus;)V

    .line 580
    iget-object v1, p0, Lcom/avos/avoscloud/AVStatus$4;->val$callback:Lcom/avos/avoscloud/StatusCallback;

    if-eqz v1, :cond_0

    .line 581
    iget-object v1, p0, Lcom/avos/avoscloud/AVStatus$4;->val$callback:Lcom/avos/avoscloud/StatusCallback;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/avos/avoscloud/StatusCallback;->done(Lcom/avos/avoscloud/AVStatus;Lcom/avos/avoscloud/AVException;)V

    .line 583
    :cond_0
    return-void
.end method

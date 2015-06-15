.class final Lcom/avos/avoscloud/AVStatus$2;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVStatus;->getStatusImpl(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/StatusListCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/avos/avoscloud/StatusListCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/StatusListCallback;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/avos/avoscloud/AVStatus$2;->val$callback:Lcom/avos/avoscloud/StatusListCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 459
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus$2;->val$callback:Lcom/avos/avoscloud/StatusListCallback;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus$2;->val$callback:Lcom/avos/avoscloud/StatusListCallback;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/StatusListCallback;->done(Ljava/util/List;Lcom/avos/avoscloud/AVException;)V

    .line 462
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 451
    invoke-static {p1}, Lcom/avos/avoscloud/AVStatus;->processStatusResultList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 452
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVStatus;>;"
    iget-object v1, p0, Lcom/avos/avoscloud/AVStatus$2;->val$callback:Lcom/avos/avoscloud/StatusListCallback;

    if-eqz v1, :cond_0

    .line 453
    iget-object v1, p0, Lcom/avos/avoscloud/AVStatus$2;->val$callback:Lcom/avos/avoscloud/StatusListCallback;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/avos/avoscloud/StatusListCallback;->done(Ljava/util/List;Lcom/avos/avoscloud/AVException;)V

    .line 455
    :cond_0
    return-void
.end method

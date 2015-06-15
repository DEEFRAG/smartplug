.class final Lcom/avos/avoscloud/AVStatus$3;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVStatus;->getStatusCountImpl(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/CountCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/avos/avoscloud/CountCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/CountCallback;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcom/avos/avoscloud/AVStatus$3;->val$callback:Lcom/avos/avoscloud/CountCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 485
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus$3;->val$callback:Lcom/avos/avoscloud/CountCallback;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus$3;->val$callback:Lcom/avos/avoscloud/CountCallback;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/CountCallback;->done(ILcom/avos/avoscloud/AVException;)V

    .line 488
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 477
    invoke-static {p1}, Lcom/avos/avoscloud/AVStatus;->processStatusCount(Ljava/lang/String;)I

    move-result v0

    .line 478
    .local v0, "count":I
    iget-object v1, p0, Lcom/avos/avoscloud/AVStatus$3;->val$callback:Lcom/avos/avoscloud/CountCallback;

    if-eqz v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/avos/avoscloud/AVStatus$3;->val$callback:Lcom/avos/avoscloud/CountCallback;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/avos/avoscloud/CountCallback;->done(ILcom/avos/avoscloud/AVException;)V

    .line 481
    :cond_0
    return-void
.end method

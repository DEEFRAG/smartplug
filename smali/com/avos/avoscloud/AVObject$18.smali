.class final Lcom/avos/avoscloud/AVObject$18;
.super Lcom/avos/avoscloud/SaveCallback;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVObject;->_saveAll(ZLjava/util/List;Lcom/avos/avoscloud/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$genericObjectCallback:Lcom/avos/avoscloud/GenericObjectCallback;

.field final synthetic val$list:Ljava/util/LinkedList;

.field final synthetic val$sync:Z


# direct methods
.method constructor <init>(Ljava/util/LinkedList;ZLcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 0

    .prologue
    .line 1611
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject$18;->val$list:Ljava/util/LinkedList;

    iput-boolean p2, p0, Lcom/avos/avoscloud/AVObject$18;->val$sync:Z

    iput-object p3, p0, Lcom/avos/avoscloud/AVObject$18;->val$genericObjectCallback:Lcom/avos/avoscloud/GenericObjectCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/SaveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVException;)V
    .locals 8
    .param p1, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    const/4 v4, 0x0

    .line 1615
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject$18;->val$list:Ljava/util/LinkedList;

    iget-boolean v2, p0, Lcom/avos/avoscloud/AVObject$18;->val$sync:Z

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/avos/avoscloud/AVObject$18;->val$genericObjectCallback:Lcom/avos/avoscloud/GenericObjectCallback;

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postBatchSave(Ljava/util/List;ZZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    return-void
.end method

.class final Lcom/avos/avoscloud/AVFile$1;
.super Lcom/avos/avoscloud/GetCallback;
.source "AVFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVFile;->withObjectIdInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetFileCallback;)V
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


# instance fields
.field final synthetic val$cb:Lcom/avos/avoscloud/GetFileCallback;

.field final synthetic val$objectId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/GetFileCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/avos/avoscloud/AVFile$1;->val$cb:Lcom/avos/avoscloud/GetFileCallback;

    iput-object p2, p0, Lcom/avos/avoscloud/AVFile$1;->val$objectId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/avos/avoscloud/GetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVException;)V
    .locals 7
    .param p1, "object"    # Lcom/avos/avoscloud/AVObject;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    const/4 v6, 0x0

    .line 163
    if-eqz p2, :cond_1

    .line 164
    iget-object v1, p0, Lcom/avos/avoscloud/AVFile$1;->val$cb:Lcom/avos/avoscloud/GetFileCallback;

    invoke-virtual {v1, v6, p2}, Lcom/avos/avoscloud/GetFileCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 168
    # invokes: Lcom/avos/avoscloud/AVFile;->createFileFromAVObject(Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVFile;
    invoke-static {p1}, Lcom/avos/avoscloud/AVFile;->access$000(Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVFile;

    move-result-object v0

    .line 169
    .local v0, "file":Lcom/avos/avoscloud/AVFile;
    iget-object v1, p0, Lcom/avos/avoscloud/AVFile$1;->val$cb:Lcom/avos/avoscloud/GetFileCallback;

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/avos/avoscloud/AVFile$1;->val$cb:Lcom/avos/avoscloud/GetFileCallback;

    invoke-virtual {v1, v0, v6}, Lcom/avos/avoscloud/GetFileCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 173
    .end local v0    # "file":Lcom/avos/avoscloud/AVFile;
    :cond_2
    iget-object v1, p0, Lcom/avos/avoscloud/AVFile$1;->val$cb:Lcom/avos/avoscloud/GetFileCallback;

    new-instance v2, Lcom/avos/avoscloud/AVException;

    const/16 v3, 0x65

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find file object by id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/avos/avoscloud/AVFile$1;->val$objectId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v6, v2}, Lcom/avos/avoscloud/GetFileCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method

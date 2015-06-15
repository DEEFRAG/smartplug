.class Lcom/avos/avoscloud/AVUploader$1;
.super Ljava/lang/Object;
.source "AVUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVUploader;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVUploader;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVUploader;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/avos/avoscloud/AVUploader$1;->this$0:Lcom/avos/avoscloud/AVUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 35
    iget-object v1, p0, Lcom/avos/avoscloud/AVUploader$1;->this$0:Lcom/avos/avoscloud/AVUploader;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVUploader;->doWork()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    .line 36
    .local v0, "exception":Lcom/avos/avoscloud/AVException;
    iget-object v1, p0, Lcom/avos/avoscloud/AVUploader$1;->this$0:Lcom/avos/avoscloud/AVUploader;

    # getter for: Lcom/avos/avoscloud/AVUploader;->cancelled:Z
    invoke-static {v1}, Lcom/avos/avoscloud/AVUploader;->access$000(Lcom/avos/avoscloud/AVUploader;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/avos/avoscloud/AVUploader$1;->this$0:Lcom/avos/avoscloud/AVUploader;

    const/4 v2, 0x1

    # setter for: Lcom/avos/avoscloud/AVUploader;->complete:Z
    invoke-static {v1, v2}, Lcom/avos/avoscloud/AVUploader;->access$102(Lcom/avos/avoscloud/AVUploader;Z)Z

    .line 38
    iget-object v1, p0, Lcom/avos/avoscloud/AVUploader$1;->this$0:Lcom/avos/avoscloud/AVUploader;

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/AVUploader;->onPostExecute(Lcom/avos/avoscloud/AVException;)V

    .line 43
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/avos/avoscloud/AVUploader$1;->this$0:Lcom/avos/avoscloud/AVUploader;

    const/16 v2, 0x3e7

    const-string v3, "Uploading file task is canceled."

    invoke-static {v2, v3}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/AVUploader;->onPostExecute(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method

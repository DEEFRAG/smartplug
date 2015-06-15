.class Lcom/avos/avoscloud/AVObject$20;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVObject;->saveObjectToAVOSCloud(ZZLcom/avos/avoscloud/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVObject;

.field final synthetic val$isEventually:Z

.field final synthetic val$operation:Lcom/avos/avoscloud/AVOperation;

.field final synthetic val$sync:Z


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVOperation;ZZ)V
    .locals 0

    .prologue
    .line 1773
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject$20;->this$0:Lcom/avos/avoscloud/AVObject;

    iput-object p2, p0, Lcom/avos/avoscloud/AVObject$20;->val$operation:Lcom/avos/avoscloud/AVOperation;

    iput-boolean p3, p0, Lcom/avos/avoscloud/AVObject$20;->val$sync:Z

    iput-boolean p4, p0, Lcom/avos/avoscloud/AVObject$20;->val$isEventually:Z

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1787
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$20;->this$0:Lcom/avos/avoscloud/AVObject;

    const/4 v1, 0x0

    # setter for: Lcom/avos/avoscloud/AVObject;->running:Z
    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVObject;->access$602(Lcom/avos/avoscloud/AVObject;Z)Z

    .line 1788
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$20;->this$0:Lcom/avos/avoscloud/AVObject;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/AVObject;->shouldThrowException(Ljava/lang/Throwable;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1789
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$20;->val$operation:Lcom/avos/avoscloud/AVOperation;

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVOperation;->invokeCallback(Lcom/avos/avoscloud/AVException;)V

    .line 1793
    :goto_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$20;->this$0:Lcom/avos/avoscloud/AVObject;

    # getter for: Lcom/avos/avoscloud/AVObject;->queue:Lcom/avos/avoscloud/AVOperationQueue;
    invoke-static {v0}, Lcom/avos/avoscloud/AVObject;->access$800(Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVOperationQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject$20;->val$operation:Lcom/avos/avoscloud/AVOperation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVOperation;->getSequence()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVOperationQueue;->clearOperationWithSequence(I)V

    .line 1794
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$20;->this$0:Lcom/avos/avoscloud/AVObject;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObject;->onSaveFailure()V

    .line 1795
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$20;->this$0:Lcom/avos/avoscloud/AVObject;

    iget-boolean v1, p0, Lcom/avos/avoscloud/AVObject$20;->val$sync:Z

    iget-boolean v2, p0, Lcom/avos/avoscloud/AVObject$20;->val$isEventually:Z

    # invokes: Lcom/avos/avoscloud/AVObject;->saveObjectToAVOSCloud(ZZLcom/avos/avoscloud/SaveCallback;)V
    invoke-static {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVObject;->access$700(Lcom/avos/avoscloud/AVObject;ZZLcom/avos/avoscloud/SaveCallback;)V

    .line 1796
    return-void

    .line 1791
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$20;->val$operation:Lcom/avos/avoscloud/AVOperation;

    invoke-virtual {v0, v3}, Lcom/avos/avoscloud/AVOperation;->invokeCallback(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 1776
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$20;->this$0:Lcom/avos/avoscloud/AVObject;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVObject;->copyFromJson(Ljava/lang/String;)V

    .line 1777
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$20;->val$operation:Lcom/avos/avoscloud/AVOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVOperation;->getLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1778
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$20;->this$0:Lcom/avos/avoscloud/AVObject;

    const/4 v1, 0x0

    # setter for: Lcom/avos/avoscloud/AVObject;->running:Z
    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVObject;->access$602(Lcom/avos/avoscloud/AVObject;Z)Z

    .line 1779
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$20;->this$0:Lcom/avos/avoscloud/AVObject;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObject;->onSaveSuccess()V

    .line 1780
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$20;->val$operation:Lcom/avos/avoscloud/AVOperation;

    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/AVOperation;->invokeCallback(Lcom/avos/avoscloud/AVException;)V

    .line 1782
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$20;->this$0:Lcom/avos/avoscloud/AVObject;

    iget-boolean v1, p0, Lcom/avos/avoscloud/AVObject$20;->val$sync:Z

    iget-boolean v2, p0, Lcom/avos/avoscloud/AVObject$20;->val$isEventually:Z

    const/4 v3, 0x0

    # invokes: Lcom/avos/avoscloud/AVObject;->saveObjectToAVOSCloud(ZZLcom/avos/avoscloud/SaveCallback;)V
    invoke-static {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVObject;->access$700(Lcom/avos/avoscloud/AVObject;ZZLcom/avos/avoscloud/SaveCallback;)V

    .line 1783
    return-void
.end method

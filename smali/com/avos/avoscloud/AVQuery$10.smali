.class Lcom/avos/avoscloud/AVQuery$10;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVQuery;->getInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/GetCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVQuery;

.field final synthetic val$internalCallback:Lcom/avos/avoscloud/GetCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/GetCallback;)V
    .locals 0

    .prologue
    .line 844
    .local p0, "this":Lcom/avos/avoscloud/AVQuery$10;, "Lcom/avos/avoscloud/AVQuery.10;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery$10;->this$0:Lcom/avos/avoscloud/AVQuery;

    iput-object p2, p0, Lcom/avos/avoscloud/AVQuery$10;->val$internalCallback:Lcom/avos/avoscloud/GetCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 872
    .local p0, "this":Lcom/avos/avoscloud/AVQuery$10;, "Lcom/avos/avoscloud/AVQuery.10;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$10;->val$internalCallback:Lcom/avos/avoscloud/GetCallback;

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$10;->val$internalCallback:Lcom/avos/avoscloud/GetCallback;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/GetCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 876
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 6
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 847
    .local p0, "this":Lcom/avos/avoscloud/AVQuery$10;, "Lcom/avos/avoscloud/AVQuery.10;"
    const/4 v3, 0x0

    .line 848
    .local v3, "object":Lcom/avos/avoscloud/AVObject;, "TT;"
    move-object v2, p2

    .line 849
    .local v2, "error":Lcom/avos/avoscloud/AVException;
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 850
    const/4 v3, 0x0

    .line 851
    new-instance v2, Lcom/avos/avoscloud/AVException;

    .end local v2    # "error":Lcom/avos/avoscloud/AVException;
    const/16 v4, 0x65

    const-string v5, "Object is not found."

    invoke-direct {v2, v4, v5}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    .line 865
    .restart local v2    # "error":Lcom/avos/avoscloud/AVException;
    :goto_0
    iget-object v4, p0, Lcom/avos/avoscloud/AVQuery$10;->val$internalCallback:Lcom/avos/avoscloud/GetCallback;

    if-eqz v4, :cond_0

    .line 866
    iget-object v4, p0, Lcom/avos/avoscloud/AVQuery$10;->val$internalCallback:Lcom/avos/avoscloud/GetCallback;

    invoke-virtual {v4, v3, v2}, Lcom/avos/avoscloud/GetCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 868
    :cond_0
    return-void

    .line 853
    :cond_1
    iget-object v4, p0, Lcom/avos/avoscloud/AVQuery$10;->this$0:Lcom/avos/avoscloud/AVQuery;

    # getter for: Lcom/avos/avoscloud/AVQuery;->clazz:Ljava/lang/Class;
    invoke-static {v4}, Lcom/avos/avoscloud/AVQuery;->access$000(Lcom/avos/avoscloud/AVQuery;)Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 855
    :try_start_0
    iget-object v4, p0, Lcom/avos/avoscloud/AVQuery$10;->this$0:Lcom/avos/avoscloud/AVQuery;

    # getter for: Lcom/avos/avoscloud/AVQuery;->clazz:Ljava/lang/Class;
    invoke-static {v4}, Lcom/avos/avoscloud/AVQuery;->access$000(Lcom/avos/avoscloud/AVQuery;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/avos/avoscloud/AVObject;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 863
    :goto_1
    invoke-static {p1, v3}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromJsonStringToAVObject(Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)V

    goto :goto_0

    .line 856
    :catch_0
    move-exception v1

    .line 857
    .local v1, "er":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/avos/avoscloud/AVQuery$10;->val$internalCallback:Lcom/avos/avoscloud/GetCallback;

    const-string v5, "Please create non-params constructor"

    invoke-static {v1, v5}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/avos/avoscloud/GetCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_1

    .line 861
    .end local v1    # "er":Ljava/lang/Exception;
    :cond_2
    iget-object v4, p0, Lcom/avos/avoscloud/AVQuery$10;->this$0:Lcom/avos/avoscloud/AVQuery;

    invoke-virtual {v4}, Lcom/avos/avoscloud/AVQuery;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/avos/avoscloud/AVUtils;->newAVObjectByClassName(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v3

    goto :goto_1
.end method

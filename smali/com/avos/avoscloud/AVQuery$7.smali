.class Lcom/avos/avoscloud/AVQuery$7;
.super Lcom/avos/avoscloud/GetCallback;
.source "AVQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVQuery;->getFirst()Lcom/avos/avoscloud/AVObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/GetCallback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVQuery;

.field final synthetic val$result:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVQuery;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 748
    .local p0, "this":Lcom/avos/avoscloud/AVQuery$7;, "Lcom/avos/avoscloud/AVQuery.7;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery$7;->this$0:Lcom/avos/avoscloud/AVQuery;

    iput-object p2, p0, Lcom/avos/avoscloud/AVQuery$7;->val$result:[Ljava/lang/Object;

    invoke-direct {p0}, Lcom/avos/avoscloud/GetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVException;)V
    .locals 2
    .param p1, "object"    # Lcom/avos/avoscloud/AVObject;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 751
    .local p0, "this":Lcom/avos/avoscloud/AVQuery$7;, "Lcom/avos/avoscloud/AVQuery.7;"
    if-nez p2, :cond_0

    .line 752
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$7;->val$result:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 756
    :goto_0
    return-void

    .line 754
    :cond_0
    invoke-static {p2}, Lcom/avos/avoscloud/AVExceptionHolder;->add(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method

.method protected mustRunOnUIThread()Z
    .locals 1

    .prologue
    .line 760
    .local p0, "this":Lcom/avos/avoscloud/AVQuery$7;, "Lcom/avos/avoscloud/AVQuery.7;"
    const/4 v0, 0x0

    return v0
.end method

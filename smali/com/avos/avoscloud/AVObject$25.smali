.class Lcom/avos/avoscloud/AVObject$25;
.super Lcom/avos/avoscloud/AVObject$KeyValueCallback;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVObject;->removeObjectForKey(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/AVObject$KeyValueCallback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVObject;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2250
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject$25;->this$0:Lcom/avos/avoscloud/AVObject;

    iput-object p2, p0, Lcom/avos/avoscloud/AVObject$25;->val$key:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;-><init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVObject$1;)V

    return-void
.end method


# virtual methods
.method public applyOp(Lcom/avos/avoscloud/AVKeyValues;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVKeyValues",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2258
    .local p1, "kvs":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<Ljava/lang/Void;>;"
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/avos/avoscloud/AVKeyValues;->value:Ljava/lang/Object;

    .line 2259
    return-void
.end method

.method public createOp()Lcom/avos/avoscloud/ops/AVOp;
    .locals 2

    .prologue
    .line 2253
    new-instance v0, Lcom/avos/avoscloud/ops/DeleteOp;

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject$25;->val$key:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/ops/DeleteOp;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic initValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2250
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject$25;->initValue()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public initValue()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 2263
    const/4 v0, 0x0

    return-object v0
.end method

.class final Lcom/kankunit/smartplugcronus/customview/GestureDrawline$clearStateRunnable;
.super Ljava/lang/Object;
.source "GestureDrawline.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/customview/GestureDrawline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "clearStateRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/customview/GestureDrawline;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/customview/GestureDrawline;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline$clearStateRunnable;->this$0:Lcom/kankunit/smartplugcronus/customview/GestureDrawline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 232
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline$clearStateRunnable;->this$0:Lcom/kankunit/smartplugcronus/customview/GestureDrawline;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2}, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->access$0(Lcom/kankunit/smartplugcronus/customview/GestureDrawline;Ljava/lang/StringBuilder;)V

    .line 234
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline$clearStateRunnable;->this$0:Lcom/kankunit/smartplugcronus/customview/GestureDrawline;

    # getter for: Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->lineList:Ljava/util/List;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->access$1(Lcom/kankunit/smartplugcronus/customview/GestureDrawline;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 236
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline$clearStateRunnable;->this$0:Lcom/kankunit/smartplugcronus/customview/GestureDrawline;

    # invokes: Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->clearScreenAndDrawList()V
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->access$2(Lcom/kankunit/smartplugcronus/customview/GestureDrawline;)V

    .line 237
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline$clearStateRunnable;->this$0:Lcom/kankunit/smartplugcronus/customview/GestureDrawline;

    # getter for: Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->list:Ljava/util/List;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->access$3(Lcom/kankunit/smartplugcronus/customview/GestureDrawline;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 240
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline$clearStateRunnable;->this$0:Lcom/kankunit/smartplugcronus/customview/GestureDrawline;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->invalidate()V

    .line 241
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline$clearStateRunnable;->this$0:Lcom/kankunit/smartplugcronus/customview/GestureDrawline;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->access$4(Lcom/kankunit/smartplugcronus/customview/GestureDrawline;Z)V

    .line 242
    return-void

    .line 237
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    .line 238
    .local v0, "p":Lcom/kankunit/smartplugcronus/customview/GesturePoint;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->setPointState(I)V

    goto :goto_0
.end method

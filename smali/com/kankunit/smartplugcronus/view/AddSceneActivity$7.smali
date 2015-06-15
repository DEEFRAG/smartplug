.class Lcom/kankunit/smartplugcronus/view/AddSceneActivity$7;
.super Ljava/lang/Object;
.source "AddSceneActivity.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->clickList(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lcom/kankunit/smartplugcronus/util/TimePicker;III)V
    .locals 6
    .param p1, "view"    # Lcom/kankunit/smartplugcronus/util/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I
    .param p4, "seconds"    # I

    .prologue
    .line 524
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 525
    .local v0, "aboveMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, ""

    .line 526
    .local v1, "time":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 527
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c017b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 529
    :cond_0
    if-eqz p3, :cond_1

    .line 530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c017c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 532
    :cond_1
    if-eqz p4, :cond_2

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c017d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 535
    :cond_2
    const-string v2, "title"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c017a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    const-string v2, "type"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    const-string v2, "hour"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    const-string v2, "minute"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    const-string v2, "second"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    iget-object v2, v2, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->operationType:Ljava/lang/String;

    const-string v3, "add"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 541
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveList:Ljava/util/List;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$2(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    :goto_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveAdapter:Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$3(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->notifyDataSetChanged()V

    .line 546
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->taskcountTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$4(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveList:Ljava/util/List;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$2(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    return-void

    .line 543
    :cond_3
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveList:Ljava/util/List;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$2(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    iget v3, v3, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->operationIndex:I

    invoke-interface {v2, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

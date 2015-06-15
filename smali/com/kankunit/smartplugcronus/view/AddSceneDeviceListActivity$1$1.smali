.class Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$1;
.super Ljava/lang/Object;
.source "AddSceneDeviceListActivity.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lcom/kankunit/smartplugcronus/util/TimePicker;III)V
    .locals 7
    .param p1, "view"    # Lcom/kankunit/smartplugcronus/util/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I
    .param p4, "seconds"    # I

    .prologue
    .line 90
    const-string v1, ""

    .line 91
    .local v1, "time":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;)Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c017b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    :cond_0
    if-eqz p3, :cond_1

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;)Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c017c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    :cond_1
    if-eqz p4, :cond_2

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;)Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c017d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 101
    .local v0, "i":Landroid/content/Intent;
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;)Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "operationType"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "type":Ljava/lang/String;
    const-string v3, "operationType"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v3, "title"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;)Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c017a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v3, "type"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v3, "hour"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string v3, "minute"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v3, "second"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;)Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v0}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->setResult(ILandroid/content/Intent;)V

    .line 109
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;)Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->finish()V

    .line 110
    return-void
.end method

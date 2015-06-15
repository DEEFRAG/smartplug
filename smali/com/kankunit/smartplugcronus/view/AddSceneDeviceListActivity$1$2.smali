.class Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$2;
.super Ljava/lang/Object;
.source "AddSceneDeviceListActivity.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$2;->this$1:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 8
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 121
    .local v0, "aboveMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, ""

    .line 122
    .local v2, "time":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$2;->this$1:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;)Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c017b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    :cond_0
    if-eqz p3, :cond_1

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$2;->this$1:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;)Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c017c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 128
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 129
    .local v1, "i":Landroid/content/Intent;
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$2;->this$1:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;)Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "operationType"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "type":Ljava/lang/String;
    const-string v4, "operationType"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v4, "title"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$2;->this$1:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;)Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c017a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string v4, "type"

    const-string v5, "1"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v4, "hour"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v4, "minute"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string v4, "second"

    const-string v5, "0"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$2;->this$1:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;)Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v1}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->setResult(ILandroid/content/Intent;)V

    .line 137
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$2;->this$1:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;)Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->finish()V

    .line 138
    return-void
.end method

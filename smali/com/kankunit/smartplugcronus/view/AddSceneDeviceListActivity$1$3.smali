.class Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$3;
.super Ljava/lang/Object;
.source "AddSceneDeviceListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field private final synthetic val$chooseListener:Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;

.field private final synthetic val$map:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;Ljava/util/Map;Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$3;->this$1:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$3;->val$map:Ljava/util/Map;

    iput-object p3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$3;->val$chooseListener:Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private intToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "swich"    # I

    .prologue
    .line 158
    packed-switch p1, :pswitch_data_0

    .line 169
    const-string v0, ""

    :goto_0
    return-object v0

    .line 160
    :pswitch_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$3;->this$1:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;)Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0178

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 162
    :pswitch_1
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$3;->this$1:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;)Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0179

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 164
    :pswitch_2
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$3;->this$1:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;)Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0176

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 166
    :pswitch_3
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$3;->this$1:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;)Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0177

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 176
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 177
    .local v0, "i":Landroid/content/Intent;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$3;->this$1:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;)Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "operationType"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "type":Ljava/lang/String;
    const-string v2, "operationType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string v2, "title"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$3;->val$map:Ljava/util/Map;

    const-string v5, "title"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$3;->val$chooseListener:Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;->getWhich()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$3;->intToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string v2, "action"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$3;->val$chooseListener:Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;->getWhich()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string v2, "type"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$3;->val$map:Ljava/util/Map;

    const-string v4, "type"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string v2, "mac"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$3;->val$map:Ljava/util/Map;

    const-string v4, "mac"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v2, "isNew"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$3;->val$map:Ljava/util/Map;

    const-string v4, "isNew"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v2, "status"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$3;->val$map:Ljava/util/Map;

    const-string v4, "status"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v2, "deviceName"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$3;->val$map:Ljava/util/Map;

    const-string v4, "title"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$3;->this$1:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;)Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->setResult(ILandroid/content/Intent;)V

    .line 187
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$3;->this$1:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;)Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->finish()V

    .line 189
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 190
    return-void
.end method

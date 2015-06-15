.class Lcom/kankunit/smartplugcronus/view/AddSceneActivity$9;
.super Ljava/lang/Object;
.source "AddSceneActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field private final synthetic val$chooseListener:Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;

.field private final synthetic val$map:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$9;->val$chooseListener:Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;

    iput-object p3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$9;->val$map:Ljava/util/Map;

    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private intToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "swich"    # I

    .prologue
    .line 597
    packed-switch p1, :pswitch_data_0

    .line 608
    const-string v0, ""

    :goto_0
    return-object v0

    .line 599
    :pswitch_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0178

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 601
    :pswitch_1
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0179

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 603
    :pswitch_2
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0176

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 605
    :pswitch_3
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0177

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 597
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
    .locals 5
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 615
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 616
    .local v0, "aboveMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "action"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$9;->val$chooseListener:Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;->getWhich()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    const-string v2, "type"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$9;->val$map:Ljava/util/Map;

    const-string v4, "type"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    const-string v2, "mac"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$9;->val$map:Ljava/util/Map;

    const-string v4, "mac"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$9;->val$map:Ljava/util/Map;

    const-string v4, "mac"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v1

    .line 620
    .local v1, "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    const-string v2, "title"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$9;->val$chooseListener:Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;->getWhich()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$9;->intToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    const-string v2, "isNew"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$9;->val$map:Ljava/util/Map;

    const-string v4, "isNew"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    const-string v2, "status"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$9;->val$map:Ljava/util/Map;

    const-string v4, "status"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    const-string v2, "deviceName"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$9;->val$map:Ljava/util/Map;

    const-string v4, "title"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    iget-object v2, v2, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->operationType:Ljava/lang/String;

    const-string v3, "add"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 625
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveList:Ljava/util/List;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$2(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    :goto_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveAdapter:Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$3(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->notifyDataSetChanged()V

    .line 630
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->taskcountTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$4(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

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

    .line 631
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 632
    return-void

    .line 627
    :cond_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveList:Ljava/util/List;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$2(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    iget v3, v3, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->operationIndex:I

    invoke-interface {v2, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

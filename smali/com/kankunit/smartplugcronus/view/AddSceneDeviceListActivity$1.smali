.class Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;
.super Ljava/lang/Object;
.source "AddSceneDeviceListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;)Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 14
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->behindList:Ljava/util/List;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->access$0(Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;)Ljava/util/List;

    move-result-object v3

    move/from16 v0, p3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    .line 82
    .local v13, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "type"

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    invoke-static {}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->getAndroidSDKVersion()I

    move-result v3

    const/16 v4, 0xb

    if-lt v3, v4, :cond_7

    .line 84
    new-instance v1, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    new-instance v3, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$1;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$1;-><init>(Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;)V

    .line 111
    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 84
    invoke-direct/range {v1 .. v7}, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;-><init>(Landroid/content/Context;Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog$OnTimeSetListener;IIIZ)V

    .line 112
    .local v1, "mTimePicker":Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->show()V

    .line 146
    .end local v1    # "mTimePicker":Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;
    :cond_0
    :goto_0
    const-string v3, "type"

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "type"

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "type"

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "type"

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 147
    :cond_1
    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    invoke-direct {v9, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 148
    .local v9, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0174

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 149
    new-instance v10, Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;

    invoke-direct {v10}, Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;-><init>()V

    .line 150
    .local v10, "chooseListener":Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;
    const-string v3, "type"

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 151
    const v3, 0x7f0e0004

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4, v10}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 156
    :goto_1
    new-instance v8, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$3;

    invoke-direct {v8, p0, v13, v10}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$3;-><init>(Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;Ljava/util/Map;Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;)V

    .line 192
    .local v8, "btnListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0239

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 193
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c023b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$4;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$4;-><init>(Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;)V

    invoke-virtual {v9, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 201
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    .line 202
    .local v11, "dialog":Landroid/app/Dialog;
    invoke-virtual {v11}, Landroid/app/Dialog;->show()V

    .line 204
    .end local v8    # "btnListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v9    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v10    # "chooseListener":Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;
    .end local v11    # "dialog":Landroid/app/Dialog;
    :cond_2
    const-string v3, "type"

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 205
    new-instance v12, Landroid/content/Intent;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    const-class v4, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    invoke-direct {v12, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    .local v12, "i":Landroid/content/Intent;
    const-string v3, "controlId"

    const-string v4, "controlId"

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    const/4 v4, 0x6

    invoke-virtual {v3, v12, v4}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 209
    .end local v12    # "i":Landroid/content/Intent;
    :cond_3
    const-string v3, "type"

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 210
    new-instance v12, Landroid/content/Intent;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    const-class v4, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;

    invoke-direct {v12, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    .restart local v12    # "i":Landroid/content/Intent;
    const-string v3, "controlId"

    const-string v4, "controlId"

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    const/4 v4, 0x4

    invoke-virtual {v3, v12, v4}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 214
    .end local v12    # "i":Landroid/content/Intent;
    :cond_4
    const-string v3, "type"

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 215
    new-instance v12, Landroid/content/Intent;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    const-class v4, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;

    invoke-direct {v12, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    .restart local v12    # "i":Landroid/content/Intent;
    const-string v3, "controlId"

    const-string v4, "controlId"

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    const/16 v4, 0xb

    invoke-virtual {v3, v12, v4}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 219
    .end local v12    # "i":Landroid/content/Intent;
    :cond_5
    const-string v3, "type"

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 220
    new-instance v12, Landroid/content/Intent;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    const-class v4, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;

    invoke-direct {v12, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    .restart local v12    # "i":Landroid/content/Intent;
    const-string v3, "controlId"

    const-string v4, "controlId"

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    const/16 v4, 0xa

    invoke-virtual {v3, v12, v4}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 249
    .end local v12    # "i":Landroid/content/Intent;
    :cond_6
    :goto_2
    return-void

    .line 114
    :cond_7
    new-instance v2, Landroid/app/TimePickerDialog;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    new-instance v4, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$2;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$2;-><init>(Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;)V

    .line 140
    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x1

    .line 114
    invoke-direct/range {v2 .. v7}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 141
    .local v2, "time":Landroid/app/TimePickerDialog;
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0171

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/TimePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {v2}, Landroid/app/TimePickerDialog;->show()V

    goto/16 :goto_0

    .line 153
    .end local v2    # "time":Landroid/app/TimePickerDialog;
    .restart local v9    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v10    # "chooseListener":Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;
    :cond_8
    const v3, 0x7f0e0003

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4, v10}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 223
    .end local v9    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v10    # "chooseListener":Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;
    :cond_9
    const-string v3, "type"

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 224
    new-instance v12, Landroid/content/Intent;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    const-class v4, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    invoke-direct {v12, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    .restart local v12    # "i":Landroid/content/Intent;
    const-string v3, "controlId"

    const-string v4, "controlId"

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    const/4 v4, 0x5

    invoke-virtual {v3, v12, v4}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 227
    .end local v12    # "i":Landroid/content/Intent;
    :cond_a
    const-string v3, "type"

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 228
    new-instance v12, Landroid/content/Intent;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    const-class v4, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    invoke-direct {v12, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    .restart local v12    # "i":Landroid/content/Intent;
    const-string v3, "controlId"

    const-string v4, "controlId"

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    const/4 v4, 0x7

    invoke-virtual {v3, v12, v4}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 231
    .end local v12    # "i":Landroid/content/Intent;
    :cond_b
    const-string v3, "type"

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 232
    new-instance v12, Landroid/content/Intent;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    const-class v4, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;

    invoke-direct {v12, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    .restart local v12    # "i":Landroid/content/Intent;
    const-string v3, "controlId"

    const-string v4, "controlId"

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    const/16 v4, 0x8

    invoke-virtual {v3, v12, v4}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 235
    .end local v12    # "i":Landroid/content/Intent;
    :cond_c
    const-string v3, "type"

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 236
    new-instance v12, Landroid/content/Intent;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    const-class v4, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;

    invoke-direct {v12, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    .restart local v12    # "i":Landroid/content/Intent;
    const-string v3, "controlId"

    const-string v4, "controlId"

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    const/16 v4, 0x9

    invoke-virtual {v3, v12, v4}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 239
    .end local v12    # "i":Landroid/content/Intent;
    :cond_d
    const-string v3, "type"

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 240
    new-instance v12, Landroid/content/Intent;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    const-class v4, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;

    invoke-direct {v12, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 241
    .restart local v12    # "i":Landroid/content/Intent;
    const-string v3, "controlId"

    const-string v4, "controlId"

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    const/16 v4, 0xc

    invoke-virtual {v3, v12, v4}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 243
    .end local v12    # "i":Landroid/content/Intent;
    :cond_e
    const-string v3, "type"

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 244
    new-instance v12, Landroid/content/Intent;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    const-class v4, Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;

    invoke-direct {v12, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    .restart local v12    # "i":Landroid/content/Intent;
    const-string v3, "controlId"

    const-string v4, "controlId"

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    const/16 v4, 0xd

    invoke-virtual {v3, v12, v4}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2
.end method

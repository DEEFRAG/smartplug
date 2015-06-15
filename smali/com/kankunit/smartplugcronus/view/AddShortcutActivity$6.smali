.class Lcom/kankunit/smartplugcronus/view/AddShortcutActivity$6;
.super Ljava/lang/Object;
.source "AddShortcutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->initHongMiHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/AddShortcutActivity$6;)Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 322
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->addshortcutgridview:Landroid/widget/GridView;
    invoke-static {v8}, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->access$2(Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;)Landroid/widget/GridView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/GridView;->getChildCount()I

    move-result v5

    .line 323
    .local v5, "itemCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v5, :cond_0

    .line 348
    new-instance v8, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity$6$1;

    invoke-direct {v8, p0}, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity$6$1;-><init>(Lcom/kankunit/smartplugcronus/view/AddShortcutActivity$6;)V

    .line 363
    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity$6$1;->start()V

    .line 364
    return-void

    .line 324
    :cond_0
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->addshortcutgridview:Landroid/widget/GridView;
    invoke-static {v8}, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->access$2(Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;)Landroid/widget/GridView;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 325
    .local v7, "v":Landroid/view/View;
    const v8, 0x7f07024d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 326
    .local v6, "iv":Landroid/widget/ImageView;
    const v8, 0x7f070252

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 328
    .local v4, "idTv":Landroid/widget/TextView;
    const v8, 0x7f070372

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 327
    check-cast v1, Landroid/widget/TextView;

    .line 330
    .local v1, "deviceidTv":Landroid/widget/TextView;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 331
    .local v0, "deviceid":I
    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    .line 333
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;

    .line 332
    invoke-static {v8, v0}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->addShortcutByDeviceid(Landroid/content/Context;I)V

    .line 335
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;

    const-string v9, "old"

    .line 334
    invoke-static {v8, v0, v9}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->updateDeviceFlagByDeviceId(Landroid/content/Context;ILjava/lang/String;)V

    .line 323
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 340
    :cond_1
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;

    .line 339
    invoke-static {v8, v0}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->deleteShortcutByDeviceId(Landroid/content/Context;I)V

    .line 342
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;

    .line 341
    invoke-static {v8, v0}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceById(Landroid/content/Context;I)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v2

    .line 344
    .local v2, "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v9

    .line 343
    invoke-static {v8, v9}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->deletePluginByDeviceMac(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

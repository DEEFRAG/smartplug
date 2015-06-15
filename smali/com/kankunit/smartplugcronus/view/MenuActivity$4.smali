.class Lcom/kankunit/smartplugcronus/view/MenuActivity$4;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/MenuActivity;->getAllAuth()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/MenuActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receiveMsg(Ljava/lang/Object;)V
    .locals 13
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    .line 388
    :try_start_0
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-static {v10}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v3

    .line 389
    .local v3, "db":Lnet/tsz/afinal/FinalDb;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, "body":Ljava/lang/String;
    const-string v10, "%"

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "arr":[Ljava/lang/String;
    const/4 v10, 0x2

    aget-object v2, v0, v10

    .line 392
    .local v2, "content":Ljava/lang/String;
    const-string v10, "#"

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 393
    .local v7, "macAuths":[Ljava/lang/String;
    array-length v10, v7

    :goto_0
    if-lt v9, v10, :cond_0

    .line 406
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v1    # "body":Ljava/lang/String;
    .end local v2    # "content":Ljava/lang/String;
    .end local v3    # "db":Lnet/tsz/afinal/FinalDb;
    .end local v7    # "macAuths":[Ljava/lang/String;
    :goto_1
    return-void

    .line 393
    .restart local v0    # "arr":[Ljava/lang/String;
    .restart local v1    # "body":Ljava/lang/String;
    .restart local v2    # "content":Ljava/lang/String;
    .restart local v3    # "db":Lnet/tsz/afinal/FinalDb;
    .restart local v7    # "macAuths":[Ljava/lang/String;
    :cond_0
    aget-object v8, v7, v9

    .line 394
    .local v8, "macauth":Ljava/lang/String;
    const-string v11, ""

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 393
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 397
    :cond_1
    const-string v11, "&"

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 398
    .local v6, "ma":[Ljava/lang/String;
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    const/4 v12, 0x0

    aget-object v12, v6, v12

    invoke-static {v11, v12}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v4

    .line 399
    .local v4, "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    const/4 v11, 0x1

    aget-object v11, v6, v11

    invoke-virtual {v4, v11}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsAuth(Ljava/lang/String;)V

    .line 400
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-static {v11, v4}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->updateDevice(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 403
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v1    # "body":Ljava/lang/String;
    .end local v2    # "content":Ljava/lang/String;
    .end local v3    # "db":Lnet/tsz/afinal/FinalDb;
    .end local v4    # "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v6    # "ma":[Ljava/lang/String;
    .end local v7    # "macAuths":[Ljava/lang/String;
    .end local v8    # "macauth":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 404
    .local v5, "exception":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

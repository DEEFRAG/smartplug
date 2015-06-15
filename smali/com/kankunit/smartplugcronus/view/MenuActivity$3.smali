.class Lcom/kankunit/smartplugcronus/view/MenuActivity$3;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/MenuActivity;->synchAuth()V
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receiveMsg(Ljava/lang/Object;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 338
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-static {v4}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v2

    .line 339
    .local v2, "db":Lnet/tsz/afinal/FinalDb;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "body":Ljava/lang/String;
    const-string v4, "%"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "arr":[Ljava/lang/String;
    :try_start_0
    const-string v4, "sub"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 343
    const-class v4, Lcom/kankunit/smartplugcronus/model/BindFailRecordModel;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mac=\'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 344
    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' and flag=\'sub\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 343
    invoke-virtual {v2, v4, v5}, Lnet/tsz/afinal/FinalDb;->deleteByWhere(Ljava/lang/Class;Ljava/lang/String;)V

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    const-string v4, "main"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 346
    const-class v4, Lcom/kankunit/smartplugcronus/model/BindFailRecordModel;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mac=\'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 347
    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' and flag=\'main\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 346
    invoke-virtual {v2, v4, v5}, Lnet/tsz/afinal/FinalDb;->deleteByWhere(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 349
    :catch_0
    move-exception v3

    .line 350
    .local v3, "exception":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

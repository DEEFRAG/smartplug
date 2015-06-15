.class Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity$flashLight;
.super Ljava/lang/Thread;
.source "ConfigHelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "flashLight"
.end annotation


# instance fields
.field private flag:Z

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;


# direct methods
.method public constructor <init>(Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;)V
    .locals 2

    .prologue
    .line 122
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity$flashLight;->this$0:Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity$flashLight;->list:Ljava/util/List;

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity$flashLight;->flag:Z

    .line 123
    iget-object v0, p1, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->deviceType:Ljava/lang/String;

    const-string v1, "mini"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity$flashLight;->list:Ljava/util/List;

    const v1, 0x7f02030b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity$flashLight;->list:Ljava/util/List;

    const v1, 0x7f02030e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_0
    iget-object v0, p1, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->deviceType:Ljava/lang/String;

    const-string v1, "k2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity$flashLight;->list:Ljava/util/List;

    const v1, 0x7f02011b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity$flashLight;->list:Ljava/util/List;

    const v1, 0x7f02011c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_1
    iget-object v0, p1, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->deviceType:Ljava/lang/String;

    const-string v1, "k1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity$flashLight;->list:Ljava/util/List;

    const v1, 0x7f02029c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity$flashLight;->list:Ljava/util/List;

    const v1, 0x7f02029d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_2
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 140
    :goto_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity$flashLight;->this$0:Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->isStop:Z
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->access$0(Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    return-void

    .line 143
    :cond_0
    iget-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity$flashLight;->flag:Z

    if-eqz v1, :cond_1

    .line 144
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 145
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity$flashLight;->list:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 146
    iput v3, v0, Landroid/os/Message;->arg2:I

    .line 147
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity$flashLight;->this$0:Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->access$1(Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 155
    :goto_1
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_2
    iget-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity$flashLight;->flag:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity$flashLight;->flag:Z

    goto :goto_0

    .line 149
    .end local v0    # "message":Landroid/os/Message;
    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 150
    .restart local v0    # "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity$flashLight;->list:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 151
    iput v3, v0, Landroid/os/Message;->arg2:I

    .line 152
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity$flashLight;->this$0:Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->access$1(Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_2
    move v1, v3

    .line 159
    goto :goto_3

    .line 156
    :catch_0
    move-exception v1

    goto :goto_2
.end method

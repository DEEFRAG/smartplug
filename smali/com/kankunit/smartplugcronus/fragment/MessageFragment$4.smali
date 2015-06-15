.class Lcom/kankunit/smartplugcronus/fragment/MessageFragment$4;
.super Ljava/lang/Object;
.source "MessageFragment.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/MessageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/MessageFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/MessageFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/MessageFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/MessageFragment;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doReceive(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 129
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 130
    .local v1, "ja":Lorg/json/JSONArray;
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 131
    .local v2, "m":Landroid/os/Message;
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 132
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/MessageFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/MessageFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/MessageFragment;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/MessageFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/MessageFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v1    # "ja":Lorg/json/JSONArray;
    .end local v2    # "m":Landroid/os/Message;
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

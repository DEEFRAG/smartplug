.class public Lcom/kankunit/smartplugcronus/fragment/MessageFragment;
.super Lcom/kankunit/smartplugcronus/base/BaseFragment;
.source "MessageFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private handler:Landroid/os/Handler;

.field private ma:Lcom/kankunit/smartplugcronus/view/MenuActivity;

.field private msglist:Landroid/widget/ListView;

.field private rootView:Landroid/view/View;

.field private shadowlayer:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/fragment/MessageFragment;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/MessageFragment;->shadowlayer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/fragment/MessageFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/MessageFragment;->ma:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/fragment/MessageFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/MessageFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 150
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 154
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/json/JSONArray;

    .line 155
    .local v2, "ja":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-lt v1, v7, :cond_0

    .line 172
    :goto_1
    new-instance v6, Lcom/kankunit/smartplugcronus/adapter/MessageListAdapter;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/MessageFragment;->ma:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-direct {v6, v7, v4}, Lcom/kankunit/smartplugcronus/adapter/MessageListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 173
    .local v6, "mla":Lcom/kankunit/smartplugcronus/adapter/MessageListAdapter;
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/MessageFragment;->msglist:Landroid/widget/ListView;

    invoke-virtual {v7, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 174
    const/4 v7, 0x0

    return v7

    .line 158
    .end local v6    # "mla":Lcom/kankunit/smartplugcronus/adapter/MessageListAdapter;
    :cond_0
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 159
    .local v3, "jo":Lorg/json/JSONObject;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 160
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "id"

    const-string v8, "id"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v7, "messagecontent"

    const-string v8, "messagecontent"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v7, "messagetitle"

    const-string v8, "messagetitle"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v7, "messagetype"

    const-string v8, "messagetype"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v7, "msgtime"

    const-string v8, "addtime"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v7, "weburl"

    const-string v8, "weburl"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v3    # "jo":Lorg/json/JSONObject;
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1, p2, p3}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 69
    const v5, 0x7f0300a0

    const/4 v6, 0x0

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/MessageFragment;->rootView:Landroid/view/View;

    .line 70
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/MessageFragment;->rootView:Landroid/view/View;

    const v6, 0x7f070056

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/MessageFragment;->shadowlayer:Landroid/widget/RelativeLayout;

    .line 71
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/MessageFragment;->shadowlayer:Landroid/widget/RelativeLayout;

    new-instance v6, Lcom/kankunit/smartplugcronus/fragment/MessageFragment$1;

    invoke-direct {v6, p0}, Lcom/kankunit/smartplugcronus/fragment/MessageFragment$1;-><init>(Lcom/kankunit/smartplugcronus/fragment/MessageFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/MessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/MessageFragment;->ma:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    .line 86
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/MessageFragment;->handler:Landroid/os/Handler;

    .line 87
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/MessageFragment;->rootView:Landroid/view/View;

    const v6, 0x7f07004e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 88
    .local v2, "menuButton":Landroid/widget/ImageButton;
    new-instance v5, Lcom/kankunit/smartplugcronus/fragment/MessageFragment$2;

    invoke-direct {v5, p0}, Lcom/kankunit/smartplugcronus/fragment/MessageFragment$2;-><init>(Lcom/kankunit/smartplugcronus/fragment/MessageFragment;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/MessageFragment;->rootView:Landroid/view/View;

    const v6, 0x7f0702dc

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/MessageFragment;->msglist:Landroid/widget/ListView;

    .line 102
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/MessageFragment;->msglist:Landroid/widget/ListView;

    new-instance v6, Lcom/kankunit/smartplugcronus/fragment/MessageFragment$3;

    invoke-direct {v6, p0}, Lcom/kankunit/smartplugcronus/fragment/MessageFragment$3;-><init>(Lcom/kankunit/smartplugcronus/fragment/MessageFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 117
    new-instance v3, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/MessageFragment;->ma:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-direct {v3, v5}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;-><init>(Landroid/content/Context;)V

    .line 119
    .local v3, "minaSSLUtil":Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 120
    .local v4, "paramObject":Lorg/json/JSONObject;
    const-string v5, "softwareversion"

    const-string v6, "1.0.2"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    const-string v5, "userfrom"

    const-string v6, "android"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 123
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "params"

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string v5, "method"

    const-string v6, "getMessage"

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/kankunit/smartplugcronus/fragment/MessageFragment$4;

    invoke-direct {v6, p0}, Lcom/kankunit/smartplugcronus/fragment/MessageFragment$4;-><init>(Lcom/kankunit/smartplugcronus/fragment/MessageFragment;)V

    invoke-virtual {v3, v5, v6}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->sendSSLMsg(Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "paramObject":Lorg/json/JSONObject;
    :goto_0
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/MessageFragment;->rootView:Landroid/view/View;

    return-object v5

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public showSwitch(Lcom/kankunit/smartplugcronus/model/DeviceModel;)V
    .locals 0
    .param p1, "dm"    # Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .prologue
    .line 182
    return-void
.end method

.class public Lcom/kankunit/smartplugcronus/adapter/MessageListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 27
    iput-object p2, p0, Lcom/kankunit/smartplugcronus/adapter/MessageListAdapter;->list:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/adapter/MessageListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 31
    .local v0, "activity":Landroid/app/Activity;
    move-object/from16 v10, p2

    .line 34
    .local v10, "rowView":Landroid/view/View;
    :try_start_0
    iget-object v12, p0, Lcom/kankunit/smartplugcronus/adapter/MessageListAdapter;->list:Ljava/util/List;

    invoke-interface {v12, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 36
    .local v2, "commonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 37
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v12, 0x7f03009f

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 38
    new-instance v1, Lcom/kankunit/smartplugcronus/cache/MessageCache;

    invoke-direct {v1, v10}, Lcom/kankunit/smartplugcronus/cache/MessageCache;-><init>(Landroid/view/View;)V

    .line 39
    .local v1, "cache":Lcom/kankunit/smartplugcronus/cache/MessageCache;
    invoke-virtual {v10, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 41
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/cache/MessageCache;->getMsgtitle()Landroid/widget/TextView;

    move-result-object v9

    .line 42
    .local v9, "msgtitle":Landroid/widget/TextView;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v12, "messagetitle"

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/cache/MessageCache;->getMsgContent()Landroid/widget/TextView;

    move-result-object v6

    .line 45
    .local v6, "msgcontent":Landroid/widget/TextView;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v12, "messagecontent"

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/cache/MessageCache;->getMsgtime()Landroid/widget/TextView;

    move-result-object v8

    .line 47
    .local v8, "msgtime":Landroid/widget/TextView;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v12, "msgtime"

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 48
    .local v5, "msg":Ljava/lang/String;
    const-string v12, " "

    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/cache/MessageCache;->getMsgicon()Landroid/widget/ImageView;

    move-result-object v7

    .line 50
    .local v7, "msgicon":Landroid/widget/ImageView;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v12, "messagetype"

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "1"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 51
    const v12, 0x7f02031c

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    :goto_0
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/cache/MessageCache;->getWeburl()Landroid/widget/TextView;

    move-result-object v11

    .line 59
    .local v11, "weburl":Landroid/widget/TextView;
    const-string v12, "weburl"

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .end local v1    # "cache":Lcom/kankunit/smartplugcronus/cache/MessageCache;
    .end local v2    # "commonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "msg":Ljava/lang/String;
    .end local v6    # "msgcontent":Landroid/widget/TextView;
    .end local v7    # "msgicon":Landroid/widget/ImageView;
    .end local v8    # "msgtime":Landroid/widget/TextView;
    .end local v9    # "msgtitle":Landroid/widget/TextView;
    .end local v11    # "weburl":Landroid/widget/TextView;
    :goto_1
    return-object v10

    .line 52
    .restart local v1    # "cache":Lcom/kankunit/smartplugcronus/cache/MessageCache;
    .restart local v2    # "commonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "inflater":Landroid/view/LayoutInflater;
    .restart local v5    # "msg":Ljava/lang/String;
    .restart local v6    # "msgcontent":Landroid/widget/TextView;
    .restart local v7    # "msgicon":Landroid/widget/ImageView;
    .restart local v8    # "msgtime":Landroid/widget/TextView;
    .restart local v9    # "msgtitle":Landroid/widget/TextView;
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v12, "messagetype"

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "2"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 53
    const v12, 0x7f02031d

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    .end local v1    # "cache":Lcom/kankunit/smartplugcronus/cache/MessageCache;
    .end local v2    # "commonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "msg":Ljava/lang/String;
    .end local v6    # "msgcontent":Landroid/widget/TextView;
    .end local v7    # "msgicon":Landroid/widget/ImageView;
    .end local v8    # "msgtime":Landroid/widget/TextView;
    .end local v9    # "msgtitle":Landroid/widget/TextView;
    :catch_0
    move-exception v3

    .line 61
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 55
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "cache":Lcom/kankunit/smartplugcronus/cache/MessageCache;
    .restart local v2    # "commonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "inflater":Landroid/view/LayoutInflater;
    .restart local v5    # "msg":Ljava/lang/String;
    .restart local v6    # "msgcontent":Landroid/widget/TextView;
    .restart local v7    # "msgicon":Landroid/widget/ImageView;
    .restart local v8    # "msgtime":Landroid/widget/TextView;
    .restart local v9    # "msgtitle":Landroid/widget/TextView;
    :cond_1
    const v12, 0x7f02031e

    :try_start_1
    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

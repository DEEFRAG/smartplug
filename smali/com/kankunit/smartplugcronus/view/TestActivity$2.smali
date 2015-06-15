.class Lcom/kankunit/smartplugcronus/view/TestActivity$2;
.super Landroid/os/Handler;
.source "TestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/TestActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/TestActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/TestActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/TestActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TestActivity;

    .line 97
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x0

    .line 99
    iget v8, p1, Landroid/os/Message;->arg1:I

    const/4 v10, 0x1

    if-ne v8, v10, :cond_0

    .line 100
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 101
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 102
    const-string v8, "text"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 103
    .local v6, "text":Ljava/lang/String;
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/TestActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TestActivity;

    iget-object v8, v8, Lcom/kankunit/smartplugcronus/view/TestActivity;->waitTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v6    # "text":Ljava/lang/String;
    :cond_0
    iget v8, p1, Landroid/os/Message;->arg1:I

    const/16 v10, 0x6f

    if-ne v8, v10, :cond_1

    .line 107
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "backString":Ljava/lang/String;
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/TestActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TestActivity;

    invoke-virtual {v8, v0}, Lcom/kankunit/smartplugcronus/view/TestActivity;->doReceive(Ljava/lang/String;)V

    .line 111
    .end local v0    # "backString":Ljava/lang/String;
    :cond_1
    iget v8, p1, Landroid/os/Message;->arg1:I

    const/16 v10, 0x65

    if-ne v8, v10, :cond_4

    .line 112
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "body":Ljava/lang/String;
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/TestActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TestActivity;

    invoke-static {v8, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 115
    const-string v8, "%"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 116
    .local v4, "sArr":[Ljava/lang/String;
    array-length v8, v4

    const/4 v10, 0x4

    if-ge v8, v10, :cond_3

    .line 131
    .end local v1    # "body":Ljava/lang/String;
    .end local v4    # "sArr":[Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 119
    .restart local v1    # "body":Ljava/lang/String;
    .restart local v4    # "sArr":[Ljava/lang/String;
    :cond_3
    const/4 v8, 0x3

    aget-object v8, v4, v8

    const-string v10, "#"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "cArr":[Ljava/lang/String;
    array-length v10, v3

    move v8, v9

    :goto_1
    if-lt v8, v10, :cond_5

    .line 128
    .end local v1    # "body":Ljava/lang/String;
    .end local v3    # "cArr":[Ljava/lang/String;
    .end local v4    # "sArr":[Ljava/lang/String;
    :cond_4
    iget v8, p1, Landroid/os/Message;->arg1:I

    const/16 v10, 0x66

    if-ne v8, v10, :cond_2

    .line 129
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/TestActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TestActivity;

    const-string v10, "ring"

    invoke-static {v8, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 120
    .restart local v1    # "body":Ljava/lang/String;
    .restart local v3    # "cArr":[Ljava/lang/String;
    .restart local v4    # "sArr":[Ljava/lang/String;
    :cond_5
    aget-object v5, v3, v8

    .line 121
    .local v5, "ss":Ljava/lang/String;
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/TestActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TestActivity;

    iget-object v11, v11, Lcom/kankunit/smartplugcronus/view/TestActivity;->mac:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 122
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/TestActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TestActivity;

    const v9, 0x7f07037a

    invoke-virtual {v8, v9}, Lcom/kankunit/smartplugcronus/view/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 123
    .local v7, "textView":Landroid/widget/TextView;
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 120
    .end local v7    # "textView":Landroid/widget/TextView;
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

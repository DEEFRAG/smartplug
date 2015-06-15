.class Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1$1;
.super Ljava/lang/Object;
.source "SpeechSetActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;

.field private final synthetic val$i:I

.field private final synthetic val$inputServer:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;Landroid/widget/EditText;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1$1;->val$inputServer:Landroid/widget/EditText;

    iput p3, p0, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1$1;->val$i:I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 63
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1$1;->val$inputServer:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 64
    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "inputName":Ljava/lang/String;
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;

    # getter for: Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;)Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/kankunit/smartplugcronus/dao/SpeechDao;->getAllSpeech(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 66
    .local v2, "speechs":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/SpeechModel;>;"
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1$1;->val$i:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/model/SpeechModel;

    .line 67
    .local v1, "speech":Lcom/kankunit/smartplugcronus/model/SpeechModel;
    invoke-virtual {v1, v0}, Lcom/kankunit/smartplugcronus/model/SpeechModel;->setSpeechName(Ljava/lang/String;)V

    .line 68
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;

    # getter for: Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;)Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/kankunit/smartplugcronus/dao/SpeechDao;->updateSpeech(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/SpeechModel;)V

    .line 69
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;

    # getter for: Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;)Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;

    # getter for: Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;)Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;

    move-result-object v4

    # invokes: Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;->getData()Ljava/util/List;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;->access$0(Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;->access$1(Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;Ljava/util/List;)V

    .line 70
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;

    # getter for: Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;)Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;

    move-result-object v3

    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;

    # getter for: Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;)Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;

    move-result-object v5

    .line 71
    const v6, 0x1090006

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;

    # getter for: Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;)Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;

    move-result-object v7

    # getter for: Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;->datast:Ljava/util/List;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;->access$2(Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 70
    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;->access$3(Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;Landroid/widget/ArrayAdapter;)V

    .line 72
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;

    # getter for: Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;)Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;

    move-result-object v3

    # getter for: Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;->speech_list:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;->access$4(Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;)Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;

    # getter for: Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;)Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;

    move-result-object v4

    # getter for: Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;->adapter:Landroid/widget/ArrayAdapter;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;->access$5(Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    return-void
.end method

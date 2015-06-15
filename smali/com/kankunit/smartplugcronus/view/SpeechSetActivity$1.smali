.class Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;
.super Ljava/lang/Object;
.source "SpeechSetActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;)Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;

    return-object v0
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .param p2, "v"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v1, Landroid/widget/EditText;

    .line 52
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;

    .line 51
    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 53
    .local v1, "inputServer":Landroid/widget/EditText;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 54
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 55
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;

    .line 54
    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Change the name"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 57
    const-string v3, "Cancel"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 58
    const-string v2, "Confirm"

    .line 59
    new-instance v3, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1$1;

    invoke-direct {v3, p0, v1, p3}, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1$1;-><init>(Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;Landroid/widget/EditText;I)V

    .line 58
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 75
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 76
    const/4 v2, 0x0

    return v2
.end method

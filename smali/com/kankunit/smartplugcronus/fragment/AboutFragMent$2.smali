.class Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;
.super Ljava/lang/Object;
.source "AboutFragMent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;

.field private final synthetic val$phoneMac:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;->val$phoneMac:Ljava/lang/String;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;)Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 107
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->i:I
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->access$1(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->access$2(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;I)V

    .line 108
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->i:I
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->access$1(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;)I

    move-result v5

    const/16 v6, 0x12

    if-ne v5, v6, :cond_0

    .line 109
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;

    invoke-static {v5, v7}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->access$2(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;I)V

    .line 110
    new-instance v1, Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;

    invoke-direct {v1}, Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;-><init>()V

    .line 111
    .local v1, "chooseListener":Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v4, "strs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->macs:[Ljava/lang/String;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->access$3(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-lt v3, v5, :cond_1

    .line 118
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->access$4(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;[Ljava/lang/String;)V

    .line 119
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 120
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v5, "Select MAC"

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 121
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->macs:[Ljava/lang/String;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->access$3(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v7, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 122
    const-string v5, "openfire"

    .line 123
    new-instance v6, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2$1;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;->val$phoneMac:Ljava/lang/String;

    invoke-direct {v6, p0, v1, v7}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2$1;-><init>(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 155
    const-string v5, "mina"

    .line 156
    new-instance v6, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2$2;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;->val$phoneMac:Ljava/lang/String;

    invoke-direct {v6, p0, v1, v7}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2$2;-><init>(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 183
    const-string v5, "No"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 184
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 185
    .local v2, "dialog":Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 187
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "chooseListener":Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;
    .end local v2    # "dialog":Landroid/app/Dialog;
    .end local v3    # "i":I
    .end local v4    # "strs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 113
    .restart local v1    # "chooseListener":Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;
    .restart local v3    # "i":I
    .restart local v4    # "strs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->macs:[Ljava/lang/String;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->access$3(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    if-eqz v5, :cond_2

    .line 114
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->macs:[Ljava/lang/String;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->access$3(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

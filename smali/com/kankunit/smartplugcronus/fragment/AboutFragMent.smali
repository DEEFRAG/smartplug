.class public Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;
.super Lcom/kankunit/smartplugcronus/base/BaseFragment;
.source "AboutFragMent.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# instance fields
.field private handler:Landroid/os/Handler;

.field private i:I

.field private ma:Lcom/kankunit/smartplugcronus/view/MenuActivity;

.field private macs:[Ljava/lang/String;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field private now_a:Landroid/widget/TextView;

.field private parent:Landroid/view/View;

.field private shadowlayer:Landroid/widget/RelativeLayout;

.field private state:Ljava/lang/String;

.field private worn_text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseFragment;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->i:I

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;)Lcom/kankunit/smartplugcronus/view/MenuActivity;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->ma:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->i:I

    return v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->i:I

    return-void
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->macs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->macs:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->otherMac(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->state:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->state:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    return-object v0
.end method

.method private otherMac(Ljava/lang/String;)V
    .locals 6
    .param p1, "phoneMac"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 228
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 229
    .local v1, "et":Landroid/widget/EditText;
    const-string v3, "28-d9-8a-00-22-a2"

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 230
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 231
    new-instance v2, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 232
    .local v2, "et2":Landroid/widget/EditText;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 233
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v3, "Please enter small K MAC"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 234
    const v3, 0x7f020206

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 235
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 236
    const-string v3, "openfire"

    .line 237
    new-instance v4, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$6;

    invoke-direct {v4, p0, p1, v2, v1}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$6;-><init>(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/EditText;)V

    .line 236
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 255
    const-string v3, "mina"

    new-instance v4, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$7;

    invoke-direct {v4, p0, v1, v2, p1}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$7;-><init>(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 268
    const-string v3, "No"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 269
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 270
    iput v5, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->i:I

    .line 271
    return-void
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 275
    const-string v2, "msgBody"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "bsgMsg":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "rack"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 278
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 279
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 280
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 282
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "failed: timed out"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 291
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "bsgMsg":Ljava/lang/String;
    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v1, v2, v3

    .line 308
    .local v1, "resutl":Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 319
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 310
    :pswitch_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Success"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 311
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 314
    :pswitch_1
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "Success"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hideShadePopWindow()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->shadowlayer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 65
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 76
    new-instance v5, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v5, p0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 77
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->handler:Landroid/os/Handler;

    .line 78
    const v5, 0x7f030018

    const/4 v6, 0x0

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->parent:Landroid/view/View;

    .line 79
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->ma:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    .line 80
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->parent:Landroid/view/View;

    const v6, 0x7f070056

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->shadowlayer:Landroid/widget/RelativeLayout;

    .line 81
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->shadowlayer:Landroid/widget/RelativeLayout;

    new-instance v6, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$1;

    invoke-direct {v6, p0}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$1;-><init>(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;)V

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->parent:Landroid/view/View;

    const v6, 0x7f070050

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 90
    .local v0, "about_ver":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->parent:Landroid/view/View;

    const v6, 0x7f070052

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->now_a:Landroid/widget/TextView;

    .line 91
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->parent:Landroid/view/View;

    const v6, 0x7f070055

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->worn_text:Landroid/widget/TextView;

    .line 92
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Release"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/kankunit/smartplugcronus/util/ConfigUtil;->getVerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 92
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getAllDevice(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 96
    .local v1, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->macs:[Ljava/lang/String;

    .line 97
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v2, v5, :cond_0

    .line 100
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->macs:[Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const-string v7, "Other"

    aput-object v7, v5, v6

    .line 101
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 102
    const-string v6, ":"

    const-string v7, "-"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, "phoneMac":Ljava/lang/String;
    const-string v5, "open"

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->state:Ljava/lang/String;

    .line 104
    new-instance v5, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;

    invoke-direct {v5, p0, v4}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;-><init>(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->parent:Landroid/view/View;

    .line 191
    const v6, 0x7f07004e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 190
    check-cast v3, Landroid/widget/ImageButton;

    .line 192
    .local v3, "menuButton":Landroid/widget/ImageButton;
    new-instance v5, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$3;

    invoke-direct {v5, p0}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$3;-><init>(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->now_a:Landroid/widget/TextView;

    new-instance v6, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$4;

    invoke-direct {v6, p0}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$4;-><init>(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->worn_text:Landroid/widget/TextView;

    new-instance v6, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$5;

    invoke-direct {v6, p0}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$5;-><init>(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->parent:Landroid/view/View;

    return-object v5

    .line 98
    .end local v3    # "menuButton":Landroid/widget/ImageButton;
    .end local v4    # "phoneMac":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->macs:[Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v2

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "bsgMsg":Ljava/lang/String;
    const-string v2, "tack"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 298
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 299
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 300
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 302
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public showShadePopWindow()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->shadowlayer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 61
    return-void
.end method

.method public showSwitch(Lcom/kankunit/smartplugcronus/model/DeviceModel;)V
    .locals 0
    .param p1, "dm"    # Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .prologue
    .line 286
    return-void
.end method

.class public Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;
.super Landroid/app/Activity;
.source "PushDemoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static initialCnt:I


# instance fields
.field akBtnId:I

.field clearLog:Landroid/widget/Button;

.field clearLogBtnId:I

.field delTagBtnId:I

.field delTags:Landroid/widget/Button;

.field displayRichMedia:Landroid/widget/Button;

.field initBtnId:I

.field initButton:Landroid/widget/Button;

.field initWithApiKey:Landroid/widget/Button;

.field private isLogin:Z

.field logText:Landroid/widget/TextView;

.field mainLayout:Landroid/widget/RelativeLayout;

.field richBtnId:I

.field scrollView:Landroid/widget/ScrollView;

.field setTagBtnId:I

.field setTags:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->TAG:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    sput v0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->initialCnt:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->mainLayout:Landroid/widget/RelativeLayout;

    .line 36
    iput v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->akBtnId:I

    .line 37
    iput v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->initBtnId:I

    .line 38
    iput v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->richBtnId:I

    .line 39
    iput v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->setTagBtnId:I

    .line 40
    iput v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->delTagBtnId:I

    .line 41
    iput v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->clearLogBtnId:I

    .line 42
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->initButton:Landroid/widget/Button;

    .line 43
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->initWithApiKey:Landroid/widget/Button;

    .line 44
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->displayRichMedia:Landroid/widget/Button;

    .line 45
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->setTags:Landroid/widget/Button;

    .line 46
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->delTags:Landroid/widget/Button;

    .line 47
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->clearLog:Landroid/widget/Button;

    .line 48
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->logText:Landroid/widget/TextView;

    .line 49
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->scrollView:Landroid/widget/ScrollView;

    .line 51
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->isLogin:Z

    .line 32
    return-void
.end method

.method private deleteTags()V
    .locals 5

    .prologue
    .line 154
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 155
    .local v1, "layout":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 157
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 158
    .local v2, "textviewGid":Landroid/widget/EditText;
    const-string v3, "Please enter multiple tags, separated by comma"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 161
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 163
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 164
    const-string v3, "Delete tag"

    .line 165
    new-instance v4, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity$1;

    invoke-direct {v4, p0, v2}, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity$1;-><init>(Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;Landroid/widget/EditText;)V

    .line 164
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 174
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 175
    return-void
.end method

.method private initWithApiKey()V
    .locals 3

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 207
    const/4 v1, 0x0

    .line 208
    const-string v2, "api_key"

    invoke-static {p0, v2}, Lcom/kankunit/smartplugcronus/baidupush/Utils;->getMetaValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/PushManager;->startWork(Landroid/content/Context;ILjava/lang/String;)V

    .line 209
    return-void
.end method

.method private initWithBaiduAccount()V
    .locals 2

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->isLogin:Z

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 216
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 217
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->isLogin:Z

    .line 220
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->initButton:Landroid/widget/Button;

    const-string v1, "Baidu account login initialization Channel"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 222
    :cond_0
    return-void
.end method

.method private openRichMediaList()V
    .locals 3

    .prologue
    .line 145
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 146
    .local v0, "sendIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 147
    const-string v2, "com.baidu.android.pushservice.richmedia.MediaListActivity"

    .line 146
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->startActivity(Landroid/content/Intent;)V

    .line 150
    return-void
.end method

.method private setTags()V
    .locals 5

    .prologue
    .line 179
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 180
    .local v1, "layout":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 182
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 183
    .local v2, "textviewGid":Landroid/widget/EditText;
    const-string v3, "Please enter multiple tags, separated by comma"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 184
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 186
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 188
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 189
    const-string v3, "Settings tab"

    .line 190
    new-instance v4, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity$2;

    invoke-direct {v4, p0, v2}, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity$2;-><init>(Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;Landroid/widget/EditText;)V

    .line 189
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 200
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 201
    return-void
.end method

.method private updateDisplay()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->logText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->logText:Landroid/widget/TextView;

    sget-object v1, Lcom/kankunit/smartplugcronus/baidupush/Utils;->logStringCache:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->scrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->scrollView:Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 275
    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->akBtnId:I

    if-ne v0, v1, :cond_1

    .line 123
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->initWithApiKey()V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->initBtnId:I

    if-ne v0, v1, :cond_2

    .line 125
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->initWithBaiduAccount()V

    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->richBtnId:I

    if-ne v0, v1, :cond_3

    .line 127
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->openRichMediaList()V

    goto :goto_0

    .line 128
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->setTagBtnId:I

    if-ne v0, v1, :cond_4

    .line 129
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->setTags()V

    goto :goto_0

    .line 130
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->delTagBtnId:I

    if-ne v0, v1, :cond_5

    .line 131
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->deleteTags()V

    goto :goto_0

    .line 132
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->clearLogBtnId:I

    if-ne v0, v1, :cond_0

    .line 133
    const-string v0, ""

    sput-object v0, Lcom/kankunit/smartplugcronus/baidupush/Utils;->logStringCache:Ljava/lang/String;

    .line 134
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/kankunit/smartplugcronus/baidupush/Utils;->logStringCache:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/baidupush/Utils;->setLogText(Landroid/content/Context;Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->updateDisplay()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kankunit/smartplugcronus/baidupush/Utils;->getLogText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kankunit/smartplugcronus/baidupush/Utils;->logStringCache:Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 60
    .local v7, "resource":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 62
    .local v6, "pkgName":Ljava/lang/String;
    const-string v1, "main"

    const-string v2, "layout"

    invoke-virtual {v7, v1, v2, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->setContentView(I)V

    .line 63
    const-string v1, "btn_initAK"

    const-string v2, "id"

    invoke-virtual {v7, v1, v2, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->akBtnId:I

    .line 64
    const-string v1, "btn_init"

    const-string v2, "id"

    invoke-virtual {v7, v1, v2, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->initBtnId:I

    .line 65
    const-string v1, "btn_rich"

    const-string v2, "id"

    invoke-virtual {v7, v1, v2, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->richBtnId:I

    .line 66
    const-string v1, "btn_setTags"

    const-string v2, "id"

    invoke-virtual {v7, v1, v2, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->setTagBtnId:I

    .line 67
    const-string v1, "btn_delTags"

    const-string v2, "id"

    invoke-virtual {v7, v1, v2, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->delTagBtnId:I

    .line 68
    const-string v1, "btn_clear_log"

    const-string v2, "id"

    invoke-virtual {v7, v1, v2, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->clearLogBtnId:I

    .line 70
    iget v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->akBtnId:I

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->initWithApiKey:Landroid/widget/Button;

    .line 71
    iget v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->initBtnId:I

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->initButton:Landroid/widget/Button;

    .line 72
    iget v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->richBtnId:I

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->displayRichMedia:Landroid/widget/Button;

    .line 73
    iget v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->setTagBtnId:I

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->setTags:Landroid/widget/Button;

    .line 74
    iget v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->delTagBtnId:I

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->delTags:Landroid/widget/Button;

    .line 75
    iget v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->clearLogBtnId:I

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->clearLog:Landroid/widget/Button;

    .line 77
    const-string v1, "text_log"

    .line 78
    const-string v2, "id"

    .line 77
    invoke-virtual {v7, v1, v2, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->logText:Landroid/widget/TextView;

    .line 80
    const-string v1, "stroll_text"

    const-string v2, "id"

    .line 79
    invoke-virtual {v7, v1, v2, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->scrollView:Landroid/widget/ScrollView;

    .line 82
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->initWithApiKey:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->initButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->setTags:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->delTags:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->displayRichMedia:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->clearLog:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kankunit/smartplugcronus/baidupush/Utils;->hasBind(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 96
    const/4 v2, 0x0

    .line 97
    const-string v3, "api_key"

    invoke-static {p0, v3}, Lcom/kankunit/smartplugcronus/baidupush/Utils;->getMetaValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-static {v1, v2, v3}, Lcom/baidu/android/pushservice/PushManager;->startWork(Landroid/content/Context;ILjava/lang/String;)V

    .line 105
    :cond_0
    new-instance v0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;

    .line 106
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 107
    const-string v2, "notification_custom_builder"

    const-string v3, "layout"

    .line 106
    invoke-virtual {v7, v2, v3, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 108
    const-string v3, "notification_icon"

    const-string v4, "id"

    invoke-virtual {v7, v3, v4, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 109
    const-string v4, "notification_title"

    const-string v5, "id"

    invoke-virtual {v7, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 110
    const-string v5, "notification_text"

    const-string v8, "id"

    invoke-virtual {v7, v5, v8, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 105
    invoke-direct/range {v0 .. v5}, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;-><init>(Landroid/content/Context;IIII)V

    .line 111
    .local v0, "cBuilder":Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->setNotificationFlags(I)V

    .line 112
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->setNotificationDefaults(I)V

    .line 114
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v0, v1}, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->setStatusbarIcon(I)V

    .line 116
    const-string v1, "simple_notification_icon"

    const-string v2, "drawable"

    .line 115
    invoke-virtual {v7, v1, v2, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->setLayoutDrawable(I)V

    .line 117
    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/baidu/android/pushservice/PushManager;->setNotificationBuilder(Landroid/content/Context;ILcom/baidu/android/pushservice/PushNotificationBuilder;)V

    .line 118
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/kankunit/smartplugcronus/baidupush/Utils;->logStringCache:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/baidupush/Utils;->setLogText(Landroid/content/Context;Ljava/lang/String;)V

    .line 263
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 264
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 239
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "action":Ljava/lang/String;
    const-string v2, "com.baidu.pushdemo.action.LOGIN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    const-string v2, "access_token"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "accessToken":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3, v0}, Lcom/baidu/android/pushservice/PushManager;->startWork(Landroid/content/Context;ILjava/lang/String;)V

    .line 248
    iput-boolean v3, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->isLogin:Z

    .line 249
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->initButton:Landroid/widget/Button;

    const-string v3, "Replace Baidu account"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 252
    .end local v0    # "accessToken":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->updateDisplay()V

    .line 253
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 231
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 234
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->updateDisplay()V

    .line 235
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 226
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 227
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 257
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 258
    return-void
.end method

.class public Lorg/videolan/vlc/gui/AboutFragment;
.super Landroid/support/v4/app/Fragment;
.source "AboutFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/gui/AboutFragment$DummyContentFactory;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/AboutActivity"


# instance fields
.field private mCurrentTab:I

.field mFlingViewGroup:Lorg/videolan/vlc/widget/FlingViewGroup;

.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lorg/videolan/vlc/gui/AboutFragment;->mCurrentTab:I

    .line 48
    return-void
.end method

.method static synthetic access$0(Lorg/videolan/vlc/gui/AboutFragment;)Landroid/widget/TabHost;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/videolan/vlc/gui/AboutFragment;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$1(Lorg/videolan/vlc/gui/AboutFragment;I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lorg/videolan/vlc/gui/AboutFragment;->mCurrentTab:I

    return-void
.end method

.method static synthetic access$2(Lorg/videolan/vlc/gui/AboutFragment;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lorg/videolan/vlc/gui/AboutFragment;->mCurrentTab:I

    return v0
.end method

.method private addNewTab(Landroid/widget/TabHost;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tabHost"    # Landroid/widget/TabHost;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 145
    new-instance v0, Lorg/videolan/vlc/gui/AboutFragment$DummyContentFactory;

    invoke-virtual {p1}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/videolan/vlc/gui/AboutFragment$DummyContentFactory;-><init>(Landroid/content/Context;)V

    .line 146
    .local v0, "dcf":Lorg/videolan/vlc/gui/AboutFragment$DummyContentFactory;
    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 147
    .local v1, "tabSpec":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {p1}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lorg/videolan/vlc/gui/AboutFragment;->getNewTabIndicator(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 148
    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 149
    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 150
    return-void
.end method

.method private getNewTabIndicator(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300e0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 154
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f070131

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 155
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    return-object v1
.end method

.method public static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 160
    const-string v2, ""

    .line 163
    .local v2, "versionName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 164
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "v"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 168
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 13
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/AboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    check-cast v9, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v9}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "VLC "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/AboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-static {v11}, Lorg/videolan/vlc/gui/AboutFragment;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    const v9, 0x7f030018

    const/4 v10, 0x0

    invoke-virtual {p1, v9, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 62
    .local v8, "v":Landroid/view/View;
    const v9, 0x1020012

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TabHost;

    iput-object v9, p0, Lorg/videolan/vlc/gui/AboutFragment;->mTabHost:Landroid/widget/TabHost;

    .line 63
    const v9, 0x7f0700f7

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lorg/videolan/vlc/widget/FlingViewGroup;

    iput-object v9, p0, Lorg/videolan/vlc/gui/AboutFragment;->mFlingViewGroup:Lorg/videolan/vlc/widget/FlingViewGroup;

    .line 65
    const v9, 0x7f070027

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/webkit/WebView;

    .line 66
    .local v6, "t":Landroid/webkit/WebView;
    const-string v9, "revision.txt"

    const-string v10, "Unknown revision"

    invoke-static {v9, v10}, Lorg/videolan/vlc/util/Util;->readAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, "revision":Ljava/lang/String;
    const-string v9, "licence.htm"

    const-string v10, ""

    invoke-static {v9, v10}, Lorg/videolan/vlc/util/Util;->readAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "!COMMITID!"

    invoke-virtual {v9, v10, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "text/html"

    const-string v11, "UTF8"

    invoke-virtual {v6, v9, v10, v11}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const v9, 0x7f070058

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 70
    .local v3, "link":Landroid/widget/TextView;
    const v9, 0x7f0c0093

    invoke-virtual {p0, v9}, Lorg/videolan/vlc/gui/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const-string v9, "builddate.txt"

    const-string v10, "Unknown"

    invoke-static {v9, v10}, Lorg/videolan/vlc/util/Util;->readAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "builddate":Ljava/lang/String;
    const-string v9, "builder.txt"

    const-string v10, "unknown"

    invoke-static {v9, v10}, Lorg/videolan/vlc/util/Util;->readAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "builder":Ljava/lang/String;
    const v9, 0x7f07005a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 76
    .local v2, "compiled":Landroid/widget/TextView;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    const v9, 0x7f070059

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 78
    .local v7, "textview_rev":Landroid/widget/TextView;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/AboutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c008e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const v9, 0x7f070057

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 81
    .local v4, "logo":Landroid/widget/ImageView;
    new-instance v9, Lorg/videolan/vlc/gui/AboutFragment$1;

    invoke-direct {v9, p0, v4}, Lorg/videolan/vlc/gui/AboutFragment$1;-><init>(Lorg/videolan/vlc/gui/AboutFragment;Landroid/widget/ImageView;)V

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v9, p0, Lorg/videolan/vlc/gui/AboutFragment;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v9}, Landroid/widget/TabHost;->setup()V

    .line 95
    iget-object v9, p0, Lorg/videolan/vlc/gui/AboutFragment;->mTabHost:Landroid/widget/TabHost;

    const-string v10, "about"

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/AboutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c008f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v9, v10, v11}, Lorg/videolan/vlc/gui/AboutFragment;->addNewTab(Landroid/widget/TabHost;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v9, p0, Lorg/videolan/vlc/gui/AboutFragment;->mTabHost:Landroid/widget/TabHost;

    const-string v10, "licence"

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/AboutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c008d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v9, v10, v11}, Lorg/videolan/vlc/gui/AboutFragment;->addNewTab(Landroid/widget/TabHost;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v9, p0, Lorg/videolan/vlc/gui/AboutFragment;->mTabHost:Landroid/widget/TabHost;

    iget v10, p0, Lorg/videolan/vlc/gui/AboutFragment;->mCurrentTab:I

    invoke-virtual {v9, v10}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 99
    iget-object v9, p0, Lorg/videolan/vlc/gui/AboutFragment;->mFlingViewGroup:Lorg/videolan/vlc/widget/FlingViewGroup;

    iget v10, p0, Lorg/videolan/vlc/gui/AboutFragment;->mCurrentTab:I

    invoke-virtual {v9, v10}, Lorg/videolan/vlc/widget/FlingViewGroup;->snapToScreen(I)V

    .line 101
    iget-object v9, p0, Lorg/videolan/vlc/gui/AboutFragment;->mTabHost:Landroid/widget/TabHost;

    new-instance v10, Lorg/videolan/vlc/gui/AboutFragment$2;

    invoke-direct {v10, p0}, Lorg/videolan/vlc/gui/AboutFragment$2;-><init>(Lorg/videolan/vlc/gui/AboutFragment;)V

    invoke-virtual {v9, v10}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 109
    iget-object v9, p0, Lorg/videolan/vlc/gui/AboutFragment;->mFlingViewGroup:Lorg/videolan/vlc/widget/FlingViewGroup;

    new-instance v10, Lorg/videolan/vlc/gui/AboutFragment$3;

    invoke-direct {v10, p0}, Lorg/videolan/vlc/gui/AboutFragment$3;-><init>(Lorg/videolan/vlc/gui/AboutFragment;)V

    invoke-virtual {v9, v10}, Lorg/videolan/vlc/widget/FlingViewGroup;->setOnViewSwitchedListener(Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;)V

    .line 129
    return-object v8
.end method

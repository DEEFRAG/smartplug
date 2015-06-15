.class public Lcom/tencent/open/OpenUi;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Lcom/tencent/open/TContext;

.field private b:I

.field private c:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/tencent/open/TContext;)V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/16 v0, 0x1618

    iput v0, p0, Lcom/tencent/open/OpenUi;->b:I

    .line 94
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/open/OpenUi;->c:Landroid/util/SparseArray;

    .line 100
    iput-object p1, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    .line 101
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 584
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 586
    const-string v1, "action_avatar"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 587
    const-class v1, Lcom/tencent/plus/ImageActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 599
    :cond_0
    :goto_0
    return-object v0

    .line 590
    :cond_1
    sget-object v1, Lcom/tencent/tauth/Constants;->PACKAGE_AGENT:Ljava/lang/String;

    const-string v2, "com.tencent.open.agent.AgentActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    const-string v1, "key_request_code"

    invoke-direct {p0}, Lcom/tencent/open/OpenUi;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 596
    invoke-direct {p0, p1, v0}, Lcom/tencent/open/OpenUi;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 599
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 606
    .line 608
    :try_start_0
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 609
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    :goto_0
    if-nez v1, :cond_1

    .line 621
    :cond_0
    :goto_1
    return-object v0

    .line 610
    :catch_0
    move-exception v1

    .line 611
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    goto :goto_0

    .line 616
    :cond_1
    const-string v2, "key_request_code"

    invoke-direct {p0}, Lcom/tencent/open/OpenUi;->b()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 618
    invoke-direct {p0, p1, v1}, Lcom/tencent/open/OpenUi;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 619
    goto :goto_1
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 748
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 750
    const-string v0, "action_login"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "action_pay"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 752
    :cond_0
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    if-eqz v0, :cond_1

    .line 753
    const-string v0, "client_id"

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    const-string v0, "pf"

    const-string v2, "openmobile_android"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const-string v0, "need_pay"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    :cond_1
    :goto_0
    return-object v1

    .line 758
    :cond_2
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    if-eqz v0, :cond_1

    .line 759
    const-string v0, "oauth_consumer_key"

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 762
    const-string v0, "access_token"

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    :cond_3
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->c()Ljava/lang/String;

    move-result-object v0

    .line 766
    if-eqz v0, :cond_4

    .line 767
    const-string v2, "openid"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v0

    const-string v2, "pfStore"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 775
    const-string v2, "pf"

    const-string v3, "openmobile_android"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 777
    const-string v2, "pf"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 778
    :catch_0
    move-exception v0

    .line 779
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 780
    const-string v0, "pf"

    const-string v2, "openmobile_android"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/open/OpenUi;)Lcom/tencent/open/TContext;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 630
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 632
    if-nez v1, :cond_0

    .line 636
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b()I
    .locals 3

    .prologue
    .line 703
    .line 705
    :cond_0
    iget v0, p0, Lcom/tencent/open/OpenUi;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/open/OpenUi;->b:I

    .line 706
    iget v0, p0, Lcom/tencent/open/OpenUi;->b:I

    const/16 v1, 0x1a00

    if-ne v0, v1, :cond_1

    .line 707
    const/16 v0, 0x1618

    iput v0, p0, Lcom/tencent/open/OpenUi;->b:I

    .line 708
    :cond_1
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->c:Landroid/util/SparseArray;

    iget v1, p0, Lcom/tencent/open/OpenUi;->b:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/open/m;

    .line 709
    iget-object v1, p0, Lcom/tencent/open/OpenUi;->c:Landroid/util/SparseArray;

    iget v2, p0, Lcom/tencent/open/OpenUi;->b:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 710
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/tencent/open/m;->a:Lcom/tencent/tauth/IUiListener;

    if-eqz v1, :cond_2

    .line 711
    iget-object v1, v0, Lcom/tencent/open/m;->a:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v1}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    .line 713
    :cond_2
    if-nez v0, :cond_0

    .line 714
    iget v0, p0, Lcom/tencent/open/OpenUi;->b:I

    return v0
.end method

.method private b(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 789
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 792
    const-string v0, "action_story"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "shareurl"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 793
    const-string v0, "url"

    const-string v2, "shareurl"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    :cond_0
    :goto_0
    return-object v1

    .line 795
    :cond_1
    const-string v0, "action_pay"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 796
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    if-eqz v0, :cond_0

    .line 797
    const-string v0, "oauth_consumer_key"

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    const-string v0, "pf"

    const-string v2, "openmobile_android"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const-string v0, "need_pay"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->c()Ljava/lang/String;

    move-result-object v0

    .line 802
    if-eqz v0, :cond_2

    .line 803
    const-string v2, "hopenid"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 805
    :cond_2
    const-string v0, "hopenid"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 809
    :cond_3
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    if-eqz v0, :cond_0

    .line 810
    const-string v0, "appid"

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 812
    const-string v0, "keystr"

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    const-string v0, "keytype"

    const-string v2, "0x80"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    :cond_4
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->c()Ljava/lang/String;

    move-result-object v0

    .line 817
    if-eqz v0, :cond_5

    .line 818
    const-string v2, "hopenid"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    :cond_5
    const-string v0, "platform"

    const-string v2, "androidqz"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    :try_start_0
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v0

    const-string v2, "pfStore"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 828
    const-string v2, "pf"

    const-string v3, "openmobile_android"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 829
    const-string v2, "pf"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 830
    :catch_0
    move-exception v0

    .line 831
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 832
    const-string v0, "pf"

    const-string v2, "openmobile_android"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 665
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 667
    if-nez v1, :cond_0

    .line 671
    :goto_0
    return v0

    :cond_0
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/tencent/open/OpenUi;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 687
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 693
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 694
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/open/Util;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 695
    const-string v5, "ec96e9ac1149251acbb1b0c5777cae95"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 696
    const/4 v0, 0x1

    .line 699
    :cond_0
    :goto_1
    return v0

    .line 693
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 689
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private c(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 840
    const-string v0, "display"

    const-string v1, "mobile"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 842
    const-string v1, "action_login"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "action_pay"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 844
    :cond_0
    const-string v1, "response_type"

    const-string v2, "token"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    const-string v1, "redirect_uri"

    invoke-static {}, Lcom/tencent/open/ServerSetting;->getInstance()Lcom/tencent/open/ServerSetting;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v3}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/tencent/open/ServerSetting;->getSettingUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    const-string v1, "cancel_display"

    const-string v2, "1"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    const-string v1, "switch"

    const-string v2, "1"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    const-string v1, "sdkp"

    const-string v2, "a"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    const-string v1, "sdkv"

    const-string v2, "1.5"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    const-string v1, "status_userip"

    invoke-static {}, Lcom/tencent/open/Util;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    const-string v1, "status_os"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const-string v1, "status_version"

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    const-string v1, "status_machine"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    invoke-static {}, Lcom/tencent/open/ServerSetting;->getInstance()Lcom/tencent/open/ServerSetting;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/open/ServerSetting;->getSettingUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    invoke-static {p2}, Lcom/tencent/open/Util;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 865
    :cond_2
    const-string v1, "action_story"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 869
    invoke-static {}, Lcom/tencent/open/ServerSetting;->getInstance()Lcom/tencent/open/ServerSetting;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/open/ServerSetting;->getSettingUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    const-string v1, "sdkv"

    const-string v2, "1.5"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    invoke-static {p2}, Lcom/tencent/open/Util;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 873
    :cond_3
    const-string v1, "action_invite"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 877
    invoke-static {}, Lcom/tencent/open/ServerSetting;->getInstance()Lcom/tencent/open/ServerSetting;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/tencent/open/ServerSetting;->getSettingUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    const-string v1, "sdkv"

    const-string v2, "1.5"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    invoke-static {p2}, Lcom/tencent/open/Util;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 881
    :cond_4
    const-string v1, "action_challenge"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "action_brag"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 883
    :cond_5
    invoke-static {}, Lcom/tencent/open/ServerSetting;->getInstance()Lcom/tencent/open/ServerSetting;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Lcom/tencent/open/ServerSetting;->getSettingUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    const-string v1, "sdkv"

    const-string v2, "1.5"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    invoke-static {p2}, Lcom/tencent/open/Util;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 888
    :cond_6
    const-string v1, "action_ask"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 889
    invoke-static {}, Lcom/tencent/open/ServerSetting;->getInstance()Lcom/tencent/open/ServerSetting;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/tencent/open/ServerSetting;->getSettingUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    const-string v1, "sdkv"

    const-string v2, "1.5"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    invoke-static {p2}, Lcom/tencent/open/Util;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 893
    :cond_7
    const-string v1, "action_gift"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 894
    invoke-static {}, Lcom/tencent/open/ServerSetting;->getInstance()Lcom/tencent/open/ServerSetting;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3}, Lcom/tencent/open/ServerSetting;->getSettingUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    const-string v1, "sdkv"

    const-string v2, "1.5"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    invoke-static {p2}, Lcom/tencent/open/Util;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I
    .locals 6

    .prologue
    .line 121
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/open/OpenUi;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;Z)I

    move-result v0

    return v0
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;Z)I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 143
    const-string v0, "action_challenge"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "action_brag"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "action_invite"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "action_story"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "action_ask"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "action_gift"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/open/OpenUi;->b(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;Z)V

    .line 149
    const/4 v5, 0x2

    .line 183
    :cond_1
    :goto_0
    return v5

    .line 157
    :cond_2
    if-nez p5, :cond_3

    .line 163
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->b()Ljava/lang/String;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v1}, Lcom/tencent/open/TContext;->c()Ljava/lang/String;

    move-result-object v1

    .line 165
    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v2

    .line 167
    const-string v3, "toddtest"

    const-string v4, "OpenUI showUi"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "action_login"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    const-string v2, "action_check_token"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/open/OpenUi;->b(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;Z)V

    .line 173
    const/4 v5, 0x3

    goto :goto_0

    .line 177
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/open/OpenUi;->b(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 178
    if-eqz p5, :cond_1

    .line 179
    const-string v0, "10785"

    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v3}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/tencent/open/Util;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/open/OpenUi;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I

    move-result v5

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 728
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 730
    invoke-direct {p0, p2, p3}, Lcom/tencent/open/OpenUi;->a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 732
    invoke-direct {p0, p2, v0}, Lcom/tencent/open/OpenUi;->c(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 734
    const-string v0, "action_login"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 735
    new-instance v0, Lcom/tencent/open/b;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p4, v3, v2}, Lcom/tencent/open/b;-><init>(Lcom/tencent/open/OpenUi;Lcom/tencent/tauth/IUiListener;ZZ)V

    move-object p4, v0

    .line 739
    :cond_0
    :goto_0
    const-string v0, "action_challenge"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "action_brag"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 740
    :cond_1
    new-instance v0, Lcom/tencent/open/PKDialog;

    invoke-direct {v0, p1, v1, p4}, Lcom/tencent/open/PKDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V

    invoke-virtual {v0}, Lcom/tencent/open/PKDialog;->show()V

    .line 744
    :goto_1
    const/4 v0, 0x2

    return v0

    .line 736
    :cond_2
    const-string v0, "action_pay"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    new-instance v0, Lcom/tencent/open/b;

    invoke-direct {v0, p0, p4, v3, v3}, Lcom/tencent/open/b;-><init>(Lcom/tencent/open/OpenUi;Lcom/tencent/tauth/IUiListener;ZZ)V

    move-object p4, v0

    goto :goto_0

    .line 742
    :cond_3
    new-instance v0, Lcom/tencent/open/TDialog;

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-direct {v0, p1, v1, p4, v2}, Lcom/tencent/open/TDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Lcom/tencent/open/TContext;)V

    invoke-virtual {v0}, Lcom/tencent/open/TDialog;->show()V

    goto :goto_1
.end method

.method public a(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 346
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 347
    sget-object v1, Lcom/tencent/tauth/Constants;->PACKAGE_QQ:Ljava/lang/String;

    const-string v2, "com.tencent.open.agent.AgentActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 349
    if-eqz v1, :cond_0

    .line 353
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 315
    const-string v1, "tencent&sdk&qazxc***14969%%"

    .line 316
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->b()Ljava/lang/String;

    move-result-object v2

    .line 317
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v3

    .line 318
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->c()Ljava/lang/String;

    move-result-object v4

    .line 319
    const-string v5, "qzone3.4"

    .line 320
    const/4 v0, 0x0

    .line 321
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/open/Util;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 325
    :goto_0
    new-instance v0, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 326
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 327
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 328
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 329
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<!DOCTYPE HTML><html lang=\"en-US\"><head><meta charset=\"UTF-8\"><title>localStorage Test</title><script type=\"text/javascript\">document.domain = \'qq.com\';localStorage[\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v3}, Lcom/tencent/open/TContext;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v3}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"]=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\";</script></head><body></body></html>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 333
    invoke-static {}, Lcom/tencent/open/ServerSetting;->getInstance()Lcom/tencent/open/ServerSetting;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v3}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v1, v3, v4}, Lcom/tencent/open/ServerSetting;->getSettingUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 335
    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public a(IILandroid/content/Intent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 541
    const-string v0, "shareToQQ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenUi onActivityResult:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",resultCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/16 v0, 0x1618

    if-lt p1, v0, :cond_4

    const/16 v0, 0x1a00

    if-gt p1, v0, :cond_4

    .line 545
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/open/m;

    .line 546
    iget-object v2, p0, Lcom/tencent/open/OpenUi;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 547
    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/tencent/open/m;->a:Lcom/tencent/tauth/IUiListener;

    if-eqz v2, :cond_4

    .line 548
    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    .line 549
    const-string v2, "key_error_code"

    invoke-virtual {p3, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 550
    if-nez v1, :cond_2

    .line 551
    const-string v1, "key_response"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 553
    if-eqz v1, :cond_1

    .line 555
    :try_start_0
    iget-object v2, v0, Lcom/tencent/open/m;->a:Lcom/tencent/tauth/IUiListener;

    invoke-static {v1}, Lcom/tencent/open/Util;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tencent/tauth/IUiListener;->onComplete(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 579
    :goto_1
    return v0

    .line 556
    :catch_0
    move-exception v2

    .line 557
    iget-object v0, v0, Lcom/tencent/open/m;->a:Lcom/tencent/tauth/IUiListener;

    new-instance v2, Lcom/tencent/tauth/UiError;

    const/4 v3, -0x4

    const-string v4, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u6709\u8bef!"

    invoke-direct {v2, v3, v4, v1}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    goto :goto_0

    .line 562
    :cond_1
    iget-object v0, v0, Lcom/tencent/open/m;->a:Lcom/tencent/tauth/IUiListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/tauth/IUiListener;->onComplete(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 566
    :cond_2
    const-string v2, "key_error_msg"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 568
    const-string v3, "key_error_detail"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 570
    iget-object v0, v0, Lcom/tencent/open/m;->a:Lcom/tencent/tauth/IUiListener;

    new-instance v4, Lcom/tencent/tauth/UiError;

    invoke-direct {v4, v1, v2, v3}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    goto :goto_0

    .line 572
    :cond_3
    if-nez p2, :cond_0

    .line 573
    iget-object v0, v0, Lcom/tencent/open/m;->a:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 579
    goto :goto_1
.end method

.method public a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 439
    invoke-virtual {p0, p1}, Lcom/tencent/open/OpenUi;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v1

    .line 440
    if-eqz v1, :cond_0

    .line 441
    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    const-string v3, "QQ"

    iput-object v3, v2, Lcom/tencent/open/TContext;->a:Ljava/lang/String;

    .line 445
    :cond_0
    if-nez v1, :cond_1

    .line 470
    :goto_0
    return v0

    .line 453
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 454
    iget-object v3, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    if-eqz v3, :cond_2

    .line 455
    const-string v3, "client_id"

    iget-object v4, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v4}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    :cond_2
    const-string v3, "pf"

    const-string v4, "openmobile_android"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v3, "need_pay"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v3, "key_request_code"

    invoke-direct {p0}, Lcom/tencent/open/OpenUi;->b()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 460
    const-string v3, "key_action"

    const-string v4, "action_login"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    const-string v3, "key_params"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 463
    :try_start_0
    const-string v2, "key_request_code"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 464
    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 465
    new-instance v1, Lcom/tencent/open/b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, p0, p3, v3, v4}, Lcom/tencent/open/b;-><init>(Lcom/tencent/open/OpenUi;Lcom/tencent/tauth/IUiListener;ZZ)V

    .line 466
    iget-object v3, p0, Lcom/tencent/open/OpenUi;->c:Landroid/util/SparseArray;

    new-instance v4, Lcom/tencent/open/m;

    const-string v5, "action_login"

    invoke-direct {v4, p1, v5, p2, v1}, Lcom/tencent/open/m;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    const/4 v0, 0x1

    goto :goto_0

    .line 469
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public b(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;Z)V
    .locals 11

    .prologue
    .line 211
    const-string v0, "toddtest"

    const-string v1, "OpenUI getEncryToken"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 214
    sget-object v0, Lcom/tencent/tauth/Constants;->PACKAGE_AGENT:Ljava/lang/String;

    const-string v1, "com.tencent.open.agent.EncryTokenActivity"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const-string v0, "key_request_code"

    invoke-direct {p0}, Lcom/tencent/open/OpenUi;->b()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 217
    sget-object v0, Lcom/tencent/tauth/Constants;->PACKAGE_AGENT:Ljava/lang/String;

    const-string v1, "com.tencent.open.agent.AgentActivity"

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    new-instance v0, Lcom/tencent/open/a;

    iget-object v1, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v1}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v1}, Lcom/tencent/open/TContext;->c()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v1}, Lcom/tencent/open/TContext;->b()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/tencent/open/a;-><init>(Lcom/tencent/open/OpenUi;Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v1, "qzone3.4"

    .line 223
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v9}, Lcom/tencent/open/OpenUi;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    const-string v1, "qzone3.5_up"

    .line 237
    :goto_0
    const-string v2, "qzone3.5_up"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 238
    const-string v2, "toddtest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OpenUI checkToken qzone exist, version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string v1, "key_action"

    const-string v2, "action_check_token"

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string v1, "oauth_consumer_key"

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const-string v1, "openid"

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    invoke-direct {p0}, Lcom/tencent/open/OpenUi;->b()I

    move-result v1

    .line 244
    invoke-virtual {p1, v9, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 245
    iget-object v2, p0, Lcom/tencent/open/OpenUi;->c:Landroid/util/SparseArray;

    new-instance v3, Lcom/tencent/open/m;

    const-string v4, "action_check_token"

    invoke-direct {v3, p1, v4, p3, v0}, Lcom/tencent/open/m;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 312
    :goto_1
    return-void

    .line 227
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v10}, Lcom/tencent/open/OpenUi;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    const-string v1, "qzone3.4"

    goto :goto_0

    .line 233
    :cond_1
    const-string v1, "qzone3.3_below"

    goto :goto_0

    .line 252
    :cond_2
    const-string v1, "tencent&sdk&qazxc***14969%%"

    .line 253
    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->b()Ljava/lang/String;

    move-result-object v2

    .line 254
    iget-object v3, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v3}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v3

    .line 255
    iget-object v4, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v4}, Lcom/tencent/open/TContext;->c()Ljava/lang/String;

    move-result-object v4

    .line 256
    const-string v5, "qzone3.4"

    .line 257
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 259
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/open/Util;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 260
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 262
    :try_start_0
    const-string v3, "encry_token"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_2
    invoke-interface {v0, v2}, Lcom/tencent/tauth/IUiListener;->onComplete(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 263
    :catch_0
    move-exception v1

    .line 264
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 269
    :cond_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 271
    :try_start_1
    const-string v1, "encry_token"

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 275
    :goto_3
    invoke-interface {v0, v2}, Lcom/tencent/tauth/IUiListener;->onComplete(Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 272
    :catch_1
    move-exception v1

    .line 273
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3
.end method

.method public b(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 479
    const-string v2, "action_login"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 480
    invoke-virtual {p0, p1, p3, p4}, Lcom/tencent/open/OpenUi;->a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)Z

    move-result v0

    .line 518
    :goto_0
    return v0

    .line 482
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/tencent/open/OpenUi;->b(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 485
    const-string v2, "action_share_qq"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 486
    const-string v2, "scheme"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Lcom/tencent/open/OpenUi;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 498
    :goto_1
    if-eqz v2, :cond_3

    .line 499
    const-string v4, "key_action"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    const-string v4, "key_params"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 502
    :try_start_0
    const-string v3, "key_request_code"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 503
    invoke-virtual {p1, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 505
    const-string v2, "action_pay"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 506
    new-instance v2, Lcom/tencent/open/b;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, p0, p4, v4, v5}, Lcom/tencent/open/b;-><init>(Lcom/tencent/open/OpenUi;Lcom/tencent/tauth/IUiListener;ZZ)V

    move-object p4, v2

    .line 509
    :cond_1
    iget-object v2, p0, Lcom/tencent/open/OpenUi;->c:Landroid/util/SparseArray;

    new-instance v4, Lcom/tencent/open/m;

    invoke-direct {v4, p1, p2, p3, p4}, Lcom/tencent/open/m;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 512
    :catch_0
    move-exception v0

    .line 513
    const-string v2, "OpenUi"

    const-string v3, "not such activity"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 514
    goto :goto_0

    .line 495
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/tencent/open/OpenUi;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_1

    :cond_3
    move v0, v1

    .line 518
    goto :goto_0
.end method

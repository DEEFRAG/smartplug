.class public Lcom/kankunit/smartplugcronus/util/ConfigUtil;
.super Ljava/lang/Object;
.source "ConfigUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Config"

.field public static final UPDATE_APKNAME:Ljava/lang/String; = "ikonke.apk"

.field public static final UPDATE_SAVENAME:Ljava/lang/String; = "ikonke.apk"

.field public static final UPDATE_SERVER:Ljava/lang/String; = "http://app.ikonke.com/"

.field public static final UPDATE_VERJSON:Ljava/lang/String; = "ver.json"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 44
    const v2, 0x7f0c000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "verName":Ljava/lang/String;
    return-object v0
.end method

.method public static getVerCode(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const/4 v1, -0x1

    .line 22
    .local v1, "verCode":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 23
    const-string v3, "com.kankunit.smartplugcronus"

    const/4 v4, 0x0

    .line 22
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 23
    iget v1, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :goto_0
    return v1

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Config"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getVerName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const-string v1, ""

    .line 33
    .local v1, "verName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 34
    const-string v3, "com.kankunit.smartplugcronus"

    const/4 v4, 0x0

    .line 33
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 34
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-object v1

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Config"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

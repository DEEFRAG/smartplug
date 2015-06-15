.class public Lcom/kankunit/smartplugcronus/view/LoadingActivity;
.super Landroid/app/Activity;
.source "LoadingActivity.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private frameLayout:Landroid/widget/FrameLayout;

.field private hzm:Ljava/lang/String;

.field private isOpen:Z

.field private isShow:Z

.field private path:Ljava/lang/String;

.field private tg_txt:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->bitmap:Landroid/graphics/Bitmap;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->path:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->hzm:Ljava/lang/String;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/LoadingActivity;Z)V
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->isOpen:Z

    return-void
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/LoadingActivity;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->isOpen:Z

    return v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/LoadingActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->hzm:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/LoadingActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private static deleteFilesByDirectory(Ljava/io/File;)V
    .locals 4
    .param p0, "directory"    # Ljava/io/File;

    .prologue
    .line 73
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 78
    :cond_0
    return-void

    .line 74
    :cond_1
    aget-object v0, v2, v1

    .line 75
    .local v0, "item":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getImage(Ljava/lang/String;)V
    .locals 10
    .param p1, "picPath"    # Ljava/lang/String;

    .prologue
    .line 81
    move-object v4, p1

    .line 82
    .local v4, "uri":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 83
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/ikonke/temp/active_loadind"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->hzm:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 82
    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 85
    iget-boolean v6, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->isShow:Z

    if-nez v6, :cond_0

    .line 86
    new-instance v3, Landroid/content/Intent;

    .line 87
    const-class v6, Lcom/kankunit/smartplugcronus/view/LoginActivity;

    .line 86
    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v3, "mainIntent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->startActivity(Landroid/content/Intent;)V

    .line 89
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->finish()V

    .line 192
    .end local v3    # "mainIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 93
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 94
    .local v2, "fis":Ljava/io/FileInputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->bitmap:Landroid/graphics/Bitmap;

    .line 95
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    .line 96
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->frameLayout:Landroid/widget/FrameLayout;

    .line 97
    const v7, 0x7f070039

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 96
    check-cast v5, Landroid/widget/ImageView;

    .line 98
    .local v5, "view":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 105
    .end local v5    # "view":Landroid/widget/ImageView;
    :goto_1
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/kankunit/smartplugcronus/view/LoadingActivity$2;

    invoke-direct {v7, p0}, Lcom/kankunit/smartplugcronus/view/LoadingActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/LoadingActivity;)V

    .line 120
    const-wide/16 v8, 0x1388

    .line 105
    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 124
    const-string v6, "File not found!"

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 100
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 101
    invoke-direct {p0, p1}, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->getImage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 127
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :cond_2
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    .line 128
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/ikonke/temp/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 127
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->deleteFilesByDirectory(Ljava/io/File;)V

    .line 129
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/kankunit/smartplugcronus/view/LoadingActivity$3;

    invoke-direct {v7, p0, v4}, Lcom/kankunit/smartplugcronus/view/LoadingActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/LoadingActivity;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 185
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 186
    new-instance v3, Landroid/content/Intent;

    .line 188
    const-class v6, Lcom/kankunit/smartplugcronus/view/LoginActivity;

    .line 186
    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    .restart local v3    # "mainIntent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->startActivity(Landroid/content/Intent;)V

    .line 190
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->finish()V

    goto/16 :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 64
    const v0, 0x7f0702fb

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->frameLayout:Landroid/widget/FrameLayout;

    .line 65
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->path:Ljava/lang/String;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->path:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->hzm:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->path:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->getImage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->isOpen:Z

    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 43
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 44
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->path:Ljava/lang/String;

    .line 45
    const-string v1, "isShow"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->isShow:Z

    .line 46
    const v1, 0x7f0300b0

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->setContentView(I)V

    .line 47
    const v1, 0x7f0702fa

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->tg_txt:Landroid/widget/TextView;

    .line 48
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->tg_txt:Landroid/widget/TextView;

    new-instance v2, Lcom/kankunit/smartplugcronus/view/LoadingActivity$1;

    invoke-direct {v2, p0}, Lcom/kankunit/smartplugcronus/view/LoadingActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/LoadingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->init()V

    .line 60
    return-void
.end method

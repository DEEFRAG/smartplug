.class public Lcom/kankunit/smartplugcronus/service/UpdateService;
.super Landroid/app/Service;
.source "UpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/service/UpdateService$updateRunnable;
    }
.end annotation


# static fields
.field private static final DOWNLOAD_COMPLETE:I = 0x0

.field private static final DOWNLOAD_FAIL:I = 0x1

.field public static localVersion:I

.field public static final saveFileName:Ljava/lang/String;

.field public static final savePath:Ljava/lang/String;

.field public static serverVersion:I


# instance fields
.field contentView:Landroid/widget/RemoteViews;

.field currentSize:I

.field downloadCount:I

.field private titleId:I

.field totalSize:J

.field private updateDir:Ljava/io/File;

.field private updateFile:Ljava/io/File;

.field private updateHandler:Landroid/os/Handler;

.field private updateIntent:Landroid/content/Intent;

.field private updateNotification:Landroid/app/Notification;

.field private updateNotificationManager:Landroid/app/NotificationManager;

.field private updatePendingIntent:Landroid/app/PendingIntent;

.field updateTotalSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 27
    sput v0, Lcom/kankunit/smartplugcronus/service/UpdateService;->localVersion:I

    .line 28
    sput v0, Lcom/kankunit/smartplugcronus/service/UpdateService;->serverVersion:I

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ikonke/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kankunit/smartplugcronus/service/UpdateService;->savePath:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/kankunit/smartplugcronus/service/UpdateService;->savePath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ikonke.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kankunit/smartplugcronus/service/UpdateService;->saveFileName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 33
    iput v2, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->titleId:I

    .line 36
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updateDir:Ljava/io/File;

    .line 37
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updateFile:Ljava/io/File;

    .line 42
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updateNotificationManager:Landroid/app/NotificationManager;

    .line 43
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updateNotification:Landroid/app/Notification;

    .line 45
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updateIntent:Landroid/content/Intent;

    .line 46
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updatePendingIntent:Landroid/app/PendingIntent;

    .line 52
    iput v2, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->downloadCount:I

    .line 53
    iput v2, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->currentSize:I

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->totalSize:J

    .line 55
    iput v2, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updateTotalSize:I

    .line 99
    new-instance v0, Lcom/kankunit/smartplugcronus/service/UpdateService$1;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/service/UpdateService$1;-><init>(Lcom/kankunit/smartplugcronus/service/UpdateService;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updateHandler:Landroid/os/Handler;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/service/UpdateService;)Ljava/io/File;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updateFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/service/UpdateService;Landroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updatePendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/service/UpdateService;)Landroid/app/Notification;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updateNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/service/UpdateService;)Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updatePendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/service/UpdateService;)Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updateNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/service/UpdateService;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updateIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/service/UpdateService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/service/UpdateService;)Ljava/io/File;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updateDir:Ljava/io/File;

    return-object v0
.end method

.method private doUpdate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 59
    const-string v0, "mounted"

    .line 60
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 62
    sget-object v2, Lcom/kankunit/smartplugcronus/service/UpdateService;->saveFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updateDir:Ljava/io/File;

    .line 63
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updateDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ikonke_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->titleId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updateFile:Ljava/io/File;

    .line 66
    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/service/UpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updateNotificationManager:Landroid/app/NotificationManager;

    .line 67
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updateNotification:Landroid/app/Notification;

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updateIntent:Landroid/content/Intent;

    .line 71
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updateIntent:Landroid/content/Intent;

    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updateIntent:Landroid/content/Intent;

    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updatePendingIntent:Landroid/app/PendingIntent;

    .line 75
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updateNotification:Landroid/app/Notification;

    const v1, 0x7f020206

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 76
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updateNotification:Landroid/app/Notification;

    const-string v1, "Start the download"

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 77
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updateNotification:Landroid/app/Notification;

    const-string v1, "Small K Smart"

    const-string v2, "0%"

    .line 78
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updatePendingIntent:Landroid/app/PendingIntent;

    .line 77
    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 80
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updateNotificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updateNotification:Landroid/app/Notification;

    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 83
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kankunit/smartplugcronus/service/UpdateService$updateRunnable;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/service/UpdateService$updateRunnable;-><init>(Lcom/kankunit/smartplugcronus/service/UpdateService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 84
    return-void
.end method


# virtual methods
.method public downloadUpdateFile(Ljava/lang/String;Ljava/io/File;)J
    .locals 14
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .param p2, "saveFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 139
    const/4 v4, 0x0

    .line 140
    .local v4, "httpConnection":Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    .line 141
    .local v5, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 144
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 145
    .local v8, "url":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 147
    const-string v9, "User-Agent"

    const-string v10, "PacificHttpClient"

    invoke-virtual {v4, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget v9, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->currentSize:I

    if-lez v9, :cond_0

    .line 149
    const-string v9, "RANGE"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "bytes="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    iget v11, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->currentSize:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 149
    invoke-virtual {v4, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_0
    const/16 v9, 0x2710

    invoke-virtual {v4, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 153
    const/16 v9, 0x4e20

    invoke-virtual {v4, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 154
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v9

    iput v9, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updateTotalSize:I

    .line 155
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    const/16 v10, 0x194

    if-ne v9, v10, :cond_4

    .line 156
    new-instance v9, Ljava/lang/Exception;

    const-string v10, "fail!"

    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    .end local v8    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v9

    .line 191
    :goto_0
    if-eqz v4, :cond_1

    .line 192
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 194
    :cond_1
    if-eqz v5, :cond_2

    .line 195
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 197
    :cond_2
    if-eqz v2, :cond_3

    .line 198
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 200
    :cond_3
    throw v9

    .line 158
    .restart local v8    # "url":Ljava/net/URL;
    :cond_4
    :try_start_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 159
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-direct {v3, v0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/16 v9, 0x1000

    :try_start_2
    new-array v1, v9, [B

    .line 161
    .local v1, "buffer":[B
    const/4 v7, 0x0

    .line 162
    .local v7, "readsize":I
    :cond_5
    :goto_1
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v7

    if-gtz v7, :cond_9

    .line 191
    if-eqz v4, :cond_6

    .line 192
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 194
    :cond_6
    if-eqz v5, :cond_7

    .line 195
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 197
    :cond_7
    if-eqz v3, :cond_8

    .line 198
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 201
    :cond_8
    iget-wide v9, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->totalSize:J

    return-wide v9

    .line 163
    :cond_9
    const/4 v9, 0x0

    :try_start_3
    invoke-virtual {v3, v1, v9, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 164
    iget-wide v9, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->totalSize:J

    int-to-long v11, v7

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->totalSize:J

    .line 166
    iget v9, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->downloadCount:I

    if-eqz v9, :cond_a

    .line 167
    iget-wide v9, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->totalSize:J

    const-wide/16 v11, 0x64

    mul-long/2addr v9, v11

    iget v11, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updateTotalSize:I

    int-to-long v11, v11

    div-long/2addr v9, v11

    long-to-int v9, v9

    add-int/lit8 v9, v9, -0xa

    iget v10, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->downloadCount:I

    if-le v9, v10, :cond_5

    .line 168
    :cond_a
    iget v9, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->downloadCount:I

    add-int/lit8 v9, v9, 0xa

    iput v9, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->downloadCount:I

    .line 170
    iget-wide v9, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->totalSize:J

    long-to-int v9, v9

    mul-int/lit8 v9, v9, 0x64

    iget v10, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updateTotalSize:I

    div-int v6, v9, v10

    .line 171
    .local v6, "length":I
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updateNotification:Landroid/app/Notification;

    .line 172
    const-string v10, "Small K smart downloading"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    const-string v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updatePendingIntent:Landroid/app/PendingIntent;

    .line 171
    invoke-virtual {v9, p0, v10, v11, v12}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 179
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updateNotification:Landroid/app/Notification;

    new-instance v10, Landroid/widget/RemoteViews;

    .line 180
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/service/UpdateService;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f0300ae

    invoke-direct {v10, v11, v12}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 179
    iput-object v10, v9, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 181
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updateNotification:Landroid/app/Notification;

    iget-object v9, v9, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 182
    const v10, 0x7f0702f5

    const-string v11, "Small K smart downloading"

    .line 181
    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 183
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updateNotification:Landroid/app/Notification;

    iget-object v9, v9, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v10, 0x7f0702f5

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/service/UpdateService;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090011

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 184
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updateNotification:Landroid/app/Notification;

    iget-object v9, v9, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 185
    const v10, 0x7f0702f7

    const/16 v11, 0x64

    iget v12, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->downloadCount:I

    const/4 v13, 0x0

    .line 184
    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 187
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updateNotificationManager:Landroid/app/NotificationManager;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->updateNotification:Landroid/app/Notification;

    invoke-virtual {v9, v10, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_1

    .line 190
    .end local v1    # "buffer":[B
    .end local v6    # "length":I
    .end local v7    # "readsize":I
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 88
    const-string v0, "titleId"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateService;->titleId:I

    .line 89
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/service/UpdateService;->doUpdate()V

    .line 90
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

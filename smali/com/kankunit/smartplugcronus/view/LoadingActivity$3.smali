.class Lcom/kankunit/smartplugcronus/view/LoadingActivity$3;
.super Ljava/lang/Object;
.source "LoadingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/LoadingActivity;->getImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/LoadingActivity;

.field private final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/LoadingActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/LoadingActivity;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity$3;->val$uri:Ljava/lang/String;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 132
    const/4 v9, 0x0

    .line 134
    .local v9, "url":Ljava/net/URL;
    :try_start_0
    new-instance v10, Ljava/net/URL;

    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity$3;->val$uri:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v9    # "url":Ljava/net/URL;
    .local v10, "url":Ljava/net/URL;
    move-object v9, v10

    .line 139
    .end local v10    # "url":Ljava/net/URL;
    .restart local v9    # "url":Ljava/net/URL;
    :goto_0
    const/4 v3, 0x0

    .line 140
    .local v3, "conn":Ljava/net/HttpURLConnection;
    const/4 v8, 0x0

    .line 141
    .local v8, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 142
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 143
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 144
    new-instance v1, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    .line 145
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    const-string v12, "/ikonke/temp/active_loadind"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/LoadingActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/LoadingActivity;->hzm:Ljava/lang/String;
    invoke-static {v12}, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->access$2(Lcom/kankunit/smartplugcronus/view/LoadingActivity;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 144
    invoke-direct {v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .local v1, "bufFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 148
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 149
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v11

    if-nez v11, :cond_1

    .line 151
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 158
    :cond_1
    :goto_1
    :try_start_3
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 159
    .local v7, "fos":Ljava/io/FileOutputStream;
    const/16 v11, 0x400

    new-array v2, v11, [B

    .line 160
    .local v2, "buffer":[B
    const/4 v4, 0x0

    .line 161
    .local v4, "count":I
    :goto_2
    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_3

    .line 165
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 166
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 167
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 168
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 169
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 170
    .local v6, "fis":Ljava/io/FileInputStream;
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/LoadingActivity;

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->access$3(Lcom/kankunit/smartplugcronus/view/LoadingActivity;Landroid/graphics/Bitmap;)V

    .line 171
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 184
    .end local v1    # "bufFile":Ljava/io/File;
    .end local v2    # "buffer":[B
    .end local v4    # "count":I
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :goto_3
    return-void

    .line 135
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v8    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v5

    .line 136
    .local v5, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v5}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto/16 :goto_0

    .line 152
    .end local v5    # "e":Ljava/net/MalformedURLException;
    .restart local v1    # "bufFile":Ljava/io/File;
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local v8    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v5

    .line 154
    .local v5, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 180
    .end local v1    # "bufFile":Ljava/io/File;
    .end local v5    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 182
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 162
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v1    # "bufFile":Ljava/io/File;
    .restart local v2    # "buffer":[B
    .restart local v4    # "count":I
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    :try_start_5
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "ffd "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 163
    const/4 v11, 0x0

    invoke-virtual {v7, v2, v11, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 172
    .end local v2    # "buffer":[B
    .end local v4    # "count":I
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v5

    .line 174
    .local v5, "e":Ljava/io/FileNotFoundException;
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 175
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v5

    .line 176
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 177
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 178
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3
.end method

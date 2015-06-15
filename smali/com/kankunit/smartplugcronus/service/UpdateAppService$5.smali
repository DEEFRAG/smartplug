.class Lcom/kankunit/smartplugcronus/service/UpdateAppService$5;
.super Ljava/lang/Thread;
.source "UpdateAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/service/UpdateAppService;->downFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/service/UpdateAppService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$5;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$5;->val$url:Ljava/lang/String;

    .line 235
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 237
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 238
    .local v4, "client":Lorg/apache/http/client/HttpClient;
    new-instance v11, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$5;->val$url:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 241
    .local v11, "get":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-interface {v4, v11}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v18

    .line 242
    .local v18, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 243
    .local v8, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v14

    .line 244
    .local v14, "length":J
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v12

    .line 245
    .local v12, "is":Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 246
    .local v10, "fileOutputStream":Ljava/io/FileOutputStream;
    if-eqz v12, :cond_0

    .line 248
    new-instance v9, Ljava/io/File;

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$5;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->path:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 251
    const-string v20, "ikonke.apk"

    .line 248
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v9, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .local v9, "file":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$5;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    move-object/from16 v19, v0

    const-string v20, "ikonke.apk"

    const/16 v21, 0x3

    invoke-virtual/range {v19 .. v21}, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v10

    .line 255
    const/16 v19, 0x1000

    move/from16 v0, v19

    new-array v2, v0, [B

    .line 256
    .local v2, "buf":[B
    const/4 v3, -0x1

    .line 257
    .local v3, "ch":I
    const-wide/16 v5, 0x0

    .line 258
    .local v5, "count":J
    const/4 v13, 0x0

    .line 259
    .local v13, "last":I
    :goto_0
    invoke-virtual {v12, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v3, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$5;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    move-object/from16 v19, v0

    # getter for: Lcom/kankunit/smartplugcronus/service/UpdateAppService;->isDown:Z
    invoke-static/range {v19 .. v19}, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->access$6(Lcom/kankunit/smartplugcronus/service/UpdateAppService;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 275
    .end local v2    # "buf":[B
    .end local v3    # "ch":I
    .end local v5    # "count":J
    .end local v9    # "file":Ljava/io/File;
    .end local v13    # "last":I
    :cond_0
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    .line 276
    if-eqz v10, :cond_1

    .line 277
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 279
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$5;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    move-object/from16 v19, v0

    # getter for: Lcom/kankunit/smartplugcronus/service/UpdateAppService;->isDown:Z
    invoke-static/range {v19 .. v19}, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->access$6(Lcom/kankunit/smartplugcronus/service/UpdateAppService;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$5;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->down()V

    .line 293
    .end local v8    # "entity":Lorg/apache/http/HttpEntity;
    .end local v10    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v12    # "is":Ljava/io/InputStream;
    .end local v14    # "length":J
    .end local v18    # "response":Lorg/apache/http/HttpResponse;
    :cond_2
    :goto_1
    return-void

    .line 260
    .restart local v2    # "buf":[B
    .restart local v3    # "ch":I
    .restart local v5    # "count":J
    .restart local v8    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v10    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v12    # "is":Ljava/io/InputStream;
    .restart local v13    # "last":I
    .restart local v14    # "length":J
    .restart local v18    # "response":Lorg/apache/http/HttpResponse;
    :cond_3
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v10, v2, v0, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 261
    int-to-long v0, v3

    move-wide/from16 v19, v0

    add-long v5, v5, v19

    .line 262
    const-wide/16 v19, 0x64

    mul-long v19, v19, v5

    div-long v19, v19, v14

    move-wide/from16 v0, v19

    long-to-int v13, v0

    .line 265
    new-instance v17, Landroid/os/Message;

    invoke-direct/range {v17 .. v17}, Landroid/os/Message;-><init>()V

    .line 266
    .local v17, "msg1":Landroid/os/Message;
    const-string v19, "setProgress"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 267
    move-object/from16 v0, v17

    iput v13, v0, Landroid/os/Message;->what:I

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$5;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    move-object/from16 v19, v0

    # getter for: Lcom/kankunit/smartplugcronus/service/UpdateAppService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v19 .. v19}, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->access$1(Lcom/kankunit/smartplugcronus/service/UpdateAppService;)Landroid/os/Handler;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 282
    .end local v2    # "buf":[B
    .end local v3    # "ch":I
    .end local v5    # "count":J
    .end local v8    # "entity":Lorg/apache/http/HttpEntity;
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v12    # "is":Ljava/io/InputStream;
    .end local v13    # "last":I
    .end local v14    # "length":J
    .end local v17    # "msg1":Landroid/os/Message;
    .end local v18    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v7

    .line 283
    .local v7, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v7}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 284
    new-instance v16, Landroid/os/Message;

    invoke-direct/range {v16 .. v16}, Landroid/os/Message;-><init>()V

    .line 285
    .local v16, "msg":Landroid/os/Message;
    const-string v19, "down error"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$5;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    move-object/from16 v19, v0

    # getter for: Lcom/kankunit/smartplugcronus/service/UpdateAppService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v19 .. v19}, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->access$1(Lcom/kankunit/smartplugcronus/service/UpdateAppService;)Landroid/os/Handler;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 287
    .end local v7    # "e":Lorg/apache/http/client/ClientProtocolException;
    .end local v16    # "msg":Landroid/os/Message;
    :catch_1
    move-exception v7

    .line 288
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 289
    new-instance v16, Landroid/os/Message;

    invoke-direct/range {v16 .. v16}, Landroid/os/Message;-><init>()V

    .line 290
    .restart local v16    # "msg":Landroid/os/Message;
    const-string v19, "down error"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$5;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    move-object/from16 v19, v0

    # getter for: Lcom/kankunit/smartplugcronus/service/UpdateAppService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v19 .. v19}, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->access$1(Lcom/kankunit/smartplugcronus/service/UpdateAppService;)Landroid/os/Handler;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

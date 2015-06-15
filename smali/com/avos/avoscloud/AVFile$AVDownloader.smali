.class Lcom/avos/avoscloud/AVFile$AVDownloader;
.super Landroid/os/AsyncTask;
.source "AVFile.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AVDownloader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/avos/avoscloud/AVException;",
        ">;"
    }
.end annotation


# instance fields
.field private final dataCallback:Lcom/avos/avoscloud/GetDataCallback;

.field private etag:Ljava/lang/String;

.field private final parseFile:Lcom/avos/avoscloud/AVFile;

.field private final progressCallback:Lcom/avos/avoscloud/ProgressCallback;

.field final synthetic this$0:Lcom/avos/avoscloud/AVFile;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/ProgressCallback;Lcom/avos/avoscloud/GetDataCallback;)V
    .locals 0
    .param p2, "parseFile"    # Lcom/avos/avoscloud/AVFile;
    .param p3, "progressCallback"    # Lcom/avos/avoscloud/ProgressCallback;
    .param p4, "dataCallback"    # Lcom/avos/avoscloud/GetDataCallback;

    .prologue
    .line 798
    iput-object p1, p0, Lcom/avos/avoscloud/AVFile$AVDownloader;->this$0:Lcom/avos/avoscloud/AVFile;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 799
    iput-object p2, p0, Lcom/avos/avoscloud/AVFile$AVDownloader;->parseFile:Lcom/avos/avoscloud/AVFile;

    .line 800
    iput-object p4, p0, Lcom/avos/avoscloud/AVFile$AVDownloader;->dataCallback:Lcom/avos/avoscloud/GetDataCallback;

    .line 801
    iput-object p3, p0, Lcom/avos/avoscloud/AVFile$AVDownloader;->progressCallback:Lcom/avos/avoscloud/ProgressCallback;

    .line 802
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/avos/avoscloud/AVException;
    .locals 1
    .param p1, "sUrl"    # [Ljava/lang/String;

    .prologue
    .line 897
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVFile$AVDownloader;->doWork(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 791
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVFile$AVDownloader;->doInBackground([Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    return-object v0
.end method

.method protected doWork(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;
    .locals 24
    .param p1, "urlStr"    # Ljava/lang/String;

    .prologue
    .line 805
    const/4 v10, 0x0

    .line 806
    .local v10, "input":Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 807
    .local v12, "memOutput":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 810
    .local v4, "connection":Ljava/net/URLConnection;
    :try_start_0
    new-instance v17, Ljava/net/URL;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 811
    .local v17, "url":Ljava/net/URL;
    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 812
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->getNetworkTimeout()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 813
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->getNetworkTimeout()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/avos/avoscloud/AVFile$AVDownloader;->this$0:Lcom/avos/avoscloud/AVFile;

    move-object/from16 v18, v0

    # invokes: Lcom/avos/avoscloud/AVFile;->fetchCacheTag()Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/avos/avoscloud/AVFile;->access$100(Lcom/avos/avoscloud/AVFile;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/avos/avoscloud/AVFile$AVDownloader;->etag:Ljava/lang/String;

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/avos/avoscloud/AVFile$AVDownloader;->etag:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 816
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 817
    const-string v18, "add etag in file download request"

    invoke-static/range {v18 .. v18}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 819
    :cond_0
    const-string v18, "If-None-Match"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/avos/avoscloud/AVFile$AVDownloader;->etag:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    :cond_1
    invoke-virtual {v4}, Ljava/net/URLConnection;->connect()V

    .line 824
    invoke-virtual {v4}, Ljava/net/URLConnection;->getContentLength()I

    move-result v8

    .line 825
    .local v8, "fileLength":I
    const/16 v14, 0xc8

    .line 827
    .local v14, "statusCode":I
    instance-of v0, v4, Ljava/net/HttpURLConnection;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 828
    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 829
    .local v3, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    .line 830
    const/16 v18, 0x130

    move/from16 v0, v18

    if-ne v14, v0, :cond_4

    .line 831
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 832
    const-string v18, "read file cache into memory"

    invoke-static/range {v18 .. v18}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 834
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/avos/avoscloud/AVFile$AVDownloader;->this$0:Lcom/avos/avoscloud/AVFile;

    move-object/from16 v18, v0

    # invokes: Lcom/avos/avoscloud/AVFile;->fetchCacheData()[B
    invoke-static/range {v18 .. v18}, Lcom/avos/avoscloud/AVFile;->access$200(Lcom/avos/avoscloud/AVFile;)[B

    move-result-object v2

    .line 835
    .local v2, "cacheData":[B
    if-eqz v2, :cond_3

    array-length v0, v2

    move/from16 v18, v0

    if-lez v18, :cond_3

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/avos/avoscloud/AVFile$AVDownloader;->parseFile:Lcom/avos/avoscloud/AVFile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # setter for: Lcom/avos/avoscloud/AVFile;->data:[B
    invoke-static {v0, v2}, Lcom/avos/avoscloud/AVFile;->access$302(Lcom/avos/avoscloud/AVFile;[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 837
    const/16 v18, 0x0

    .line 878
    invoke-static {v12}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 879
    invoke-static {v10}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 892
    .end local v2    # "cacheData":[B
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v8    # "fileLength":I
    .end local v14    # "statusCode":I
    .end local v17    # "url":Ljava/net/URL;
    :goto_0
    return-object v18

    .line 842
    .restart local v2    # "cacheData":[B
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local v8    # "fileLength":I
    .restart local v14    # "statusCode":I
    .restart local v17    # "url":Ljava/net/URL;
    :cond_3
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 843
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->getNetworkTimeout()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 844
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->getNetworkTimeout()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 846
    invoke-virtual {v4}, Ljava/net/URLConnection;->connect()V

    .line 847
    invoke-virtual {v4}, Ljava/net/URLConnection;->getContentLength()I

    move-result v8

    .line 853
    .end local v2    # "cacheData":[B
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    :cond_4
    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 854
    .end local v10    # "input":Ljava/io/InputStream;
    .local v11, "input":Ljava/io/InputStream;
    :try_start_2
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "localPath:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/avos/avoscloud/AVFile$AVDownloader;->this$0:Lcom/avos/avoscloud/AVFile;

    move-object/from16 v19, v0

    # invokes: Lcom/avos/avoscloud/AVFile;->localPath()Ljava/io/File;
    invoke-static/range {v19 .. v19}, Lcom/avos/avoscloud/AVFile;->access$400(Lcom/avos/avoscloud/AVFile;)Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    .line 855
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 857
    .end local v12    # "memOutput":Ljava/io/ByteArrayOutputStream;
    .local v13, "memOutput":Ljava/io/ByteArrayOutputStream;
    const/16 v18, 0x2000

    :try_start_3
    move/from16 v0, v18

    new-array v6, v0, [B

    .line 858
    .local v6, "data":[B
    const-wide/16 v15, 0x0

    .line 860
    .local v15, "total":J
    :goto_1
    invoke-virtual {v11, v6}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "count":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v5, v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/avos/avoscloud/AVFile$AVDownloader;->isCancelled()Z

    move-result v18

    if-nez v18, :cond_5

    .line 861
    int-to-long v0, v5

    move-wide/from16 v18, v0

    add-long v15, v15, v18

    .line 863
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-wide/16 v20, 0x64

    mul-long v20, v20, v15

    int-to-long v0, v8

    move-wide/from16 v22, v0

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVFile$AVDownloader;->publishProgress([Ljava/lang/Object;)V

    .line 864
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v6, v0, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    .line 875
    .end local v5    # "count":I
    .end local v6    # "data":[B
    .end local v15    # "total":J
    :catch_0
    move-exception v7

    move-object v12, v13

    .end local v13    # "memOutput":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "memOutput":Ljava/io/ByteArrayOutputStream;
    move-object v10, v11

    .line 876
    .end local v8    # "fileLength":I
    .end local v11    # "input":Ljava/io/InputStream;
    .end local v14    # "statusCode":I
    .end local v17    # "url":Ljava/net/URL;
    .local v7, "e":Ljava/lang/Exception;
    .restart local v10    # "input":Ljava/io/InputStream;
    :goto_2
    :try_start_4
    new-instance v18, Lcom/avos/avoscloud/AVException;

    invoke-virtual {v7}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 878
    invoke-static {v12}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 879
    invoke-static {v10}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 866
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v10    # "input":Ljava/io/InputStream;
    .end local v12    # "memOutput":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "count":I
    .restart local v6    # "data":[B
    .restart local v8    # "fileLength":I
    .restart local v11    # "input":Ljava/io/InputStream;
    .restart local v13    # "memOutput":Ljava/io/ByteArrayOutputStream;
    .restart local v14    # "statusCode":I
    .restart local v15    # "total":J
    .restart local v17    # "url":Ljava/net/URL;
    :cond_5
    :try_start_5
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 868
    const-string v18, "ETAG"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_6

    const-string v18, "etag"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    :goto_3
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/avos/avoscloud/AVFile$AVDownloader;->etag:Ljava/lang/String;

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/avos/avoscloud/AVFile$AVDownloader;->parseFile:Lcom/avos/avoscloud/AVFile;

    move-object/from16 v18, v0

    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v19

    # setter for: Lcom/avos/avoscloud/AVFile;->data:[B
    invoke-static/range {v18 .. v19}, Lcom/avos/avoscloud/AVFile;->access$302(Lcom/avos/avoscloud/AVFile;[B)[B

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/avos/avoscloud/AVFile$AVDownloader;->parseFile:Lcom/avos/avoscloud/AVFile;

    move-object/from16 v18, v0

    # getter for: Lcom/avos/avoscloud/AVFile;->data:[B
    invoke-static/range {v18 .. v18}, Lcom/avos/avoscloud/AVFile;->access$300(Lcom/avos/avoscloud/AVFile;)[B

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/avos/avoscloud/AVUtils;->computeMD5([B)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v9

    .line 878
    .local v9, "fileMd5":Ljava/lang/String;
    invoke-static {v13}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 879
    invoke-static {v11}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/avos/avoscloud/AVFile$AVDownloader;->parseFile:Lcom/avos/avoscloud/AVFile;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/avos/avoscloud/AVFile;->getMetaData()Ljava/util/HashMap;

    move-result-object v18

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/avos/avoscloud/AVFile$AVDownloader;->parseFile:Lcom/avos/avoscloud/AVFile;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/avos/avoscloud/AVFile;->getMetaData()Ljava/util/HashMap;

    move-result-object v18

    const-string v19, "_checksum"

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/avos/avoscloud/AVFile$AVDownloader;->parseFile:Lcom/avos/avoscloud/AVFile;

    move-object/from16 v18, v0

    # getter for: Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lcom/avos/avoscloud/AVFile;->access$500(Lcom/avos/avoscloud/AVFile;)Ljava/util/HashMap;

    move-result-object v18

    const-string v19, "_checksum"

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/avos/avoscloud/AVFile$AVDownloader;->parseFile:Lcom/avos/avoscloud/AVFile;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    # setter for: Lcom/avos/avoscloud/AVFile;->data:[B
    invoke-static/range {v18 .. v19}, Lcom/avos/avoscloud/AVFile;->access$302(Lcom/avos/avoscloud/AVFile;[B)[B

    .line 884
    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->fileDownloadInConsistentFailureException()Lcom/avos/avoscloud/AVException;

    move-result-object v18

    move-object v12, v13

    .end local v13    # "memOutput":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "memOutput":Ljava/io/ByteArrayOutputStream;
    move-object v10, v11

    .end local v11    # "input":Ljava/io/InputStream;
    .restart local v10    # "input":Ljava/io/InputStream;
    goto/16 :goto_0

    .line 868
    .end local v9    # "fileMd5":Ljava/lang/String;
    .end local v10    # "input":Ljava/io/InputStream;
    .end local v12    # "memOutput":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "input":Ljava/io/InputStream;
    .restart local v13    # "memOutput":Ljava/io/ByteArrayOutputStream;
    :cond_6
    :try_start_6
    const-string v18, "ETAG"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v18

    goto :goto_3

    .line 878
    .end local v5    # "count":I
    .end local v6    # "data":[B
    .end local v8    # "fileLength":I
    .end local v11    # "input":Ljava/io/InputStream;
    .end local v13    # "memOutput":Ljava/io/ByteArrayOutputStream;
    .end local v14    # "statusCode":I
    .end local v15    # "total":J
    .end local v17    # "url":Ljava/net/URL;
    .restart local v10    # "input":Ljava/io/InputStream;
    .restart local v12    # "memOutput":Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v18

    :goto_4
    invoke-static {v12}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 879
    invoke-static {v10}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v18

    .line 886
    .end local v10    # "input":Ljava/io/InputStream;
    .end local v12    # "memOutput":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "count":I
    .restart local v6    # "data":[B
    .restart local v8    # "fileLength":I
    .restart local v9    # "fileMd5":Ljava/lang/String;
    .restart local v11    # "input":Ljava/io/InputStream;
    .restart local v13    # "memOutput":Ljava/io/ByteArrayOutputStream;
    .restart local v14    # "statusCode":I
    .restart local v15    # "total":J
    .restart local v17    # "url":Ljava/net/URL;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/avos/avoscloud/AVFile$AVDownloader;->parseFile:Lcom/avos/avoscloud/AVFile;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/avos/avoscloud/AVFile;->getMetaData()Ljava/util/HashMap;

    move-result-object v18

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/avos/avoscloud/AVFile$AVDownloader;->parseFile:Lcom/avos/avoscloud/AVFile;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/avos/avoscloud/AVFile;->getMetaData()Ljava/util/HashMap;

    move-result-object v18

    const-string v19, "_checksum"

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/avos/avoscloud/AVFile$AVDownloader;->parseFile:Lcom/avos/avoscloud/AVFile;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/avos/avoscloud/AVFile;->getMetaData()Ljava/util/HashMap;

    move-result-object v18

    const-string v19, "_checksum"

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/avos/avoscloud/AVFile$AVDownloader;->parseFile:Lcom/avos/avoscloud/AVFile;

    move-object/from16 v18, v0

    # getter for: Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lcom/avos/avoscloud/AVFile;->access$500(Lcom/avos/avoscloud/AVFile;)Ljava/util/HashMap;

    move-result-object v18

    const-string v19, "_checksum"

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/avos/avoscloud/AVFile$AVDownloader;->etag:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_9

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/avos/avoscloud/AVFile$AVDownloader;->this$0:Lcom/avos/avoscloud/AVFile;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/avos/avoscloud/AVFile$AVDownloader;->this$0:Lcom/avos/avoscloud/AVFile;

    move-object/from16 v19, v0

    # getter for: Lcom/avos/avoscloud/AVFile;->data:[B
    invoke-static/range {v19 .. v19}, Lcom/avos/avoscloud/AVFile;->access$300(Lcom/avos/avoscloud/AVFile;)[B

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/avos/avoscloud/AVFile$AVDownloader;->etag:Ljava/lang/String;

    move-object/from16 v20, v0

    # invokes: Lcom/avos/avoscloud/AVFile;->cacheFile([BLjava/lang/String;)V
    invoke-static/range {v18 .. v20}, Lcom/avos/avoscloud/AVFile;->access$600(Lcom/avos/avoscloud/AVFile;[BLjava/lang/String;)V

    .line 892
    :cond_9
    const/16 v18, 0x0

    move-object v12, v13

    .end local v13    # "memOutput":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "memOutput":Ljava/io/ByteArrayOutputStream;
    move-object v10, v11

    .end local v11    # "input":Ljava/io/InputStream;
    .restart local v10    # "input":Ljava/io/InputStream;
    goto/16 :goto_0

    .line 878
    .end local v5    # "count":I
    .end local v6    # "data":[B
    .end local v9    # "fileMd5":Ljava/lang/String;
    .end local v10    # "input":Ljava/io/InputStream;
    .end local v15    # "total":J
    .restart local v11    # "input":Ljava/io/InputStream;
    :catchall_1
    move-exception v18

    move-object v10, v11

    .end local v11    # "input":Ljava/io/InputStream;
    .restart local v10    # "input":Ljava/io/InputStream;
    goto :goto_4

    .end local v10    # "input":Ljava/io/InputStream;
    .end local v12    # "memOutput":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "input":Ljava/io/InputStream;
    .restart local v13    # "memOutput":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v18

    move-object v12, v13

    .end local v13    # "memOutput":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "memOutput":Ljava/io/ByteArrayOutputStream;
    move-object v10, v11

    .end local v11    # "input":Ljava/io/InputStream;
    .restart local v10    # "input":Ljava/io/InputStream;
    goto :goto_4

    .line 875
    .end local v8    # "fileLength":I
    .end local v14    # "statusCode":I
    .end local v17    # "url":Ljava/net/URL;
    :catch_1
    move-exception v7

    goto/16 :goto_2

    .end local v10    # "input":Ljava/io/InputStream;
    .restart local v8    # "fileLength":I
    .restart local v11    # "input":Ljava/io/InputStream;
    .restart local v14    # "statusCode":I
    .restart local v17    # "url":Ljava/net/URL;
    :catch_2
    move-exception v7

    move-object v10, v11

    .end local v11    # "input":Ljava/io/InputStream;
    .restart local v10    # "input":Ljava/io/InputStream;
    goto/16 :goto_2
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    .line 921
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download cancel, file downloaded length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVFile$AVDownloader;->this$0:Lcom/avos/avoscloud/AVFile;

    # invokes: Lcom/avos/avoscloud/AVFile;->localPath()Ljava/io/File;
    invoke-static {v1}, Lcom/avos/avoscloud/AVFile;->access$400(Lcom/avos/avoscloud/AVFile;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    .line 924
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile$AVDownloader;->this$0:Lcom/avos/avoscloud/AVFile;

    # invokes: Lcom/avos/avoscloud/AVFile;->localPath()Ljava/io/File;
    invoke-static {v0}, Lcom/avos/avoscloud/AVFile;->access$400(Lcom/avos/avoscloud/AVFile;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 925
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile$AVDownloader;->parseFile:Lcom/avos/avoscloud/AVFile;

    const/4 v1, 0x0

    # setter for: Lcom/avos/avoscloud/AVFile;->data:[B
    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVFile;->access$302(Lcom/avos/avoscloud/AVFile;[B)[B

    .line 926
    return-void
.end method

.method protected onPostExecute(Lcom/avos/avoscloud/AVException;)V
    .locals 2
    .param p1, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 909
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 911
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile$AVDownloader;->dataCallback:Lcom/avos/avoscloud/GetDataCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVFile$AVDownloader;->dataCallback:Lcom/avos/avoscloud/GetDataCallback;

    iget-object v1, p0, Lcom/avos/avoscloud/AVFile$AVDownloader;->parseFile:Lcom/avos/avoscloud/AVFile;

    # getter for: Lcom/avos/avoscloud/AVFile;->data:[B
    invoke-static {v1}, Lcom/avos/avoscloud/AVFile;->access$300(Lcom/avos/avoscloud/AVFile;)[B

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/avos/avoscloud/GetDataCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 912
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 791
    check-cast p1, Lcom/avos/avoscloud/AVException;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVFile$AVDownloader;->onPostExecute(Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 916
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 917
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    .line 902
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 904
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile$AVDownloader;->progressCallback:Lcom/avos/avoscloud/ProgressCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVFile$AVDownloader;->progressCallback:Lcom/avos/avoscloud/ProgressCallback;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/ProgressCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 905
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 791
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVFile$AVDownloader;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

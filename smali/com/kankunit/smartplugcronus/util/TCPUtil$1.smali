.class Lcom/kankunit/smartplugcronus/util/TCPUtil$1;
.super Ljava/lang/Object;
.source "TCPUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/util/TCPUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/util/TCPUtil;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$1;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 149
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$1;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    # getter for: Lcom/kankunit/smartplugcronus/util/TCPUtil;->IPText:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$0(Lcom/kankunit/smartplugcronus/util/TCPUtil;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, "msgText":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_1

    .line 153
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$1;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    const-string v10, "IP can not be empty!\n"

    invoke-static {v9, v10}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$1(Lcom/kankunit/smartplugcronus/util/TCPUtil;Ljava/lang/String;)V

    .line 154
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 155
    .local v3, "msg":Landroid/os/Message;
    iput v12, v3, Landroid/os/Message;->what:I

    .line 156
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$1;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    iget-object v9, v9, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 159
    .end local v3    # "msg":Landroid/os/Message;
    :cond_1
    const-string v9, ":"

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 160
    .local v8, "start":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v9, v10, :cond_3

    .line 162
    :cond_2
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$1;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    const-string v10, "IP addresses are not legitimate\n"

    invoke-static {v9, v10}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$1(Lcom/kankunit/smartplugcronus/util/TCPUtil;Ljava/lang/String;)V

    .line 163
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 164
    .restart local v3    # "msg":Landroid/os/Message;
    iput v12, v3, Landroid/os/Message;->what:I

    .line 165
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$1;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    iget-object v9, v9, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 168
    .end local v3    # "msg":Landroid/os/Message;
    :cond_3
    const/4 v9, 0x0

    invoke-virtual {v4, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 169
    .local v6, "sIP":Ljava/lang/String;
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 170
    .local v7, "sPort":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 172
    .local v5, "port":I
    const-string v9, "gjz"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "IP:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :try_start_0
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$1;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    new-instance v10, Ljava/net/Socket;

    invoke-direct {v10, v6, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    invoke-static {v9, v10}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$2(Lcom/kankunit/smartplugcronus/util/TCPUtil;Ljava/net/Socket;)V

    .line 179
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    iget-object v11, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$1;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    # getter for: Lcom/kankunit/smartplugcronus/util/TCPUtil;->mSocketClient:Ljava/net/Socket;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$3(Lcom/kankunit/smartplugcronus/util/TCPUtil;)Ljava/net/Socket;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    sput-object v9, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mBufferedReaderClient:Ljava/io/BufferedReader;

    .line 181
    new-instance v9, Ljava/io/PrintWriter;

    iget-object v10, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$1;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    # getter for: Lcom/kankunit/smartplugcronus/util/TCPUtil;->mSocketClient:Ljava/net/Socket;
    invoke-static {v10}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$3(Lcom/kankunit/smartplugcronus/util/TCPUtil;)Ljava/net/Socket;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {v9, v10, v11}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    sput-object v9, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mPrintWriterClient:Ljava/io/PrintWriter;

    .line 183
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$1;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    const-string v10, "Connected server!\n"

    invoke-static {v9, v10}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$1(Lcom/kankunit/smartplugcronus/util/TCPUtil;Ljava/lang/String;)V

    .line 184
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 185
    .restart local v3    # "msg":Landroid/os/Message;
    const/4 v9, 0x1

    iput v9, v3, Landroid/os/Message;->what:I

    .line 186
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$1;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    iget-object v9, v9, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 198
    const/16 v9, 0x100

    new-array v0, v9, [C

    .line 199
    .local v0, "buffer":[C
    const/4 v1, 0x0

    .line 200
    .local v1, "count":I
    :cond_4
    :goto_1
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$1;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    # getter for: Lcom/kankunit/smartplugcronus/util/TCPUtil;->isConnecting:Z
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$4(Lcom/kankunit/smartplugcronus/util/TCPUtil;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 205
    :try_start_1
    sget-object v9, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mBufferedReaderClient:Ljava/io/BufferedReader;

    invoke-virtual {v9, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v1

    if-lez v1, :cond_4

    .line 207
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$1;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$1;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    # invokes: Lcom/kankunit/smartplugcronus/util/TCPUtil;->getInfoBuff([CI)Ljava/lang/String;
    invoke-static {v11, v0, v1}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$5(Lcom/kankunit/smartplugcronus/util/TCPUtil;[CI)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$1(Lcom/kankunit/smartplugcronus/util/TCPUtil;Ljava/lang/String;)V

    .line 208
    new-instance v3, Landroid/os/Message;

    .end local v3    # "msg":Landroid/os/Message;
    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 209
    .restart local v3    # "msg":Landroid/os/Message;
    const/4 v9, 0x1

    iput v9, v3, Landroid/os/Message;->what:I

    .line 210
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$1;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    iget-object v9, v9, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 213
    .end local v3    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v2

    .line 215
    .local v2, "e":Ljava/lang/Exception;
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$1;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Received exception:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$1(Lcom/kankunit/smartplugcronus/util/TCPUtil;Ljava/lang/String;)V

    .line 216
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 217
    .restart local v3    # "msg":Landroid/os/Message;
    iput v12, v3, Landroid/os/Message;->what:I

    .line 218
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$1;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    iget-object v9, v9, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 189
    .end local v0    # "buffer":[C
    .end local v1    # "count":I
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "msg":Landroid/os/Message;
    :catch_1
    move-exception v2

    .line 191
    .restart local v2    # "e":Ljava/lang/Exception;
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$1;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "IP connection exception:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$1(Lcom/kankunit/smartplugcronus/util/TCPUtil;Ljava/lang/String;)V

    .line 192
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 193
    .restart local v3    # "msg":Landroid/os/Message;
    iput v12, v3, Landroid/os/Message;->what:I

    .line 194
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$1;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    iget-object v9, v9, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
